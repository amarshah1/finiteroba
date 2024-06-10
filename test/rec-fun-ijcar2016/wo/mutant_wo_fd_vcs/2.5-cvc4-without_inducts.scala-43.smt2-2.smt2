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


(declare-datatypes ((Nat!1901 0)) (((succ!1902 (pred!1903 Nat!1901)) (zero!1904))
))
(declare-fun error_value!1905 () Nat!1901)
(declare-fun minus!240 (Nat!1901 Nat!1901) Nat!1901)
(declare-fun error_value!1906 () Nat!1901)
(declare-fun plus!237 (Nat!1901 Nat!1901) Nat!1901)
(assert (forall ((x!238 Nat!1901) (y!239 Nat!1901)) (= (minus!240 x!238 y!239) (ite ((_ is zero!1904) x!238) zero!1904 (ite ((_ is zero!1904) y!239) x!238 (ite (and (and ((_ is succ!1902) x!238) ((_ is succ!1902) x!238)) ((_ is succ!1902) y!239)) (minus!240 (pred!1903 x!238) (pred!1903 y!239)) error_value!1905)))) ))
(assert (forall ((x!235 Nat!1901) (y!236 Nat!1901)) (= (plus!237 x!235 y!236) (ite ((_ is zero!1904) x!235) y!236 (ite ((_ is succ!1902) x!235) (succ!1902 (plus!237 (pred!1903 x!235) y!236)) error_value!1906))) ))
(assert (not (forall ((k!328 Nat!1901) (m!330 Nat!1901) (n!329 Nat!1901)) (= (minus!240 (plus!237 k!328 m!330) n!329) (minus!240 m!330 (plus!237 k!328 n!329))) )))
(check-sat)
(exit)
