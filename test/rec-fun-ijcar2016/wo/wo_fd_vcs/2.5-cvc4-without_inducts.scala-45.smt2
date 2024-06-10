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


(declare-datatypes ((Nat!1913 0)) (((succ!1914 (pred!1915 Nat!1913)) (zero!1916))
))
(declare-fun error_value!1917 () Nat!1913)
(declare-fun minus!240 (Nat!1913 Nat!1913) Nat!1913)
(assert (forall ((x!238 Nat!1913) (y!239 Nat!1913)) (= (minus!240 x!238 y!239) (ite ((_ is zero!1916) x!238) zero!1916 (ite ((_ is zero!1916) y!239) x!238 (ite (and (and ((_ is succ!1914) x!238) ((_ is succ!1914) x!238)) ((_ is succ!1914) y!239)) (minus!240 (pred!1915 x!238) (pred!1915 y!239)) error_value!1917)))) ))
(assert (exists ((m!336 Nat!1913)) (not (= (minus!240 m!336 m!336) zero!1916)) ))
(check-sat)
(exit)

