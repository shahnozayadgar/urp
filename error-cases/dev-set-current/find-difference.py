import re #python in built module for working with regular expressions which is used to match pattern in text


def normalize_caps(sql):
    #removing extra whitespace around symbol and inside parentheses
    sql = re.sub(r"\s*\(\s*", "(", sql) #removes whitespace inside paranthesis
    sql = re.sub(r"\s*\)\s*", ")", sql) #removes whitespace inside paranthesis
    sql = re.sub(r"\s*\=\s*", "=", sql) #removes whitespace around =
    sql = re.sub(r"\s*\>\s*", ">", sql) #removes whitespace around >
    sql = re.sub(r"\s*<\s*", "<", sql)   # Remove spaces around '<'
    sql = re.sub(r"\s*\,\s*", ",", sql) #removes whitespace around ,
    # Remove "ASC" in "ORDER BY ... ASC" (default ordering is ASC, so it's redundant)
    sql = re.sub(r"\bORDER BY\s+(\w+(\s*,\s*\w+)*)\s+ASC\b", r"ORDER BY \1", sql, flags=re.IGNORECASE)
    sql = re.sub(r'"', "'", sql) #normalize quote, converting double quotes to single quotes
     # Remove spaces inside function calls like "AVG( column_name )"
    sql = re.sub(r"\b(\w+)\s*\(\s*(.*?)\s*\)", r"\1(\2)", sql)
    sql = sql.strip().lower()
    return sql

#defining paths for my sql files
golden_truth_file = 'filtered_dev-current.sql'
prediction_file = 'normalized_filtered_pred-current.sql'
differences_file = 'differences_dev-current.sql'

#opening the file and comparing line by line
with open(golden_truth_file, 'r') as gt, open(prediction_file, 'r') as pred, open(differences_file, 'w') as diff:
    gt_lines = gt.readlines()
    pred_lines = pred.readlines()

    #iterating over the lines to gind differences
    for i,(gt_line, pred_line) in enumerate(zip(gt_lines, pred_lines), start=1):
        #normalizing to ignore white spaces and cases
        if normalize_caps(gt_line) != normalize_caps(pred_line):
            diff.write(f"Line {i}:\n")
            diff.write(f"golden truth: {gt_line}")
            diff.write(f"prediction: {pred_line}\n")
            diff.write("\n")
print("differences have been recorded in differences.sql.")