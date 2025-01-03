import json

def count_sql_queries(file_path):
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            data = json.load(file)
        
        query_count = 0
        for entry in data:
            if "query" in entry:
                query_count += 1
        
        print(f"Total number of SQL queries: {query_count}")
    
    except FileNotFoundError:
        print(f"Error: The file '{file_path}' was not found.")
    except json.JSONDecodeError:
        print(f"Error: The file '{file_path}' is not a valid JSON file.")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

# Example usage
if __name__ == "__main__":
    file_path = 'train_spider.json'
    count_sql_queries(file_path)