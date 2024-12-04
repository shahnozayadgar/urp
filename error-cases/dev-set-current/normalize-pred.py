import sqlparse
import re

def normalize_sql_file(input_file, output_file):

    def normalize_sql_query(query):
        #The re. sub() function replaces matching substrings with a new string for all occurrences, or a specified number
        return re.sub(r'\b(\w+)\.\b', '', query)

    with open(input_file, 'r') as file:
        # The readlines() method returns a list containing each line in the file as a list item.
        queries = file.readlines()
    
    normalized_queries = [normalize_sql_query(query) for query in queries]

    #writelines() method writes the items of a list to the file.

    with open(output_file, 'w') as file:
        file.writelines(normalized_queries)

if __name__ == '__main__':
    input_file = "filtered_preds-current.sql"
    output_file = "normalized_filtered_pred-current.sql"
    normalize_sql_file(input_file, output_file)
    print(f"normalized queries are written to {output_file}")