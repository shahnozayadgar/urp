import json
import re

# Load table data from tables.json
def load_tables(json_path):
    with open(json_path, 'r') as file:
        data = json.load(file)
    # Extract table names and structure it as a set
    table_names = set()
    for db in data:
        table_names.update(db["table_names"])
    return table_names

# Extract single-table queries based on tables.json data
def extract_single_table_queries(sql_path, tables):
    with open(sql_path, 'r') as file:
        sql_queries = file.readlines()

    single_table_queries = []
    
    for query in sql_queries:
        tables_in_query = set(re.findall(r'\bFROM\b\s+(\w+)|\bJOIN\b\s+(\w+)', query, re.IGNORECASE))
        tables_in_query = set([table for match in tables_in_query for table in match if table])
        
        if len(tables_in_query) == 1 and tables_in_query.issubset(tables):
            single_table_queries.append(query)

    return single_table_queries

def save_filtered_queries(filtered_queries, output_path):
    with open(output_path, 'w') as file:
        for query in filtered_queries:
             file.write(query.strip() + "\n")

json_path = 'tables.json'
sql_path = 'dev_gold.sql'
output_path = 'filtered_dev_gold_current.sql'

tables = load_tables(json_path)
single_table_queries = extract_single_table_queries(sql_path, tables)

save_filtered_queries(single_table_queries, output_path)
print(f"Filtered single-table queries have been saved to {output_path}")