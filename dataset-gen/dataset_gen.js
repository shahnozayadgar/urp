import dotenv from 'dotenv';
dotenv.config();
import axios from 'axios';
import fs from 'fs/promises';
import path from 'path';
import { fileURLToPath } from 'url';
import pkg from 'node-sql-parser';
const { Parser } = pkg;

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// OpenAI API URL
const url = 'https://api.openai.com/v1/chat/completions';

//function that reads schema.sql file for a given tableID
//using re CREATE TABLE statement
//parsing to extract column names and data types
//returning an erray of columns with their names and datatypes
// Function to parse the schema.sql file for a given tableID
async function parseSchema(tableID) {
  try {
    const schemaPath = path.join(__dirname, 'database', tableID, 'schema.sql');
    const schemaContent = await fs.readFile(schemaPath, 'utf-8');

    // Updated regex patterns to handle quoted and unquoted identifiers
    const createTableRegex = /CREATE\s+TABLE\s+(?:"|`)?([^"`\s]+)(?:"|`)?\s*\(([\s\S]*?)\);/gim;
    const columnRegex = /^\s*(?:"|`)?([^"`\s]+)(?:"|`)?\s+((?:CHAR|VARCHAR|INTEGER|DATETIME|TEXT|INT)\(?[^,\)]*\)?)/gim;

    const allColumns = [];
    let tableMatch;

    while ((tableMatch = createTableRegex.exec(schemaContent)) !== null) {
      const tableName = tableMatch[1];
      const columnSection = tableMatch[2];
      
      // Split column section into lines
      const columnLines = columnSection.split('\n');
      
      // Process each line that looks like a column definition
      for (const line of columnLines) {
        // Skip lines that are for constraints (PRIMARY KEY, FOREIGN KEY)
        if (line.trim().toUpperCase().includes('KEY')) continue;
        
        const columnMatch = line.match(/\s*(?:"|`)?([^"`\s]+)(?:"|`)?\s+((?:CHAR|VARCHAR|INTEGER|DATETIME|TEXT|INT)\(?[^,\)]*\)?)/i);
        if (columnMatch) {
          // Clean up the data type
          let dataType = columnMatch[2].toLowerCase();
          // Normalize INT to INTEGER
          if (dataType.startsWith('int')) {
            dataType = 'integer' + dataType.substring(3);
          }
          
          allColumns.push({
            tableName,
            columnName: columnMatch[1],
            dataType: dataType
          });
        }
      }
    }

    if (allColumns.length === 0) {
      console.warn(`No columns found in schema for table ${tableID}`);
      console.debug('Schema content:', schemaContent);
    } else {
      console.log(`Successfully parsed ${allColumns.length} columns from ${tableID}`);
    }

    return allColumns;

  } catch (error) {
    console.error(`Error parsing schema for table ${tableID}:`, error.message);
    if (error.code === 'ENOENT') {
      console.error(`Schema file not found at expected path for table ${tableID}`);
    }
    return [];
  }
}

