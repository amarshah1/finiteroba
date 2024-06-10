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


(declare-datatypes ((Nat!1907 0)) (((succ!1908 (pred!1909 Nat!1907)) (zero!1910))
))
(declare-fun error_value!1911 () Nat!1907)
(declare-fun minus!240 (Nat!1907 Nat!1907) Nat!1907)
(declare-fun error_value!1912 () Nat!1907)
(declare-fun plus!237 (Nat!1907 Nat!1907) Nat!1907)
(assert (forall ((x!238 Nat!1907) (y!239 Nat!1907)) (= (minus!240 x!238 y!239) (ite ((_ is zero!1910) x!238) zero!1910 (ite ((_ is zero!1910) y!239) x!238 (ite (and (and ((_ is succ!1908) x!238) ((_ is succ!1908) x!238)) ((_ is succ!1908) y!239)) (minus!240 (pred!1909 x!238) (pred!1909 y!239)) error_value!1911)))) ))
(assert (forall ((x!235 Nat!1907) (y!236 Nat!1907)) (= (plus!237 x!235 y!236) (ite ((_ is zero!1910) x!235) y!236 (ite ((_ is succ!1908) x!235) (succ!1908 (plus!237 (pred!1909 x!235) y!236)) error_value!1912))) ))
(assert (not (forall ((i!332 Nat!1907) (j!333 Nat!1907) (k!334 Nat!1907)) (= (minus!240 (minus!240 i!332 j!333) k!334) (minus!240 k!334 (plus!237 j!333 i!332))) )))
(check-sat)
(exit)

