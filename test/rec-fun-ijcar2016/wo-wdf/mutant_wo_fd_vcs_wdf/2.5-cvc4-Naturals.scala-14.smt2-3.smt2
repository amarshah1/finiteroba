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


(declare-datatypes ((Nat!965 0)) (((Succ!966 (x!967 Nat!965)) (Zero!968))
))
(declare-fun error_value!969 () Nat!965)
(declare-fun plus!207 (Nat!965 Nat!965) Nat!965)
(declare-sort I_plus!207 0)
(declare-fun plus!207_arg_0_1 (I_plus!207) Nat!965)
(declare-fun plus!207_arg_1_2 (I_plus!207) Nat!965)
(assert (forall ((?i I_plus!207)) (and (= (plus!207 (plus!207_arg_0_1 ?i) (plus!207_arg_1_2 ?i)) (ite ((_ is Zero!968) (plus!207_arg_0_1 ?i)) (plus!207_arg_1_2 ?i) (ite ((_ is Succ!966) (plus!207_arg_0_1 ?i)) (Succ!966 (plus!207 (x!967 (plus!207_arg_0_1 ?i)) (plus!207_arg_1_2 ?i))) error_value!969))) (ite ((_ is Zero!968) (plus!207_arg_0_1 ?i)) true (ite ((_ is Succ!966) (plus!207_arg_0_1 ?i)) (not (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) (x!967 (plus!207_arg_0_1 ?i))) (= (plus!207_arg_1_2 ?z) (plus!207_arg_1_2 ?i)))) )) true))) ))
(assert (not (forall ((y!225 Nat!965)) (or (= y!225 (plus!207 (plus!207 Zero!968 y!225) Zero!968)) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) (plus!207 Zero!968 y!225)) (= (plus!207_arg_1_2 ?z) Zero!968))) ) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) Zero!968) (= (plus!207_arg_1_2 ?z) y!225))) )) )))
(check-sat)
(exit)

