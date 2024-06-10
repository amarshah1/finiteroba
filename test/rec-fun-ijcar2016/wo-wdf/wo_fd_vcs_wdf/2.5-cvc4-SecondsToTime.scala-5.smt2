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
(declare-datatypes ((tuple3!909 0)) (((tuple3!909!910 (_1!911 Int) (_2!912 Int) (_3!913 Int)))
))
(declare-fun rec!222 (Int Int Int Int) tuple3!909)
(declare-fun prop!213 (Int Int Int Int) Bool)
(declare-sort I_propSum!208 0)
(declare-fun propSum!208_arg_0_1 (I_propSum!208) Int)
(declare-fun propSum!208_arg_1_2 (I_propSum!208) Int)
(declare-fun propSum!208_arg_2_3 (I_propSum!208) Int)
(declare-fun propSum!208_arg_3_4 (I_propSum!208) Int)
(declare-sort I_rec!222 0)
(declare-fun rec!222_arg_0_5 (I_rec!222) Int)
(declare-fun rec!222_arg_1_6 (I_rec!222) Int)
(declare-fun rec!222_arg_2_7 (I_rec!222) Int)
(declare-fun rec!222_arg_3_8 (I_rec!222) Int)
(declare-sort I_prop!213 0)
(declare-fun prop!213_arg_0_9 (I_prop!213) Int)
(declare-fun prop!213_arg_1_10 (I_prop!213) Int)
(declare-fun prop!213_arg_2_11 (I_prop!213) Int)
(declare-fun prop!213_arg_3_12 (I_prop!213) Int)
(assert (forall ((?i I_propSum!208)) (= (propSum!208 (propSum!208_arg_0_1 ?i) (propSum!208_arg_1_2 ?i) (propSum!208_arg_2_3 ?i) (propSum!208_arg_3_4 ?i)) (= (propSum!208_arg_0_1 ?i) (+ (* 3600 (propSum!208_arg_1_2 ?i)) (* 60 (propSum!208_arg_2_3 ?i)) (propSum!208_arg_3_4 ?i)))) ))
(assert (forall ((?i I_rec!222)) (and (= (rec!222 (rec!222_arg_0_5 ?i) (rec!222_arg_1_6 ?i) (rec!222_arg_2_7 ?i) (rec!222_arg_3_8 ?i)) (ite (>= (rec!222_arg_1_6 ?i) 3600) (rec!222 (rec!222_arg_0_5 ?i) (+ (- 3600) (rec!222_arg_1_6 ?i)) (+ 1 (rec!222_arg_2_7 ?i)) (rec!222_arg_3_8 ?i)) (ite (>= (rec!222_arg_1_6 ?i) 60) (rec!222 (rec!222_arg_0_5 ?i) (+ (- 60) (rec!222_arg_1_6 ?i)) (rec!222_arg_2_7 ?i) (+ 1 (rec!222_arg_3_8 ?i))) (tuple3!909!910 (rec!222_arg_2_7 ?i) (rec!222_arg_3_8 ?i) (rec!222_arg_1_6 ?i))))) (ite (>= (rec!222_arg_1_6 ?i) 3600) (not (forall ((?z I_rec!222)) (not (and (= (rec!222_arg_0_5 ?z) (rec!222_arg_0_5 ?i)) (= (rec!222_arg_1_6 ?z) (+ (- 3600) (rec!222_arg_1_6 ?i))) (= (rec!222_arg_2_7 ?z) (+ 1 (rec!222_arg_2_7 ?i))) (= (rec!222_arg_3_8 ?z) (rec!222_arg_3_8 ?i)))) )) (ite (>= (rec!222_arg_1_6 ?i) 60) (not (forall ((?z I_rec!222)) (not (and (= (rec!222_arg_0_5 ?z) (rec!222_arg_0_5 ?i)) (= (rec!222_arg_1_6 ?z) (+ (- 60) (rec!222_arg_1_6 ?i))) (= (rec!222_arg_2_7 ?z) (rec!222_arg_2_7 ?i)) (= (rec!222_arg_3_8 ?z) (+ 1 (rec!222_arg_3_8 ?i))))) )) true))) ))
(assert (forall ((?i I_prop!213)) (and (= (prop!213 (prop!213_arg_0_9 ?i) (prop!213_arg_1_10 ?i) (prop!213_arg_2_11 ?i) (prop!213_arg_3_12 ?i)) (and (not (>= (prop!213_arg_3_12 ?i) 60)) (>= (prop!213_arg_3_12 ?i) 0) (not (>= (prop!213_arg_2_11 ?i) 60)) (>= (prop!213_arg_2_11 ?i) 0) (propSum!208 (prop!213_arg_0_9 ?i) (prop!213_arg_1_10 ?i) (prop!213_arg_2_11 ?i) (prop!213_arg_3_12 ?i)))) (not (forall ((?z I_propSum!208)) (not (and (= (propSum!208_arg_0_1 ?z) (prop!213_arg_0_9 ?i)) (= (propSum!208_arg_1_2 ?z) (prop!213_arg_1_10 ?i)) (= (propSum!208_arg_2_3 ?z) (prop!213_arg_2_11 ?i)) (= (propSum!208_arg_3_4 ?z) (prop!213_arg_3_12 ?i)))) ))) ))
(assert (exists ((total!218 Int) (h!220 Int) (m!221 Int) (r!219 Int)) (not (=> (and (and (and (and (and (and (and (propSum!208 total!218 h!220 m!221 r!219) (not (forall ((?z I_propSum!208)) (not (and (= (propSum!208_arg_0_1 ?z) total!218) (= (propSum!208_arg_1_2 ?z) h!220) (= (propSum!208_arg_2_3 ?z) m!221) (= (propSum!208_arg_3_4 ?z) r!219))) ))) (and (propSum!208 total!218 h!220 m!221 r!219) (not (forall ((?z I_propSum!208)) (not (and (= (propSum!208_arg_0_1 ?z) total!218) (= (propSum!208_arg_1_2 ?z) h!220) (= (propSum!208_arg_2_3 ?z) m!221) (= (propSum!208_arg_3_4 ?z) r!219))) )))) (>= m!221 (- 0))) (>= h!220 (- 0))) (>= r!219 (- 0))) (< m!221 60)) (or (or (= m!221 (- 0)) (= m!221 (- 0))) (< (+ r!219 (* m!221 60)) 3600))) (or (prop!213 total!218 (_1!911 (ite (>= r!219 3600) (rec!222 total!218 (- r!219 3600) (+ h!220 1) m!221) (ite (>= r!219 60) (rec!222 total!218 (- r!219 60) h!220 (+ m!221 1)) (tuple3!909!910 h!220 m!221 r!219)))) (_2!912 (ite (>= r!219 3600) (rec!222 total!218 (- r!219 3600) (+ h!220 1) m!221) (ite (>= r!219 60) (rec!222 total!218 (- r!219 60) h!220 (+ m!221 1)) (tuple3!909!910 h!220 m!221 r!219)))) (_3!913 (ite (>= r!219 3600) (rec!222 total!218 (- r!219 3600) (+ h!220 1) m!221) (ite (>= r!219 60) (rec!222 total!218 (- r!219 60) h!220 (+ m!221 1)) (tuple3!909!910 h!220 m!221 r!219))))) (forall ((?z I_prop!213)) (not (and (= (prop!213_arg_0_9 ?z) total!218) (= (prop!213_arg_1_10 ?z) (_1!911 (ite (>= r!219 3600) (rec!222 total!218 (- r!219 3600) (+ h!220 1) m!221) (ite (>= r!219 60) (rec!222 total!218 (- r!219 60) h!220 (+ m!221 1)) (tuple3!909!910 h!220 m!221 r!219))))) (= (prop!213_arg_2_11 ?z) (_2!912 (ite (>= r!219 3600) (rec!222 total!218 (- r!219 3600) (+ h!220 1) m!221) (ite (>= r!219 60) (rec!222 total!218 (- r!219 60) h!220 (+ m!221 1)) (tuple3!909!910 h!220 m!221 r!219))))) (= (prop!213_arg_3_12 ?z) (_3!913 (ite (>= r!219 3600) (rec!222 total!218 (- r!219 3600) (+ h!220 1) m!221) (ite (>= r!219 60) (rec!222 total!218 (- r!219 60) h!220 (+ m!221 1)) (tuple3!909!910 h!220 m!221 r!219))))))) ) (not (ite (>= r!219 3600) (not (forall ((?z I_rec!222)) (not (and (= (rec!222_arg_0_5 ?z) total!218) (= (rec!222_arg_1_6 ?z) (- r!219 3600)) (= (rec!222_arg_2_7 ?z) (+ h!220 1)) (= (rec!222_arg_3_8 ?z) m!221))) )) (ite (>= r!219 60) (not (forall ((?z I_rec!222)) (not (and (= (rec!222_arg_0_5 ?z) total!218) (= (rec!222_arg_1_6 ?z) (- r!219 60)) (= (rec!222_arg_2_7 ?z) h!220) (= (rec!222_arg_3_8 ?z) (+ m!221 1)))) )) true))) (not (ite (>= r!219 3600) (not (forall ((?z I_rec!222)) (not (and (= (rec!222_arg_0_5 ?z) total!218) (= (rec!222_arg_1_6 ?z) (- r!219 3600)) (= (rec!222_arg_2_7 ?z) (+ h!220 1)) (= (rec!222_arg_3_8 ?z) m!221))) )) (ite (>= r!219 60) (not (forall ((?z I_rec!222)) (not (and (= (rec!222_arg_0_5 ?z) total!218) (= (rec!222_arg_1_6 ?z) (- r!219 60)) (= (rec!222_arg_2_7 ?z) h!220) (= (rec!222_arg_3_8 ?z) (+ m!221 1)))) )) true))) (not (ite (>= r!219 3600) (not (forall ((?z I_rec!222)) (not (and (= (rec!222_arg_0_5 ?z) total!218) (= (rec!222_arg_1_6 ?z) (- r!219 3600)) (= (rec!222_arg_2_7 ?z) (+ h!220 1)) (= (rec!222_arg_3_8 ?z) m!221))) )) (ite (>= r!219 60) (not (forall ((?z I_rec!222)) (not (and (= (rec!222_arg_0_5 ?z) total!218) (= (rec!222_arg_1_6 ?z) (- r!219 60)) (= (rec!222_arg_2_7 ?z) h!220) (= (rec!222_arg_3_8 ?z) (+ m!221 1)))) )) true)))))) ))
(check-sat)
(exit)

