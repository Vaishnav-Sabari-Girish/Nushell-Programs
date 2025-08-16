# Pattern Matching 

let foo = { name : 'Vaishnav', count: 8 }
match $foo { 
  { name: 'Vaishnav', count: $it } => ($it + 3),
  { name : _, count : $it} => ($it + 7),
  _ => 1

}
