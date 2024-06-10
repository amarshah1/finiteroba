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


(declare-datatypes ((array!977 0)) (((array!977!978 (size!979 (_ BitVec 32)) (content!980 (Array (_ BitVec 32) (_ BitVec 32)))))
))
(declare-fun error_value!981 () (_ BitVec 32))
(declare-fun isPositive!206 (array!977 (_ BitVec 32)) Bool)
(declare-fun rec!210 ((_ BitVec 32) array!977 (_ BitVec 32)) Bool)
(declare-fun error_value!982 () (_ BitVec 32))
(declare-fun error_value!983 () (_ BitVec 32))
(declare-fun error_value!984 () array!977)
(declare-fun error_value!985 () (_ BitVec 32))
(declare-fun error_value!986 () array!977)
(declare-sort I_isPositive!206 0)
(declare-fun isPositive!206_arg_0_1 (I_isPositive!206) array!977)
(declare-fun isPositive!206_arg_1_2 (I_isPositive!206) (_ BitVec 32))
(declare-sort I_rec!210 0)
(declare-fun rec!210_arg_0_3 (I_rec!210) (_ BitVec 32))
(declare-fun rec!210_arg_1_4 (I_rec!210) array!977)
(declare-fun rec!210_arg_2_5 (I_rec!210) (_ BitVec 32))
(assert (forall ((?i I_isPositive!206)) (and (= (isPositive!206 (isPositive!206_arg_0_1 ?i) (isPositive!206_arg_1_2 ?i)) (rec!210 (_ bv0 32) (isPositive!206_arg_0_1 ?i) (isPositive!206_arg_1_2 ?i))) (not (forall ((?z I_rec!210)) (not (and (= (rec!210_arg_0_3 ?z) (_ bv0 32)) (= (rec!210_arg_1_4 ?z) (isPositive!206_arg_0_1 ?i)) (= (rec!210_arg_2_5 ?z) (isPositive!206_arg_1_2 ?i)))) ))) ))
(assert (forall ((?i I_rec!210)) (and (= (rec!210 (rec!210_arg_0_3 ?i) (rec!210_arg_1_4 ?i) (rec!210_arg_2_5 ?i)) (ite (not (bvslt (rec!210_arg_0_3 ?i) (rec!210_arg_2_5 ?i))) true (ite (bvslt (ite (and (bvslt (rec!210_arg_0_3 ?i) (size!979 (rec!210_arg_1_4 ?i))) (not (bvslt (rec!210_arg_0_3 ?i) (_ bv0 32)))) (select (content!980 (rec!210_arg_1_4 ?i)) (rec!210_arg_0_3 ?i)) error_value!981) (_ bv0 32)) false (rec!210 (bvadd (rec!210_arg_0_3 ?i) (_ bv1 32)) (rec!210_arg_1_4 ?i) (rec!210_arg_2_5 ?i))))) (ite (not (bvslt (rec!210_arg_0_3 ?i) (rec!210_arg_2_5 ?i))) true (ite (bvslt (ite (and (bvslt (rec!210_arg_0_3 ?i) (size!979 (rec!210_arg_1_4 ?i))) (not (bvslt (rec!210_arg_0_3 ?i) (_ bv0 32)))) (select (content!980 (rec!210_arg_1_4 ?i)) (rec!210_arg_0_3 ?i)) error_value!981) (_ bv0 32)) true (not (forall ((?z I_rec!210)) (not (and (= (rec!210_arg_0_3 ?z) (bvadd (rec!210_arg_0_3 ?i) (_ bv1 32))) (= (rec!210_arg_1_4 ?z) (rec!210_arg_1_4 ?i)) (= (rec!210_arg_2_5 ?z) (rec!210_arg_2_5 ?i)))) ))))) ))
(assert (not (forall ((t!217 array!977) (k!218 (_ BitVec 32))) (or (bvslt (size!979 t!217) (_ bv0 32)) (bvslt k!218 (_ bv0 32)) (not (and (isPositive!206 t!217 k!218) (not (forall ((?z I_isPositive!206)) (not (and (= (isPositive!206_arg_0_1 ?z) t!217) (= (isPositive!206_arg_1_2 ?z) k!218))) )))) (ite (bvslt k!218 (size!979 t!217)) (or (isPositive!206 (ite (bvslt (ite (and (bvslt k!218 (size!979 t!217)) (not (bvslt k!218 (_ bv0 32)))) (bvneg (ite (and (bvslt k!218 (size!979 t!217)) (not (bvslt k!218 (_ bv0 32)))) (select (content!980 t!217) k!218) error_value!983)) error_value!982) (_ bv0 32)) (ite (and (bvslt k!218 (size!979 t!217)) (not (bvslt k!218 (_ bv0 32)))) (array!977!978 (size!979 t!217) (content!980 t!217)) error_value!984) (ite (and (bvslt k!218 (size!979 t!217)) (not (bvslt k!218 (_ bv0 32)))) (array!977!978 (size!979 t!217) (store (content!980 t!217) k!218 (ite (and (bvslt k!218 (size!979 t!217)) (not (bvslt k!218 (_ bv0 32)))) (select (content!980 t!217) k!218) error_value!985))) error_value!986)) (bvadd k!218 (_ bv1 32))) (forall ((?z I_isPositive!206)) (not (and (= (isPositive!206_arg_0_1 ?z) (ite (bvslt (ite (and (bvslt k!218 (size!979 t!217)) (not (bvslt k!218 (_ bv0 32)))) (bvneg (ite (and (bvslt k!218 (size!979 t!217)) (not (bvslt k!218 (_ bv0 32)))) (select (content!980 t!217) k!218) error_value!983)) error_value!982) (_ bv0 32)) (ite (and (bvslt k!218 (size!979 t!217)) (not (bvslt k!218 (_ bv0 32)))) (array!977!978 (size!979 t!217) (content!980 t!217)) error_value!984) (ite (and (bvslt k!218 (size!979 t!217)) (not (bvslt k!218 (_ bv0 32)))) (array!977!978 (size!979 t!217) (store (content!980 t!217) k!218 (ite (and (bvslt k!218 (size!979 t!217)) (not (bvslt k!218 (_ bv0 32)))) (select (content!980 t!217) k!218) error_value!985))) error_value!986))) (= (isPositive!206_arg_1_2 ?z) (bvadd k!218 (_ bv1 32))))) )) true)) )))
(check-sat)
(exit)

