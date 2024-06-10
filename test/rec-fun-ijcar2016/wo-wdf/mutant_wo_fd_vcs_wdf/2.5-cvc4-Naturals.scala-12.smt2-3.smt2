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


(declare-datatypes ((Nat!955 0)) (((Succ!956 (x!957 Nat!955)) (Zero!958))
))
(declare-fun error_value!959 () Nat!955)
(declare-fun plus!207 (Nat!955 Nat!955) Nat!955)
(declare-sort I_plus!207 0)
(declare-fun plus!207_arg_0_1 (I_plus!207) Nat!955)
(declare-fun plus!207_arg_1_2 (I_plus!207) Nat!955)
(assert (forall ((?i I_plus!207)) (and (= (plus!207 (plus!207_arg_0_1 ?i) (plus!207_arg_1_2 ?i)) (ite ((_ is Zero!958) (plus!207_arg_0_1 ?i)) (plus!207_arg_1_2 ?i) (ite ((_ is Succ!956) (plus!207_arg_0_1 ?i)) (Succ!956 (plus!207 (x!957 (plus!207_arg_0_1 ?i)) (plus!207_arg_1_2 ?i))) error_value!959))) (ite ((_ is Zero!958) (plus!207_arg_0_1 ?i)) true (ite ((_ is Succ!956) (plus!207_arg_0_1 ?i)) (not (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) (x!957 (plus!207_arg_0_1 ?i))) (= (plus!207_arg_1_2 ?z) (plus!207_arg_1_2 ?i)))) )) true))) ))
(assert (not (forall ((y!222 Nat!955)) (or (= (plus!207 (Succ!956 y!222) Zero!958) (plus!207 y!222 Zero!958)) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) (Succ!956 y!222)) (= (plus!207_arg_1_2 ?z) Zero!958))) ) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) y!222) (= (plus!207_arg_1_2 ?z) Zero!958))) )) )))
(check-sat)
(exit)

