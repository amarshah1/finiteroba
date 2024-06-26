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


(declare-datatypes ((Nat!2012 0)) (((succ!2013 (pred!2014 Nat!2012)) (zero!2015))
))
(declare-fun error_value!2016 () Bool)
(declare-fun nmax!246 (Nat!2012 Nat!2012) Nat!2012)
(declare-fun less!231 (Nat!2012 Nat!2012) Bool)
(declare-fun leq!234 (Nat!2012 Nat!2012) Bool)
(assert (forall ((n!244 Nat!2012) (m!245 Nat!2012)) (= (nmax!246 n!244 m!245) (ite (less!231 n!244 m!245) m!245 n!244)) ))
(assert (forall ((x!229 Nat!2012) (y!230 Nat!2012)) (= (less!231 x!229 y!230) (ite ((_ is zero!2015) y!230) false (ite (and (and ((_ is zero!2015) x!229) ((_ is zero!2015) x!229)) ((_ is succ!2013) y!230)) true (ite (and (and ((_ is succ!2013) x!229) ((_ is succ!2013) x!229)) ((_ is succ!2013) y!230)) (less!231 (pred!2014 x!229) (pred!2014 y!230)) error_value!2016)))) ))
(assert (forall ((x!232 Nat!2012) (y!233 Nat!2012)) (= (leq!234 x!232 y!233) (or (or (= x!232 y!233) (= x!232 y!233)) (less!231 x!232 y!233))) ))
(assert (exists ((a!370 Nat!2012) (b!371 Nat!2012)) (not (= (= (nmax!246 a!370 b!371) a!370) (leq!234 b!371 a!370))) ))
(check-sat)
(exit)

