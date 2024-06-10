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


(declare-datatypes ((Nat!2093 0)) (((succ!2094 (pred!2095 Nat!2093)) (zero!2096))
))
(declare-fun error_value!2097 () Bool)
(declare-fun nmin!249 (Nat!2093 Nat!2093) Nat!2093)
(declare-fun less!231 (Nat!2093 Nat!2093) Bool)
(declare-fun leq!234 (Nat!2093 Nat!2093) Bool)
(declare-sort I_nmin!249 0)
(declare-fun nmin!249_arg_0_1 (I_nmin!249) Nat!2093)
(declare-fun nmin!249_arg_1_2 (I_nmin!249) Nat!2093)
(declare-sort I_less!231 0)
(declare-fun less!231_arg_0_3 (I_less!231) Nat!2093)
(declare-fun less!231_arg_1_4 (I_less!231) Nat!2093)
(declare-sort I_leq!234 0)
(declare-fun leq!234_arg_0_5 (I_leq!234) Nat!2093)
(declare-fun leq!234_arg_1_6 (I_leq!234) Nat!2093)
(assert (forall ((?i I_nmin!249)) (and (= (nmin!249 (nmin!249_arg_0_1 ?i) (nmin!249_arg_1_2 ?i)) (ite (less!231 (nmin!249_arg_0_1 ?i) (nmin!249_arg_1_2 ?i)) (nmin!249_arg_0_1 ?i) (nmin!249_arg_1_2 ?i))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (nmin!249_arg_0_1 ?i)) (= (less!231_arg_1_4 ?z) (nmin!249_arg_1_2 ?i)))) ))) ))
(assert (forall ((?i I_less!231)) (and (= (less!231 (less!231_arg_0_3 ?i) (less!231_arg_1_4 ?i)) (ite ((_ is zero!2096) (less!231_arg_1_4 ?i)) false (ite (and ((_ is succ!2094) (less!231_arg_1_4 ?i)) ((_ is zero!2096) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!2094) (less!231_arg_1_4 ?i)) ((_ is succ!2094) (less!231_arg_0_3 ?i))) (less!231 (pred!2095 (less!231_arg_0_3 ?i)) (pred!2095 (less!231_arg_1_4 ?i))) error_value!2097)))) (ite ((_ is zero!2096) (less!231_arg_1_4 ?i)) true (ite (and ((_ is succ!2094) (less!231_arg_1_4 ?i)) ((_ is zero!2096) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!2094) (less!231_arg_1_4 ?i)) ((_ is succ!2094) (less!231_arg_0_3 ?i))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (pred!2095 (less!231_arg_0_3 ?i))) (= (less!231_arg_1_4 ?z) (pred!2095 (less!231_arg_1_4 ?i))))) )) true)))) ))
(assert (forall ((?i I_leq!234)) (and (= (leq!234 (leq!234_arg_0_5 ?i) (leq!234_arg_1_6 ?i)) (or (less!231 (leq!234_arg_0_5 ?i) (leq!234_arg_1_6 ?i)) (= (leq!234_arg_0_5 ?i) (leq!234_arg_1_6 ?i)))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (leq!234_arg_0_5 ?i)) (= (less!231_arg_1_4 ?z) (leq!234_arg_1_6 ?i)))) ))) ))
(assert (not (forall ((a!403 Nat!2093) (b!404 Nat!2093)) (or (= (nmin!249 a!403 b!404) b!404) (forall ((?z I_nmin!249)) (not (and (= (nmin!249_arg_0_1 ?z) a!403) (= (nmin!249_arg_1_2 ?z) b!404))) )) )))
(check-sat)
(exit)

