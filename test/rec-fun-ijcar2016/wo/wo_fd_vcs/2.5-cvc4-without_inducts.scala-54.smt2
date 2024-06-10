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


(declare-datatypes ((Nat!1996 0)) (((succ!1997 (pred!1998 Nat!1996)) (zero!1999))
))
(declare-fun error_value!2000 () Bool)
(declare-fun leq!234 (Nat!1996 Nat!1996) Bool)
(declare-fun less!231 (Nat!1996 Nat!1996) Bool)
(declare-fun error_value!2001 () Nat!1996)
(declare-fun plus!237 (Nat!1996 Nat!1996) Nat!1996)
(assert (forall ((x!232 Nat!1996) (y!233 Nat!1996)) (= (leq!234 x!232 y!233) (or (or (= x!232 y!233) (= x!232 y!233)) (less!231 x!232 y!233))) ))
(assert (forall ((x!229 Nat!1996) (y!230 Nat!1996)) (= (less!231 x!229 y!230) (ite ((_ is zero!1999) y!230) false (ite (and (and ((_ is zero!1999) x!229) ((_ is zero!1999) x!229)) ((_ is succ!1997) y!230)) true (ite (and (and ((_ is succ!1997) x!229) ((_ is succ!1997) x!229)) ((_ is succ!1997) y!230)) (less!231 (pred!1998 x!229) (pred!1998 y!230)) error_value!2000)))) ))
(assert (forall ((x!235 Nat!1996) (y!236 Nat!1996)) (= (plus!237 x!235 y!236) (ite ((_ is zero!1999) x!235) y!236 (ite ((_ is succ!1997) x!235) (succ!1997 (plus!237 (pred!1998 x!235) y!236)) error_value!2001))) ))
(assert (exists ((n!360 Nat!1996) (m!361 Nat!1996)) (not (leq!234 n!360 (plus!237 n!360 m!361))) ))
(check-sat)
(exit)

