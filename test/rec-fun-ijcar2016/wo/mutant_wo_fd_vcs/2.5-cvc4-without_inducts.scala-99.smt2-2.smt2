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


(declare-datatypes ((Nat!2466 0)) (((succ!2467 (pred!2468 Nat!2466)) (zero!2469))
))
(declare-datatypes ((Lst!2470 0)) (((cons!2471 (head!2472 Nat!2466) (tail!2473 Lst!2470)) (nil!2474))
))
(declare-fun error_value!2475 () Bool)
(declare-fun leq!234 (Nat!2466 Nat!2466) Bool)
(declare-fun less!231 (Nat!2466 Nat!2466) Bool)
(declare-fun error_value!2476 () Nat!2466)
(declare-fun len!254 (Lst!2470) Nat!2466)
(declare-fun error_value!2477 () Lst!2470)
(declare-fun delete!273 (Nat!2466 Lst!2470) Lst!2470)
(assert (forall ((x!232 Nat!2466) (y!233 Nat!2466)) (= (leq!234 x!232 y!233) (or (or (= x!232 y!233) (= x!232 y!233)) (less!231 x!232 y!233))) ))
(assert (forall ((x!229 Nat!2466) (y!230 Nat!2466)) (= (less!231 x!229 y!230) (ite ((_ is zero!2469) y!230) false (ite (and (and ((_ is zero!2469) x!229) ((_ is zero!2469) x!229)) ((_ is succ!2467) y!230)) true (ite (and (and ((_ is succ!2467) x!229) ((_ is succ!2467) x!229)) ((_ is succ!2467) y!230)) (less!231 (pred!2468 x!229) (pred!2468 y!230)) error_value!2475)))) ))
(assert (forall ((l!253 Lst!2470)) (= (len!254 l!253) (ite ((_ is nil!2474) l!253) zero!2469 (ite ((_ is cons!2471) l!253) (succ!2467 (len!254 (tail!2473 l!253))) error_value!2476))) ))
(assert (forall ((n!271 Nat!2466) (l!272 Lst!2470)) (= (delete!273 n!271 l!272) (ite ((_ is nil!2474) l!272) nil!2474 (ite ((_ is cons!2471) l!272) (ite (= n!271 (head!2472 l!272)) (delete!273 n!271 (tail!2473 l!272)) (cons!2471 (head!2472 l!272) (delete!273 n!271 (tail!2473 l!272)))) error_value!2477))) ))
(assert (not (forall ((x!497 Nat!2466) (l!498 Lst!2470)) (leq!234 x!497 (len!254 l!498)) )))
(check-sat)
(exit)

