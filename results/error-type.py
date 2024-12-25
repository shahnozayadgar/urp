import json
from collections import Counter

# Load the classified errors data
file_path = 'classified_errors.json'
with open(file_path, 'r') as file:
    classified_errors = json.load(file)

# Define groups for related error types
grouped_error_types = {
    "Column Errors": [
        "Extra Column in Prediction", 
        "Missing Column in Prediction", 
        "Duplicate Column Selection", 
        "Missing Column", 
        "Extra Column"
    ],
    "HAVING Clause Errors": [
        "Missing HAVING Clause", 
        "Redundant HAVING Clause", 
        "Wrong Key Value in HAVING Clause", 
        "Wrong Operator in HAVING Clause"
    ],
    "WHERE Clause Errors": [
        "Missing WHERE Clause", 
        "Redundant WHERE Clause"
    ],
    "JOIN Errors": [
        "Extra JOIN Operation", 
        "Redundant JOIN Operation"
    ],
    "DISTINCT Keyword Errors": [
        "Missing DISTINCT Keyword", 
        "Redundant DISTINCT Keyword"
    ],
    "ORDER BY Errors": [
        "Wrong ORDER BY Direction", 
        "Missing ORDER BY Clause", 
        "Redundant ORDER BY Clause"
    ],
    "Unclassified": ["unclassified"]
}

# Initialize grouped error counts
grouped_error_counts = Counter()

# Initialize specific counts for "Column Errors"
column_error_counts = Counter()

# Process errors
for example in classified_errors:
    for error in example.get("errors_detected", []):
        # Group errors into categories
        categorized = False
        for category, error_list in grouped_error_types.items():
            if error in error_list:
                grouped_error_counts[category] += 1
                categorized = True
                break
        if not categorized:
            grouped_error_counts["Other Errors"] += 1

        # Count specific column errors
        if error in grouped_error_types["Column Errors"]:
            column_error_counts[error] += 1

# Print the grouped counts
print("Error Type Counts (Grouped):")
for category, count in grouped_error_counts.items():
    print(f"{category}: {count}")

print("\nColumn Errors Breakdown:")
for error, count in column_error_counts.items():
    print(f"{error}: {count}")