import json

def count_queries_in_file(file_path):
    """
    Counts the number of queries in a JSON file containing query objects.

    Args:
        file_path (str): The path to the JSON file.

    Returns:
        int: The count of queries.
    """
    try:
        with open(file_path, 'r') as file:
            data = json.load(file)
        
        # Check if the top-level structure is a list of query objects
        if isinstance(data, list):
            return len(data)
        # Check if the top-level structure is a dictionary with a key containing query objects
        elif isinstance(data, dict):
            if "queries" in data and isinstance(data["queries"], list):
                return len(data["queries"])
        
        print("The file structure doesn't match the expected format.")
        return 0

    except json.JSONDecodeError as e:
        print(f"Error decoding JSON: {e}")
        return 0
    except Exception as e:
        print(f"Error reading file: {e}")
        return 0


# Example usage:
file_path = "train_others.json"  # Replace with your file path
query_count = count_queries_in_file(file_path)
print(f"Number of queries in the file: {query_count}")