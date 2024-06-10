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


(declare-datatypes ((Nat!2595 0)) (((succ!2596 (pred!2597 Nat!2595)) (zero!2598))
))
(declare-datatypes ((Lst!2599 0)) (((cons!2600 (head!2601 Nat!2595) (tail!2602 Lst!2599)) (nil!2603))
))
(declare-fun error_value!2604 () Lst!2599)
(declare-fun take!260 (Nat!2595 Lst!2599) Lst!2599)
(declare-fun error_value!2605 () Lst!2599)
(declare-fun append!252 (Lst!2599 Lst!2599) Lst!2599)
(declare-fun error_value!2606 () Nat!2595)
(declare-fun minus!240 (Nat!2595 Nat!2595) Nat!2595)
(declare-fun error_value!2607 () Nat!2595)
(declare-fun len!254 (Lst!2599) Nat!2595)
(assert (forall ((n!258 Nat!2595) (l!259 Lst!2599)) (= (take!260 n!258 l!259) (ite ((_ is nil!2603) l!259) nil!2603 (ite ((_ is zero!2598) n!258) nil!2603 (ite (and (and ((_ is succ!2596) n!258) ((_ is succ!2596) n!258)) ((_ is cons!2600) l!259)) (cons!2600 (head!2601 l!259) (take!260 (pred!2597 n!258) (tail!2602 l!259))) error_value!2604)))) ))
(assert (forall ((l1!250 Lst!2599) (l2!251 Lst!2599)) (= (append!252 l1!250 l2!251) (ite ((_ is nil!2603) l1!250) l2!251 (ite ((_ is cons!2600) l1!250) (cons!2600 (head!2601 l1!250) (append!252 (tail!2602 l1!250) l2!251)) error_value!2605))) ))
(assert (forall ((x!238 Nat!2595) (y!239 Nat!2595)) (= (minus!240 x!238 y!239) (ite ((_ is zero!2598) x!238) zero!2598 (ite ((_ is zero!2598) y!239) x!238 (ite (and (and ((_ is succ!2596) x!238) ((_ is succ!2596) x!238)) ((_ is succ!2596) y!239)) (minus!240 (pred!2597 x!238) (pred!2597 y!239)) error_value!2606)))) ))
(assert (forall ((l!253 Lst!2599)) (= (len!254 l!253) (ite ((_ is nil!2603) l!253) zero!2598 (ite ((_ is cons!2600) l!253) (succ!2596 (len!254 (tail!2602 l!253))) error_value!2607))) ))
(assert (not (forall ((n!537 Nat!2595) (xs!538 Lst!2599) (ys!539 Lst!2599)) (= (take!260 n!537 xs!538) (append!252 (take!260 n!537 xs!538) (take!260 (minus!240 n!537 (len!254 (append!252 xs!538 ys!539))) ys!539))) )))
(check-sat)
(exit)

