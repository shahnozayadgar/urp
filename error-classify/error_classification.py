import sqlparse
from sqlparse.sql import IdentifierList, Identifier, Function, Where
from sqlparse.tokens import Keyword, DML
import re
import json
from collections import Counter

def parse_errors_file(filename):
    """
    reading the m+_errors.sql file and extracting golden_truth and prediction queries along with their table names.
    """
    with open(filename, 'r') as file:
        content = file.read()
    
    #splitting into pieces separated by lines 
    entries = content.strip().split('\n\n')

    examples = []

    for entry in entries:
        lines = entry.strip().split('\n')
        example = {}
        for line in lines:
            # removing the unnecessary spaces
            line = line.strip()
            if line.startswith('golden truth: '):
                golden_line = line.replace('golden truth:', '').strip()
                if '\t' in golden_line:
                    query, db_table = golden_line.split('\t', 1)
                    example['golden_query'] = query.strip()
                    example['db_table'] = db_table.strip()
                else:
                    example['golden_query'] = golden_line
            elif line.startswith('prediction:'):
                pred_line = line.replace('prediction:', '').strip()
                if '\t' in pred_line:
                    query, db_table = pred_line.split('\t', 1)
                    example['prediction'] = query.strip()
                    example['db_table'] = db_table.strip()
                else:
                    example['prediction'] = pred_line
        examples.append(example)
    return examples

def parse_query(query):
    #using sqlparse and returning the parsed queries
    parsed = sqlparse.parse(query)
    if not parsed:
        return None
    return parsed[0]

def extract_select_columns(parsed):

    #extracting SELECT columns from parsed 
    #returning tuples of column name and aggregation function
    #aggregation function is set to none if no function is applied

    select_seen = False
    columns = []
    for token in parsed.tokens:
        if token.ttype is DML and token.value.upper() == 'SELECT':
            select_seen = True
        elif select_seen:
            if token.ttype is Keyword and token.value.upper() == 'FROM':
                break
            if isinstance(token, IdentifierList):
                for identifier in token.get_identifiers():
                    if isinstance(identifier, Function):
                        func_name = identifier.get_name().lower()
                        #extracting the first column name as a parameter
                        params = identifier.get_parameters()
                        if params:
                            #using get_real_name() to extract column name
                            #get_real_name() method in sqlparse library that ensures the script accurately identifies and compares the core column names in queries
                            column = params[0].get_real_name().lower() if params[0].get_real_name() else None
                        else:
                            column = None
                        columns.append((column, func_name))
                    else:
                        #using get_real_name() to extract column name
                        column = identifier.get_real_name().lower() if identifier.get_real_name() else None
                        columns.append((column, None))
            elif isinstance(token, Function):
                func_name = token.get_name().lower()
                params = token.get_parameters()
                if params:
                    column = params[0].get_real_name().lower() if params[0].get_real_name() else None
                else:
                    column = None
                columns.append((column, func_name))
            elif isinstance(token, Identifier):
                if isinstance(token, Function):
                    func_name = token.get_name().lower()
                    params = token.get_parameters()
                    if params:
                        column = params[0].get_real_name().lower() if params[0].get_real_name() else None
                    else:
                        column = None
                    columns.append((column, func_name))
                else:
                    column = token.get_real_name().lower() if token.get_real_name() else None
                    columns.append((column, None))
    return columns

def extract_where_clause(parsed):
    #extracting WHERE clause fro parsed query
    #converting the clause to lowercase for case-insensitive comparison
    where_clause = None
    for token in parsed.tokens:
        if isinstance(token, Where):
            where_clause = str(token).lower().replace('"', "'").strip()
            break
    return where_clause

def extract_group_by_columns(parsed):
    #extracting the group by columns from parsed query 
    #converting to lowercase
    group_by_seen = False
    group_by_columns = []
    for token in parsed.tokens:
        if token.ttype is Keyword and token.value.upper() == 'GROUP BY':
            group_by_seen = True
        elif group_by_seen:
            if token.ttype is Keyword:
                break
            if isinstance(token, IdentifierList):
                for identifier in token.get_identifiers():
                    column = identifier.get_real_name().lower().replace(' ', '') if identifier.get_real_name() else None
                    if column:
                        group_by_columns.append(column)
            elif isinstance(token, Identifier):
                column = token.get_real_name().lower().replace(' ', '') if token.get_real_name() else None
                if column:
                    group_by_columns.append(column)
    return group_by_columns

