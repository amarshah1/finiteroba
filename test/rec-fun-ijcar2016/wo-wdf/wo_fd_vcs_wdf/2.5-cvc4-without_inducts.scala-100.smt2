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


(declare-datatypes ((Nat!2478 0)) (((succ!2479 (pred!2480 Nat!2478)) (zero!2481))
))
(declare-fun error_value!2482 () Bool)
(declare-fun leq!234 (Nat!2478 Nat!2478) Bool)
(declare-fun less!231 (Nat!2478 Nat!2478) Bool)
(declare-fun error_value!2483 () Nat!2478)
(declare-fun plus!237 (Nat!2478 Nat!2478) Nat!2478)
(declare-sort I_leq!234 0)
(declare-fun leq!234_arg_0_1 (I_leq!234) Nat!2478)
(declare-fun leq!234_arg_1_2 (I_leq!234) Nat!2478)
(declare-sort I_less!231 0)
(declare-fun less!231_arg_0_3 (I_less!231) Nat!2478)
(declare-fun less!231_arg_1_4 (I_less!231) Nat!2478)
(declare-sort I_plus!237 0)
(declare-fun plus!237_arg_0_5 (I_plus!237) Nat!2478)
(declare-fun plus!237_arg_1_6 (I_plus!237) Nat!2478)
(assert (forall ((?i I_leq!234)) (and (= (leq!234 (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)) (or (less!231 (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)) (= (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (leq!234_arg_0_1 ?i)) (= (less!231_arg_1_4 ?z) (leq!234_arg_1_2 ?i)))) ))) ))
(assert (forall ((?i I_less!231)) (and (= (less!231 (less!231_arg_0_3 ?i) (less!231_arg_1_4 ?i)) (ite ((_ is zero!2481) (less!231_arg_1_4 ?i)) false (ite (and ((_ is succ!2479) (less!231_arg_1_4 ?i)) ((_ is zero!2481) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!2479) (less!231_arg_1_4 ?i)) ((_ is succ!2479) (less!231_arg_0_3 ?i))) (less!231 (pred!2480 (less!231_arg_0_3 ?i)) (pred!2480 (less!231_arg_1_4 ?i))) error_value!2482)))) (ite ((_ is zero!2481) (less!231_arg_1_4 ?i)) true (ite (and ((_ is succ!2479) (less!231_arg_1_4 ?i)) ((_ is zero!2481) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!2479) (less!231_arg_1_4 ?i)) ((_ is succ!2479) (less!231_arg_0_3 ?i))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (pred!2480 (less!231_arg_0_3 ?i))) (= (less!231_arg_1_4 ?z) (pred!2480 (less!231_arg_1_4 ?i))))) )) true)))) ))
(assert (forall ((?i I_plus!237)) (and (= (plus!237 (plus!237_arg_0_5 ?i) (plus!237_arg_1_6 ?i)) (ite ((_ is zero!2481) (plus!237_arg_0_5 ?i)) (plus!237_arg_1_6 ?i) (ite ((_ is succ!2479) (plus!237_arg_0_5 ?i)) (succ!2479 (plus!237 (pred!2480 (plus!237_arg_0_5 ?i)) (plus!237_arg_1_6 ?i))) error_value!2483))) (ite ((_ is zero!2481) (plus!237_arg_0_5 ?i)) true (ite ((_ is succ!2479) (plus!237_arg_0_5 ?i)) (not (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_5 ?z) (pred!2480 (plus!237_arg_0_5 ?i))) (= (plus!237_arg_1_6 ?z) (plus!237_arg_1_6 ?i)))) )) true))) ))
(assert (exists ((n!500 Nat!2478) (m!501 Nat!2478)) (not (or (leq!234 n!500 (plus!237 m!501 n!500)) (forall ((?z I_leq!234)) (not (and (= (leq!234_arg_0_1 ?z) n!500) (= (leq!234_arg_1_2 ?z) (plus!237 m!501 n!500)))) ) (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_5 ?z) m!501) (= (plus!237_arg_1_6 ?z) n!500))) ))) ))
(check-sat)
(exit)
