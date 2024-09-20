(* Question 1: map2 *)
let rec map2 f x y = 
  if List.length x <> List.length y then raise (Failure "List length unequal!")
  else 
     match(x, y) with
      | ([],[]) -> [] (*If both lists are empty, return empty list*)
      | ([],_::_) -> []
      | (_::_,[]) -> []   
      | (x::xt,y::yt) -> (f x y) :: (map2 f xt yt);; (*Apply function to both lists*)
        
map2
(* Question 2: filter_even *)
let rec filter_even l = 
  match l with
    | [] -> []
    | h :: t -> (if h mod 2 = 0 then [h] else []) @ (filter_even t);;

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
  match lst with
    | [] -> acc
    | h :: t -> (reduce f (f acc h) t);;

reduce