//main function for dataset generation
const generateDataset = async (tableID, errorType, erroneousQuery, originalQuestion, schema) => {
  try {
    //checking if schema is valid
    if (!Array.isArray(schema) || schema.length === 0) {
      console.error(`Invalid schema provided for table ${tableID}`);
      return null;
    }

    //grouping columns by table 
    const tableColumns = schema.reduce((acc, col) => {
      //cleaning the data type by removing 'not null'
      const cleanDataType = col.dataType.split(' ')[0].toLowerCase();

      if (!acc[col.tableName]) {
        acc[col.tableName] = [];
      }
      acc[col.tableName].push(`${col.columnName} (${col.dataType})`);
      return acc;
    }, {});

    //formatting schema information for each table
    const schemaFormatted = Object.entries(tableColumns)
    .map(([tableName, columns]) => `${tableName}: ${columns.join(', ')}`)
    .join('\n');

    const prompt = `
      You are an expert SQL developer.

       Given the following:
      - Database Schema:
      ${schemaFormatted}
      - Error Type: "${errorType}"
      - Erroneous SQL Query:
      \`\`\`sql
      ${erroneousQuery}
      \`\`\`

      **Tasks**:
      1. Generate a new SQL query that is similar to the given erroneous query but contains a similar "${errorType}". Do not correct the error.
      2. Write a question that relates to this new erroneous query.

      Provide your response in the following JSON format:

      \`\`\`json
      {
        "generated_query": "Your generated SQL query here",
        "generated_question": "Your generated question here"
      }
      \`\`\`
    `;

    const response = await axios.post(
      url,
      {
        model: 'gpt-3.5-turbo',
        max_tokens: 300,
        temperature: 0.7,
        messages: [
          {
            role: 'user',
            content: prompt.trim(),
          },
        ],
      },
      {
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${process.env.OPENAI_API_KEY}`,
        },
      }
    );

    const content = response.data.choices[0].message.content.trim();

    try {
      // Find the JSON object in the response
      const jsonMatch = content.match(/\{[\s\S]*\}/);
      if (!jsonMatch) {
        throw new Error('No JSON object found in response');
      }
      
      const result = JSON.parse(jsonMatch[0]);

      if (!result.generated_query || !result.generated_question) {
        throw new Error('Missing required fields in response');
      }

      console.log(`Successfully generated data for ${tableID}`);
      return result;

    } catch (parseError) {
      console.error('Failed to parse response:', parseError.message);
      console.error('Raw response:', content);
      return null;
    }
  } catch (error) {
    console.error(
      `Error generating dataset for table ${tableID}, error type ${errorType}:`,
      error.message
    );
    return null;
  }
};

//function loading error types
const loadClassifiedErrors = async (filePath) => {
  try {
    const data = await fs.readFile(filePath, 'utf-8');
    return JSON.parse(data);
  } catch (error) {
    console.error('Error reading classified errors file:', error.message);
    process.exit(1);
  }
};

//function to save a generated dataset in output json
const saveGeneratedData = async (data, outputPath) => {
  try {
    await fs.writeFile(outputPath, JSON.stringify(data, null, 2));
    console.log(`Generated data saved to ${outputPath}`);
  } catch (error) {
    console.error('Error writing generated data to file:', error.message);
  }
};

//this is the main function
const main = async () => {
  const errorsFilePath = path.join(__dirname, 'classified_errors.json');
  const outputFilePath = path.join(__dirname, 'generated_dataset.json');

  const classifiedErrors = await loadClassifiedErrors(errorsFilePath);

  const generatedData = [];

  for (const errorEntry of classifiedErrors) {
    const {
      example_number,
      table: tableID,
      question: originalQuestion,
      prediction: erroneousQuery,
      errors_detected,
    } = errorEntry;

    const schema = await parseSchema(tableID);
    console.log(`Schema for table ${tableID}:`, schema);

    if (!Array.isArray(schema) || schema.length === 0) {
      console.warn(`No schema information found for table ${tableID}. Skipping this entry.`);
      continue;
    }

    for (const errorType of errors_detected) {
      console.log(`Processing example_number: ${example_number}, error_type: ${errorType}`);

      const result = await generateDataset(
        tableID, 
        errorType, 
        erroneousQuery, 
        originalQuestion,
        schema
      );

      if (result) {
        generatedData.push({
          example_number,
          table: tableID,
          error_type: errorType,
          original_question: originalQuestion,
          erroneous_query: erroneousQuery,
          generated_query: result.generated_query,
          generated_question: result.generated_question,
        });
        console.log(`Generated data for example_number: ${example_number}`);
      } else {
        console.warn(`Failed to generate data for example_number: ${example_number}`);
      }

      //some delay
      await new Promise((resolve) => setTimeout(resolve, 500));
    }
  }

  await saveGeneratedData(generatedData, outputFilePath);
};

//running the main function
main().catch((error) => {
  console.error('An unexpected error occurred:', error.message);
});
