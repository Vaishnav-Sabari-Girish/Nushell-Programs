# Variables are immutable by default

print $"(ansi green_bold)Variable Declaration (ansi reset)"
let val = 42
print $val

# Shadowing variable (Declaring variable with same name in a different scope)

print $"(ansi purple_bold)Shadowing Variable (ansi reset)"
do { let val = 101; print $val }

print $val

# Mutable variable

print $"(ansi red_bold)Mutable Variable (ansi reset)"

mut val = 42
$val += 27
print $val
