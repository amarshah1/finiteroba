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


(declare-datatypes ((Nat!2120 0)) (((succ!2121 (pred!2122 Nat!2120)) (zero!2123))
))
(declare-datatypes ((Lst!2124 0)) (((cons!2125 (head!2126 Nat!2120) (tail!2127 Lst!2124)) (nil!2128))
))
(declare-fun error_value!2129 () Nat!2120)
(declare-fun plus!237 (Nat!2120 Nat!2120) Nat!2120)
(declare-fun error_value!2130 () Nat!2120)
(declare-fun count!263 (Nat!2120 Lst!2124) Nat!2120)
(assert (forall ((x!235 Nat!2120) (y!236 Nat!2120)) (= (plus!237 x!235 y!236) (ite ((_ is zero!2123) x!235) y!236 (ite ((_ is succ!2121) x!235) (succ!2121 (plus!237 (pred!2122 x!235) y!236)) error_value!2129))) ))
(assert (forall ((n!261 Nat!2120) (l!262 Lst!2124)) (= (count!263 n!261 l!262) (ite ((_ is nil!2128) l!262) zero!2123 (ite ((_ is cons!2125) l!262) (ite (= n!261 (head!2126 l!262)) (succ!2121 (count!263 n!261 (tail!2127 l!262))) (count!263 n!261 (tail!2127 l!262))) error_value!2130))) ))
(assert (not (forall ((n!412 Nat!2120) (h!413 Nat!2120) (t!414 Lst!2124)) (= (plus!237 (count!263 n!412 (cons!2125 h!413 nil!2128)) (count!263 n!412 (cons!2125 h!413 t!414))) (count!263 n!412 t!414)) )))
(check-sat)
(exit)

