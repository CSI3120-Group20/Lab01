# Lab 1

To run in the OCaml repl (ensure you are in the same directory as main.ml):
```opam exec -- ocaml```
then: 
```
#use "main.ml";;
map2 (fun x y -> x + y) [1; 2; 3] [4; 5; 6];;
filter_even [1; 2; 3; 4; 5; 6];;
let composed = compose_functions (fun x -> x * 2) (fun y -> y + 3);;
composed 5;;
reduce (fun x y -> x+y) 0 [1;2;3;4];; 
```

Limited help (ie. understanding error messages, understanding certain operators) from ChatGPT may have been applied throughout the development of our solutions. Solutions have not been copy + pasted.
