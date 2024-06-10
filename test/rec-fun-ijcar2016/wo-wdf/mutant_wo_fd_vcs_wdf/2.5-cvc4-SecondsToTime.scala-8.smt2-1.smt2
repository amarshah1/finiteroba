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


(declare-fun propSum!208 (Int Int Int Int) Bool)
(declare-datatypes ((tuple3!914 0)) (((tuple3!914!915 (_1!916 Int) (_2!917 Int) (_3!918 Int)))
))
(declare-fun rec2!227 (Int Int Int Int) tuple3!914)
(declare-fun prop!213 (Int Int Int Int) Bool)
(declare-sort I_propSum!208 0)
(declare-fun propSum!208_arg_0_1 (I_propSum!208) Int)
(declare-fun propSum!208_arg_1_2 (I_propSum!208) Int)
(declare-fun propSum!208_arg_2_3 (I_propSum!208) Int)
(declare-fun propSum!208_arg_3_4 (I_propSum!208) Int)
(declare-sort I_rec2!227 0)
(declare-fun rec2!227_arg_0_5 (I_rec2!227) Int)
(declare-fun rec2!227_arg_1_6 (I_rec2!227) Int)
(declare-fun rec2!227_arg_2_7 (I_rec2!227) Int)
(declare-fun rec2!227_arg_3_8 (I_rec2!227) Int)
(declare-sort I_prop!213 0)
(declare-fun prop!213_arg_0_9 (I_prop!213) Int)
(declare-fun prop!213_arg_1_10 (I_prop!213) Int)
(declare-fun prop!213_arg_2_11 (I_prop!213) Int)
(declare-fun prop!213_arg_3_12 (I_prop!213) Int)
(assert (forall ((?i I_propSum!208)) (= (propSum!208 (propSum!208_arg_0_1 ?i) (propSum!208_arg_1_2 ?i) (propSum!208_arg_2_3 ?i) (propSum!208_arg_3_4 ?i)) (= (propSum!208_arg_0_1 ?i) (+ (* 3600 (propSum!208_arg_1_2 ?i)) (* 60 (propSum!208_arg_2_3 ?i)) (propSum!208_arg_3_4 ?i)))) ))
(assert (forall ((?i I_rec2!227)) (and (= (rec2!227 (rec2!227_arg_0_5 ?i) (rec2!227_arg_1_6 ?i) (rec2!227_arg_2_7 ?i) (rec2!227_arg_3_8 ?i)) (ite (and (= (rec2!227_arg_3_8 ?i) 59) (>= (rec2!227_arg_1_6 ?i) 60)) (rec2!227 (rec2!227_arg_0_5 ?i) (+ (- 60) (rec2!227_arg_1_6 ?i)) (+ 1 (rec2!227_arg_2_7 ?i)) 0) (ite (>= (rec2!227_arg_1_6 ?i) 60) (rec2!227 (rec2!227_arg_0_5 ?i) (+ (- 60) (rec2!227_arg_1_6 ?i)) (rec2!227_arg_2_7 ?i) (+ 1 (rec2!227_arg_3_8 ?i))) (tuple3!914!915 (rec2!227_arg_2_7 ?i) (rec2!227_arg_3_8 ?i) (rec2!227_arg_1_6 ?i))))) (ite (and (= (rec2!227_arg_3_8 ?i) 59) (>= (rec2!227_arg_1_6 ?i) 60)) (not (forall ((?z I_rec2!227)) (not (and (= (rec2!227_arg_0_5 ?z) (rec2!227_arg_0_5 ?i)) (= (rec2!227_arg_1_6 ?z) (+ (- 60) (rec2!227_arg_1_6 ?i))) (= (rec2!227_arg_2_7 ?z) (+ 1 (rec2!227_arg_2_7 ?i))) (= (rec2!227_arg_3_8 ?z) 0))) )) (ite (>= (rec2!227_arg_1_6 ?i) 60) (not (forall ((?z I_rec2!227)) (not (and (= (rec2!227_arg_0_5 ?z) (rec2!227_arg_0_5 ?i)) (= (rec2!227_arg_1_6 ?z) (+ (- 60) (rec2!227_arg_1_6 ?i))) (= (rec2!227_arg_2_7 ?z) (rec2!227_arg_2_7 ?i)) (= (rec2!227_arg_3_8 ?z) (+ 1 (rec2!227_arg_3_8 ?i))))) )) true))) ))
(assert (forall ((?i I_prop!213)) (and (= (prop!213 (prop!213_arg_0_9 ?i) (prop!213_arg_1_10 ?i) (prop!213_arg_2_11 ?i) (prop!213_arg_3_12 ?i)) (and (not (>= (prop!213_arg_3_12 ?i) 60)) (>= (prop!213_arg_3_12 ?i) 0) (not (>= (prop!213_arg_2_11 ?i) 60)) (>= (prop!213_arg_2_11 ?i) 0) (propSum!208 (prop!213_arg_0_9 ?i) (prop!213_arg_1_10 ?i) (prop!213_arg_2_11 ?i) (prop!213_arg_3_12 ?i)))) (not (forall ((?z I_propSum!208)) (not (and (= (propSum!208_arg_0_1 ?z) (prop!213_arg_0_9 ?i)) (= (propSum!208_arg_1_2 ?z) (prop!213_arg_1_10 ?i)) (= (propSum!208_arg_2_3 ?z) (prop!213_arg_2_11 ?i)) (= (propSum!208_arg_3_4 ?z) (prop!213_arg_3_12 ?i)))) ))) ))
(assert (not (forall ((total!223 Int) (h!225 Int) (m!226 Int) (r!224 Int)) (or (and (= m!226 59) (>= r!224 60)) (not (>= r!224 0)) (not (>= h!225 0)) (not (>= m!226 0)) (not (and (propSum!208 total!223 h!225 m!226 r!224) (not (forall ((?z I_propSum!208)) (not (and (= (propSum!208_arg_0_1 ?z) total!223) (= (propSum!208_arg_1_2 ?z) h!225) (= (propSum!208_arg_2_3 ?z) m!226) (= (propSum!208_arg_3_4 ?z) r!224))) )))) (or (prop!213 total!223 (_1!916 (ite (>= m!226 60) (rec2!227 total!223 (+ (- 60) r!224) (+ 1 h!225) 0) (ite (>= r!224 60) (rec2!227 total!223 (+ (- 60) r!224) h!225 (+ 1 m!226)) (tuple3!914!915 h!225 m!226 r!224)))) (_2!917 (ite (and (= m!226 59) (>= r!224 60)) (rec2!227 total!223 (+ (- 60) r!224) (+ 1 h!225) 0) (ite (>= r!224 60) (rec2!227 total!223 (+ (- 60) r!224) h!225 (+ 1 m!226)) (tuple3!914!915 h!225 m!226 r!224)))) (_3!918 (ite (and (= m!226 59) (>= r!224 60)) (rec2!227 total!223 (+ (- 60) r!224) (+ 1 h!225) 0) (ite (>= r!224 60) (rec2!227 total!223 (+ (- 60) r!224) h!225 (+ 1 m!226)) (tuple3!914!915 h!225 m!226 r!224))))) (forall ((?z I_prop!213)) (not (and (= (prop!213_arg_0_9 ?z) total!223) (= (prop!213_arg_1_10 ?z) (_1!916 (ite (>= m!226 60) (rec2!227 total!223 (+ (- 60) r!224) (+ 1 h!225) 0) (ite (>= r!224 60) (rec2!227 total!223 (+ (- 60) r!224) h!225 (+ 1 m!226)) (tuple3!914!915 h!225 m!226 r!224))))) (= (prop!213_arg_2_11 ?z) (_2!917 (ite (and (= m!226 59) (>= r!224 60)) (rec2!227 total!223 (+ (- 60) r!224) (+ 1 h!225) 0) (ite (>= r!224 60) (rec2!227 total!223 (+ (- 60) r!224) h!225 (+ 1 m!226)) (tuple3!914!915 h!225 m!226 r!224))))) (= (prop!213_arg_3_12 ?z) (_3!918 (ite (and (= m!226 59) (>= r!224 60)) (rec2!227 total!223 (+ (- 60) r!224) (+ 1 h!225) 0) (ite (>= r!224 60) (rec2!227 total!223 (+ (- 60) r!224) h!225 (+ 1 m!226)) (tuple3!914!915 h!225 m!226 r!224))))))) ) (not (ite (>= m!226 60) (not (forall ((?z I_rec2!227)) (not (and (= (rec2!227_arg_0_5 ?z) total!223) (= (rec2!227_arg_1_6 ?z) (+ (- 60) r!224)) (= (rec2!227_arg_2_7 ?z) (+ 1 h!225)) (= (rec2!227_arg_3_8 ?z) 0))) )) (ite (>= r!224 60) (not (forall ((?z I_rec2!227)) (not (and (= (rec2!227_arg_0_5 ?z) total!223) (= (rec2!227_arg_1_6 ?z) (+ (- 60) r!224)) (= (rec2!227_arg_2_7 ?z) h!225) (= (rec2!227_arg_3_8 ?z) (+ 1 m!226)))) )) true))) (not (ite (and (= m!226 59) (>= r!224 60)) (not (forall ((?z I_rec2!227)) (not (and (= (rec2!227_arg_0_5 ?z) total!223) (= (rec2!227_arg_1_6 ?z) (+ (- 60) r!224)) (= (rec2!227_arg_2_7 ?z) (+ 1 h!225)) (= (rec2!227_arg_3_8 ?z) 0))) )) (ite (>= r!224 60) (not (forall ((?z I_rec2!227)) (not (and (= (rec2!227_arg_0_5 ?z) total!223) (= (rec2!227_arg_1_6 ?z) (+ (- 60) r!224)) (= (rec2!227_arg_2_7 ?z) h!225) (= (rec2!227_arg_3_8 ?z) (+ 1 m!226)))) )) true))) (not (ite (and (= m!226 59) (>= r!224 60)) (not (forall ((?z I_rec2!227)) (not (and (= (rec2!227_arg_0_5 ?z) total!223) (= (rec2!227_arg_1_6 ?z) (+ (- 60) r!224)) (= (rec2!227_arg_2_7 ?z) (+ 1 h!225)) (= (rec2!227_arg_3_8 ?z) 0))) )) (ite (>= r!224 60) (not (forall ((?z I_rec2!227)) (not (and (= (rec2!227_arg_0_5 ?z) total!223) (= (rec2!227_arg_1_6 ?z) (+ (- 60) r!224)) (= (rec2!227_arg_2_7 ?z) h!225) (= (rec2!227_arg_3_8 ?z) (+ 1 m!226)))) )) true))))) )))
(check-sat)
(exit)
