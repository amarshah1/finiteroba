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


(declare-datatypes ((Nat!1889 0)) (((succ!1890 (pred!1891 Nat!1889)) (zero!1892))
))
(declare-fun error_value!1893 () Nat!1889)
(declare-fun minus!240 (Nat!1889 Nat!1889) Nat!1889)
(declare-fun error_value!1894 () Nat!1889)
(declare-fun plus!237 (Nat!1889 Nat!1889) Nat!1889)
(assert (forall ((x!238 Nat!1889) (y!239 Nat!1889)) (= (minus!240 x!238 y!239) (ite ((_ is zero!1892) x!238) zero!1892 (ite ((_ is zero!1892) y!239) x!238 (ite (and (and ((_ is succ!1890) x!238) ((_ is succ!1890) x!238)) ((_ is succ!1890) y!239)) (minus!240 (pred!1891 x!238) (pred!1891 y!239)) error_value!1893)))) ))
(assert (forall ((x!235 Nat!1889) (y!236 Nat!1889)) (= (plus!237 x!235 y!236) (ite ((_ is zero!1892) x!235) y!236 (ite ((_ is succ!1890) x!235) (succ!1890 (plus!237 (pred!1891 x!235) y!236)) error_value!1894))) ))
(assert (not (forall ((n!322 Nat!1889) (m!323 Nat!1889)) (= (plus!237 n!322 m!323) zero!1892) )))
(check-sat)
(exit)

