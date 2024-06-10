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


(declare-datatypes ((Nat!1965 0)) (((succ!1966 (pred!1967 Nat!1965)) (zero!1968))
))
(declare-fun error_value!1969 () Bool)
(declare-fun less!231 (Nat!1965 Nat!1965) Bool)
(declare-fun error_value!1970 () Nat!1965)
(declare-fun plus!237 (Nat!1965 Nat!1965) Nat!1965)
(assert (forall ((x!229 Nat!1965) (y!230 Nat!1965)) (= (less!231 x!229 y!230) (ite ((_ is zero!1968) y!230) false (ite (and (and ((_ is zero!1968) x!229) ((_ is zero!1968) x!229)) ((_ is succ!1966) y!230)) true (ite (and (and ((_ is succ!1966) x!229) ((_ is succ!1966) x!229)) ((_ is succ!1966) y!230)) (less!231 (pred!1967 x!229) (pred!1967 y!230)) error_value!1969)))) ))
(assert (forall ((x!235 Nat!1965) (y!236 Nat!1965)) (= (plus!237 x!235 y!236) (ite ((_ is zero!1968) x!235) y!236 (ite ((_ is succ!1966) x!235) (succ!1966 (plus!237 (pred!1967 x!235) y!236)) error_value!1970))) ))
(assert (exists ((i!352 Nat!1965) (m!353 Nat!1965)) (not (less!231 i!352 (succ!1966 (plus!237 i!352 m!353)))) ))
(check-sat)
(exit)

