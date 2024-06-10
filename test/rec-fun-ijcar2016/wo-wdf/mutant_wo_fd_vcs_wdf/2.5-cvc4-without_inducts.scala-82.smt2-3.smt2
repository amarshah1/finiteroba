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


(declare-datatypes ((Lst!2277 0)(Nat!2282 0)) (((cons!2278 (head!2279 Nat!2282) (tail!2280 Lst!2277)) (nil!2281))
((succ!2283 (pred!2284 Nat!2282)) (zero!2285))
))
(declare-fun error_value!2286 () Lst!2277)
(declare-fun butlast!267 (Lst!2277) Lst!2277)
(declare-fun error_value!2287 () Lst!2277)
(declare-fun append!252 (Lst!2277 Lst!2277) Lst!2277)
(declare-sort I_butlast!267 0)
(declare-fun butlast!267_arg_0_1 (I_butlast!267) Lst!2277)
(declare-sort I_append!252 0)
(declare-fun append!252_arg_0_2 (I_append!252) Lst!2277)
(declare-fun append!252_arg_1_3 (I_append!252) Lst!2277)
(assert (forall ((?i I_butlast!267)) (and (= (butlast!267 (butlast!267_arg_0_1 ?i)) (ite ((_ is nil!2281) (butlast!267_arg_0_1 ?i)) nil!2281 (ite ((_ is cons!2278) (butlast!267_arg_0_1 ?i)) (ite (= (tail!2280 (butlast!267_arg_0_1 ?i)) nil!2281) nil!2281 (cons!2278 (head!2279 (butlast!267_arg_0_1 ?i)) (butlast!267 (tail!2280 (butlast!267_arg_0_1 ?i))))) error_value!2286))) (ite ((_ is nil!2281) (butlast!267_arg_0_1 ?i)) true (ite ((_ is cons!2278) (butlast!267_arg_0_1 ?i)) (ite (= (tail!2280 (butlast!267_arg_0_1 ?i)) nil!2281) true (not (forall ((?z I_butlast!267)) (not (= (butlast!267_arg_0_1 ?z) (tail!2280 (butlast!267_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_append!252)) (and (= (append!252 (append!252_arg_0_2 ?i) (append!252_arg_1_3 ?i)) (ite ((_ is nil!2281) (append!252_arg_0_2 ?i)) (append!252_arg_1_3 ?i) (ite ((_ is cons!2278) (append!252_arg_0_2 ?i)) (cons!2278 (head!2279 (append!252_arg_0_2 ?i)) (append!252 (tail!2280 (append!252_arg_0_2 ?i)) (append!252_arg_1_3 ?i))) error_value!2287))) (ite ((_ is nil!2281) (append!252_arg_0_2 ?i)) true (ite ((_ is cons!2278) (append!252_arg_0_2 ?i)) (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_2 ?z) (tail!2280 (append!252_arg_0_2 ?i))) (= (append!252_arg_1_3 ?z) (append!252_arg_1_3 ?i)))) )) true))) ))
(assert (not (forall ((xs!442 Lst!2277) (x!443 Nat!2282)) (= (cons!2278 x!443 nil!2281) xs!442) )))
(check-sat)
(exit)

