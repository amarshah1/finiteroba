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


(declare-datatypes ((Nat!1867 0)) (((succ!1868 (pred!1869 Nat!1867)) (zero!1870))
))
(declare-datatypes ((Lst!1871 0)) (((cons!1872 (head!1873 Nat!1867) (tail!1874 Lst!1871)) (nil!1875))
))
(declare-fun error_value!1876 () Nat!1867)
(declare-fun plus!237 (Nat!1867 Nat!1867) Nat!1867)
(declare-fun error_value!1877 () Nat!1867)
(declare-fun count!263 (Nat!1867 Lst!1871) Nat!1867)
(declare-sort I_plus!237 0)
(declare-fun plus!237_arg_0_1 (I_plus!237) Nat!1867)
(declare-fun plus!237_arg_1_2 (I_plus!237) Nat!1867)
(declare-sort I_count!263 0)
(declare-fun count!263_arg_0_3 (I_count!263) Nat!1867)
(declare-fun count!263_arg_1_4 (I_count!263) Lst!1871)
(assert (forall ((?i I_plus!237)) (and (= (plus!237 (plus!237_arg_0_1 ?i) (plus!237_arg_1_2 ?i)) (ite ((_ is zero!1870) (plus!237_arg_0_1 ?i)) (plus!237_arg_1_2 ?i) (ite ((_ is succ!1868) (plus!237_arg_0_1 ?i)) (succ!1868 (plus!237 (pred!1869 (plus!237_arg_0_1 ?i)) (plus!237_arg_1_2 ?i))) error_value!1876))) (ite ((_ is zero!1870) (plus!237_arg_0_1 ?i)) true (ite ((_ is succ!1868) (plus!237_arg_0_1 ?i)) (not (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_1 ?z) (pred!1869 (plus!237_arg_0_1 ?i))) (= (plus!237_arg_1_2 ?z) (plus!237_arg_1_2 ?i)))) )) true))) ))
(assert (forall ((?i I_count!263)) (and (= (count!263 (count!263_arg_0_3 ?i) (count!263_arg_1_4 ?i)) (ite ((_ is nil!1875) (count!263_arg_1_4 ?i)) zero!1870 (ite ((_ is cons!1872) (count!263_arg_1_4 ?i)) (ite (= (count!263_arg_0_3 ?i) (head!1873 (count!263_arg_1_4 ?i))) (succ!1868 (count!263 (count!263_arg_0_3 ?i) (tail!1874 (count!263_arg_1_4 ?i)))) (count!263 (count!263_arg_0_3 ?i) (tail!1874 (count!263_arg_1_4 ?i)))) error_value!1877))) (ite ((_ is nil!1875) (count!263_arg_1_4 ?i)) true (ite ((_ is cons!1872) (count!263_arg_1_4 ?i)) (ite (= (count!263_arg_0_3 ?i) (head!1873 (count!263_arg_1_4 ?i))) (not (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_3 ?z) (count!263_arg_0_3 ?i)) (= (count!263_arg_1_4 ?z) (tail!1874 (count!263_arg_1_4 ?i))))) )) (not (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_3 ?z) (count!263_arg_0_3 ?i)) (= (count!263_arg_1_4 ?z) (tail!1874 (count!263_arg_1_4 ?i))))) ))) true))) ))
(assert (not (forall ((n!315 Nat!1867) (l!316 Lst!1871)) (or (= (count!263 n!315 (cons!1872 n!315 l!316)) (plus!237 (succ!1868 zero!1870) (count!263 n!315 l!316))) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_3 ?z) n!315) (= (count!263_arg_1_4 ?z) (cons!1872 n!315 l!316)))) ) (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_1 ?z) (succ!1868 zero!1870)) (= (plus!237_arg_1_2 ?z) (count!263 n!315 l!316)))) ) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_3 ?z) n!315) (= (count!263_arg_1_4 ?z) l!316))) )) )))
(check-sat)
(exit)

