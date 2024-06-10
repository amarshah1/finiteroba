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


(declare-datatypes ((Nat!1996 0)) (((succ!1997 (pred!1998 Nat!1996)) (zero!1999))
))
(declare-fun error_value!2000 () Bool)
(declare-fun leq!234 (Nat!1996 Nat!1996) Bool)
(declare-fun less!231 (Nat!1996 Nat!1996) Bool)
(declare-fun error_value!2001 () Nat!1996)
(declare-fun plus!237 (Nat!1996 Nat!1996) Nat!1996)
(declare-sort I_leq!234 0)
(declare-fun leq!234_arg_0_1 (I_leq!234) Nat!1996)
(declare-fun leq!234_arg_1_2 (I_leq!234) Nat!1996)
(declare-sort I_less!231 0)
(declare-fun less!231_arg_0_3 (I_less!231) Nat!1996)
(declare-fun less!231_arg_1_4 (I_less!231) Nat!1996)
(declare-sort I_plus!237 0)
(declare-fun plus!237_arg_0_5 (I_plus!237) Nat!1996)
(declare-fun plus!237_arg_1_6 (I_plus!237) Nat!1996)
(assert (forall ((?i I_leq!234)) (and (= (leq!234 (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)) (or (less!231 (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)) (= (leq!234_arg_0_1 ?i) (leq!234_arg_1_2 ?i)))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (leq!234_arg_0_1 ?i)) (= (less!231_arg_1_4 ?z) (leq!234_arg_1_2 ?i)))) ))) ))
(assert (forall ((?i I_less!231)) (and (= (less!231 (less!231_arg_0_3 ?i) (less!231_arg_1_4 ?i)) (ite ((_ is zero!1999) (less!231_arg_1_4 ?i)) false (ite (and ((_ is succ!1997) (less!231_arg_1_4 ?i)) ((_ is zero!1999) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!1997) (less!231_arg_1_4 ?i)) ((_ is succ!1997) (less!231_arg_0_3 ?i))) (less!231 (pred!1998 (less!231_arg_0_3 ?i)) (pred!1998 (less!231_arg_1_4 ?i))) error_value!2000)))) (ite ((_ is zero!1999) (less!231_arg_1_4 ?i)) true (ite (and ((_ is succ!1997) (less!231_arg_1_4 ?i)) ((_ is zero!1999) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!1997) (less!231_arg_1_4 ?i)) ((_ is succ!1997) (less!231_arg_0_3 ?i))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (pred!1998 (less!231_arg_0_3 ?i))) (= (less!231_arg_1_4 ?z) (pred!1998 (less!231_arg_1_4 ?i))))) )) true)))) ))
(assert (forall ((?i I_plus!237)) (and (= (plus!237 (plus!237_arg_0_5 ?i) (plus!237_arg_1_6 ?i)) (ite ((_ is zero!1999) (plus!237_arg_0_5 ?i)) (plus!237_arg_1_6 ?i) (ite ((_ is succ!1997) (plus!237_arg_0_5 ?i)) (succ!1997 (plus!237 (pred!1998 (plus!237_arg_0_5 ?i)) (plus!237_arg_1_6 ?i))) error_value!2001))) (ite ((_ is zero!1999) (plus!237_arg_0_5 ?i)) true (ite ((_ is succ!1997) (plus!237_arg_0_5 ?i)) (not (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_5 ?z) (pred!1998 (plus!237_arg_0_5 ?i))) (= (plus!237_arg_1_6 ?z) (plus!237_arg_1_6 ?i)))) )) true))) ))
(assert (not (forall ((n!360 Nat!1996) (m!361 Nat!1996)) (or (leq!234 (plus!237 n!360 m!361) n!360) (forall ((?z I_leq!234)) (not (and (= (leq!234_arg_0_1 ?z) (plus!237 n!360 m!361)) (= (leq!234_arg_1_2 ?z) n!360))) ) (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_5 ?z) n!360) (= (plus!237_arg_1_6 ?z) m!361))) )) )))
(check-sat)
(exit)
