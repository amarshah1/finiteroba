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


(declare-datatypes ((List!912 0)) (((Cons!913 (head!914 (_ BitVec 32)) (tail!915 List!912)) (Nil!916))
))
(declare-fun error_value!917 () Int)
(declare-fun size1!206 (List!912) Int)
(declare-fun error_value!918 () Int)
(declare-fun size2!208 (List!912) Int)
(declare-fun size2acc!211 (List!912 Int) Int)
(declare-sort I_size1!206 0)
(declare-fun size1!206_arg_0_1 (I_size1!206) List!912)
(declare-sort I_size2!208 0)
(declare-fun size2!208_arg_0_2 (I_size2!208) List!912)
(declare-sort I_size2acc!211 0)
(declare-fun size2acc!211_arg_0_3 (I_size2acc!211) List!912)
(declare-fun size2acc!211_arg_1_4 (I_size2acc!211) Int)
(assert (forall ((?i I_size1!206)) (and (= (size1!206 (size1!206_arg_0_1 ?i)) (ite ((_ is Cons!913) (size1!206_arg_0_1 ?i)) (+ 1 (size1!206 (tail!915 (size1!206_arg_0_1 ?i)))) (ite ((_ is Nil!916) (size1!206_arg_0_1 ?i)) 0 error_value!917))) (ite ((_ is Cons!913) (size1!206_arg_0_1 ?i)) (not (forall ((?z I_size1!206)) (not (= (size1!206_arg_0_1 ?z) (tail!915 (size1!206_arg_0_1 ?i)))) )) true)) ))
(assert (forall ((?i I_size2!208)) (and (= (size2!208 (size2!208_arg_0_2 ?i)) (size2acc!211 (size2!208_arg_0_2 ?i) 0)) (not (forall ((?z I_size2acc!211)) (not (and (= (size2acc!211_arg_0_3 ?z) (size2!208_arg_0_2 ?i)) (= (size2acc!211_arg_1_4 ?z) 0))) ))) ))
(assert (forall ((?i I_size2acc!211)) (and (= (size2acc!211 (size2acc!211_arg_0_3 ?i) (size2acc!211_arg_1_4 ?i)) (ite ((_ is Nil!916) (size2acc!211_arg_0_3 ?i)) (size2acc!211_arg_1_4 ?i) (ite ((_ is Cons!913) (size2acc!211_arg_0_3 ?i)) (size2acc!211 (tail!915 (size2acc!211_arg_0_3 ?i)) (+ 1 (size2acc!211_arg_1_4 ?i))) error_value!918))) (ite ((_ is Nil!916) (size2acc!211_arg_0_3 ?i)) true (ite ((_ is Cons!913) (size2acc!211_arg_0_3 ?i)) (not (forall ((?z I_size2acc!211)) (not (and (= (size2acc!211_arg_0_3 ?z) (tail!915 (size2acc!211_arg_0_3 ?i))) (= (size2acc!211_arg_1_4 ?z) (+ 1 (size2acc!211_arg_1_4 ?i))))) )) true))) ))
(assert (exists ((l!212 List!912)) (not (or (= (size1!206 l!212) (size2!208 l!212)) (forall ((?z I_size1!206)) (not (= (size1!206_arg_0_1 ?z) l!212)) ) (forall ((?z I_size2!208)) (not (= (size2!208_arg_0_2 ?z) l!212)) ))) ))
(check-sat)
(exit)

