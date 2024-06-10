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


(declare-sort T!218 0)
(declare-datatypes ((List!930 0)) (((Cons!931 (h!932 T!218) (t!933 List!930)) (Nil!934))
))
(declare-datatypes ((Option!948 0)) (((None!949) (Some!950 (value!951 T!218)))
))
(declare-fun error_value!957 () Bool)
(declare-fun error_value!962 () Option!948)
(declare-fun error_value!967 () Bool)
(declare-fun equivalence_lemma!946 ((Array T!218 Bool) List!930) Bool)
(declare-fun find!947 ((Array T!218 Bool) List!930) Option!948)
(declare-fun exists!952 ((Array T!218 Bool) List!930) Bool)
(declare-fun error_value!980 () Bool)
(declare-fun equivalence_lemma_induct!968 ((Array T!218 Bool) List!930) Bool)
(declare-fun error_value!981 () Bool)
(declare-sort I_equivalence_lemma!946 0)
(declare-fun equivalence_lemma!946_arg_0_1 (I_equivalence_lemma!946) (Array T!218 Bool))
(declare-fun equivalence_lemma!946_arg_1_2 (I_equivalence_lemma!946) List!930)
(declare-sort I_find!947 0)
(declare-fun find!947_arg_0_3 (I_find!947) (Array T!218 Bool))
(declare-fun find!947_arg_1_4 (I_find!947) List!930)
(declare-sort I_exists!952 0)
(declare-fun exists!952_arg_0_5 (I_exists!952) (Array T!218 Bool))
(declare-fun exists!952_arg_1_6 (I_exists!952) List!930)
(declare-sort I_equivalence_lemma_induct!968 0)
(declare-fun equivalence_lemma_induct!968_arg_0_7 (I_equivalence_lemma_induct!968) (Array T!218 Bool))
(declare-fun equivalence_lemma_induct!968_arg_1_8 (I_equivalence_lemma_induct!968) List!930)
(assert (forall ((?i I_equivalence_lemma!946)) (and (= (equivalence_lemma!946 (equivalence_lemma!946_arg_0_1 ?i) (equivalence_lemma!946_arg_1_2 ?i)) (ite ((_ is Some!950) (find!947 (equivalence_lemma!946_arg_0_1 ?i) (equivalence_lemma!946_arg_1_2 ?i))) (exists!952 (equivalence_lemma!946_arg_0_1 ?i) (equivalence_lemma!946_arg_1_2 ?i)) (ite ((_ is None!949) (find!947 (equivalence_lemma!946_arg_0_1 ?i) (equivalence_lemma!946_arg_1_2 ?i))) (not (exists!952 (equivalence_lemma!946_arg_0_1 ?i) (equivalence_lemma!946_arg_1_2 ?i))) error_value!957))) (not (forall ((?z I_find!947)) (not (and (= (find!947_arg_0_3 ?z) (equivalence_lemma!946_arg_0_1 ?i)) (= (find!947_arg_1_4 ?z) (equivalence_lemma!946_arg_1_2 ?i)))) )) (ite ((_ is Some!950) (find!947 (equivalence_lemma!946_arg_0_1 ?i) (equivalence_lemma!946_arg_1_2 ?i))) (not (forall ((?z I_exists!952)) (not (and (= (exists!952_arg_0_5 ?z) (equivalence_lemma!946_arg_0_1 ?i)) (= (exists!952_arg_1_6 ?z) (equivalence_lemma!946_arg_1_2 ?i)))) )) (and (not (forall ((?z I_find!947)) (not (and (= (find!947_arg_0_3 ?z) (equivalence_lemma!946_arg_0_1 ?i)) (= (find!947_arg_1_4 ?z) (equivalence_lemma!946_arg_1_2 ?i)))) )) (ite ((_ is None!949) (find!947 (equivalence_lemma!946_arg_0_1 ?i) (equivalence_lemma!946_arg_1_2 ?i))) (not (forall ((?z I_exists!952)) (not (and (= (exists!952_arg_0_5 ?z) (equivalence_lemma!946_arg_0_1 ?i)) (= (exists!952_arg_1_6 ?z) (equivalence_lemma!946_arg_1_2 ?i)))) )) true)))) ))
(assert (forall ((?i I_find!947)) (and (= (find!947 (find!947_arg_0_3 ?i) (find!947_arg_1_4 ?i)) (ite ((_ is Cons!931) (find!947_arg_1_4 ?i)) (ite (select (find!947_arg_0_3 ?i) (h!932 (find!947_arg_1_4 ?i))) (Some!950 (h!932 (find!947_arg_1_4 ?i))) (find!947 (find!947_arg_0_3 ?i) (t!933 (find!947_arg_1_4 ?i)))) (ite ((_ is Nil!934) (find!947_arg_1_4 ?i)) None!949 error_value!962))) (ite ((_ is Cons!931) (find!947_arg_1_4 ?i)) (ite (select (find!947_arg_0_3 ?i) (h!932 (find!947_arg_1_4 ?i))) true (not (forall ((?z I_find!947)) (not (and (= (find!947_arg_0_3 ?z) (find!947_arg_0_3 ?i)) (= (find!947_arg_1_4 ?z) (t!933 (find!947_arg_1_4 ?i))))) ))) true)) ))
(assert (forall ((?i I_exists!952)) (and (= (exists!952 (exists!952_arg_0_5 ?i) (exists!952_arg_1_6 ?i)) (ite ((_ is Cons!931) (exists!952_arg_1_6 ?i)) (or (exists!952 (exists!952_arg_0_5 ?i) (t!933 (exists!952_arg_1_6 ?i))) (select (exists!952_arg_0_5 ?i) (h!932 (exists!952_arg_1_6 ?i)))) (ite ((_ is Nil!934) (exists!952_arg_1_6 ?i)) false error_value!967))) (ite ((_ is Cons!931) (exists!952_arg_1_6 ?i)) (not (forall ((?z I_exists!952)) (not (and (= (exists!952_arg_0_5 ?z) (exists!952_arg_0_5 ?i)) (= (exists!952_arg_1_6 ?z) (t!933 (exists!952_arg_1_6 ?i))))) )) true)) ))
(assert (forall ((?i I_equivalence_lemma_induct!968)) (and (= (equivalence_lemma_induct!968 (equivalence_lemma_induct!968_arg_0_7 ?i) (equivalence_lemma_induct!968_arg_1_8 ?i)) (ite ((_ is Cons!931) (equivalence_lemma_induct!968_arg_1_8 ?i)) (and (equivalence_lemma_induct!968 (equivalence_lemma_induct!968_arg_0_7 ?i) (t!933 (equivalence_lemma_induct!968_arg_1_8 ?i))) (equivalence_lemma!946 (equivalence_lemma_induct!968_arg_0_7 ?i) (equivalence_lemma_induct!968_arg_1_8 ?i))) (ite ((_ is Nil!934) (equivalence_lemma_induct!968_arg_1_8 ?i)) (equivalence_lemma!946 (equivalence_lemma_induct!968_arg_0_7 ?i) (equivalence_lemma_induct!968_arg_1_8 ?i)) error_value!980))) (ite ((_ is Cons!931) (equivalence_lemma_induct!968_arg_1_8 ?i)) (and (not (forall ((?z I_equivalence_lemma_induct!968)) (not (and (= (equivalence_lemma_induct!968_arg_0_7 ?z) (equivalence_lemma_induct!968_arg_0_7 ?i)) (= (equivalence_lemma_induct!968_arg_1_8 ?z) (t!933 (equivalence_lemma_induct!968_arg_1_8 ?i))))) )) (not (forall ((?z I_equivalence_lemma!946)) (not (and (= (equivalence_lemma!946_arg_0_1 ?z) (equivalence_lemma_induct!968_arg_0_7 ?i)) (= (equivalence_lemma!946_arg_1_2 ?z) (equivalence_lemma_induct!968_arg_1_8 ?i)))) ))) (ite ((_ is Nil!934) (equivalence_lemma_induct!968_arg_1_8 ?i)) (not (forall ((?z I_equivalence_lemma!946)) (not (and (= (equivalence_lemma!946_arg_0_1 ?z) (equivalence_lemma_induct!968_arg_0_7 ?i)) (= (equivalence_lemma!946_arg_1_2 ?z) (equivalence_lemma_induct!968_arg_1_8 ?i)))) )) true))) ))
(assert (not (forall ((list!220 List!930) (f!219 (Array T!218 Bool))) (or (ite (and (equivalence_lemma_induct!968 f!219 (t!933 list!220)) (equivalence_lemma!946 f!219 list!220)) ((_ is Cons!931) list!220) (ite ((_ is Nil!934) list!220) (or (equivalence_lemma!946 f!219 list!220) (forall ((?z I_equivalence_lemma!946)) (not (and (= (equivalence_lemma!946_arg_0_1 ?z) f!219) (= (equivalence_lemma!946_arg_1_2 ?z) list!220))) )) error_value!981)) (forall ((?z I_equivalence_lemma_induct!968)) (not (and (= (equivalence_lemma_induct!968_arg_0_7 ?z) f!219) (= (equivalence_lemma_induct!968_arg_1_8 ?z) (t!933 list!220)))) ) (forall ((?z I_equivalence_lemma!946)) (not (and (= (equivalence_lemma!946_arg_0_1 ?z) f!219) (= (equivalence_lemma!946_arg_1_2 ?z) list!220))) )) )))
(check-sat)
(exit)

