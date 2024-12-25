// dataset_gen.js

import dotenv from 'dotenv';
dotenv.config();
import axios from 'axios';
import fs from 'fs/promises';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const url = 'https://api.openai.com/v1/chat/completions';

async function parseSchema(tableID) {
  try {
    const schemaPath = path.join(__dirname, 'database', tableID, 'schema.sql');
    const schemaContent = await fs.readFile(schemaPath, 'utf-8');

    // Regex to match CREATE TABLE statements, including IF NOT EXISTS
    const createTableRegex = /CREATE\s+TABLE(?:\s+IF\s+NOT\s+EXISTS)?\s+(?:"|`)?([^"`\s]+)(?:"|`)?\s*\(([\s\S]*?)\);/gim;

    const allColumns = [];
    let tableMatch;

    while ((tableMatch = createTableRegex.exec(schemaContent)) !== null) {
      const tableName = tableMatch[1];
      const columnSection = tableMatch[2];
      
      // Split column section into lines
      const columnLines = columnSection.split('\n');
      
      for (const line of columnLines) {
        if (line.trim().toUpperCase().includes('KEY')) continue;
        if (line.trim().toUpperCase().startsWith('CONSTRAINT')) continue;
        if (line.trim().startsWith('--')) continue; // Skip comments

        // Match column definitions
        const columnMatch = line.match(/\s*(?:"|`)?([^"`\s]+)(?:"|`)?\s+((?:CHAR|VARCHAR|INTEGER|DATETIME|TEXT|INT|DECIMAL|FLOAT|DOUBLE)[^,$]*\)?)/i);
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

// Function to load classified errors
const loadClassifiedErrors = async (filePath) => {
  try {
    const data = await fs.readFile(filePath, 'utf-8');
    return JSON.parse(data);
  } catch (error) {
    console.error('Error reading classified errors file:', error.message);
    process.exit(1);
  }
};

const saveGeneratedData = async (data, outputPath) => {
  try {
    await fs.writeFile(outputPath, JSON.stringify(data, null, 2));
    console.log(`Generated data saved to ${outputPath}`);
  } catch (error) {
    console.error('Error writing generated data to file:', error.message);
  }
};
const generatePrompt = (schemaFormatted, goldenQuery, columnNames, tableNames) => {
  return `
    Given the following database schema:

    \`\`\`plaintext
    ${schemaFormatted}
    \`\`\`

    And the SQL query:
    \`\`\`sql
    ${goldenQuery}
    \`\`\`

    Tasks:
    - Identify the table(s) the original query is referring to.
    - List the column names used in the original query.
    - Using the provided schema, find the most relevant different table in "${tableNames}" with corresponsing relevant columns "${columnNames}".
    - Using identified table in "${tableNames}" and columns in "${columnNames}" generate three new queries.
    - Preserve the intent and logic from original query. 
    - For each of the three newly generated queries, provide three paraphrased versions.
    - Write a new query using new table and columns.
    - The rewritten query should maintain the original query intent and logic.
    - Given paraphrased 3 questions for the generated query.

    Provide your response in the following JSON format:

    \`\`\`json
        {
      "queries": [
        {
          "generated_query": "First generated SQL query here",
          "paraphrases": [
            "Paraphrase of the first generated query",
            "Another paraphrase of the first generated query",
            "Another paraphrase of the first generated query"
          ]
        },
        {
          "generated_query": "Second generated SQL query here",
          "paraphrases": [
            "Paraphrase of the second generated query",
            "Another paraphrase of the second generated query",
            "Another paraphrase of the second generated query"
          ]
        },
        {
          "generated_query": "Third generated SQL query here",
          "paraphrases": [
            "Paraphrase of the third generated query",
            "Another paraphrase of the third generated query",
            "Another paraphrase of the third generated query"
          ]
        }
      ]
    }
    \`\`\`
  `;
};

const callOpenAI = async (prompt) => {
  try {
    const response = await axios.post(
      url,
      {
        model: 'gpt-4o-mini',
        messages: [
          {
            role: 'user',
            content: prompt.trim(),
          },
        ],
        max_tokens: 500,
        temperature: 0.5, 
      },
      {
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${process.env.OPENAI_API_KEY}`,
        },
      }
    );

    return response.data.choices[0].message.content.trim();
  } catch (error) {
    console.error('Error calling OpenAI API:', error.message);
    return null;
  }
};


const validateGeneratedQuery = (generatedQuery, columnNames) => {
  // Regular expression to capture everything between SELECT and FROM
  const selectMatch = generatedQuery.match(/SELECT\s+([\s\S]+?)\s+FROM/i);
  if (!selectMatch) {
    console.error('SELECT clause not found in the generated query.');
    return false;
  }

  // Extract the columns part
  const selectedColumnsPart = selectMatch[1];

  // Split columns by comma, but handle commas within parentheses (e.g., functions)
  const columns = [];
  let current = '';
  let parenthesisCount = 0;

  for (const char of selectedColumnsPart) {
    if (char === ',' && parenthesisCount === 0) {
      columns.push(current.trim());
      current = '';
    } else {
      if (char === '(') parenthesisCount++;
      if (char === ')') parenthesisCount--;
      current += char;
    }
  }
  if (current.trim() !== '') {
    columns.push(current.trim());
  }

  // Function to extract column names from expressions
  const extractColumnName = (col) => {
    // Remove alias if present
    let [expression] = col.split(/\s+AS\s+/i);
    expression = expression.trim();

    // Match column names possibly wrapped in functions
    // This regex matches functions like MIN(distance), MAX(some_column), etc.
    const funcMatch = expression.match(/^[\w]+\(([^)]+)\)$/);
    if (funcMatch) {
      expression = funcMatch[1].trim();
    }

    // If there are nested functions, extract the innermost column
    const nestedFuncMatch = expression.match(/^[\w]+\(([^)]+)\)$/);
    if (nestedFuncMatch) {
      expression = nestedFuncMatch[1].trim();
    }

    // Remove any table aliases (e.g., table.column)
    if (expression.includes('.')) {
      expression = expression.split('.').pop();
    }

    return expression.replace(/[`"]/g, ''); // Remove backticks or quotes
  };

  // Validate each column
  for (const col of columns) {
    const cleanCol = extractColumnName(col);

    if (!columnNames.includes(cleanCol)) {
      console.error(`Invalid column "${cleanCol}" found in the generated query.`);
      return false;
    }
  }

  console.log('Generated query is valid.');
  return true;
};

const generateDataset = async (tableID, goldenQuery, schema) => {
  try {
    if (!Array.isArray(schema) || schema.length === 0) {
      console.error(`Invalid schema provided for table ${tableID}`);
      return null;
    }

    const columnNames = schema.map((col) => col.columnName);

    const tableColumns = schema.reduce((acc, col) => {
      if (!acc[col.tableName]) {
        acc[col.tableName] = [];
      }
      acc[col.tableName].push(`${col.columnName} (${col.dataType})`);
      return acc;
    }, {});

    const schemaFormatted = Object.entries(tableColumns)
      .map(([tableName, columns]) => `${tableName}: ${columns.join(', ')}`)
      .join('\n');

    const prompt = generatePrompt(schemaFormatted, goldenQuery, columnNames);

    const responseContent = await callOpenAI(prompt);

    if (responseContent) {
      try {
        const jsonMatch = responseContent.match(/\{[\s\S]*\}/);
        if (!jsonMatch) {
          throw new Error('No JSON object found in response');
        }

        const result = JSON.parse(jsonMatch[0]);

        // Validate the new structure
        if (!result.queries || !Array.isArray(result.queries)) {
          throw new Error('Missing or invalid "queries" field in response');
        }

        // Validate each query and its paraphrases
        result.queries.forEach((queryData, index) => {
          if (!queryData.generated_query || !queryData.paraphrases) {
            throw new Error(`Query at index ${index} is missing required fields`);
          }
          if (!Array.isArray(queryData.paraphrases) || queryData.paraphrases.length !== 3) {
            throw new Error(`Paraphrases for query at index ${index} are missing or invalid`);
          }
        });

        console.log(`Successfully generated data for table ${tableID}`);
        return result;
      } catch (parseError) {
        console.error('Failed to parse response:', parseError.message);
        console.error('Raw response:', responseContent);
        return null;
      }
    } else {
      console.warn(`Failed to generate data for table ${tableID}`);
      return null;
    }
  } catch (error) {
    console.error(
      `Error generating dataset for table ${tableID}:`,
      error.message
    );
    return null;
  }
};
const main = async () => {
  const errorsFilePath = path.join(__dirname, 'classified_errors_with_questions.json');
  const outputFilePath = path.join(__dirname, 'generated_dataset.json');

  const classifiedErrors = await loadClassifiedErrors(errorsFilePath);

  const limitedErrors = classifiedErrors.slice(0, 10);

  const generatedData = [];

  for (const errorEntry of limitedErrors) {
    const {
      example_number,
      table: tableID,
      golden_query: goldenQuery,
    } = errorEntry;

    const schema = await parseSchema(tableID);
    console.log(`Schema for table ${tableID}:`, schema);

    if (!Array.isArray(schema) || schema.length === 0) {
      console.warn(`No schema information found for table ${tableID}. Skipping this entry.`);
      continue;
    }

    const result = await generateDataset(
      tableID, 
      goldenQuery,
      schema
    );

    if (result && Array.isArray(result.queries)) {
      const processedResult = {
        example_number,
        table: tableID,
        golden_query: goldenQuery,
        generated_queries: result.queries.map((queryData) => ({
          generated_query: queryData.generated_query,
          paraphrases: queryData.paraphrases,
        })),
      };

      generatedData.push(processedResult);
      console.log(`Generated data for example_number: ${example_number}`);
    } else {
      console.warn(`Failed to generate data for example_number: ${example_number}, table: ${tableID}`);
    }


    await new Promise((resolve) => setTimeout(resolve, 1000));
  }

  await saveGeneratedData(generatedData, outputFilePath);
};
main().catch((error) => {
  console.error('An unexpected error occurred:', error.message);
});