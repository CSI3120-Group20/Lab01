# Lab 1

To create executable:
```$ dune build```

To launch the executable:
```$ dune exec lab1```

To run in the OCaml repl (ensure you are in the ```Lab01\lab1\bin``` directory):
```opam exec -- ocaml```
then: 
```
#use "main.ml";;
map2 (fun x y -> x + y) [1; 2; 3] [4; 5; 6];;
filter_even [1; 2; 3; 4; 5; 6];;
compose_functions
reduce (fun x y -> x+y) 0 [1;2;3;4];; 
```

Limited help (ie. understanding error messages, understanding certain operators) from ChatGPT may have been applied throughout the development of our solutions. Solutions have not been copy + pasted.
