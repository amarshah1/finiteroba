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


(declare-datatypes ((BoolTree!1001 0)(IntTree!1013 0)) (((And!1002 (t1!1003 BoolTree!1001) (t2!1004 BoolTree!1001)) (Eq!1005 (t1!1006 IntTree!1013) (t2!1007 IntTree!1013)) (Less!1008 (t1!1009 IntTree!1013) (t2!1010 IntTree!1013)) (Not!1011 (t!1012 BoolTree!1001)))
((Const!1014 (c!1015 (_ BitVec 32))) (If!1016 (cond!1017 BoolTree!1001) (t!1018 IntTree!1013) (e!1019 IntTree!1013)) (Minus!1020 (t1!1021 IntTree!1013) (t2!1022 IntTree!1013)) (Plus!1023 (t1!1024 IntTree!1013) (t2!1025 IntTree!1013)) (Var!1026))
))
(declare-fun error_value!1027 () Bool)
(declare-fun error_value!1028 () (_ BitVec 32))
(declare-fun beval!210 (BoolTree!1001 (_ BitVec 32)) Bool)
(declare-fun repOk!206 (IntTree!1013) Bool)
(declare-fun treeBad!219 (IntTree!1013) Bool)
(declare-fun identityForPositive!217 (IntTree!1013) Bool)
(declare-fun ieval!213 (IntTree!1013 (_ BitVec 32)) (_ BitVec 32))
(declare-fun computesPositive!215 (IntTree!1013) Bool)
(declare-sort I_beval!210 0)
(declare-fun beval!210_arg_0_1 (I_beval!210) BoolTree!1001)
(declare-fun beval!210_arg_1_2 (I_beval!210) (_ BitVec 32))
(declare-sort I_repOk!206 0)
(declare-fun repOk!206_arg_0_3 (I_repOk!206) IntTree!1013)
(declare-sort I_treeBad!219 0)
(declare-fun treeBad!219_arg_0_4 (I_treeBad!219) IntTree!1013)
(declare-sort I_identityForPositive!217 0)
(declare-fun identityForPositive!217_arg_0_5 (I_identityForPositive!217) IntTree!1013)
(declare-sort I_ieval!213 0)
(declare-fun ieval!213_arg_0_6 (I_ieval!213) IntTree!1013)
(declare-fun ieval!213_arg_1_7 (I_ieval!213) (_ BitVec 32))
(declare-sort I_computesPositive!215 0)
(declare-fun computesPositive!215_arg_0_8 (I_computesPositive!215) IntTree!1013)
(assert (forall ((?i I_beval!210)) (and (= (beval!210 (beval!210_arg_0_1 ?i) (beval!210_arg_1_2 ?i)) (ite ((_ is Less!1008) (beval!210_arg_0_1 ?i)) (bvslt (ieval!213 (t1!1009 (beval!210_arg_0_1 ?i)) (beval!210_arg_1_2 ?i)) (ieval!213 (t2!1010 (beval!210_arg_0_1 ?i)) (beval!210_arg_1_2 ?i))) (ite ((_ is Eq!1005) (beval!210_arg_0_1 ?i)) (= (ieval!213 (t2!1007 (beval!210_arg_0_1 ?i)) (beval!210_arg_1_2 ?i)) (ieval!213 (t1!1006 (beval!210_arg_0_1 ?i)) (beval!210_arg_1_2 ?i))) (ite ((_ is And!1002) (beval!210_arg_0_1 ?i)) (and (beval!210 (t2!1004 (beval!210_arg_0_1 ?i)) (beval!210_arg_1_2 ?i)) (beval!210 (t1!1003 (beval!210_arg_0_1 ?i)) (beval!210_arg_1_2 ?i))) (ite ((_ is Not!1011) (beval!210_arg_0_1 ?i)) (not (beval!210 (t!1012 (beval!210_arg_0_1 ?i)) (beval!210_arg_1_2 ?i))) error_value!1027))))) (ite ((_ is Less!1008) (beval!210_arg_0_1 ?i)) (and (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (t1!1009 (beval!210_arg_0_1 ?i))) (= (ieval!213_arg_1_7 ?z) (beval!210_arg_1_2 ?i)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (t2!1010 (beval!210_arg_0_1 ?i))) (= (ieval!213_arg_1_7 ?z) (beval!210_arg_1_2 ?i)))) ))) (ite ((_ is Eq!1005) (beval!210_arg_0_1 ?i)) (and (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (t2!1007 (beval!210_arg_0_1 ?i))) (= (ieval!213_arg_1_7 ?z) (beval!210_arg_1_2 ?i)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (t1!1006 (beval!210_arg_0_1 ?i))) (= (ieval!213_arg_1_7 ?z) (beval!210_arg_1_2 ?i)))) ))) (ite ((_ is And!1002) (beval!210_arg_0_1 ?i)) (and (not (forall ((?z I_beval!210)) (not (and (= (beval!210_arg_0_1 ?z) (t2!1004 (beval!210_arg_0_1 ?i))) (= (beval!210_arg_1_2 ?z) (beval!210_arg_1_2 ?i)))) )) (not (forall ((?z I_beval!210)) (not (and (= (beval!210_arg_0_1 ?z) (t1!1003 (beval!210_arg_0_1 ?i))) (= (beval!210_arg_1_2 ?z) (beval!210_arg_1_2 ?i)))) ))) (ite ((_ is Not!1011) (beval!210_arg_0_1 ?i)) (not (forall ((?z I_beval!210)) (not (and (= (beval!210_arg_0_1 ?z) (t!1012 (beval!210_arg_0_1 ?i))) (= (beval!210_arg_1_2 ?z) (beval!210_arg_1_2 ?i)))) )) true))))) ))
(assert (forall ((?i I_repOk!206)) (repOk!206 (repOk!206_arg_0_3 ?i)) ))
(assert (forall ((?i I_treeBad!219)) (and (= (treeBad!219 (treeBad!219_arg_0_4 ?i)) (or (not (identityForPositive!217 (treeBad!219_arg_0_4 ?i))) (not (computesPositive!215 (treeBad!219_arg_0_4 ?i))) (not (repOk!206 (treeBad!219_arg_0_4 ?i))))) (not (forall ((?z I_identityForPositive!217)) (not (= (identityForPositive!217_arg_0_5 ?z) (treeBad!219_arg_0_4 ?i))) )) (not (forall ((?z I_computesPositive!215)) (not (= (computesPositive!215_arg_0_8 ?z) (treeBad!219_arg_0_4 ?i))) )) (not (forall ((?z I_repOk!206)) (not (= (repOk!206_arg_0_3 ?z) (treeBad!219_arg_0_4 ?i))) ))) ))
(assert (forall ((?i I_identityForPositive!217)) (and (= (identityForPositive!217 (identityForPositive!217_arg_0_5 ?i)) (and (= (ieval!213 (identityForPositive!217_arg_0_5 ?i) (_ bv4294967294 32)) (_ bv2 32)) (= (ieval!213 (identityForPositive!217_arg_0_5 ?i) (_ bv4294967295 32)) (_ bv1 32)) (= (ieval!213 (identityForPositive!217_arg_0_5 ?i) (_ bv0 32)) (_ bv0 32)) (= (ieval!213 (identityForPositive!217_arg_0_5 ?i) (_ bv33 32)) (_ bv33 32)) (= (ieval!213 (identityForPositive!217_arg_0_5 ?i) (_ bv5 32)) (_ bv5 32)))) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (identityForPositive!217_arg_0_5 ?i)) (= (ieval!213_arg_1_7 ?z) (_ bv4294967294 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (identityForPositive!217_arg_0_5 ?i)) (= (ieval!213_arg_1_7 ?z) (_ bv4294967295 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (identityForPositive!217_arg_0_5 ?i)) (= (ieval!213_arg_1_7 ?z) (_ bv0 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (identityForPositive!217_arg_0_5 ?i)) (= (ieval!213_arg_1_7 ?z) (_ bv33 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (identityForPositive!217_arg_0_5 ?i)) (= (ieval!213_arg_1_7 ?z) (_ bv5 32)))) ))) ))
(assert (forall ((?i I_ieval!213)) (and (= (ite ((_ is Const!1014) (ieval!213_arg_0_6 ?i)) (c!1015 (ieval!213_arg_0_6 ?i)) (ite ((_ is Var!1026) (ieval!213_arg_0_6 ?i)) (ieval!213_arg_1_7 ?i) (ite ((_ is Plus!1023) (ieval!213_arg_0_6 ?i)) (bvadd (ieval!213 (t1!1024 (ieval!213_arg_0_6 ?i)) (ieval!213_arg_1_7 ?i)) (ieval!213 (t2!1025 (ieval!213_arg_0_6 ?i)) (ieval!213_arg_1_7 ?i))) (ite ((_ is Minus!1020) (ieval!213_arg_0_6 ?i)) (bvadd (ieval!213 (t1!1021 (ieval!213_arg_0_6 ?i)) (ieval!213_arg_1_7 ?i)) (bvneg (ieval!213 (t2!1022 (ieval!213_arg_0_6 ?i)) (ieval!213_arg_1_7 ?i)))) (ite ((_ is If!1016) (ieval!213_arg_0_6 ?i)) (ite (beval!210 (cond!1017 (ieval!213_arg_0_6 ?i)) (ieval!213_arg_1_7 ?i)) (ieval!213 (t!1018 (ieval!213_arg_0_6 ?i)) (ieval!213_arg_1_7 ?i)) (ieval!213 (e!1019 (ieval!213_arg_0_6 ?i)) (ieval!213_arg_1_7 ?i))) error_value!1028))))) (ieval!213 (ieval!213_arg_0_6 ?i) (ieval!213_arg_1_7 ?i))) (ite ((_ is Const!1014) (ieval!213_arg_0_6 ?i)) true (ite ((_ is Var!1026) (ieval!213_arg_0_6 ?i)) true (ite ((_ is Plus!1023) (ieval!213_arg_0_6 ?i)) (and (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (t1!1024 (ieval!213_arg_0_6 ?i))) (= (ieval!213_arg_1_7 ?z) (ieval!213_arg_1_7 ?i)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (t2!1025 (ieval!213_arg_0_6 ?i))) (= (ieval!213_arg_1_7 ?z) (ieval!213_arg_1_7 ?i)))) ))) (ite ((_ is Minus!1020) (ieval!213_arg_0_6 ?i)) (and (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (t1!1021 (ieval!213_arg_0_6 ?i))) (= (ieval!213_arg_1_7 ?z) (ieval!213_arg_1_7 ?i)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (t2!1022 (ieval!213_arg_0_6 ?i))) (= (ieval!213_arg_1_7 ?z) (ieval!213_arg_1_7 ?i)))) ))) (ite ((_ is If!1016) (ieval!213_arg_0_6 ?i)) (and (not (forall ((?z I_beval!210)) (not (and (= (beval!210_arg_0_1 ?z) (cond!1017 (ieval!213_arg_0_6 ?i))) (= (beval!210_arg_1_2 ?z) (ieval!213_arg_1_7 ?i)))) )) (ite (beval!210 (cond!1017 (ieval!213_arg_0_6 ?i)) (ieval!213_arg_1_7 ?i)) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (t!1018 (ieval!213_arg_0_6 ?i))) (= (ieval!213_arg_1_7 ?z) (ieval!213_arg_1_7 ?i)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (e!1019 (ieval!213_arg_0_6 ?i))) (= (ieval!213_arg_1_7 ?z) (ieval!213_arg_1_7 ?i)))) )))) true)))))) ))
(assert (forall ((?i I_computesPositive!215)) (and (= (computesPositive!215 (computesPositive!215_arg_0_8 ?i)) (and (not (bvslt (ieval!213 (computesPositive!215_arg_0_8 ?i) (_ bv2 32)) (_ bv0 32))) (not (bvslt (ieval!213 (computesPositive!215_arg_0_8 ?i) (_ bv4294967294 32)) (_ bv0 32))) (not (bvslt (ieval!213 (computesPositive!215_arg_0_8 ?i) (_ bv4294967295 32)) (_ bv0 32))) (not (bvslt (ieval!213 (computesPositive!215_arg_0_8 ?i) (_ bv1 32)) (_ bv0 32))) (not (bvslt (ieval!213 (computesPositive!215_arg_0_8 ?i) (_ bv0 32)) (_ bv0 32))))) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (computesPositive!215_arg_0_8 ?i)) (= (ieval!213_arg_1_7 ?z) (_ bv2 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (computesPositive!215_arg_0_8 ?i)) (= (ieval!213_arg_1_7 ?z) (_ bv4294967294 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (computesPositive!215_arg_0_8 ?i)) (= (ieval!213_arg_1_7 ?z) (_ bv4294967295 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (computesPositive!215_arg_0_8 ?i)) (= (ieval!213_arg_1_7 ?z) (_ bv1 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_6 ?z) (computesPositive!215_arg_0_8 ?i)) (= (ieval!213_arg_1_7 ?z) (_ bv0 32)))) ))) ))
(assert (not (not (and (treeBad!219 (If!1016 (Less!1008 (Const!1014 (_ bv0 32)) Var!1026) Var!1026 (Minus!1020 (Const!1014 (_ bv0 32)) Var!1026))) (not (forall ((?z I_treeBad!219)) (not (= (treeBad!219_arg_0_4 ?z) (If!1016 (Less!1008 (Const!1014 (_ bv0 32)) Var!1026) Var!1026 (Minus!1020 (Const!1014 (_ bv0 32)) Var!1026)))) ))))))
(check-sat)
(exit)
