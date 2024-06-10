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


(declare-datatypes ((Nat!925 0)) (((Succ!926 (x!927 Nat!925)) (Zero!928))
))
(declare-fun error_value!929 () Nat!925)
(declare-fun plus!207 (Nat!925 Nat!925) Nat!925)
(declare-sort I_plus!207 0)
(declare-fun plus!207_arg_0_1 (I_plus!207) Nat!925)
(declare-fun plus!207_arg_1_2 (I_plus!207) Nat!925)
(assert (forall ((?i I_plus!207)) (and (= (plus!207 (plus!207_arg_0_1 ?i) (plus!207_arg_1_2 ?i)) (ite ((_ is Zero!928) (plus!207_arg_0_1 ?i)) (plus!207_arg_1_2 ?i) (ite ((_ is Succ!926) (plus!207_arg_0_1 ?i)) (Succ!926 (plus!207 (x!927 (plus!207_arg_0_1 ?i)) (plus!207_arg_1_2 ?i))) error_value!929))) (ite ((_ is Zero!928) (plus!207_arg_0_1 ?i)) true (ite ((_ is Succ!926) (plus!207_arg_0_1 ?i)) (not (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) (x!927 (plus!207_arg_0_1 ?i))) (= (plus!207_arg_1_2 ?z) (plus!207_arg_1_2 ?i)))) )) true))) ))
(assert (exists ((x!212 Nat!925) (y!213 Nat!925) (z!214 Nat!925)) (not (=> ((_ is Zero!928) x!212) (or (= (plus!207 x!212 (plus!207 y!213 z!214)) (plus!207 (plus!207 x!212 y!213) z!214)) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) x!212) (= (plus!207_arg_1_2 ?z) (plus!207 y!213 z!214)))) ) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) y!213) (= (plus!207_arg_1_2 ?z) z!214))) ) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) (plus!207 x!212 y!213)) (= (plus!207_arg_1_2 ?z) z!214))) ) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) x!212) (= (plus!207_arg_1_2 ?z) y!213))) )))) ))
(check-sat)
(exit)

