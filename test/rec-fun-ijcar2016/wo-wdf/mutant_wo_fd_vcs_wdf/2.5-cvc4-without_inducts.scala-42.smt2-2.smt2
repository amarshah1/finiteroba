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


(declare-datatypes ((Nat!1895 0)) (((succ!1896 (pred!1897 Nat!1895)) (zero!1898))
))
(declare-fun error_value!1899 () Nat!1895)
(declare-fun minus!240 (Nat!1895 Nat!1895) Nat!1895)
(declare-fun error_value!1900 () Nat!1895)
(declare-fun plus!237 (Nat!1895 Nat!1895) Nat!1895)
(declare-sort I_minus!240 0)
(declare-fun minus!240_arg_0_1 (I_minus!240) Nat!1895)
(declare-fun minus!240_arg_1_2 (I_minus!240) Nat!1895)
(declare-sort I_plus!237 0)
(declare-fun plus!237_arg_0_3 (I_plus!237) Nat!1895)
(declare-fun plus!237_arg_1_4 (I_plus!237) Nat!1895)
(assert (forall ((?i I_minus!240)) (and (= (minus!240 (minus!240_arg_0_1 ?i) (minus!240_arg_1_2 ?i)) (ite ((_ is zero!1898) (minus!240_arg_0_1 ?i)) zero!1898 (ite ((_ is zero!1898) (minus!240_arg_1_2 ?i)) (minus!240_arg_0_1 ?i) (ite (and ((_ is succ!1896) (minus!240_arg_1_2 ?i)) ((_ is succ!1896) (minus!240_arg_0_1 ?i))) (minus!240 (pred!1897 (minus!240_arg_0_1 ?i)) (pred!1897 (minus!240_arg_1_2 ?i))) error_value!1899)))) (ite ((_ is zero!1898) (minus!240_arg_0_1 ?i)) true (ite ((_ is zero!1898) (minus!240_arg_1_2 ?i)) true (ite (and ((_ is succ!1896) (minus!240_arg_1_2 ?i)) ((_ is succ!1896) (minus!240_arg_0_1 ?i))) (not (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_1 ?z) (pred!1897 (minus!240_arg_0_1 ?i))) (= (minus!240_arg_1_2 ?z) (pred!1897 (minus!240_arg_1_2 ?i))))) )) true)))) ))
(assert (forall ((?i I_plus!237)) (and (= (plus!237 (plus!237_arg_0_3 ?i) (plus!237_arg_1_4 ?i)) (ite ((_ is zero!1898) (plus!237_arg_0_3 ?i)) (plus!237_arg_1_4 ?i) (ite ((_ is succ!1896) (plus!237_arg_0_3 ?i)) (succ!1896 (plus!237 (pred!1897 (plus!237_arg_0_3 ?i)) (plus!237_arg_1_4 ?i))) error_value!1900))) (ite ((_ is zero!1898) (plus!237_arg_0_3 ?i)) true (ite ((_ is succ!1896) (plus!237_arg_0_3 ?i)) (not (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_3 ?z) (pred!1897 (plus!237_arg_0_3 ?i))) (= (plus!237_arg_1_4 ?z) (plus!237_arg_1_4 ?i)))) )) true))) ))
(assert (not (forall ((n!325 Nat!1895) (m!326 Nat!1895)) (or (= (minus!240 n!325 (plus!237 n!325 m!326)) m!326) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_1 ?z) n!325) (= (minus!240_arg_1_2 ?z) (plus!237 n!325 m!326)))) ) (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_3 ?z) n!325) (= (plus!237_arg_1_4 ?z) m!326))) )) )))
(check-sat)
(exit)

