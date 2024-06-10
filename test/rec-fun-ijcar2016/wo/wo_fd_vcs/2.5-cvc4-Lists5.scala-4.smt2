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
(assert (forall ((f!935 (Array T!218 Bool)) (list!936 List!930)) (= (equivalence_lemma!946 f!935 list!936) (ite ((_ is Some!950) (find!947 f!935 list!936)) (exists!952 f!935 list!936) (ite ((_ is None!949) (find!947 f!935 list!936)) (not (exists!952 f!935 list!936)) error_value!957))) ))
(assert (forall ((f!938 (Array T!218 Bool)) (list!939 List!930)) (= (find!947 f!938 list!939) (ite ((_ is Cons!931) list!939) (ite (select f!938 (h!932 list!939)) (Some!950 (h!932 list!939)) (find!947 f!938 (t!933 list!939))) (ite ((_ is Nil!934) list!939) None!949 error_value!962))) ))
(assert (forall ((f!942 (Array T!218 Bool)) (list!943 List!930)) (= (exists!952 f!942 list!943) (ite ((_ is Cons!931) list!943) (or (or (select f!942 (h!932 list!943)) (select f!942 (h!932 list!943))) (exists!952 f!942 (t!933 list!943))) (ite ((_ is Nil!934) list!943) false error_value!967))) ))
(assert (forall ((f!219 (Array T!218 Bool)) (list!220 List!930)) (= (equivalence_lemma_induct!968 f!219 list!220) (ite ((_ is Cons!931) list!220) (and (and (equivalence_lemma!946 f!219 list!220) (equivalence_lemma!946 f!219 list!220)) (equivalence_lemma_induct!968 f!219 (t!933 list!220))) (ite ((_ is Nil!934) list!220) (equivalence_lemma!946 f!219 list!220) error_value!980))) ))
(assert (exists ((list!220 List!930) (f!219 (Array T!218 Bool))) (not (ite ((_ is Cons!931) list!220) (and (and (equivalence_lemma!946 f!219 list!220) (equivalence_lemma!946 f!219 list!220)) (equivalence_lemma_induct!968 f!219 (t!933 list!220))) (ite ((_ is Nil!934) list!220) (equivalence_lemma!946 f!219 list!220) error_value!981))) ))
(check-sat)
(exit)

