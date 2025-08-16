# This command tells how long it takes to execute an operation

# each keyword 

timeit { 
  let randoms = (1..50_000 | each {random int})
}

# For Loop (Take longer)
# timeit { 
  # mut randoms = []
  # for _ in 1..50_000 { 
    #$randoms = ($randoms | append (random int))
  #}
#}
