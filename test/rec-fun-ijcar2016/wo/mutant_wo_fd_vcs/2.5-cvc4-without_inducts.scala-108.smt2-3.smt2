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


(declare-datatypes ((Lst!2565 0)(Nat!2570 0)) (((cons!2566 (head!2567 Nat!2570) (tail!2568 Lst!2565)) (nil!2569))
((succ!2571 (pred!2572 Nat!2570)) (zero!2573))
))
(declare-fun error_value!2574 () Bool)
(declare-fun error_value!2575 () Bool)
(declare-fun sorted!283 (Lst!2565) Bool)
(declare-fun leq!234 (Nat!2570 Nat!2570) Bool)
(declare-fun less!231 (Nat!2570 Nat!2570) Bool)
(declare-fun error_value!2576 () Lst!2565)
(declare-fun insort!281 (Nat!2570 Lst!2565) Lst!2565)
(assert (forall ((l!282 Lst!2565)) (= (sorted!283 l!282) (ite ((_ is nil!2569) l!282) true (ite (and (and ((_ is cons!2566) l!282) ((_ is cons!2566) l!282)) ((_ is nil!2569) (tail!2568 l!282))) true (ite (and (and ((_ is cons!2566) l!282) ((_ is cons!2566) l!282)) ((_ is cons!2566) (tail!2568 l!282))) (and (and (sorted!283 (cons!2566 (head!2567 (tail!2568 l!282)) (tail!2568 (tail!2568 l!282)))) (sorted!283 (cons!2566 (head!2567 (tail!2568 l!282)) (tail!2568 (tail!2568 l!282))))) (leq!234 (head!2567 l!282) (head!2567 (tail!2568 l!282)))) error_value!2574)))) ))
(assert (forall ((x!232 Nat!2570) (y!233 Nat!2570)) (= (leq!234 x!232 y!233) (or (or (= x!232 y!233) (= x!232 y!233)) (less!231 x!232 y!233))) ))
(assert (forall ((x!229 Nat!2570) (y!230 Nat!2570)) (= (less!231 x!229 y!230) (ite ((_ is zero!2573) y!230) false (ite (and (and ((_ is zero!2573) x!229) ((_ is zero!2573) x!229)) ((_ is succ!2571) y!230)) true (ite (and (and ((_ is succ!2571) x!229) ((_ is succ!2571) x!229)) ((_ is succ!2571) y!230)) (less!231 (pred!2572 x!229) (pred!2572 y!230)) error_value!2575)))) ))
(assert (forall ((n!279 Nat!2570) (l!280 Lst!2565)) (= (insort!281 n!279 l!280) (ite ((_ is nil!2569) l!280) (cons!2566 n!279 nil!2569) (ite ((_ is cons!2566) l!280) (ite (less!231 n!279 (head!2567 l!280)) (cons!2566 n!279 (cons!2566 (head!2567 l!280) (tail!2568 l!280))) (cons!2566 (head!2567 l!280) (insort!281 n!279 (tail!2568 l!280)))) error_value!2576))) ))
(assert (not (forall ((l!529 Lst!2565)) (not (sorted!283 l!529)) )))
(check-sat)
(exit)

