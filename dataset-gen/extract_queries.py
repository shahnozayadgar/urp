import json

def extract_queries(json_input_path, sql_output_path):
    """
    Extracts generated SQL queries from a JSON file and writes them to an SQL file.

    Parameters:
    - json_input_path: Path to the input JSON file.
    - sql_output_path: Path to the output SQL file.
    """
    try:
        # Load the JSON data
        with open(json_input_path, 'r', encoding='utf-8') as json_file:
            data = json.load(json_file)
        
        # Open the output SQL file in write mode
        with open(sql_output_path, 'w', encoding='utf-8') as sql_file:
            # Iterate through each entry in the JSON data
            for entry in data:
                table_name = entry.get('table', 'unknown_table')
                generated_queries = entry.get('generated_queries', [])
                
                # Iterate through each generated query in the entry
                for query_obj in generated_queries:
                    generated_query = query_obj.get('generated_query', '').strip()
                    
                    # Write to the SQL file if the query is not empty
                    if generated_query:
                        sql_file.write(f"{generated_query}\t{table_name}\n")
        
        print(f"Successfully extracted queries to '{sql_output_path}'.")
    
    except FileNotFoundError:
        print(f"Error: The file '{json_input_path}' was not found.")
    except json.JSONDecodeError:
        print(f"Error: The file '{json_input_path}' is not a valid JSON file.")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

# Example usage
if __name__ == "__main__":
    input_json = 'generated_dataset.json'      
    output_sql = 'extracted_queries.sql'      
    extract_queries(input_json, output_sql)