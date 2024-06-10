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


(declare-datatypes ((Nat!2348 0)) (((succ!2349 (pred!2350 Nat!2348)) (zero!2351))
))
(declare-datatypes ((Lst!2352 0)) (((cons!2353 (head!2354 Nat!2348) (tail!2355 Lst!2352)) (nil!2356))
))
(declare-fun error_value!2357 () Lst!2352)
(declare-fun drop!257 (Nat!2348 Lst!2352) Lst!2352)
(declare-fun error_value!2358 () Lst!2352)
(declare-fun take!260 (Nat!2348 Lst!2352) Lst!2352)
(declare-fun error_value!2359 () Nat!2348)
(declare-fun minus!240 (Nat!2348 Nat!2348) Nat!2348)
(assert (forall ((n!255 Nat!2348) (l!256 Lst!2352)) (= (drop!257 n!255 l!256) (ite ((_ is nil!2356) l!256) nil!2356 (ite ((_ is zero!2351) n!255) l!256 (ite (and (and ((_ is succ!2349) n!255) ((_ is succ!2349) n!255)) ((_ is cons!2353) l!256)) (drop!257 (pred!2350 n!255) (tail!2355 l!256)) error_value!2357)))) ))
(assert (forall ((n!258 Nat!2348) (l!259 Lst!2352)) (= (take!260 n!258 l!259) (ite ((_ is nil!2356) l!259) nil!2356 (ite ((_ is zero!2351) n!258) nil!2356 (ite (and (and ((_ is succ!2349) n!258) ((_ is succ!2349) n!258)) ((_ is cons!2353) l!259)) (cons!2353 (head!2354 l!259) (take!260 (pred!2350 n!258) (tail!2355 l!259))) error_value!2358)))) ))
(assert (forall ((x!238 Nat!2348) (y!239 Nat!2348)) (= (minus!240 x!238 y!239) (ite ((_ is zero!2351) x!238) zero!2351 (ite ((_ is zero!2351) y!239) x!238 (ite (and (and ((_ is succ!2349) x!238) ((_ is succ!2349) x!238)) ((_ is succ!2349) y!239)) (minus!240 (pred!2350 x!238) (pred!2350 y!239)) error_value!2359)))) ))
(assert (exists ((n!466 Nat!2348) (m!467 Nat!2348) (xs!468 Lst!2352)) (not (= (drop!257 n!466 (take!260 m!467 xs!468)) (take!260 (minus!240 m!467 n!466) (drop!257 n!466 xs!468)))) ))
(check-sat)
(exit)

