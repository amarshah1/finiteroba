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


(declare-datatypes ((Nat!2337 0)) (((succ!2338 (pred!2339 Nat!2337)) (zero!2340))
))
(declare-datatypes ((Lst!2341 0)) (((cons!2342 (head!2343 Nat!2337) (tail!2344 Lst!2341)) (nil!2345))
))
(declare-fun error_value!2346 () Lst!2341)
(declare-fun drop!257 (Nat!2337 Lst!2341) Lst!2341)
(declare-fun error_value!2347 () Nat!2337)
(declare-fun plus!237 (Nat!2337 Nat!2337) Nat!2337)
(assert (forall ((n!255 Nat!2337) (l!256 Lst!2341)) (= (drop!257 n!255 l!256) (ite ((_ is nil!2345) l!256) nil!2345 (ite ((_ is zero!2340) n!255) l!256 (ite (and (and ((_ is succ!2338) n!255) ((_ is succ!2338) n!255)) ((_ is cons!2342) l!256)) (drop!257 (pred!2339 n!255) (tail!2344 l!256)) error_value!2346)))) ))
(assert (forall ((x!235 Nat!2337) (y!236 Nat!2337)) (= (plus!237 x!235 y!236) (ite ((_ is zero!2340) x!235) y!236 (ite ((_ is succ!2338) x!235) (succ!2338 (plus!237 (pred!2339 x!235) y!236)) error_value!2347))) ))
(assert (not (forall ((n!462 Nat!2337) (m!463 Nat!2337) (xs!464 Lst!2341)) (= (drop!257 n!462 (drop!257 (plus!237 n!462 m!463) xs!464)) (drop!257 m!463 xs!464)) )))
(check-sat)
(exit)