def extract_order_by_clause(parsed):
    #extracting order by clause from parsed sql query
    #converting the clause to lowercass
    order_by_clause = None
    order_by_seen = False
    for token in parsed.tokens:
        if token.ttype is Keyword and token.value.upper() == 'ORDER BY':
            order_by_seen = True
            order_by_clause = ''
        elif order_by_seen:
            if token.ttype is Keyword:
                break
            order_by_clause += str(token).lower().replace(' ', '')
    return order_by_clause

def compare_where_clauses(golden_where, pred_where):
    #comparing WHERE clauses
    #returning error messega
    errors = []

    #if no differences present
    if not golden_where and not pred_where:
        return errors  # No errors
    
    #when one is present and one not (and vice versa)
    if golden_where and not pred_where:
        errors.append("Missing WHERE Clause")
        return errors
    if pred_where and not golden_where:
        errors.append("Redundant WHERE Clause")
        return errors
    
    #splitting and/or conditions and noemalize
    def extract_conditions(clause):
        #removing WHEHE keyword if present
        #re.sub dunction used to search a string for all occurrences that match a specified re pattern 
        clause = re.sub(r'^where\s+', '', clause, flags=re.IGNORECASE)
        #splitting or/and conditions
        conditions = re.split(r'\s+(and|or)\s+', clause)
        #extracting the conditions
        condition_set = set()
        for part in conditions:
            part = part.strip()
            if part.lower() in ('and', 'or'):
                continue
            condition_set.add(part)
        return condition_set
    
    golden_conditions = extract_conditions(golden_where)
    pred_conditions = extract_conditions(pred_where)
    
    #comparing the conditions
    if golden_conditions != pred_conditions:
        #checking if pred uses LIKE instead of = 
        like_in_pred = any('like' in cond for cond in pred_conditions)
        equals_in_golden = any('=' in cond and 'like' not in cond for cond in golden_conditions)
        
        if like_in_pred and equals_in_golden:
            errors.append("Redundant LIKE Clause")
        elif 'like' in golden_where and '=' in pred_where:
            errors.append("Missing LIKE Clause")
        #this is not necessary for now
        # else: 
        #     errors.append("WHERE Clause Mismatch")
    return errors

