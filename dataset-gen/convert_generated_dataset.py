import json
import re

def tokenize(text):
    """
    Simple tokenizer that splits text into tokens based on spaces and punctuation.
    """
    tokens = re.findall(r"\w+|[^\s\w]", text)
    return tokens

def replace_constants(query_tokens):
    """
    Replace numeric literals and string literals in the token list with 'value'.
    """
    replaced_tokens = []
    for token in query_tokens:
        if re.fullmatch(r"\d+(\.\d+)?", token):
            replaced_tokens.append("value")
        elif re.fullmatch(r"'.*?'|\".*?\"", token):
            replaced_tokens.append("value")
        else:
            replaced_tokens.append(token.lower())
    return replaced_tokens

def generate_sql_structure(query_toks, query_toks_no_value):
    """
    Generate a mock SQL structure based on the tokenized query.
    """
    return {
        "select": [[0, [0, [0, 1, False], None]]],
        "from": {
            "table_units": [["table_unit", 0]],
            "conds": []
        },
        "where": [],
        "groupBy": [],
        "having": [],
        "orderBy": [],
        "limit": None,
        "intersect": None,
        "union": None,
        "except": None
    }

def convert_generated_dataset(input_json_path, output_json_path):
    try:
        with open(input_json_path, 'r', encoding='utf-8') as infile:
            data = json.load(infile)
        
        dev_entries = []

        for entry in data:
            db_id = entry.get('table', 'unknown_table')
            generated_queries = entry.get('generated_queries', [])
            
            for query_obj in generated_queries:
                query = query_obj.get('generated_query', '').strip()
                paraphrases = query_obj.get('paraphrases', [])
                
                if not query or not paraphrases:
                    continue
                
                query_toks = tokenize(query)
                query_toks_no_value = replace_constants(query_toks.copy())
                sql_structure = generate_sql_structure(query_toks, query_toks_no_value)
                
                for question in paraphrases:
                    question = question.strip()
                    if not question:
                        continue
                    
                    question_toks = tokenize(question)
                    
                    dev_entry = {
                        "db_id": db_id,
                        "query": query,
                        "query_toks": query_toks,
                        "query_toks_no_value": query_toks_no_value,
                        "question": question,
                        "question_toks": question_toks,
                        "sql": sql_structure
                    }
                    
                    dev_entries.append(dev_entry)
        
        with open(output_json_path, 'w', encoding='utf-8') as outfile:
            json.dump(dev_entries, outfile, indent=2)
        
        print(f"Processed {len(data)} entries. Output saved to '{output_json_path}'.")
    
    except FileNotFoundError:
        print(f"Error: The file '{input_json_path}' was not found.")
    except json.JSONDecodeError:
        print(f"Error: The file '{input_json_path}' is not a valid JSON file.")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

# Example usage
if __name__ == "__main__":
    input_json = 'generated_dataset.json' 
    output_json = 'dev.json'
    convert_generated_dataset(input_json, output_json)