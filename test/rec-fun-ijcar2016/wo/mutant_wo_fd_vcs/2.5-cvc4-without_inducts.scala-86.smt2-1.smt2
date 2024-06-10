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


(declare-datatypes ((Nat!2319 0)) (((succ!2320 (pred!2321 Nat!2319)) (zero!2322))
))
(declare-fun error_value!2323 () Nat!2319)
(declare-fun minus!240 (Nat!2319 Nat!2319) Nat!2319)
(assert (forall ((x!238 Nat!2319) (y!239 Nat!2319)) (= (minus!240 x!238 y!239) (ite ((_ is zero!2322) x!238) zero!2322 (ite ((_ is zero!2322) y!239) x!238 (ite (and (and ((_ is succ!2320) x!238) ((_ is succ!2320) x!238)) ((_ is succ!2320) y!239)) (minus!240 (pred!2321 x!238) (pred!2321 y!239)) error_value!2323)))) ))
(assert (not (forall ((i!454 Nat!2319) (j!455 Nat!2319) (k!456 Nat!2319)) (= (minus!240 (minus!240 i!454 j!455) k!456) (minus!240 (minus!240 k!456 i!454) j!455)) )))
(check-sat)
(exit)

