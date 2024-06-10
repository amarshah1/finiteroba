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


(declare-datatypes ((Nat!2424 0)) (((succ!2425 (pred!2426 Nat!2424)) (zero!2427))
))
(declare-datatypes ((Lst!2428 0)) (((cons!2429 (head!2430 Nat!2424) (tail!2431 Lst!2428)) (nil!2432))
))
(declare-fun error_value!2433 () Bool)
(declare-fun less!231 (Nat!2424 Nat!2424) Bool)
(declare-fun error_value!2434 () Nat!2424)
(declare-fun len!254 (Lst!2428) Nat!2424)
(declare-fun error_value!2435 () Nat!2424)
(declare-fun last!265 (Lst!2428) Nat!2424)
(declare-fun error_value!2436 () Lst!2428)
(declare-fun drop!257 (Nat!2424 Lst!2428) Lst!2428)
(declare-sort I_less!231 0)
(declare-fun less!231_arg_0_1 (I_less!231) Nat!2424)
(declare-fun less!231_arg_1_2 (I_less!231) Nat!2424)
(declare-sort I_len!254 0)
(declare-fun len!254_arg_0_3 (I_len!254) Lst!2428)
(declare-sort I_last!265 0)
(declare-fun last!265_arg_0_4 (I_last!265) Lst!2428)
(declare-sort I_drop!257 0)
(declare-fun drop!257_arg_0_5 (I_drop!257) Nat!2424)
(declare-fun drop!257_arg_1_6 (I_drop!257) Lst!2428)
(assert (forall ((?i I_less!231)) (and (= (less!231 (less!231_arg_0_1 ?i) (less!231_arg_1_2 ?i)) (ite ((_ is zero!2427) (less!231_arg_1_2 ?i)) false (ite (and ((_ is succ!2425) (less!231_arg_1_2 ?i)) ((_ is zero!2427) (less!231_arg_0_1 ?i))) true (ite (and ((_ is succ!2425) (less!231_arg_1_2 ?i)) ((_ is succ!2425) (less!231_arg_0_1 ?i))) (less!231 (pred!2426 (less!231_arg_0_1 ?i)) (pred!2426 (less!231_arg_1_2 ?i))) error_value!2433)))) (ite ((_ is zero!2427) (less!231_arg_1_2 ?i)) true (ite (and ((_ is succ!2425) (less!231_arg_1_2 ?i)) ((_ is zero!2427) (less!231_arg_0_1 ?i))) true (ite (and ((_ is succ!2425) (less!231_arg_1_2 ?i)) ((_ is succ!2425) (less!231_arg_0_1 ?i))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_1 ?z) (pred!2426 (less!231_arg_0_1 ?i))) (= (less!231_arg_1_2 ?z) (pred!2426 (less!231_arg_1_2 ?i))))) )) true)))) ))
(assert (forall ((?i I_len!254)) (and (= (len!254 (len!254_arg_0_3 ?i)) (ite ((_ is nil!2432) (len!254_arg_0_3 ?i)) zero!2427 (ite ((_ is cons!2429) (len!254_arg_0_3 ?i)) (succ!2425 (len!254 (tail!2431 (len!254_arg_0_3 ?i)))) error_value!2434))) (ite ((_ is nil!2432) (len!254_arg_0_3 ?i)) true (ite ((_ is cons!2429) (len!254_arg_0_3 ?i)) (not (forall ((?z I_len!254)) (not (= (len!254_arg_0_3 ?z) (tail!2431 (len!254_arg_0_3 ?i)))) )) true))) ))
(assert (forall ((?i I_last!265)) (and (= (last!265 (last!265_arg_0_4 ?i)) (ite ((_ is nil!2432) (last!265_arg_0_4 ?i)) zero!2427 (ite ((_ is cons!2429) (last!265_arg_0_4 ?i)) (ite (= (tail!2431 (last!265_arg_0_4 ?i)) nil!2432) (head!2430 (last!265_arg_0_4 ?i)) (last!265 (tail!2431 (last!265_arg_0_4 ?i)))) error_value!2435))) (ite ((_ is nil!2432) (last!265_arg_0_4 ?i)) true (ite ((_ is cons!2429) (last!265_arg_0_4 ?i)) (ite (= (tail!2431 (last!265_arg_0_4 ?i)) nil!2432) true (not (forall ((?z I_last!265)) (not (= (last!265_arg_0_4 ?z) (tail!2431 (last!265_arg_0_4 ?i)))) ))) true))) ))
(assert (forall ((?i I_drop!257)) (and (= (drop!257 (drop!257_arg_0_5 ?i) (drop!257_arg_1_6 ?i)) (ite ((_ is nil!2432) (drop!257_arg_1_6 ?i)) nil!2432 (ite ((_ is zero!2427) (drop!257_arg_0_5 ?i)) (drop!257_arg_1_6 ?i) (ite (and ((_ is cons!2429) (drop!257_arg_1_6 ?i)) ((_ is succ!2425) (drop!257_arg_0_5 ?i))) (drop!257 (pred!2426 (drop!257_arg_0_5 ?i)) (tail!2431 (drop!257_arg_1_6 ?i))) error_value!2436)))) (ite ((_ is nil!2432) (drop!257_arg_1_6 ?i)) true (ite ((_ is zero!2427) (drop!257_arg_0_5 ?i)) true (ite (and ((_ is cons!2429) (drop!257_arg_1_6 ?i)) ((_ is succ!2425) (drop!257_arg_0_5 ?i))) (not (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_5 ?z) (pred!2426 (drop!257_arg_0_5 ?i))) (= (drop!257_arg_1_6 ?z) (tail!2431 (drop!257_arg_1_6 ?i))))) )) true)))) ))
(assert (not (forall ((n!486 Nat!2424) (xs!487 Lst!2428)) (or (or (= (len!254 xs!487) (last!265 xs!487)) (forall ((?z I_len!254)) (not (= (len!254_arg_0_3 ?z) xs!487)) ) (forall ((?z I_last!265)) (not (= (last!265_arg_0_4 ?z) xs!487)) )) (not (and (less!231 n!486 (last!265 (drop!257 n!486 xs!487))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_1 ?z) n!486) (= (less!231_arg_1_2 ?z) (last!265 (drop!257 n!486 xs!487))))) )) (not (forall ((?z I_last!265)) (not (= (last!265_arg_0_4 ?z) (drop!257 n!486 xs!487))) )) (not (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_5 ?z) n!486) (= (drop!257_arg_1_6 ?z) xs!487))) ))))) )))
(check-sat)
(exit)

