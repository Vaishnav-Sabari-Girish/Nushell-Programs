# To create custom commands, we define a function 
## Function 1 (Normal function)
# To create custom commands, we define a function 
## Function 1 (Normal function)
def fun1 [name: string] {       # Parameter set to string
  $"Hello, ($name)"
}

## Function 2 (With default parameter value)
def fun2 [name: string = "Vaishnav"] {
  $"Hello, ($name)"
}

## Function 3 (With named parameter)
def fun3 [
  name: string
  --age: int
] {
  [$name $age]
}

## Function 4 (Using flag as a switch with shorthand)
def fun4 [
    name: string
    --age (-a): int
    --twice
] {
  if $twice {
      [$name $age $name $age]
  } else {
    [$name $age]
  }
}

## Function 5 (Function parameter that takes any number of values)
def fun5 [...name: string] {
  print "Hello All : "
  for $n in $name {
    print $n
  }
}

print "Function type 1 (Normal Function)"
fun1 Vaishnav | print
print "\n"

print "Function type 2 (Default parameter)"
fun2 | print
print "\n"

print "Function type 3 (With argument flags)"
fun3 --age 21 Vaishnav | print
print "\n"

print "Function type 4 (With argument flags shorthand)"
fun4 -a 21 --twice Vaishnav | print
print "\n"

print "Function type 5 (Multiple parameters)"
fun5 Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
print "\n"
