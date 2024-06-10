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


(declare-datatypes ((Nat!2109 0)) (((succ!2110 (pred!2111 Nat!2109)) (zero!2112))
))
(declare-datatypes ((Lst!2113 0)) (((cons!2114 (head!2115 Nat!2109) (tail!2116 Lst!2113)) (nil!2117))
))
(declare-fun error_value!2118 () Nat!2109)
(declare-fun count!263 (Nat!2109 Lst!2113) Nat!2109)
(declare-fun error_value!2119 () Lst!2113)
(declare-fun append!252 (Lst!2113 Lst!2113) Lst!2113)
(declare-sort I_count!263 0)
(declare-fun count!263_arg_0_1 (I_count!263) Nat!2109)
(declare-fun count!263_arg_1_2 (I_count!263) Lst!2113)
(declare-sort I_append!252 0)
(declare-fun append!252_arg_0_3 (I_append!252) Lst!2113)
(declare-fun append!252_arg_1_4 (I_append!252) Lst!2113)
(assert (forall ((?i I_count!263)) (and (= (count!263 (count!263_arg_0_1 ?i) (count!263_arg_1_2 ?i)) (ite ((_ is nil!2117) (count!263_arg_1_2 ?i)) zero!2112 (ite ((_ is cons!2114) (count!263_arg_1_2 ?i)) (ite (= (count!263_arg_0_1 ?i) (head!2115 (count!263_arg_1_2 ?i))) (succ!2110 (count!263 (count!263_arg_0_1 ?i) (tail!2116 (count!263_arg_1_2 ?i)))) (count!263 (count!263_arg_0_1 ?i) (tail!2116 (count!263_arg_1_2 ?i)))) error_value!2118))) (ite ((_ is nil!2117) (count!263_arg_1_2 ?i)) true (ite ((_ is cons!2114) (count!263_arg_1_2 ?i)) (ite (= (count!263_arg_0_1 ?i) (head!2115 (count!263_arg_1_2 ?i))) (not (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) (count!263_arg_0_1 ?i)) (= (count!263_arg_1_2 ?z) (tail!2116 (count!263_arg_1_2 ?i))))) )) (not (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) (count!263_arg_0_1 ?i)) (= (count!263_arg_1_2 ?z) (tail!2116 (count!263_arg_1_2 ?i))))) ))) true))) ))
(assert (forall ((?i I_append!252)) (and (= (append!252 (append!252_arg_0_3 ?i) (append!252_arg_1_4 ?i)) (ite ((_ is nil!2117) (append!252_arg_0_3 ?i)) (append!252_arg_1_4 ?i) (ite ((_ is cons!2114) (append!252_arg_0_3 ?i)) (cons!2114 (head!2115 (append!252_arg_0_3 ?i)) (append!252 (tail!2116 (append!252_arg_0_3 ?i)) (append!252_arg_1_4 ?i))) error_value!2119))) (ite ((_ is nil!2117) (append!252_arg_0_3 ?i)) true (ite ((_ is cons!2114) (append!252_arg_0_3 ?i)) (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_3 ?z) (tail!2116 (append!252_arg_0_3 ?i))) (= (append!252_arg_1_4 ?z) (append!252_arg_1_4 ?i)))) )) true))) ))
(assert (not (forall ((n!409 Nat!2109) (x!410 Lst!2113)) (or (= (count!263 n!409 x!410) (succ!2110 (count!263 n!409 (append!252 x!410 (cons!2114 n!409 nil!2117))))) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) n!409) (= (count!263_arg_1_2 ?z) x!410))) ) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) n!409) (= (count!263_arg_1_2 ?z) (append!252 x!410 (cons!2114 n!409 nil!2117))))) ) (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_3 ?z) x!410) (= (append!252_arg_1_4 ?z) (cons!2114 n!409 nil!2117)))) )) )))
(check-sat)
(exit)

