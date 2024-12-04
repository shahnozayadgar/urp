import json
import os

# Define the input files and output directory
json_input_file = "train_spider.json"  
sql_reference_file = "split_train_gold/train_gold_part_2.sql"  
output_dir = "split_train_gold"

# Read the SQL file to get the reference queries
with open(sql_reference_file, "r") as file:
    reference_queries = set(line.split('\t')[0].strip() if '\t' in line else line.strip() 
                          for line in file.readlines() if line.strip())

# Read and process the JSON file
with open(json_input_file, "r") as file:
    json_data = json.load(file)

# Filter JSON entries to match reference queries
filtered_json = [entry for entry in json_data if entry.get('query', '').strip() in reference_queries]

# Write the filtered JSON to a new file
output_file = os.path.join(output_dir, "train_gold_part_2.json")
with open(output_file, "w") as f:
    json.dump(filtered_json, f, indent=2)

print(f"JSON file has been split to match queries from {sql_reference_file}")
print(f"Output saved to: {output_file}")