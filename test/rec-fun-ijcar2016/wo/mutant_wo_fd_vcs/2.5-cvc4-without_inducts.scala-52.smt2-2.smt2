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


(declare-datatypes ((Nat!1971 0)) (((succ!1972 (pred!1973 Nat!1971)) (zero!1974))
))
(declare-datatypes ((Lst!1975 0)) (((cons!1976 (head!1977 Nat!1971) (tail!1978 Lst!1975)) (nil!1979))
))
(declare-fun error_value!1980 () Nat!1971)
(declare-fun len!254 (Lst!1975) Nat!1971)
(declare-fun error_value!1981 () Lst!1975)
(declare-fun drop!257 (Nat!1971 Lst!1975) Lst!1975)
(declare-fun error_value!1982 () Nat!1971)
(declare-fun minus!240 (Nat!1971 Nat!1971) Nat!1971)
(assert (forall ((l!253 Lst!1975)) (= (len!254 l!253) (ite ((_ is nil!1979) l!253) zero!1974 (ite ((_ is cons!1976) l!253) (succ!1972 (len!254 (tail!1978 l!253))) error_value!1980))) ))
(assert (forall ((n!255 Nat!1971) (l!256 Lst!1975)) (= (drop!257 n!255 l!256) (ite ((_ is nil!1979) l!256) nil!1979 (ite ((_ is zero!1974) n!255) l!256 (ite (and (and ((_ is succ!1972) n!255) ((_ is succ!1972) n!255)) ((_ is cons!1976) l!256)) (drop!257 (pred!1973 n!255) (tail!1978 l!256)) error_value!1981)))) ))
(assert (forall ((x!238 Nat!1971) (y!239 Nat!1971)) (= (minus!240 x!238 y!239) (ite ((_ is zero!1974) x!238) zero!1974 (ite ((_ is zero!1974) y!239) x!238 (ite (and (and ((_ is succ!1972) x!238) ((_ is succ!1972) x!238)) ((_ is succ!1972) y!239)) (minus!240 (pred!1973 x!238) (pred!1973 y!239)) error_value!1982)))) ))
(assert (not (forall ((n!355 Nat!1971) (xs!356 Lst!1975)) (= n!355 (minus!240 (len!254 xs!356) (len!254 (drop!257 n!355 xs!356)))) )))
(check-sat)
(exit)

