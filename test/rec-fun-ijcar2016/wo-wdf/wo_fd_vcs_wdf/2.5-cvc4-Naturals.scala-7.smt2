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


(declare-datatypes ((Nat!930 0)) (((Succ!931 (x!932 Nat!930)) (Zero!933))
))
(declare-fun error_value!934 () Nat!930)
(declare-fun plus!207 (Nat!930 Nat!930) Nat!930)
(declare-sort I_plus!207 0)
(declare-fun plus!207_arg_0_1 (I_plus!207) Nat!930)
(declare-fun plus!207_arg_1_2 (I_plus!207) Nat!930)
(assert (forall ((?i I_plus!207)) (and (= (plus!207 (plus!207_arg_0_1 ?i) (plus!207_arg_1_2 ?i)) (ite ((_ is Zero!933) (plus!207_arg_0_1 ?i)) (plus!207_arg_1_2 ?i) (ite ((_ is Succ!931) (plus!207_arg_0_1 ?i)) (Succ!931 (plus!207 (x!932 (plus!207_arg_0_1 ?i)) (plus!207_arg_1_2 ?i))) error_value!934))) (ite ((_ is Zero!933) (plus!207_arg_0_1 ?i)) true (ite ((_ is Succ!931) (plus!207_arg_0_1 ?i)) (not (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) (x!932 (plus!207_arg_0_1 ?i))) (= (plus!207_arg_1_2 ?z) (plus!207_arg_1_2 ?i)))) )) true))) ))
(assert (exists ((x!216 Nat!930)) (not (=> (and (and ((_ is Succ!931) x!216) ((_ is Succ!931) x!216)) (and (= (plus!207 Zero!933 (x!932 x!216)) (plus!207 (x!932 x!216) Zero!933)) (not (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) Zero!933) (= (plus!207_arg_1_2 ?z) (x!932 x!216)))) )) (not (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) (x!932 x!216)) (= (plus!207_arg_1_2 ?z) Zero!933))) )))) (or (= (plus!207 Zero!933 x!216) (plus!207 x!216 Zero!933)) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) Zero!933) (= (plus!207_arg_1_2 ?z) x!216))) ) (forall ((?z I_plus!207)) (not (and (= (plus!207_arg_0_1 ?z) x!216) (= (plus!207_arg_1_2 ?z) Zero!933))) )))) ))
(check-sat)
(exit)

