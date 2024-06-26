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


(declare-datatypes ((Nat!2002 0)) (((succ!2003 (pred!2004 Nat!2002)) (zero!2005))
))
(declare-fun error_value!2006 () Bool)
(declare-fun nmax!246 (Nat!2002 Nat!2002) Nat!2002)
(declare-fun less!231 (Nat!2002 Nat!2002) Bool)
(assert (forall ((n!244 Nat!2002) (m!245 Nat!2002)) (= (nmax!246 n!244 m!245) (ite (less!231 n!244 m!245) m!245 n!244)) ))
(assert (forall ((x!229 Nat!2002) (y!230 Nat!2002)) (= (less!231 x!229 y!230) (ite ((_ is zero!2005) y!230) false (ite (and (and ((_ is zero!2005) x!229) ((_ is zero!2005) x!229)) ((_ is succ!2003) y!230)) true (ite (and (and ((_ is succ!2003) x!229) ((_ is succ!2003) x!229)) ((_ is succ!2003) y!230)) (less!231 (pred!2004 x!229) (pred!2004 y!230)) error_value!2006)))) ))
(assert (not (forall ((a!363 Nat!2002) (b!364 Nat!2002) (c!365 Nat!2002)) (= (nmax!246 (nmax!246 a!363 b!364) c!365) (nmax!246 c!365 (nmax!246 b!364 a!363))) )))
(check-sat)
(exit)

