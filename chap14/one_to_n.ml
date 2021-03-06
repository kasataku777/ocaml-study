(* 目的:ｎから1までのリスト *)
let rec enumerate n = 
if n= 0 then [] else n ::enumerate (n-1)


(* 目的:1から受け取った自然数nまでの合計 *)
(* one_to_n : int -> int *)
let one_to_n n = 
List.fold_right (+) (enumerate n) 0

(* test *)
let test1= one_to_n 0 = 0
let test2= one_to_n 1 = 1
let test3= one_to_n 2 = 3
let test4= one_to_n 10 = 55
