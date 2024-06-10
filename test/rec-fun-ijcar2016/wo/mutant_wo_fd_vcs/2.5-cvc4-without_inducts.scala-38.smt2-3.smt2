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


(declare-datatypes ((Nat!1855 0)) (((succ!1856 (pred!1857 Nat!1855)) (zero!1858))
))
(declare-datatypes ((Lst!1859 0)) (((cons!1860 (head!1861 Nat!1855) (tail!1862 Lst!1859)) (nil!1863))
))
(declare-fun error_value!1864 () Bool)
(declare-fun leq!234 (Nat!1855 Nat!1855) Bool)
(declare-fun less!231 (Nat!1855 Nat!1855) Bool)
(declare-fun error_value!1865 () Nat!1855)
(declare-fun count!263 (Nat!1855 Lst!1859) Nat!1855)
(declare-fun error_value!1866 () Lst!1859)
(declare-fun append!252 (Lst!1859 Lst!1859) Lst!1859)
(assert (forall ((x!232 Nat!1855) (y!233 Nat!1855)) (= (leq!234 x!232 y!233) (or (or (= x!232 y!233) (= x!232 y!233)) (less!231 x!232 y!233))) ))
(assert (forall ((x!229 Nat!1855) (y!230 Nat!1855)) (= (less!231 x!229 y!230) (ite ((_ is zero!1858) y!230) false (ite (and (and ((_ is zero!1858) x!229) ((_ is zero!1858) x!229)) ((_ is succ!1856) y!230)) true (ite (and (and ((_ is succ!1856) x!229) ((_ is succ!1856) x!229)) ((_ is succ!1856) y!230)) (less!231 (pred!1857 x!229) (pred!1857 y!230)) error_value!1864)))) ))
(assert (forall ((n!261 Nat!1855) (l!262 Lst!1859)) (= (count!263 n!261 l!262) (ite ((_ is nil!1863) l!262) zero!1858 (ite ((_ is cons!1860) l!262) (ite (= n!261 (head!1861 l!262)) (succ!1856 (count!263 n!261 (tail!1862 l!262))) (count!263 n!261 (tail!1862 l!262))) error_value!1865))) ))
(assert (forall ((l1!250 Lst!1859) (l2!251 Lst!1859)) (= (append!252 l1!250 l2!251) (ite ((_ is nil!1863) l1!250) l2!251 (ite ((_ is cons!1860) l1!250) (cons!1860 (head!1861 l1!250) (append!252 (tail!1862 l1!250) l2!251)) error_value!1866))) ))
(assert (not (forall ((n!311 Nat!1855) (l!312 Lst!1859) (m!313 Lst!1859)) (leq!234 (count!263 n!311 l!312) (count!263 n!311 (append!252 m!313 l!312))) )))
(check-sat)
(exit)

