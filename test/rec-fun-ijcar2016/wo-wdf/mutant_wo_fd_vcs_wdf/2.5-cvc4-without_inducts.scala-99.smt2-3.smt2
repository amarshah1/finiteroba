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


(declare-datatypes ((Nat!2466 0)) (((succ!2467 (pred!2468 Nat!2466)) (zero!2469))
))
(declare-datatypes ((Lst!2470 0)) (((cons!2471 (head!2472 Nat!2466) (tail!2473 Lst!2470)) (nil!2474))
))
(declare-fun error_value!2475 () Bool)
(declare-fun leq!234 (Nat!2466 Nat!2466) Bool)
(declare-fun less!231 (Nat!2466 Nat!2466) Bool)
(declare-fun error_value!2476 () Nat!2466)
(declare-fun len!254 (Lst!2470) Nat!2466)
(declare-fun error_value!2477 () Lst!2470)
(declare-fun delete!273 (Nat!2466 Lst!2470) Lst!2470)
(declare-sort I_leq!234 0)
(declare-fun leq!234_arg_0_1 (I_leq!234) Nat!2466)
(declare-fun leq!234_arg_1_2 (I_leq!234) Nat!2466)
(declare-sort I_less!231 0)
(declare-fun less!231_arg_0_3 (I_less!231) Nat!2466)
(declare-fun less!231_arg_1_4 (I_less!231) Nat!2466)
(declare-sort I_len!254 0)
(declare-fun len!254_arg_0_5 (I_len!254) Lst!2470)
(declare-sort I_delete!273 0)
(declare-fun delete!273_arg_0_6 (I_delete!273) Nat!2466)
(declare-fun delete!273_arg_1_7 (I_delete!273) Lst!2470)
(assert (forall ((?i I_leq!234)) (and (= (leq!234 (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)) (or (less!231 (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)) (= (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (leq!234_arg_0_1 ?i)) (= (less!231_arg_1_4 ?z) (leq!234_arg_1_2 ?i)))) ))) ))
(assert (forall ((?i I_less!231)) (and (= (less!231 (less!231_arg_0_3 ?i) (less!231_arg_1_4 ?i)) (ite ((_ is zero!2469) (less!231_arg_1_4 ?i)) false (ite (and ((_ is succ!2467) (less!231_arg_1_4 ?i)) ((_ is zero!2469) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!2467) (less!231_arg_1_4 ?i)) ((_ is succ!2467) (less!231_arg_0_3 ?i))) (less!231 (pred!2468 (less!231_arg_0_3 ?i)) (pred!2468 (less!231_arg_1_4 ?i))) error_value!2475)))) (ite ((_ is zero!2469) (less!231_arg_1_4 ?i)) true (ite (and ((_ is succ!2467) (less!231_arg_1_4 ?i)) ((_ is zero!2469) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!2467) (less!231_arg_1_4 ?i)) ((_ is succ!2467) (less!231_arg_0_3 ?i))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (pred!2468 (less!231_arg_0_3 ?i))) (= (less!231_arg_1_4 ?z) (pred!2468 (less!231_arg_1_4 ?i))))) )) true)))) ))
(assert (forall ((?i I_len!254)) (and (= (len!254 (len!254_arg_0_5 ?i)) (ite ((_ is nil!2474) (len!254_arg_0_5 ?i)) zero!2469 (ite ((_ is cons!2471) (len!254_arg_0_5 ?i)) (succ!2467 (len!254 (tail!2473 (len!254_arg_0_5 ?i)))) error_value!2476))) (ite ((_ is nil!2474) (len!254_arg_0_5 ?i)) true (ite ((_ is cons!2471) (len!254_arg_0_5 ?i)) (not (forall ((?z I_len!254)) (not (= (len!254_arg_0_5 ?z) (tail!2473 (len!254_arg_0_5 ?i)))) )) true))) ))
(assert (forall ((?i I_delete!273)) (and (= (delete!273 (delete!273_arg_0_6 ?i) (delete!273_arg_1_7 ?i)) (ite ((_ is nil!2474) (delete!273_arg_1_7 ?i)) nil!2474 (ite ((_ is cons!2471) (delete!273_arg_1_7 ?i)) (ite (= (delete!273_arg_0_6 ?i) (head!2472 (delete!273_arg_1_7 ?i))) (delete!273 (delete!273_arg_0_6 ?i) (tail!2473 (delete!273_arg_1_7 ?i))) (cons!2471 (head!2472 (delete!273_arg_1_7 ?i)) (delete!273 (delete!273_arg_0_6 ?i) (tail!2473 (delete!273_arg_1_7 ?i))))) error_value!2477))) (ite ((_ is nil!2474) (delete!273_arg_1_7 ?i)) true (ite ((_ is cons!2471) (delete!273_arg_1_7 ?i)) (ite (= (delete!273_arg_0_6 ?i) (head!2472 (delete!273_arg_1_7 ?i))) (not (forall ((?z I_delete!273)) (not (and (= (delete!273_arg_0_6 ?z) (delete!273_arg_0_6 ?i)) (= (delete!273_arg_1_7 ?z) (tail!2473 (delete!273_arg_1_7 ?i))))) )) (not (forall ((?z I_delete!273)) (not (and (= (delete!273_arg_0_6 ?z) (delete!273_arg_0_6 ?i)) (= (delete!273_arg_1_7 ?z) (tail!2473 (delete!273_arg_1_7 ?i))))) ))) true))) ))
(assert (not (forall ((x!497 Nat!2466) (l!498 Lst!2470)) (or (leq!234 (len!254 (delete!273 (len!254 l!498) l!498)) x!497) (forall ((?z I_leq!234)) (not (and (= (leq!234_arg_0_1 ?z) (len!254 (delete!273 (len!254 l!498) l!498))) (= (leq!234_arg_1_2 ?z) x!497))) ) (forall ((?z I_len!254)) (not (= (len!254_arg_0_5 ?z) (delete!273 (len!254 l!498) l!498))) ) (forall ((?z I_delete!273)) (not (and (= (delete!273_arg_0_6 ?z) (len!254 l!498)) (= (delete!273_arg_1_7 ?z) l!498))) ) (forall ((?z I_len!254)) (not (= (len!254_arg_0_5 ?z) l!498)) )) )))
(check-sat)
(exit)
