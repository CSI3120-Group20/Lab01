(* Question 1: map2 *)

(* Question 2: filter_even *)

(* This function from OCaml Documentation > Learn > Language > Lists *)
let filter_even l = List.filter (fun x -> x mod 2 = 0) l ;;

let string_of_int_list : int list -> string ;

(* Question 3: compose_functions *)

(* Question 4: reduce *)

(* Example usage *)
let () = print_endline "Question 2";;
let () = print_endline (string_of_int_list (filter_even [8; 29; -10; 3; -1; 0; 4]));;