def compare_queries(golden_query, pred_query):
    #comparing the golden truth and pred to see differences
    errors = []

    golden_parsed = parse_query(golden_query)
    pred_parsed = parse_query(pred_query)

    if not golden_parsed or not pred_parsed:
        errors.append("Invalid SQL query")
        return errors

    #extracting columns using the function
    golden_select_cols = extract_select_columns(golden_parsed)
    pred_select_cols = extract_select_columns(pred_parsed)

    #using counter to see duplicants 
    pred_cols_counter = Counter(pred_select_cols)

    #detecting duplicate columns
    for col_func, count in pred_cols_counter.items():
        if count > 1:
            col, func = col_func
            if func:
                func_display = f"{func}({col})"
            else:
                func_display = f"{col}"
            errors.append(f"Duplicate Column Selection: {func_display}")

    #converting the list to dic for comparison
    golden_cols_dict = {col: func for col, func in golden_select_cols}
    pred_cols_dict = {col: func for col, func in pred_select_cols}

    #cheecking for missing columns or missing agg fun in pred
    for col, func in golden_cols_dict.items():
        if col not in pred_cols_dict:
            if func:
                errors.append(f"Missing Column in Prediction: {func}({col})")
            else:
                errors.append(f"Missing Column in Prediction: {col}")
        else:
            pred_func = pred_cols_dict[col]
            if func != pred_func:
                if func and not pred_func:
                    errors.append(f"Missing Aggregation Function in Prediction: {func}({col})")
                elif not func and pred_func:
                    errors.append(f"Extra Aggregation Function in Prediction: {pred_func}({col})")
                else:
                    errors.append(f"Aggregation Function Mismatch for Column '{col}': Expected '{func}', Found '{pred_func}'")

    #checking for extra columns or extra agg fun in pred 
    for col, func in pred_cols_dict.items():
        if col not in golden_cols_dict:
            if func:
                errors.append(f"Extra Column in Prediction: {func}({col})")
            else:
                errors.append(f"Extra Column in Prediction: {col}")

    #extracting WHERE clauses
    golden_where = extract_where_clause(golden_parsed)
    pred_where = extract_where_clause(pred_parsed)

    #comparing WHERE clauses
    where_errors = compare_where_clauses(golden_where, pred_where)
    errors.extend(where_errors)

    #extracting and comparing GROUP BY clauses 
    golden_group_by = extract_group_by_columns(golden_parsed)
    pred_group_by = extract_group_by_columns(pred_parsed)
    golden_group_by_norm = [col.lower().replace(' ', '') for col in golden_group_by]
    pred_group_by_norm = [col.lower().replace(' ', '') for col in pred_group_by]
    #not necessary for now
    # if set(golden_group_by_norm) != set(pred_group_by_norm):
    #     errors.append("GROUP BY Clause Mismatch")

    #extracting and comparing ORDER BY clauses
    golden_order_by = extract_order_by_clause(golden_parsed)
    pred_order_by = extract_order_by_clause(pred_parsed)
    if golden_order_by != pred_order_by:
        if golden_order_by is not None and pred_order_by is None:
            errors.append("Missing ORDER BY Clause")
        elif golden_order_by is None and pred_order_by is not None:
            errors.append("Redundant ORDER BY Clause")
        #not necessary for now 
        # else:
        #     errors.append("ORDER BY Clause Mismatch")

    #checking for missing or redundant DISTINCT keyword
    if 'distinct' in golden_query.lower() and 'distinct' not in pred_query.lower():
        errors.append("Missing DISTINCT Keyword")
    elif 'distinct' not in golden_query.lower() and 'distinct' in pred_query.lower():
        errors.append("Redundant DISTINCT Keyword")

    #checking for wrong GROUP BY condition
    if 'group by' in golden_query.lower() and 'group by' in pred_query.lower():
        golden_group_by_condition = ' '.join(golden_group_by_norm)
        pred_group_by_condition = ' '.join(pred_group_by_norm)
        if golden_group_by_condition != pred_group_by_condition:
            errors.append("Wrong GROUP BY Condition")

    #checking for redundant operator
    if '1=1' in pred_query.lower() or '0=0' in pred_query.lower():
        errors.append("Redundant Operator")

    #checking for wrong key value
    if 'where' in pred_query.lower():
        # Assuming that '1' and '0' are used in golden_query, and 'yes'/'no' in pred_query
        if ("'yes'" in pred_query.lower() or "'no'" in pred_query.lower()) and ("1" in golden_query or "0" in golden_query):
            errors.append("Wrong Key Value")

    return errors

def main():
    filename = 'm+_errors.sql'
    examples = parse_errors_file(filename)

    results = []

    for idx, example in enumerate(examples):
        golden_query = example.get('golden_query')
        prediction = example.get('prediction')
        db_table = example.get('db_table')

        errors = compare_queries(golden_query, prediction)

        #collecting results like this
        result = {
            'example_number': idx + 1,
            'table': db_table,
            'golden_query': golden_query,
            'prediction': prediction,
            'errors_detected': errors
        }
        results.append(result)

        #printing in console for debugging
        print(f"Example {idx +1}:")
        print(f"Table: {db_table}")
        print(f"Golden Query: {golden_query}")
        print(f"Prediction: {prediction}")
        print(f"Errors Detected: {errors}")
        print('-' * 80)

    #saving to a json file 
    with open('classified_errors.json', 'w') as outfile:
        json.dump(results, outfile, indent=4)

if __name__ == "__main__":
    main()
