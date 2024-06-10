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


(declare-datatypes ((Nat!2288 0)) (((succ!2289 (pred!2290 Nat!2288)) (zero!2291))
))
(declare-datatypes ((Lst!2292 0)) (((cons!2293 (head!2294 Nat!2288) (tail!2295 Lst!2292)) (nil!2296))
))
(declare-fun error_value!2297 () Nat!2288)
(declare-fun count!263 (Nat!2288 Lst!2292) Nat!2288)
(declare-fun error_value!2298 () Lst!2292)
(declare-fun error_value!2299 () Lst!2292)
(declare-fun rev!275 (Lst!2292) Lst!2292)
(declare-fun append!252 (Lst!2292 Lst!2292) Lst!2292)
(declare-sort I_count!263 0)
(declare-fun count!263_arg_0_1 (I_count!263) Nat!2288)
(declare-fun count!263_arg_1_2 (I_count!263) Lst!2292)
(declare-sort I_rev!275 0)
(declare-fun rev!275_arg_0_3 (I_rev!275) Lst!2292)
(declare-sort I_append!252 0)
(declare-fun append!252_arg_0_4 (I_append!252) Lst!2292)
(declare-fun append!252_arg_1_5 (I_append!252) Lst!2292)
(assert (forall ((?i I_count!263)) (and (= (count!263 (count!263_arg_0_1 ?i) (count!263_arg_1_2 ?i)) (ite ((_ is nil!2296) (count!263_arg_1_2 ?i)) zero!2291 (ite ((_ is cons!2293) (count!263_arg_1_2 ?i)) (ite (= (count!263_arg_0_1 ?i) (head!2294 (count!263_arg_1_2 ?i))) (succ!2289 (count!263 (count!263_arg_0_1 ?i) (tail!2295 (count!263_arg_1_2 ?i)))) (count!263 (count!263_arg_0_1 ?i) (tail!2295 (count!263_arg_1_2 ?i)))) error_value!2297))) (ite ((_ is nil!2296) (count!263_arg_1_2 ?i)) true (ite ((_ is cons!2293) (count!263_arg_1_2 ?i)) (ite (= (count!263_arg_0_1 ?i) (head!2294 (count!263_arg_1_2 ?i))) (not (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) (count!263_arg_0_1 ?i)) (= (count!263_arg_1_2 ?z) (tail!2295 (count!263_arg_1_2 ?i))))) )) (not (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) (count!263_arg_0_1 ?i)) (= (count!263_arg_1_2 ?z) (tail!2295 (count!263_arg_1_2 ?i))))) ))) true))) ))
(assert (forall ((?i I_rev!275)) (and (= (rev!275 (rev!275_arg_0_3 ?i)) (ite ((_ is nil!2296) (rev!275_arg_0_3 ?i)) nil!2296 (ite ((_ is cons!2293) (rev!275_arg_0_3 ?i)) (append!252 (rev!275 (tail!2295 (rev!275_arg_0_3 ?i))) (cons!2293 (head!2294 (rev!275_arg_0_3 ?i)) nil!2296)) error_value!2298))) (ite ((_ is nil!2296) (rev!275_arg_0_3 ?i)) true (ite ((_ is cons!2293) (rev!275_arg_0_3 ?i)) (and (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_4 ?z) (rev!275 (tail!2295 (rev!275_arg_0_3 ?i)))) (= (append!252_arg_1_5 ?z) (cons!2293 (head!2294 (rev!275_arg_0_3 ?i)) nil!2296)))) )) (not (forall ((?z I_rev!275)) (not (= (rev!275_arg_0_3 ?z) (tail!2295 (rev!275_arg_0_3 ?i)))) ))) true))) ))
(assert (forall ((?i I_append!252)) (and (= (append!252 (append!252_arg_0_4 ?i) (append!252_arg_1_5 ?i)) (ite ((_ is nil!2296) (append!252_arg_0_4 ?i)) (append!252_arg_1_5 ?i) (ite ((_ is cons!2293) (append!252_arg_0_4 ?i)) (cons!2293 (head!2294 (append!252_arg_0_4 ?i)) (append!252 (tail!2295 (append!252_arg_0_4 ?i)) (append!252_arg_1_5 ?i))) error_value!2299))) (ite ((_ is nil!2296) (append!252_arg_0_4 ?i)) true (ite ((_ is cons!2293) (append!252_arg_0_4 ?i)) (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_4 ?z) (tail!2295 (append!252_arg_0_4 ?i))) (= (append!252_arg_1_5 ?z) (append!252_arg_1_5 ?i)))) )) true))) ))
(assert (not (forall ((n!445 Nat!2288) (l!446 Lst!2292)) (or (= (count!263 n!445 (rev!275 l!446)) (count!263 n!445 l!446)) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) n!445) (= (count!263_arg_1_2 ?z) (rev!275 l!446)))) ) (forall ((?z I_rev!275)) (not (= (rev!275_arg_0_3 ?z) l!446)) ) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) n!445) (= (count!263_arg_1_2 ?z) l!446))) )) )))
(check-sat)
(exit)

