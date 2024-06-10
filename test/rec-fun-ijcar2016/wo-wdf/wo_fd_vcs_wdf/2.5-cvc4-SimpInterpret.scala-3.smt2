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


(declare-datatypes ((IntTree!973 0)(BoolTree!987 0)) (((Const!974 (c!975 (_ BitVec 32))) (If!976 (cond!977 BoolTree!987) (t!978 IntTree!973) (e!979 IntTree!973)) (Minus!980 (t1!981 IntTree!973) (t2!982 IntTree!973)) (Plus!983 (t1!984 IntTree!973) (t2!985 IntTree!973)) (Var!986))
((And!988 (t1!989 BoolTree!987) (t2!990 BoolTree!987)) (Eq!991 (t1!992 IntTree!973) (t2!993 IntTree!973)) (Less!994 (t1!995 IntTree!973) (t2!996 IntTree!973)) (Not!997 (t!998 BoolTree!987)))
))
(declare-fun repOk!206 (IntTree!973) Bool)
(declare-fun error_value!999 () (_ BitVec 32))
(declare-fun error_value!1000 () Bool)
(declare-fun computesPositive!215 (IntTree!973) Bool)
(declare-fun ieval!213 (IntTree!973 (_ BitVec 32)) (_ BitVec 32))
(declare-fun beval!210 (BoolTree!987 (_ BitVec 32)) Bool)
(declare-fun identityForPositive!217 (IntTree!973) Bool)
(declare-sort I_repOk!206 0)
(declare-fun repOk!206_arg_0_1 (I_repOk!206) IntTree!973)
(declare-sort I_computesPositive!215 0)
(declare-fun computesPositive!215_arg_0_2 (I_computesPositive!215) IntTree!973)
(declare-sort I_ieval!213 0)
(declare-fun ieval!213_arg_0_3 (I_ieval!213) IntTree!973)
(declare-fun ieval!213_arg_1_4 (I_ieval!213) (_ BitVec 32))
(declare-sort I_beval!210 0)
(declare-fun beval!210_arg_0_5 (I_beval!210) BoolTree!987)
(declare-fun beval!210_arg_1_6 (I_beval!210) (_ BitVec 32))
(declare-sort I_identityForPositive!217 0)
(declare-fun identityForPositive!217_arg_0_7 (I_identityForPositive!217) IntTree!973)
(assert (forall ((?i I_repOk!206)) (repOk!206 (repOk!206_arg_0_1 ?i)) ))
(assert (forall ((?i I_computesPositive!215)) (and (= (computesPositive!215 (computesPositive!215_arg_0_2 ?i)) (and (not (bvslt (ieval!213 (computesPositive!215_arg_0_2 ?i) (_ bv2 32)) (_ bv0 32))) (not (bvslt (ieval!213 (computesPositive!215_arg_0_2 ?i) (_ bv4294967294 32)) (_ bv0 32))) (not (bvslt (ieval!213 (computesPositive!215_arg_0_2 ?i) (_ bv4294967295 32)) (_ bv0 32))) (not (bvslt (ieval!213 (computesPositive!215_arg_0_2 ?i) (_ bv1 32)) (_ bv0 32))) (not (bvslt (ieval!213 (computesPositive!215_arg_0_2 ?i) (_ bv0 32)) (_ bv0 32))))) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (computesPositive!215_arg_0_2 ?i)) (= (ieval!213_arg_1_4 ?z) (_ bv2 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (computesPositive!215_arg_0_2 ?i)) (= (ieval!213_arg_1_4 ?z) (_ bv4294967294 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (computesPositive!215_arg_0_2 ?i)) (= (ieval!213_arg_1_4 ?z) (_ bv4294967295 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (computesPositive!215_arg_0_2 ?i)) (= (ieval!213_arg_1_4 ?z) (_ bv1 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (computesPositive!215_arg_0_2 ?i)) (= (ieval!213_arg_1_4 ?z) (_ bv0 32)))) ))) ))
(assert (forall ((?i I_ieval!213)) (and (= (ite ((_ is Const!974) (ieval!213_arg_0_3 ?i)) (c!975 (ieval!213_arg_0_3 ?i)) (ite ((_ is Var!986) (ieval!213_arg_0_3 ?i)) (ieval!213_arg_1_4 ?i) (ite ((_ is Plus!983) (ieval!213_arg_0_3 ?i)) (bvadd (ieval!213 (t1!984 (ieval!213_arg_0_3 ?i)) (ieval!213_arg_1_4 ?i)) (ieval!213 (t2!985 (ieval!213_arg_0_3 ?i)) (ieval!213_arg_1_4 ?i))) (ite ((_ is Minus!980) (ieval!213_arg_0_3 ?i)) (bvadd (ieval!213 (t1!981 (ieval!213_arg_0_3 ?i)) (ieval!213_arg_1_4 ?i)) (bvneg (ieval!213 (t2!982 (ieval!213_arg_0_3 ?i)) (ieval!213_arg_1_4 ?i)))) (ite ((_ is If!976) (ieval!213_arg_0_3 ?i)) (ite (beval!210 (cond!977 (ieval!213_arg_0_3 ?i)) (ieval!213_arg_1_4 ?i)) (ieval!213 (t!978 (ieval!213_arg_0_3 ?i)) (ieval!213_arg_1_4 ?i)) (ieval!213 (e!979 (ieval!213_arg_0_3 ?i)) (ieval!213_arg_1_4 ?i))) error_value!999))))) (ieval!213 (ieval!213_arg_0_3 ?i) (ieval!213_arg_1_4 ?i))) (ite ((_ is Const!974) (ieval!213_arg_0_3 ?i)) true (ite ((_ is Var!986) (ieval!213_arg_0_3 ?i)) true (ite ((_ is Plus!983) (ieval!213_arg_0_3 ?i)) (and (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (t1!984 (ieval!213_arg_0_3 ?i))) (= (ieval!213_arg_1_4 ?z) (ieval!213_arg_1_4 ?i)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (t2!985 (ieval!213_arg_0_3 ?i))) (= (ieval!213_arg_1_4 ?z) (ieval!213_arg_1_4 ?i)))) ))) (ite ((_ is Minus!980) (ieval!213_arg_0_3 ?i)) (and (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (t1!981 (ieval!213_arg_0_3 ?i))) (= (ieval!213_arg_1_4 ?z) (ieval!213_arg_1_4 ?i)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (t2!982 (ieval!213_arg_0_3 ?i))) (= (ieval!213_arg_1_4 ?z) (ieval!213_arg_1_4 ?i)))) ))) (ite ((_ is If!976) (ieval!213_arg_0_3 ?i)) (and (not (forall ((?z I_beval!210)) (not (and (= (beval!210_arg_0_5 ?z) (cond!977 (ieval!213_arg_0_3 ?i))) (= (beval!210_arg_1_6 ?z) (ieval!213_arg_1_4 ?i)))) )) (ite (beval!210 (cond!977 (ieval!213_arg_0_3 ?i)) (ieval!213_arg_1_4 ?i)) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (t!978 (ieval!213_arg_0_3 ?i))) (= (ieval!213_arg_1_4 ?z) (ieval!213_arg_1_4 ?i)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (e!979 (ieval!213_arg_0_3 ?i))) (= (ieval!213_arg_1_4 ?z) (ieval!213_arg_1_4 ?i)))) )))) true)))))) ))
(assert (forall ((?i I_beval!210)) (and (= (beval!210 (beval!210_arg_0_5 ?i) (beval!210_arg_1_6 ?i)) (ite ((_ is Less!994) (beval!210_arg_0_5 ?i)) (bvslt (ieval!213 (t1!995 (beval!210_arg_0_5 ?i)) (beval!210_arg_1_6 ?i)) (ieval!213 (t2!996 (beval!210_arg_0_5 ?i)) (beval!210_arg_1_6 ?i))) (ite ((_ is Eq!991) (beval!210_arg_0_5 ?i)) (= (ieval!213 (t2!993 (beval!210_arg_0_5 ?i)) (beval!210_arg_1_6 ?i)) (ieval!213 (t1!992 (beval!210_arg_0_5 ?i)) (beval!210_arg_1_6 ?i))) (ite ((_ is And!988) (beval!210_arg_0_5 ?i)) (and (beval!210 (t2!990 (beval!210_arg_0_5 ?i)) (beval!210_arg_1_6 ?i)) (beval!210 (t1!989 (beval!210_arg_0_5 ?i)) (beval!210_arg_1_6 ?i))) (ite ((_ is Not!997) (beval!210_arg_0_5 ?i)) (not (beval!210 (t!998 (beval!210_arg_0_5 ?i)) (beval!210_arg_1_6 ?i))) error_value!1000))))) (ite ((_ is Less!994) (beval!210_arg_0_5 ?i)) (and (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (t1!995 (beval!210_arg_0_5 ?i))) (= (ieval!213_arg_1_4 ?z) (beval!210_arg_1_6 ?i)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (t2!996 (beval!210_arg_0_5 ?i))) (= (ieval!213_arg_1_4 ?z) (beval!210_arg_1_6 ?i)))) ))) (ite ((_ is Eq!991) (beval!210_arg_0_5 ?i)) (and (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (t2!993 (beval!210_arg_0_5 ?i))) (= (ieval!213_arg_1_4 ?z) (beval!210_arg_1_6 ?i)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (t1!992 (beval!210_arg_0_5 ?i))) (= (ieval!213_arg_1_4 ?z) (beval!210_arg_1_6 ?i)))) ))) (ite ((_ is And!988) (beval!210_arg_0_5 ?i)) (and (not (forall ((?z I_beval!210)) (not (and (= (beval!210_arg_0_5 ?z) (t2!990 (beval!210_arg_0_5 ?i))) (= (beval!210_arg_1_6 ?z) (beval!210_arg_1_6 ?i)))) )) (not (forall ((?z I_beval!210)) (not (and (= (beval!210_arg_0_5 ?z) (t1!989 (beval!210_arg_0_5 ?i))) (= (beval!210_arg_1_6 ?z) (beval!210_arg_1_6 ?i)))) ))) (ite ((_ is Not!997) (beval!210_arg_0_5 ?i)) (not (forall ((?z I_beval!210)) (not (and (= (beval!210_arg_0_5 ?z) (t!998 (beval!210_arg_0_5 ?i))) (= (beval!210_arg_1_6 ?z) (beval!210_arg_1_6 ?i)))) )) true))))) ))
(assert (forall ((?i I_identityForPositive!217)) (and (= (identityForPositive!217 (identityForPositive!217_arg_0_7 ?i)) (and (= (ieval!213 (identityForPositive!217_arg_0_7 ?i) (_ bv4294967294 32)) (_ bv2 32)) (= (ieval!213 (identityForPositive!217_arg_0_7 ?i) (_ bv4294967295 32)) (_ bv1 32)) (= (ieval!213 (identityForPositive!217_arg_0_7 ?i) (_ bv0 32)) (_ bv0 32)) (= (ieval!213 (identityForPositive!217_arg_0_7 ?i) (_ bv33 32)) (_ bv33 32)) (= (ieval!213 (identityForPositive!217_arg_0_7 ?i) (_ bv5 32)) (_ bv5 32)))) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (identityForPositive!217_arg_0_7 ?i)) (= (ieval!213_arg_1_4 ?z) (_ bv4294967294 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (identityForPositive!217_arg_0_7 ?i)) (= (ieval!213_arg_1_4 ?z) (_ bv4294967295 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (identityForPositive!217_arg_0_7 ?i)) (= (ieval!213_arg_1_4 ?z) (_ bv0 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (identityForPositive!217_arg_0_7 ?i)) (= (ieval!213_arg_1_4 ?z) (_ bv33 32)))) )) (not (forall ((?z I_ieval!213)) (not (and (= (ieval!213_arg_0_3 ?z) (identityForPositive!217_arg_0_7 ?i)) (= (ieval!213_arg_1_4 ?z) (_ bv5 32)))) ))) ))
(assert (exists ((t!218 IntTree!973)) (not (not (and (and (and (and (repOk!206 t!218) (not (forall ((?z I_repOk!206)) (not (= (repOk!206_arg_0_1 ?z) t!218)) ))) (and (repOk!206 t!218) (not (forall ((?z I_repOk!206)) (not (= (repOk!206_arg_0_1 ?z) t!218)) )))) (and (computesPositive!215 t!218) (not (forall ((?z I_computesPositive!215)) (not (= (computesPositive!215_arg_0_2 ?z) t!218)) )))) (and (identityForPositive!217 t!218) (not (forall ((?z I_identityForPositive!217)) (not (= (identityForPositive!217_arg_0_7 ?z) t!218)) )))))) ))
(check-sat)
(exit)

