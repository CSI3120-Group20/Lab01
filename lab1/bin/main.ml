(* Question 1: map2 *)

(* Question 2: filter_even *)
let rec filter_even l = 
  match l with
  | [] -> []
  | h :: t -> (if h mod 2 = 0 then [h] else []) @ (filter_even t);;

filter_even
(* Question 3: compose_functions *)

(* Question 4: reduce *)
let rec reduce f acc lst = 
  match lst with
  | [] -> acc
  | h :: t -> (f h (reduce f acc t));;

reduce