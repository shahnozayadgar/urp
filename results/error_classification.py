import sqlparse
from sqlparse.sql import IdentifierList, Identifier, Function, Where
from sqlparse.tokens import Token, Keyword, DML
import re
import json
from collections import Counter

def parse_errors_file(filename):
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
    select_seen = False
    columns = []

    for token in parsed.tokens:
        if token.ttype is DML and token.value.upper() == 'SELECT':
            select_seen = True
            continue
        elif select_seen:
            if token.ttype is Keyword and token.value.upper() == 'FROM':
                break

            # Skip DISTINCT so it's not treated as a column
            if token.ttype is Keyword and token.value.upper() == 'DISTINCT':
                continue

            if isinstance(token, IdentifierList):
                # Only pass actual Identifiers or Functions
                for identifier in token.get_identifiers():
                    columns.extend(_extract_columns_from_identifier(identifier))

            elif isinstance(token, Identifier) or isinstance(token, Function):
                columns.extend(_extract_columns_from_identifier(token))

            # If it's a wildcard
            elif token.ttype is Token.Wildcard:
                columns.append(('*', None))

            # else skip or handle additional cases (e.g. placeholders, etc.)

    return columns

def _extract_columns_from_identifier(token):
    results = []

    # If it's a function, e.g., COUNT(col)
    if isinstance(token, Function):
        func_name = token.get_name().lower()
        params = token.get_parameters()
        # If it has parameters and the first parameter is an Identifier
        if params and isinstance(params[0], Identifier):
            col_name = params[0].get_real_name()
            col_name = col_name.lower() if col_name else None
            results.append((col_name, func_name))
        else:
            results.append((None, func_name))

    # If it's a regular Identifier, e.g. "mycol", "table.mycol AS alias"
    elif isinstance(token, Identifier):
        col_name = token.get_real_name()
        col_name = col_name.lower() if col_name else None
        results.append((col_name, None))

    return results

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

def parse_order_by_items(order_by_str):
    """
    Convert an ORDER BY clause string (e.g. 'birth_date DESC, name ASC')
    into a list of (column, direction) tuples:
        [('birth_date', 'desc'), ('name', 'asc')]
    Default direction to 'asc' if none is specified.
    """
    import re
    if not order_by_str:
        return []

    # The string typically looks like: "birth_datedesc" or "birth_date desc,name asc"
    # We'll replace commas with a standardized separator and split on them
    tokens = order_by_str.split(',')
    items = []

    for token in tokens:
        token = token.strip()
        # A simple regex to match "<col> [<direction>]"
        # direction can be ASC or DESC (case-insensitive)
        # Example: "birth_date desc" => group(1)='birth_date', group(3)='desc'
        match = re.match(r'^(\S+)(\s+(asc|desc))?$', token, flags=re.IGNORECASE)
        if match:
            col = match.group(1)
            # If direction wasn't specified => default 'asc'
            direction = match.group(3).lower() if match.group(3) else 'asc'
            items.append((col, direction))
        else:
            # If parsing fails, store token as-is (you could refine or ignore it)
            items.append((token, None))
    return items

def compare_where_clauses(golden_where, pred_where):
    # comparing WHERE clauses
    errors = []

    # if both empty, no error
    if not golden_where and not pred_where:
        return errors  # No errors
    
    # if golden has WHERE but prediction doesn't
    if golden_where and not pred_where:
        errors.append("Missing WHERE Clause")
        return errors

    # if prediction has WHERE but golden doesn't
    if pred_where and not golden_where:
        errors.append("Redundant WHERE Clause")
        return errors

    # Split the WHERE clauses into condition sets
    golden_conditions = _extract_conditions(golden_where)  
    pred_conditions = _extract_conditions(pred_where)

    # If the sets differ, check for like vs. = (existing logic).
    # Then check for "Wrong Key Value" by matching same columns but different literal strings.
    if golden_conditions != pred_conditions:
        # 1) Handle LIKE vs = mismatch, as in your code
        like_in_pred = any('like' in cond.lower() for cond in pred_conditions)
        equals_in_golden = any('=' in cond and 'like' not in cond.lower() for cond in golden_conditions)
        if like_in_pred and equals_in_golden:
            errors.append("Redundant LIKE Clause")
        elif any('like' in cond.lower() for cond in golden_conditions) and any('=' in cond for cond in pred_conditions):
            errors.append("Missing LIKE Clause")

        # 2) Detect "Wrong Key Value" if the same column & operator but different string literal
        #    We'll do a more direct comparison for each golden condition vs. each pred condition.
        #    This is simplistic; you can refine it for multi-condition WHERE.
        for g_cond in golden_conditions:
            # Example of g_cond: "name = 'Mark Young'"
            # Let’s parse out the col, operator, and literal
            g_parts = parse_column_operator_value(g_cond)
            if not g_parts:
                continue  # skip if we can't parse

            for p_cond in pred_conditions:
                p_parts = parse_column_operator_value(p_cond)
                if not p_parts:
                    continue

                # If column and operator match, but the literal value is different
                if (g_parts['column'].lower() == p_parts['column'].lower() and
                    g_parts['operator'] == p_parts['operator'] and
                    g_parts['value'].lower() != p_parts['value'].lower()):
                    # e.g. 'Mark Young' vs. 'Mark'
                    errors.append("Wrong Key Value")

    return errors


