import os

# Define the input SQL file and output directory
input_file = "train_gold.sql"  # Path to your SQL file
output_dir = "split_train_gold"
num_files = 2  # Adjust the number of output files as needed

# Read and process the SQL file
with open(input_file, "r") as file:
    raw_queries = file.readlines()

# Group queries by dataset
grouped_queries = {}
default_dataset = "default_dataset"  # Default dataset name for queries without tabs

for line in raw_queries:
    line = line.strip()  # Remove leading/trailing whitespace
    if not line:  # Skip empty lines
        continue
    if '\t' in line:  # Check for tab separator
        query_text, dataset = line.split('\t', 1)  # Split on the first tab
    else:
        query_text = line  # Entire line is the query text
        dataset = default_dataset  # Assign to the default dataset
    
    if dataset not in grouped_queries:
        grouped_queries[dataset] = []
    grouped_queries[dataset].append(line)

# Distribute groups into roughly equal files
split_files = [[] for _ in range(num_files)]
grouped_items = list(grouped_queries.items())

for i, (_, group) in enumerate(grouped_items):
    split_files[i % num_files].extend(group)

# Write the queries to separate files
os.makedirs(output_dir, exist_ok=True)

for i, file_queries in enumerate(split_files):
    file_path = os.path.join(output_dir, f"train_gold_part_{i + 1}.sql")
    with open(file_path, "w") as f:
        f.write("\n".join(file_queries))

print(f"Queries have been split into {num_files} files and saved in '{output_dir}'.")