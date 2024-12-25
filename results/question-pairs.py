import json

def normalize_sql(sql: str) -> str:
    """
    Normalize an SQL string:
      - Strip leading/trailing spaces
      - Lowercase everything
      - Remove extra internal spaces
      - Remove trailing semicolons
    """
    # Strip and lowercase
    sql = sql.strip().lower()
    # Remove trailing semicolon if present
    if sql.endswith(';'):
        sql = sql[:-1]
    # Split on whitespace and rejoin to unify spacing
    sql = " ".join(sql.split())
    return sql

def build_question_lookup(dev_json_path: str):
    """
    Parse the dev.json file and return a lookup dictionary:
        (db_id, normalized_sql) -> question
    """
    with open(dev_json_path, 'r', encoding='utf-8') as f:
        dev_data = json.load(f)

    question_lookup = {}
    for item in dev_data:
        db_id = item['db_id']
        query = item['query']
        question = item['question']

        # Normalize the query
        norm_query = normalize_sql(query)
        question_lookup[(db_id, norm_query)] = question

    return question_lookup

def add_questions_to_error_file(dev_json_path: str, classified_errors_path: str, output_path: str):
    """
    1. Build question lookup from dev.json
    2. Parse classified_errors.json
    3. For each record in classified_errors, find the matching question
       via (table, normalized_golden_query).
    4. Write an updated JSON with a 'question' key for each record.
    """
    # Step 1: build the question lookup
    question_lookup = build_question_lookup(dev_json_path)

    # Step 2: parse the classified_errors.json
    with open(classified_errors_path, 'r', encoding='utf-8') as f:
        error_data = json.load(f)

    updated_records = []
    for record in error_data:
        # Some files call it 'table', others call it 'db_id'.
        # We'll assume 'table' is your database ID here.
        db_id = record.get('table')  
        golden_query = record.get('golden_query', '')

        # Normalize the golden query
        norm_golden_query = normalize_sql(golden_query)

        # Step 3: attempt to find matching question
        matched_question = question_lookup.get(
            (db_id, norm_golden_query),
            "No matching question found"
        )

        # Add the question to the record
        record['question'] = matched_question
        updated_records.append(record)

    # Step 4: write updated JSON
    with open(output_path, 'w', encoding='utf-8') as out_f:
        json.dump(updated_records, out_f, indent=4)

def main():
    # Change these paths as needed
    dev_json_path = 'dev.json'
    classified_errors_path = 'classified_errors.json'
    output_path = 'classified_errors_with_questions.json'

    add_questions_to_error_file(dev_json_path, classified_errors_path, output_path)

if __name__ == "__main__":
    main()