def _extract_conditions(where_clause):
    import re
    # Remove the "WHERE" keyword if present
    clause = re.sub(r'^where\s+', '', where_clause, flags=re.IGNORECASE)
    # Split on AND/OR to get each condition
    parts = re.split(r'\s+(AND|OR)\s+', clause, flags=re.IGNORECASE)
    # Filter out "AND" / "OR" from the list and strip whitespace
    return set(p.strip() for p in parts if p.upper() not in ["AND","OR",""])


def parse_column_operator_value(condition_str):
    import re
    # A simplistic regex that matches something like: col op val
    # (We assume col, op, val have no internal spaces around the operator)
    match = re.match(r"^(.+?)(=|>|<|>=|<=|<>|!=|like)\s+(.+)$", condition_str, flags=re.IGNORECASE)
    if match:
        col, op, val = match.groups()
        # Remove any extra quotes around the value
        val = val.strip()
        col = col.strip()
        return {"column": col, "operator": op.lower(), "value": val.strip("'\" ")}
    return None

def detect_join_issues(golden_query: str, pred_query: str) -> str or None:
    # Normalize for simpler checks
    g_lower = golden_query.lower()
    p_lower = pred_query.lower()

    # If the golden query has a JOIN, do not classify "redundant" or "extra"
    # (the user might want more advanced logic, e.g., comparing the joined tables)
    if " join " in g_lower:
        return None
    
    # If the predicted query does not have a JOIN, no error here
    if " join " not in p_lower:
        return None
    
    # Now, we know:
    # - golden doesn't have a JOIN,
    # - predicted does have a JOIN.

    # Parse the predicted query to inspect JOIN tokens
    parsed = sqlparse.parse(pred_query)
    if not parsed:
        return None

    # We'll search for the ON condition in the predicted tokens
    # to see if it's trivial.
    on_conditions = []

    # We iterate over all tokens in the main statement
    for token in parsed[0].tokens:
        # We only care about tokens that are themselves "JOIN" or contain them (like sub-statements).
        if token.is_group:
            # If it's a group, we can recurse into the group tokens
            for subtoken in token.flatten():
                if subtoken.ttype is Keyword and subtoken.value.upper() == "JOIN":
                    # Next, find the ON part after this JOIN
                    pass  # We'll handle it below or in a separate pass
        else:
            # You could handle top-level tokens here if needed
            pass

    # A simpler approach is to just *string-search* for "JOIN ... ON ..." 
    # and see if the ON clause looks trivial
    # Example: "JOIN flight ON aid = aid"
    # We'll do a quick regex-based approach as a demonstration:
    join_pattern = r'\bjoin\b\s+[^\s]+\s+\bon\b\s+([^;]+)'
    match = re.search(join_pattern, p_lower, flags=re.IGNORECASE)
    if match:
        on_clause = match.group(1).strip()
        # e.g. "aid = aid" or "1=1"
        # Let's define "trivial" as something that only compares identical columns/values
        # or 1=1, 0=0, etc.
        if re.match(r'^[\(\s]*([a-zA-Z0-9_.]+)\s*=\s*\1[\)\s]*$', on_clause):
            return "Redundant JOIN Operation"
        if on_clause in ["1=1", "0=0"]:
            return "Redundant JOIN Operation"
        # If we want to say "Extra JOIN Operation" if it's non-trivial:
        return "Extra JOIN Operation"

    return None

def extract_having_clause(parsed):
    """
    Extract the HAVING clause from a parsed SQL statement.
    Return it as a lowercase string (with minimal spacing).
    """
    having_clause = None
    having_seen = False

    for token in parsed.tokens:
        # If the token is a HAVING keyword
        if token.ttype is Keyword and token.value.upper() == 'HAVING':
            having_seen = True
            having_clause = ''
            continue
        if having_seen:
            # If we hit another major keyword (e.g., ORDER BY, LIMIT), stop
            if (token.ttype is Keyword and token.value.upper() in ['ORDER', 'LIMIT', 'GROUP', 'UNION', 'EXCEPT', 'INTERSECT']) \
               or token.ttype is DML:
                break
            having_clause += str(token).lower().replace('"', "'").strip()

    # Clean up spaces
    if having_clause:
        # This just normalizes multiple spaces
        having_clause = " ".join(having_clause.split())
    return having_clause

import re

