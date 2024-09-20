(* Question 1: map2 *)
let rec map2 f x y = 
  if List.length x <> List.length y then raise (Failure "List length unequal!")
  else 
     match(x, y) with
      | ([],[]) -> [] (*If both lists are empty, return empty list*)
      | ([],_::_) -> []
      | (_::_,[]) -> []   
      | (x::xt,y::yt) -> (f x y) :: (map2 f xt yt);; (*Apply function to both lists*)
   
(* call map2 *)
map2


(* Question 2: filter_even *)
let rec filter_even l = 
  (* `l`: list of ints to be filtered *)
  match l with (*recursive function*)
    | [] -> [] (*base case*)
    | h :: t -> (if h mod 2 = 0 then [h] else []) @ (filter_even t);; (*only include the head character if it is even, then continue*)

(* call filter_even *)
filter_even


(* Question 3: compose_functions *)

(*  
    `f`: function f
    `g`: function g
    `x`: input x
*)
let compose_functions f g x = 
    f (g x);;

(* call compose_functions *)
compose_functions


(* Question 4: reduce *)
let rec reduce f acc lst =
  (*  
    `f`: function f
    `acc`: initial value
    `lst`: list to be reduced
  *)
  match lst with (*recursive function*)
    | [] -> acc (*base case*)
    | h :: t -> (reduce f (f acc h) t);; (*apply the function to acc and the head character, then continue*)

(* call reduce *)
reduce