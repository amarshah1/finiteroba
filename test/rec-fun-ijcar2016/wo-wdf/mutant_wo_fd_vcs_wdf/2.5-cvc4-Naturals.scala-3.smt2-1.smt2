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


(declare-datatypes ((Nat!910 0)) (((Succ!911 (x!912 Nat!910)) (Zero!913))
))
(declare-fun error_value!914 () Nat!910)
(declare-fun plus!207 (Nat!910 Nat!910) Nat!910)
(declare-sort I_plus!207 0)
(declare-fun plus!207_arg_0_1 (I_plus!207) Nat!910)
(declare-fun plus!207_arg_1_2 (I_plus!207) Nat!910)
(assert (forall ((?i I_plus!207)) (and (= (plus!207 (plus!207_arg_0_1 ?i) (plus!207_arg_1_2 ?i)) (ite ((_ is Zero!913) (plus!207_arg_0_1 ?i)) (plus!207_arg_1_2 ?i) (ite ((_ is Succ!911) (plus!207_arg_0_1 ?i)) (Succ!911 (plus!207 (x!912 (plus!207_arg_0_1 ?i)) (plus!207_arg_1_2 ?i))) error_value!914))) (ite ((_ is Zero!913) (plus!207_arg_0_1 ?i)) true (ite ((_ is Succ!911) (plus!207_arg_0_1 ?i)) (not (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) (x!912 (plus!207_arg_0_1 ?i))) (= (plus!207_arg_1_2 ?z) (plus!207_arg_1_2 ?i)))) )) true))) ))
(assert (not (forall ((BOUND_VARIABLE_287 Nat!910)) (or (= (plus!207 BOUND_VARIABLE_287 Zero!913) BOUND_VARIABLE_287) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) BOUND_VARIABLE_287) (= (plus!207_arg_1_2 ?z) Zero!913))) )) )))
(check-sat)
(exit)

