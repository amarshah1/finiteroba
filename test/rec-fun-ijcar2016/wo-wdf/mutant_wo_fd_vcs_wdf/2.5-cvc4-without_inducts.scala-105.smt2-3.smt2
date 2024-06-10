(set-info :smt-lib-version 2.6)
(set-logic AUFBVDTLIA)
(set-info :source |
Generated by: Andrew Reynolds
Generated on: 2017-04-28
Generator: Nunchaku, Leon, CVC4, converted to v2.6 by CVC4
Application: Counterexample generation for higher-order theorem provers
Target solver: CVC4, Z3
Publications: "Model Finding for Recursive Functions in SMT" by Andrew Reynolds, Jasmin Christian Blanchette, Simon Cruanes, and Cesare Tinelli, IJCAR 2016.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)


(declare-datatypes ((Nat!2528 0)) (((succ!2529 (pred!2530 Nat!2528)) (zero!2531))
))
(declare-datatypes ((Lst!2532 0)) (((cons!2533 (head!2534 Nat!2528) (tail!2535 Lst!2532)) (nil!2536))
))
(declare-fun error_value!2537 () Lst!2532)
(declare-fun error_value!2538 () Lst!2532)
(declare-fun rev!275 (Lst!2532) Lst!2532)
(declare-fun append!252 (Lst!2532 Lst!2532) Lst!2532)
(declare-fun error_value!2539 () Lst!2532)
(declare-fun take!260 (Nat!2528 Lst!2532) Lst!2532)
(declare-fun error_value!2540 () Lst!2532)
(declare-fun drop!257 (Nat!2528 Lst!2532) Lst!2532)
(declare-fun error_value!2541 () Nat!2528)
(declare-fun minus!240 (Nat!2528 Nat!2528) Nat!2528)
(declare-fun error_value!2542 () Nat!2528)
(declare-fun len!254 (Lst!2532) Nat!2528)
(declare-sort I_rev!275 0)
(declare-fun rev!275_arg_0_1 (I_rev!275) Lst!2532)
(declare-sort I_append!252 0)
(declare-fun append!252_arg_0_2 (I_append!252) Lst!2532)
(declare-fun append!252_arg_1_3 (I_append!252) Lst!2532)
(declare-sort I_take!260 0)
(declare-fun take!260_arg_0_4 (I_take!260) Nat!2528)
(declare-fun take!260_arg_1_5 (I_take!260) Lst!2532)
(declare-sort I_drop!257 0)
(declare-fun drop!257_arg_0_6 (I_drop!257) Nat!2528)
(declare-fun drop!257_arg_1_7 (I_drop!257) Lst!2532)
(declare-sort I_minus!240 0)
(declare-fun minus!240_arg_0_8 (I_minus!240) Nat!2528)
(declare-fun minus!240_arg_1_9 (I_minus!240) Nat!2528)
(declare-sort I_len!254 0)
(declare-fun len!254_arg_0_10 (I_len!254) Lst!2532)
(assert (forall ((?i I_rev!275)) (and (= (rev!275 (rev!275_arg_0_1 ?i)) (ite ((_ is nil!2536) (rev!275_arg_0_1 ?i)) nil!2536 (ite ((_ is cons!2533) (rev!275_arg_0_1 ?i)) (append!252 (rev!275 (tail!2535 (rev!275_arg_0_1 ?i))) (cons!2533 (head!2534 (rev!275_arg_0_1 ?i)) nil!2536)) error_value!2537))) (ite ((_ is nil!2536) (rev!275_arg_0_1 ?i)) true (ite ((_ is cons!2533) (rev!275_arg_0_1 ?i)) (and (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_2 ?z) (rev!275 (tail!2535 (rev!275_arg_0_1 ?i)))) (= (append!252_arg_1_3 ?z) (cons!2533 (head!2534 (rev!275_arg_0_1 ?i)) nil!2536)))) )) (not (forall ((?z I_rev!275)) (not (= (rev!275_arg_0_1 ?z) (tail!2535 (rev!275_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_append!252)) (and (= (append!252 (append!252_arg_0_2 ?i) (append!252_arg_1_3 ?i)) (ite ((_ is nil!2536) (append!252_arg_0_2 ?i)) (append!252_arg_1_3 ?i) (ite ((_ is cons!2533) (append!252_arg_0_2 ?i)) (cons!2533 (head!2534 (append!252_arg_0_2 ?i)) (append!252 (tail!2535 (append!252_arg_0_2 ?i)) (append!252_arg_1_3 ?i))) error_value!2538))) (ite ((_ is nil!2536) (append!252_arg_0_2 ?i)) true (ite ((_ is cons!2533) (append!252_arg_0_2 ?i)) (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_2 ?z) (tail!2535 (append!252_arg_0_2 ?i))) (= (append!252_arg_1_3 ?z) (append!252_arg_1_3 ?i)))) )) true))) ))
(assert (forall ((?i I_take!260)) (and (= (take!260 (take!260_arg_0_4 ?i) (take!260_arg_1_5 ?i)) (ite ((_ is nil!2536) (take!260_arg_1_5 ?i)) nil!2536 (ite ((_ is zero!2531) (take!260_arg_0_4 ?i)) nil!2536 (ite (and ((_ is cons!2533) (take!260_arg_1_5 ?i)) ((_ is succ!2529) (take!260_arg_0_4 ?i))) (cons!2533 (head!2534 (take!260_arg_1_5 ?i)) (take!260 (pred!2530 (take!260_arg_0_4 ?i)) (tail!2535 (take!260_arg_1_5 ?i)))) error_value!2539)))) (ite ((_ is nil!2536) (take!260_arg_1_5 ?i)) true (ite ((_ is zero!2531) (take!260_arg_0_4 ?i)) true (ite (and ((_ is cons!2533) (take!260_arg_1_5 ?i)) ((_ is succ!2529) (take!260_arg_0_4 ?i))) (not (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_4 ?z) (pred!2530 (take!260_arg_0_4 ?i))) (= (take!260_arg_1_5 ?z) (tail!2535 (take!260_arg_1_5 ?i))))) )) true)))) ))
(assert (forall ((?i I_drop!257)) (and (= (drop!257 (drop!257_arg_0_6 ?i) (drop!257_arg_1_7 ?i)) (ite ((_ is nil!2536) (drop!257_arg_1_7 ?i)) nil!2536 (ite ((_ is zero!2531) (drop!257_arg_0_6 ?i)) (drop!257_arg_1_7 ?i) (ite (and ((_ is cons!2533) (drop!257_arg_1_7 ?i)) ((_ is succ!2529) (drop!257_arg_0_6 ?i))) (drop!257 (pred!2530 (drop!257_arg_0_6 ?i)) (tail!2535 (drop!257_arg_1_7 ?i))) error_value!2540)))) (ite ((_ is nil!2536) (drop!257_arg_1_7 ?i)) true (ite ((_ is zero!2531) (drop!257_arg_0_6 ?i)) true (ite (and ((_ is cons!2533) (drop!257_arg_1_7 ?i)) ((_ is succ!2529) (drop!257_arg_0_6 ?i))) (not (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_6 ?z) (pred!2530 (drop!257_arg_0_6 ?i))) (= (drop!257_arg_1_7 ?z) (tail!2535 (drop!257_arg_1_7 ?i))))) )) true)))) ))
(assert (forall ((?i I_minus!240)) (and (= (minus!240 (minus!240_arg_0_8 ?i) (minus!240_arg_1_9 ?i)) (ite ((_ is zero!2531) (minus!240_arg_0_8 ?i)) zero!2531 (ite ((_ is zero!2531) (minus!240_arg_1_9 ?i)) (minus!240_arg_0_8 ?i) (ite (and ((_ is succ!2529) (minus!240_arg_1_9 ?i)) ((_ is succ!2529) (minus!240_arg_0_8 ?i))) (minus!240 (pred!2530 (minus!240_arg_0_8 ?i)) (pred!2530 (minus!240_arg_1_9 ?i))) error_value!2541)))) (ite ((_ is zero!2531) (minus!240_arg_0_8 ?i)) true (ite ((_ is zero!2531) (minus!240_arg_1_9 ?i)) true (ite (and ((_ is succ!2529) (minus!240_arg_1_9 ?i)) ((_ is succ!2529) (minus!240_arg_0_8 ?i))) (not (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_8 ?z) (pred!2530 (minus!240_arg_0_8 ?i))) (= (minus!240_arg_1_9 ?z) (pred!2530 (minus!240_arg_1_9 ?i))))) )) true)))) ))
(assert (forall ((?i I_len!254)) (and (= (len!254 (len!254_arg_0_10 ?i)) (ite ((_ is nil!2536) (len!254_arg_0_10 ?i)) zero!2531 (ite ((_ is cons!2533) (len!254_arg_0_10 ?i)) (succ!2529 (len!254 (tail!2535 (len!254_arg_0_10 ?i)))) error_value!2542))) (ite ((_ is nil!2536) (len!254_arg_0_10 ?i)) true (ite ((_ is cons!2533) (len!254_arg_0_10 ?i)) (not (forall ((?z I_len!254)) (not (= (len!254_arg_0_10 ?z) (tail!2535 (len!254_arg_0_10 ?i)))) )) true))) ))
(assert (not (forall ((i!517 Nat!2528) (xs!518 Lst!2532)) (or (= (take!260 i!517 xs!518) (drop!257 (minus!240 (len!254 xs!518) i!517) (rev!275 xs!518))) (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_4 ?z) i!517) (= (take!260_arg_1_5 ?z) xs!518))) ) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_6 ?z) (minus!240 (len!254 xs!518) i!517)) (= (drop!257_arg_1_7 ?z) (rev!275 xs!518)))) ) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_8 ?z) (len!254 xs!518)) (= (minus!240_arg_1_9 ?z) i!517))) ) (forall ((?z I_len!254)) (not (= (len!254_arg_0_10 ?z) xs!518)) ) (forall ((?z I_rev!275)) (not (= (rev!275_arg_0_1 ?z) xs!518)) )) )))
(check-sat)
(exit)

