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


(declare-datatypes ((Nat!2543 0)) (((succ!2544 (pred!2545 Nat!2543)) (zero!2546))
))
(declare-datatypes ((Lst!2547 0)) (((cons!2548 (head!2549 Nat!2543) (tail!2550 Lst!2547)) (nil!2551))
))
(declare-fun error_value!2552 () Nat!2543)
(declare-fun count!263 (Nat!2543 Lst!2547) Nat!2543)
(declare-fun error_value!2553 () Lst!2547)
(declare-fun append!252 (Lst!2547 Lst!2547) Lst!2547)
(assert (forall ((n!261 Nat!2543) (l!262 Lst!2547)) (= (count!263 n!261 l!262) (ite ((_ is nil!2551) l!262) zero!2546 (ite ((_ is cons!2548) l!262) (ite (= n!261 (head!2549 l!262)) (succ!2544 (count!263 n!261 (tail!2550 l!262))) (count!263 n!261 (tail!2550 l!262))) error_value!2552))) ))
(assert (forall ((l1!250 Lst!2547) (l2!251 Lst!2547)) (= (append!252 l1!250 l2!251) (ite ((_ is nil!2551) l1!250) l2!251 (ite ((_ is cons!2548) l1!250) (cons!2548 (head!2549 l1!250) (append!252 (tail!2550 l1!250) l2!251)) error_value!2553))) ))
(assert (not (forall ((n!520 Nat!2543) (h!521 Nat!2543) (x!522 Lst!2547)) (or (= (count!263 n!520 (append!252 (cons!2548 h!521 nil!2551) x!522)) (count!263 n!520 x!522)) (= n!520 h!521)) )))
(check-sat)
(exit)

