# Glob Command 
# The glob command produces a list of filenames that match the glob pattern
# The inot glob command converts a list or a string into a glob pattern 

# Into glob example
# Print is used to print the value unlike echo which just returns the value
print "Converting into glob"

let value = "hello"
let glob_pattern = ($"*($value)*" | into glob)
ls $glob_pattern