def parse_having_condition(condition_str):
    """
    Parse something like:
      "avg(gross_in_dollar) >= 4500000"
    into { "aggregator": "avg", "column": "gross_in_dollar", 
           "operator": ">=", "value": "4500000" }.
    If parsing fails, returns None.
    """
    # Regex steps:
    #  1) aggregator(col)  => e.g. avg(  gross_in_dollar )
    #  2) operator         => e.g. >=, >, <, etc.
    #  3) value            => e.g. 4500000
    #
    # We'll do a simplistic pattern:  ^(\w+)\s*\(\s*(\w+)\s*\)\s*(=|>=|<=|<>|!=|>|<|like)\s*(.+)$
    # You can refine to handle quoted identifiers, etc.

    pattern = r'^(\w+)\s*\(\s*([\w.]+)\s*\)\s*(=|>=|<=|<>|!=|>|<|like)\s*(.+)$'
    match = re.match(pattern, condition_str, flags=re.IGNORECASE)
    if match:
        aggregator, col, op, val = match.groups()
        return {
            "aggregator": aggregator.lower(),
            "column": col.lower(),
            "operator": op.lower(),
            "value": val.strip("'\" ")
        }
    return None

def compare_having_clauses(golden_having, pred_having):
    """
    Compare two HAVING clauses (strings).
    Return a list of detected errors, e.g. ["Wrong Operator in HAVING Clause"].
    """
    errors = []

    # 1) If both are empty => no errors
    if not golden_having and not pred_having:
        return errors
    
    # 2) If golden has HAVING but pred doesn't
    if golden_having and not pred_having:
        errors.append("Missing HAVING Clause")
        return errors

    # 3) If pred has HAVING but golden doesn't
    if pred_having and not golden_having:
        errors.append("Redundant HAVING Clause")
        return errors

    # 4) Now both non-empty. Let's parse them (assuming a single condition).
    golden_parsed = parse_having_condition(golden_having)
    pred_parsed = parse_having_condition(pred_having)

    # If either failed to parse, do general mismatch or skip
    if not golden_parsed or not pred_parsed:
        # Could do: errors.append("HAVING Clause Mismatch")
        return errors

    # aggregator mismatch?
    if golden_parsed["aggregator"] != pred_parsed["aggregator"]:
        errors.append("Wrong Aggregator in HAVING Clause")

    # column mismatch?
    if golden_parsed["column"] != pred_parsed["column"]:
        errors.append("Wrong Column in HAVING Clause")

    # operator mismatch? (>= vs >)
    if golden_parsed["operator"] != pred_parsed["operator"]:
        errors.append("Wrong Operator in HAVING Clause")

    # value mismatch? e.g. 4500000 vs 5000000
    if golden_parsed["value"] != pred_parsed["value"]:
        errors.append("Wrong Key Value in HAVING Clause")

    return errors

def compare_queries(golden_query, pred_query):
    #comparing the golden truth and pred to see differences
    errors = []

    golden_parsed = parse_query(golden_query)
    pred_parsed = parse_query(pred_query)

    if not golden_parsed or not pred_parsed:
        errors.append("Invalid SQL query")
        return errors
    
      # Finally, detect redundant joins or extra joins:
    join_issue = detect_join_issues(golden_query, pred_query)
    if join_issue:
        errors.append(join_issue)
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
                errors.append(f"Missing Column: {func}({col})")
            else:
                errors.append(f"Missing Column: {col}")
        else:
            pred_func = pred_cols_dict[col]
            if func != pred_func:
                if func and not pred_func:
                    errors.append(f"Missing Aggregation Function: {func}({col})")
                elif not func and pred_func:
                    errors.append(f"Extra Aggregation Function: {pred_func}({col})")
                else:
                    errors.append(f"Aggregation Function Mismatch for Column '{col}': Expected '{func}', Found '{pred_func}'")

    #checking for extra columns or extra agg fun in pred 
    for col, func in pred_cols_dict.items():
        if col not in golden_cols_dict:
            if func:
                errors.append(f"Extra Column: {func}({col})")
            else:
                errors.append(f"Extra Column: {col}")

    # WHERE Clause comparison
    golden_where = extract_where_clause(golden_parsed)
    pred_where = extract_where_clause(pred_parsed)
    where_errors = compare_where_clauses(golden_where, pred_where)
    errors.extend(where_errors)

    # Now compare HAVING
    golden_having = extract_having_clause(golden_parsed)
    pred_having = extract_having_clause(pred_parsed)

    having_errors = compare_having_clauses(golden_having, pred_having)
    errors.extend(having_errors)


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
        else:
        # Both are non-empty, so let's see if there's a direction mismatch
            golden_items = parse_order_by_items(golden_order_by)
            pred_items = parse_order_by_items(pred_order_by)

            if len(golden_items) == len(pred_items):
                for (g_col, g_dir), (p_col, p_dir) in zip(golden_items, pred_items):
                    if g_col == p_col and g_dir != p_dir:
                        errors.append("Wrong ORDER BY Direction")
        # else do nothing or errors.append("ORDER BY Clause Mismatch")

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

    #for now labeled as unclassified, but later need to add additional logic 
    if not errors:
        errors.append("unclassified")

    return errors

def main():
    filename = 'differences_train-current.sql'
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
