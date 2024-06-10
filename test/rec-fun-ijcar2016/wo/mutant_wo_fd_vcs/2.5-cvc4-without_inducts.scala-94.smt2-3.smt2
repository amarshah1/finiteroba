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


(declare-datatypes ((Lst!2414 0)(Nat!2419 0)) (((cons!2415 (head!2416 Nat!2419) (tail!2417 Lst!2414)) (nil!2418))
((succ!2420 (pred!2421 Nat!2419)) (zero!2422))
))
(declare-fun error_value!2423 () Nat!2419)
(declare-fun last!265 (Lst!2414) Nat!2419)
(assert (forall ((l!264 Lst!2414)) (= (last!265 l!264) (ite ((_ is nil!2418) l!264) zero!2422 (ite ((_ is cons!2415) l!264) (ite (= (tail!2417 l!264) nil!2418) (head!2416 l!264) (last!265 (tail!2417 l!264))) error_value!2423))) ))
(assert (not (forall ((xs!484 Lst!2414) (x!483 Nat!2419)) (or (= (last!265 xs!484) (last!265 (cons!2415 x!483 xs!484))) (= xs!484 nil!2418)) )))
(check-sat)
(exit)
