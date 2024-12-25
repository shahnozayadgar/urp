differences_file = 'differences_train-current.sql'

differences_count =0

#open and read the differences file
with open(differences_file, 'r') as file:
    for line in file:
        if line.startswith("Line "):
            differences_count+=1
print(f"number of differences found: {differences_count}")