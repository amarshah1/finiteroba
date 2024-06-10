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


(declare-datatypes ((Nat!2484 0)) (((succ!2485 (pred!2486 Nat!2484)) (zero!2487))
))
(declare-fun error_value!2488 () Bool)
(declare-fun leq!234 (Nat!2484 Nat!2484) Bool)
(declare-fun less!231 (Nat!2484 Nat!2484) Bool)
(declare-sort I_leq!234 0)
(declare-fun leq!234_arg_0_1 (I_leq!234) Nat!2484)
(declare-fun leq!234_arg_1_2 (I_leq!234) Nat!2484)
(declare-sort I_less!231 0)
(declare-fun less!231_arg_0_3 (I_less!231) Nat!2484)
(declare-fun less!231_arg_1_4 (I_less!231) Nat!2484)
(assert (forall ((?i I_leq!234)) (and (= (leq!234 (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)) (or (less!231 (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)) (= (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (leq!234_arg_0_1 ?i)) (= (less!231_arg_1_4 ?z) (leq!234_arg_1_2 ?i)))) ))) ))
(assert (forall ((?i I_less!231)) (and (= (less!231 (less!231_arg_0_3 ?i) (less!231_arg_1_4 ?i)) (ite ((_ is zero!2487) (less!231_arg_1_4 ?i)) false (ite (and ((_ is succ!2485) (less!231_arg_1_4 ?i)) ((_ is zero!2487) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!2485) (less!231_arg_1_4 ?i)) ((_ is succ!2485) (less!231_arg_0_3 ?i))) (less!231 (pred!2486 (less!231_arg_0_3 ?i)) (pred!2486 (less!231_arg_1_4 ?i))) error_value!2488)))) (ite ((_ is zero!2487) (less!231_arg_1_4 ?i)) true (ite (and ((_ is succ!2485) (less!231_arg_1_4 ?i)) ((_ is zero!2487) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!2485) (less!231_arg_1_4 ?i)) ((_ is succ!2485) (less!231_arg_0_3 ?i))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (pred!2486 (less!231_arg_0_3 ?i))) (= (less!231_arg_1_4 ?z) (pred!2486 (less!231_arg_1_4 ?i))))) )) true)))) ))
(assert (not (forall ((m!504 Nat!2484) (n!503 Nat!2484)) (or (or (leq!234 m!504 n!503) (forall ((?z I_leq!234)) (not (and (= (leq!234_arg_0_1 ?z) m!504) (= (leq!234_arg_1_2 ?z) n!503))) )) (not (and (leq!234 m!504 (succ!2485 n!503)) (not (forall ((?z I_leq!234)) (not (and (= (leq!234_arg_0_1 ?z) m!504) (= (leq!234_arg_1_2 ?z) (succ!2485 n!503)))) ))))) )))
(check-sat)
(exit)

