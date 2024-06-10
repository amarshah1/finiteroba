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


(declare-datatypes ((Nat!2098 0)) (((succ!2099 (pred!2100 Nat!2098)) (zero!2101))
))
(declare-datatypes ((Lst!2102 0)) (((cons!2103 (head!2104 Nat!2098) (tail!2105 Lst!2102)) (nil!2106))
))
(declare-fun error_value!2107 () Bool)
(declare-fun mem!270 (Nat!2098 Lst!2102) Bool)
(declare-fun error_value!2108 () Lst!2102)
(declare-fun delete!273 (Nat!2098 Lst!2102) Lst!2102)
(declare-sort I_mem!270 0)
(declare-fun mem!270_arg_0_1 (I_mem!270) Nat!2098)
(declare-fun mem!270_arg_1_2 (I_mem!270) Lst!2102)
(declare-sort I_delete!273 0)
(declare-fun delete!273_arg_0_3 (I_delete!273) Nat!2098)
(declare-fun delete!273_arg_1_4 (I_delete!273) Lst!2102)
(assert (forall ((?i I_mem!270)) (and (= (mem!270 (mem!270_arg_0_1 ?i) (mem!270_arg_1_2 ?i)) (ite ((_ is nil!2106) (mem!270_arg_1_2 ?i)) false (ite ((_ is cons!2103) (mem!270_arg_1_2 ?i)) (or (mem!270 (mem!270_arg_0_1 ?i) (tail!2105 (mem!270_arg_1_2 ?i))) (= (mem!270_arg_0_1 ?i) (head!2104 (mem!270_arg_1_2 ?i)))) error_value!2107))) (ite ((_ is nil!2106) (mem!270_arg_1_2 ?i)) true (ite ((_ is cons!2103) (mem!270_arg_1_2 ?i)) (not (forall ((?z I_mem!270)) (not (and (= (mem!270_arg_0_1 ?z) (mem!270_arg_0_1 ?i)) (= (mem!270_arg_1_2 ?z) (tail!2105 (mem!270_arg_1_2 ?i))))) )) true))) ))
(assert (forall ((?i I_delete!273)) (and (= (delete!273 (delete!273_arg_0_3 ?i) (delete!273_arg_1_4 ?i)) (ite ((_ is nil!2106) (delete!273_arg_1_4 ?i)) nil!2106 (ite ((_ is cons!2103) (delete!273_arg_1_4 ?i)) (ite (= (delete!273_arg_0_3 ?i) (head!2104 (delete!273_arg_1_4 ?i))) (delete!273 (delete!273_arg_0_3 ?i) (tail!2105 (delete!273_arg_1_4 ?i))) (cons!2103 (head!2104 (delete!273_arg_1_4 ?i)) (delete!273 (delete!273_arg_0_3 ?i) (tail!2105 (delete!273_arg_1_4 ?i))))) error_value!2108))) (ite ((_ is nil!2106) (delete!273_arg_1_4 ?i)) true (ite ((_ is cons!2103) (delete!273_arg_1_4 ?i)) (ite (= (delete!273_arg_0_3 ?i) (head!2104 (delete!273_arg_1_4 ?i))) (not (forall ((?z I_delete!273)) (not (and (= (delete!273_arg_0_3 ?z) (delete!273_arg_0_3 ?i)) (= (delete!273_arg_1_4 ?z) (tail!2105 (delete!273_arg_1_4 ?i))))) )) (not (forall ((?z I_delete!273)) (not (and (= (delete!273_arg_0_3 ?z) (delete!273_arg_0_3 ?i)) (= (delete!273_arg_1_4 ?z) (tail!2105 (delete!273_arg_1_4 ?i))))) ))) true))) ))
(assert (not (forall ((x!406 Nat!2098) (l!407 Lst!2102)) (or (mem!270 x!406 (delete!273 x!406 l!407)) (forall ((?z I_mem!270)) (not (and (= (mem!270_arg_0_1 ?z) x!406) (= (mem!270_arg_1_2 ?z) (delete!273 x!406 l!407)))) ) (forall ((?z I_delete!273)) (not (and (= (delete!273_arg_0_3 ?z) x!406) (= (delete!273_arg_1_4 ?z) l!407))) )) )))
(check-sat)
(exit)

