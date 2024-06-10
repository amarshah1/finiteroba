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


(declare-datatypes ((Nat!1965 0)) (((succ!1966 (pred!1967 Nat!1965)) (zero!1968))
))
(declare-fun error_value!1969 () Bool)
(declare-fun less!231 (Nat!1965 Nat!1965) Bool)
(declare-fun error_value!1970 () Nat!1965)
(declare-fun plus!237 (Nat!1965 Nat!1965) Nat!1965)
(declare-sort I_less!231 0)
(declare-fun less!231_arg_0_1 (I_less!231) Nat!1965)
(declare-fun less!231_arg_1_2 (I_less!231) Nat!1965)
(declare-sort I_plus!237 0)
(declare-fun plus!237_arg_0_3 (I_plus!237) Nat!1965)
(declare-fun plus!237_arg_1_4 (I_plus!237) Nat!1965)
(assert (forall ((?i I_less!231)) (and (= (less!231 (less!231_arg_0_1 ?i) (less!231_arg_1_2 ?i)) (ite ((_ is zero!1968) (less!231_arg_1_2 ?i)) false (ite (and ((_ is succ!1966) (less!231_arg_1_2 ?i)) ((_ is zero!1968) (less!231_arg_0_1 ?i))) true (ite (and ((_ is succ!1966) (less!231_arg_1_2 ?i)) ((_ is succ!1966) (less!231_arg_0_1 ?i))) (less!231 (pred!1967 (less!231_arg_0_1 ?i)) (pred!1967 (less!231_arg_1_2 ?i))) error_value!1969)))) (ite ((_ is zero!1968) (less!231_arg_1_2 ?i)) true (ite (and ((_ is succ!1966) (less!231_arg_1_2 ?i)) ((_ is zero!1968) (less!231_arg_0_1 ?i))) true (ite (and ((_ is succ!1966) (less!231_arg_1_2 ?i)) ((_ is succ!1966) (less!231_arg_0_1 ?i))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_1 ?z) (pred!1967 (less!231_arg_0_1 ?i))) (= (less!231_arg_1_2 ?z) (pred!1967 (less!231_arg_1_2 ?i))))) )) true)))) ))
(assert (forall ((?i I_plus!237)) (and (= (plus!237 (plus!237_arg_0_3 ?i) (plus!237_arg_1_4 ?i)) (ite ((_ is zero!1968) (plus!237_arg_0_3 ?i)) (plus!237_arg_1_4 ?i) (ite ((_ is succ!1966) (plus!237_arg_0_3 ?i)) (succ!1966 (plus!237 (pred!1967 (plus!237_arg_0_3 ?i)) (plus!237_arg_1_4 ?i))) error_value!1970))) (ite ((_ is zero!1968) (plus!237_arg_0_3 ?i)) true (ite ((_ is succ!1966) (plus!237_arg_0_3 ?i)) (not (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_3 ?z) (pred!1967 (plus!237_arg_0_3 ?i))) (= (plus!237_arg_1_4 ?z) (plus!237_arg_1_4 ?i)))) )) true))) ))
(assert (not (forall ((i!352 Nat!1965) (m!353 Nat!1965)) (or (less!231 (plus!237 i!352 m!353) (succ!1966 i!352)) (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_1 ?z) (plus!237 i!352 m!353)) (= (less!231_arg_1_2 ?z) (succ!1966 i!352)))) ) (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_3 ?z) i!352) (= (plus!237_arg_1_4 ?z) m!353))) )) )))
(check-sat)
(exit)

