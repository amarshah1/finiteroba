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
(declare-sort I_minus!240 0)
(declare-fun minus!240_arg_0_1 (I_minus!240) Nat!1901)
(declare-fun minus!240_arg_1_2 (I_minus!240) Nat!1901)
(declare-sort I_plus!237 0)
(declare-fun plus!237_arg_0_3 (I_plus!237) Nat!1901)
(declare-fun plus!237_arg_1_4 (I_plus!237) Nat!1901)
(assert (forall ((?i I_minus!240)) (and (= (minus!240 (minus!240_arg_0_1 ?i) (minus!240_arg_1_2 ?i)) (ite ((_ is zero!1904) (minus!240_arg_0_1 ?i)) zero!1904 (ite ((_ is zero!1904) (minus!240_arg_1_2 ?i)) (minus!240_arg_0_1 ?i) (ite (and ((_ is succ!1902) (minus!240_arg_1_2 ?i)) ((_ is succ!1902) (minus!240_arg_0_1 ?i))) (minus!240 (pred!1903 (minus!240_arg_0_1 ?i)) (pred!1903 (minus!240_arg_1_2 ?i))) error_value!1905)))) (ite ((_ is zero!1904) (minus!240_arg_0_1 ?i)) true (ite ((_ is zero!1904) (minus!240_arg_1_2 ?i)) true (ite (and ((_ is succ!1902) (minus!240_arg_1_2 ?i)) ((_ is succ!1902) (minus!240_arg_0_1 ?i))) (not (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_1 ?z) (pred!1903 (minus!240_arg_0_1 ?i))) (= (minus!240_arg_1_2 ?z) (pred!1903 (minus!240_arg_1_2 ?i))))) )) true)))) ))
(assert (forall ((?i I_plus!237)) (and (= (plus!237 (plus!237_arg_0_3 ?i) (plus!237_arg_1_4 ?i)) (ite ((_ is zero!1904) (plus!237_arg_0_3 ?i)) (plus!237_arg_1_4 ?i) (ite ((_ is succ!1902) (plus!237_arg_0_3 ?i)) (succ!1902 (plus!237 (pred!1903 (plus!237_arg_0_3 ?i)) (plus!237_arg_1_4 ?i))) error_value!1906))) (ite ((_ is zero!1904) (plus!237_arg_0_3 ?i)) true (ite ((_ is succ!1902) (plus!237_arg_0_3 ?i)) (not (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_3 ?z) (pred!1903 (plus!237_arg_0_3 ?i))) (= (plus!237_arg_1_4 ?z) (plus!237_arg_1_4 ?i)))) )) true))) ))
(assert (not (forall ((k!328 Nat!1901) (m!330 Nat!1901) (n!329 Nat!1901)) (or (= (minus!240 (plus!237 k!328 m!330) (minus!240 m!330 n!329)) (plus!237 k!328 n!329)) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_1 ?z) (plus!237 k!328 m!330)) (= (minus!240_arg_1_2 ?z) (minus!240 m!330 n!329)))) ) (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_3 ?z) k!328) (= (plus!237_arg_1_4 ?z) m!330))) ) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_1 ?z) m!330) (= (minus!240_arg_1_2 ?z) n!329))) ) (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_3 ?z) k!328) (= (plus!237_arg_1_4 ?z) n!329))) )) )))
(check-sat)
(exit)

