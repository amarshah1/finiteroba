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


(declare-datatypes ((array!892 0)) (((array!892!893 (size!894 (_ BitVec 32)) (content!895 (Array (_ BitVec 32) (_ BitVec 32)))))
))
(declare-datatypes ((tuple2!896 0)) (((tuple2!896!897 (_1!898 Bool) (_2!899 (_ BitVec 32))))
))
(declare-fun error_value!900 () (_ BitVec 32))
(declare-fun error_value!901 () (_ BitVec 32))
(declare-fun sorted!217 (array!892 (_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun sortedWhile!223 (Bool (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) array!892) tuple2!896)
(declare-fun error_value!902 () (_ BitVec 32))
(declare-fun error_value!903 () (_ BitVec 32))
(declare-fun error_value!904 () (_ BitVec 32))
(declare-fun rec0!886 ((_ BitVec 32) array!892 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun binarySearch!208 (array!892 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun occurs!213 (array!892 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)
(declare-sort I_sorted!217 0)
(declare-fun sorted!217_arg_0_1 (I_sorted!217) array!892)
(declare-fun sorted!217_arg_1_2 (I_sorted!217) (_ BitVec 32))
(declare-fun sorted!217_arg_2_3 (I_sorted!217) (_ BitVec 32))
(declare-sort I_sortedWhile!223 0)
(declare-fun sortedWhile!223_arg_0_4 (I_sortedWhile!223) Bool)
(declare-fun sortedWhile!223_arg_1_5 (I_sortedWhile!223) (_ BitVec 32))
(declare-fun sortedWhile!223_arg_2_6 (I_sortedWhile!223) (_ BitVec 32))
(declare-fun sortedWhile!223_arg_3_7 (I_sortedWhile!223) (_ BitVec 32))
(declare-fun sortedWhile!223_arg_4_8 (I_sortedWhile!223) array!892)
(declare-sort I_rec0!886 0)
(declare-fun rec0!886_arg_0_9 (I_rec0!886) (_ BitVec 32))
(declare-fun rec0!886_arg_1_10 (I_rec0!886) array!892)
(declare-fun rec0!886_arg_2_11 (I_rec0!886) (_ BitVec 32))
(declare-fun rec0!886_arg_3_12 (I_rec0!886) (_ BitVec 32))
(declare-fun rec0!886_arg_4_13 (I_rec0!886) (_ BitVec 32))
(declare-sort I_binarySearch!208 0)
(declare-fun binarySearch!208_arg_0_14 (I_binarySearch!208) array!892)
(declare-fun binarySearch!208_arg_1_15 (I_binarySearch!208) (_ BitVec 32))
(declare-fun binarySearch!208_arg_2_16 (I_binarySearch!208) (_ BitVec 32))
(declare-fun binarySearch!208_arg_3_17 (I_binarySearch!208) (_ BitVec 32))
(declare-sort I_occurs!213 0)
(declare-fun occurs!213_arg_0_18 (I_occurs!213) array!892)
(declare-fun occurs!213_arg_1_19 (I_occurs!213) (_ BitVec 32))
(declare-fun occurs!213_arg_2_20 (I_occurs!213) (_ BitVec 32))
(declare-fun occurs!213_arg_3_21 (I_occurs!213) (_ BitVec 32))
(assert (forall ((?i I_sorted!217)) (and (= (sorted!217 (sorted!217_arg_0_1 ?i) (sorted!217_arg_1_2 ?i) (sorted!217_arg_2_3 ?i)) (_1!898 (sortedWhile!223 true (sorted!217_arg_1_2 ?i) (sorted!217_arg_1_2 ?i) (sorted!217_arg_2_3 ?i) (sorted!217_arg_0_1 ?i)))) (not (forall ((?z I_sortedWhile!223)) (not (and (= (sortedWhile!223_arg_0_4 ?z) true) (= (sortedWhile!223_arg_1_5 ?z) (sorted!217_arg_1_2 ?i)) (= (sortedWhile!223_arg_2_6 ?z) (sorted!217_arg_1_2 ?i)) (= (sortedWhile!223_arg_3_7 ?z) (sorted!217_arg_2_3 ?i)) (= (sortedWhile!223_arg_4_8 ?z) (sorted!217_arg_0_1 ?i)))) ))) ))
(assert (forall ((?i I_sortedWhile!223)) (and (= (sortedWhile!223 (sortedWhile!223_arg_0_4 ?i) (sortedWhile!223_arg_1_5 ?i) (sortedWhile!223_arg_2_6 ?i) (sortedWhile!223_arg_3_7 ?i) (sortedWhile!223_arg_4_8 ?i)) (ite (bvslt (sortedWhile!223_arg_1_5 ?i) (sortedWhile!223_arg_3_7 ?i)) (sortedWhile!223 (ite (bvslt (ite (and (bvslt (bvadd (sortedWhile!223_arg_1_5 ?i) (_ bv1 32)) (size!894 (sortedWhile!223_arg_4_8 ?i))) (not (bvslt (bvadd (sortedWhile!223_arg_1_5 ?i) (_ bv1 32)) (_ bv0 32)))) (select (content!895 (sortedWhile!223_arg_4_8 ?i)) (bvadd (sortedWhile!223_arg_1_5 ?i) (_ bv1 32))) error_value!901) (ite (and (bvslt (sortedWhile!223_arg_1_5 ?i) (size!894 (sortedWhile!223_arg_4_8 ?i))) (not (bvslt (sortedWhile!223_arg_1_5 ?i) (_ bv0 32)))) (select (content!895 (sortedWhile!223_arg_4_8 ?i)) (sortedWhile!223_arg_1_5 ?i)) error_value!900)) false (sortedWhile!223_arg_0_4 ?i)) (bvadd (sortedWhile!223_arg_1_5 ?i) (_ bv1 32)) (sortedWhile!223_arg_2_6 ?i) (sortedWhile!223_arg_3_7 ?i) (sortedWhile!223_arg_4_8 ?i)) (tuple2!896!897 (sortedWhile!223_arg_0_4 ?i) (sortedWhile!223_arg_1_5 ?i)))) (ite (bvslt (sortedWhile!223_arg_1_5 ?i) (sortedWhile!223_arg_3_7 ?i)) (not (forall ((?z I_sortedWhile!223)) (not (and (= (sortedWhile!223_arg_0_4 ?z) (ite (bvslt (ite (and (bvslt (bvadd (sortedWhile!223_arg_1_5 ?i) (_ bv1 32)) (size!894 (sortedWhile!223_arg_4_8 ?i))) (not (bvslt (bvadd (sortedWhile!223_arg_1_5 ?i) (_ bv1 32)) (_ bv0 32)))) (select (content!895 (sortedWhile!223_arg_4_8 ?i)) (bvadd (sortedWhile!223_arg_1_5 ?i) (_ bv1 32))) error_value!901) (ite (and (bvslt (sortedWhile!223_arg_1_5 ?i) (size!894 (sortedWhile!223_arg_4_8 ?i))) (not (bvslt (sortedWhile!223_arg_1_5 ?i) (_ bv0 32)))) (select (content!895 (sortedWhile!223_arg_4_8 ?i)) (sortedWhile!223_arg_1_5 ?i)) error_value!900)) false (sortedWhile!223_arg_0_4 ?i))) (= (sortedWhile!223_arg_1_5 ?z) (bvadd (sortedWhile!223_arg_1_5 ?i) (_ bv1 32))) (= (sortedWhile!223_arg_2_6 ?z) (sortedWhile!223_arg_2_6 ?i)) (= (sortedWhile!223_arg_3_7 ?z) (sortedWhile!223_arg_3_7 ?i)) (= (sortedWhile!223_arg_4_8 ?z) (sortedWhile!223_arg_4_8 ?i)))) )) true)) ))
(assert (forall ((?i I_rec0!886)) (and (= (rec0!886 (rec0!886_arg_0_9 ?i) (rec0!886_arg_1_10 ?i) (rec0!886_arg_2_11 ?i) (rec0!886_arg_3_12 ?i) (rec0!886_arg_4_13 ?i)) (ite (not (bvslt (rec0!886_arg_0_9 ?i) (rec0!886_arg_3_12 ?i))) false (ite (= (ite (and (bvslt (rec0!886_arg_0_9 ?i) (size!894 (rec0!886_arg_1_10 ?i))) (not (bvslt (rec0!886_arg_0_9 ?i) (_ bv0 32)))) (select (content!895 (rec0!886_arg_1_10 ?i)) (rec0!886_arg_0_9 ?i)) error_value!903) (rec0!886_arg_4_13 ?i)) true (rec0!886 (bvadd (rec0!886_arg_0_9 ?i) (_ bv1 32)) (rec0!886_arg_1_10 ?i) (rec0!886_arg_2_11 ?i) (rec0!886_arg_3_12 ?i) (rec0!886_arg_4_13 ?i))))) (ite (not (bvslt (rec0!886_arg_0_9 ?i) (rec0!886_arg_3_12 ?i))) true (ite (= (ite (and (bvslt (rec0!886_arg_0_9 ?i) (size!894 (rec0!886_arg_1_10 ?i))) (not (bvslt (rec0!886_arg_0_9 ?i) (_ bv0 32)))) (select (content!895 (rec0!886_arg_1_10 ?i)) (rec0!886_arg_0_9 ?i)) error_value!903) (rec0!886_arg_4_13 ?i)) true (not (forall ((?z I_rec0!886)) (not (and (= (rec0!886_arg_0_9 ?z) (bvadd (rec0!886_arg_0_9 ?i) (_ bv1 32))) (= (rec0!886_arg_1_10 ?z) (rec0!886_arg_1_10 ?i)) (= (rec0!886_arg_2_11 ?z) (rec0!886_arg_2_11 ?i)) (= (rec0!886_arg_3_12 ?z) (rec0!886_arg_3_12 ?i)) (= (rec0!886_arg_4_13 ?z) (rec0!886_arg_4_13 ?i)))) ))))) ))
(assert (forall ((?i I_binarySearch!208)) (and (= (ite (not (bvslt (binarySearch!208_arg_3_17 ?i) (binarySearch!208_arg_2_16 ?i))) (ite (= (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (size!894 (binarySearch!208_arg_0_14 ?i))) (not (bvslt (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (_ bv0 32)))) (select (content!895 (binarySearch!208_arg_0_14 ?i)) (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32)))) error_value!904) (binarySearch!208_arg_1_15 ?i)) (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (ite (bvslt (binarySearch!208_arg_1_15 ?i) (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (size!894 (binarySearch!208_arg_0_14 ?i))) (not (bvslt (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (_ bv0 32)))) (select (content!895 (binarySearch!208_arg_0_14 ?i)) (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32)))) error_value!904)) (binarySearch!208 (binarySearch!208_arg_0_14 ?i) (binarySearch!208_arg_1_15 ?i) (binarySearch!208_arg_2_16 ?i) (bvadd (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (_ bv4294967295 32))) (binarySearch!208 (binarySearch!208_arg_0_14 ?i) (binarySearch!208_arg_1_15 ?i) (bvadd (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (_ bv1 32)) (binarySearch!208_arg_3_17 ?i)))) (_ bv4294967295 32)) (binarySearch!208 (binarySearch!208_arg_0_14 ?i) (binarySearch!208_arg_1_15 ?i) (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (ite (not (bvslt (binarySearch!208_arg_3_17 ?i) (binarySearch!208_arg_2_16 ?i))) (ite (= (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (size!894 (binarySearch!208_arg_0_14 ?i))) (not (bvslt (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (_ bv0 32)))) (select (content!895 (binarySearch!208_arg_0_14 ?i)) (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32)))) error_value!904) (binarySearch!208_arg_1_15 ?i)) true (ite (bvslt (binarySearch!208_arg_1_15 ?i) (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (size!894 (binarySearch!208_arg_0_14 ?i))) (not (bvslt (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (_ bv0 32)))) (select (content!895 (binarySearch!208_arg_0_14 ?i)) (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32)))) error_value!904)) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) (binarySearch!208_arg_0_14 ?i)) (= (binarySearch!208_arg_1_15 ?z) (binarySearch!208_arg_1_15 ?i)) (= (binarySearch!208_arg_2_16 ?z) (binarySearch!208_arg_2_16 ?i)) (= (binarySearch!208_arg_3_17 ?z) (bvadd (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (_ bv4294967295 32))))) )) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) (binarySearch!208_arg_0_14 ?i)) (= (binarySearch!208_arg_1_15 ?z) (binarySearch!208_arg_1_15 ?i)) (= (binarySearch!208_arg_2_16 ?z) (bvadd (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvneg (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (bvudiv (ite (= ((_ extract 31 31) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv1 1)) (bvadd (bvneg (binarySearch!208_arg_2_16 ?i)) (bvneg (binarySearch!208_arg_3_17 ?i))) (bvadd (binarySearch!208_arg_2_16 ?i) (binarySearch!208_arg_3_17 ?i))) (_ bv2 32))) (_ bv1 32))) (= (binarySearch!208_arg_3_17 ?z) (binarySearch!208_arg_3_17 ?i)))) )))) true)) ))
(assert (forall ((?i I_occurs!213)) (and (= (occurs!213 (occurs!213_arg_0_18 ?i) (occurs!213_arg_1_19 ?i) (occurs!213_arg_2_20 ?i) (occurs!213_arg_3_21 ?i)) (ite (not (bvslt (occurs!213_arg_1_19 ?i) (occurs!213_arg_2_20 ?i))) false (rec0!886 (occurs!213_arg_1_19 ?i) (occurs!213_arg_0_18 ?i) (occurs!213_arg_1_19 ?i) (occurs!213_arg_2_20 ?i) (occurs!213_arg_3_21 ?i)))) (ite (not (bvslt (occurs!213_arg_1_19 ?i) (occurs!213_arg_2_20 ?i))) true (not (forall ((?z I_rec0!886)) (not (and (= (rec0!886_arg_0_9 ?z) (occurs!213_arg_1_19 ?i)) (= (rec0!886_arg_1_10 ?z) (occurs!213_arg_0_18 ?i)) (= (rec0!886_arg_2_11 ?z) (occurs!213_arg_1_19 ?i)) (= (rec0!886_arg_3_12 ?z) (occurs!213_arg_2_20 ?i)) (= (rec0!886_arg_4_13 ?z) (occurs!213_arg_3_21 ?i)))) )))) ))
(assert (exists ((a!204 array!892) (low!206 (_ BitVec 32)) (high!207 (_ BitVec 32)) (key!205 (_ BitVec 32))) (not (=> (and (and (and (and (and (and (bvsgt (size!894 a!204) (_ bv0 32)) (bvsgt (size!894 a!204) (_ bv0 32))) (and (sorted!217 a!204 low!206 high!207) (not (forall ((?z I_sorted!217)) (not (and (= (sorted!217_arg_0_1 ?z) a!204) (= (sorted!217_arg_1_2 ?z) low!206) (= (sorted!217_arg_2_3 ?z) high!207))) )))) (bvsle (_ bv0 32) low!206)) (bvsle low!206 (bvadd high!207 (_ bv1 32)))) (bvslt high!207 (size!894 a!204))) (bvsge (size!894 a!204) (_ bv0 32))) (and (and (and (or (bvsge (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (binarySearch!208 a!204 key!205 low!206 (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (binarySearch!208 a!204 key!205 (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32)) high!207))) (_ bv4294967295 32)) (_ bv4294967295 32)) (not (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) true (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) a!204) (= (binarySearch!208_arg_1_15 ?z) key!205) (= (binarySearch!208_arg_2_16 ?z) low!206) (= (binarySearch!208_arg_3_17 ?z) (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))))) )) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) a!204) (= (binarySearch!208_arg_1_15 ?z) key!205) (= (binarySearch!208_arg_2_16 ?z) (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (= (binarySearch!208_arg_3_17 ?z) high!207))) )))) true))) (or (bvsge (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (binarySearch!208 a!204 key!205 low!206 (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (binarySearch!208 a!204 key!205 (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32)) high!207))) (_ bv4294967295 32)) (_ bv4294967295 32)) (not (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) true (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) a!204) (= (binarySearch!208_arg_1_15 ?z) key!205) (= (binarySearch!208_arg_2_16 ?z) low!206) (= (binarySearch!208_arg_3_17 ?z) (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))))) )) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) a!204) (= (binarySearch!208_arg_1_15 ?z) key!205) (= (binarySearch!208_arg_2_16 ?z) (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (= (binarySearch!208_arg_3_17 ?z) high!207))) )))) true)))) (or (bvslt (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (binarySearch!208 a!204 key!205 low!206 (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (binarySearch!208 a!204 key!205 (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32)) high!207))) (_ bv4294967295 32)) (size!894 a!204)) (not (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) true (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) a!204) (= (binarySearch!208_arg_1_15 ?z) key!205) (= (binarySearch!208_arg_2_16 ?z) low!206) (= (binarySearch!208_arg_3_17 ?z) (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))))) )) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) a!204) (= (binarySearch!208_arg_1_15 ?z) key!205) (= (binarySearch!208_arg_2_16 ?z) (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (= (binarySearch!208_arg_3_17 ?z) high!207))) )))) true)))) (or (ite (bvsge (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (binarySearch!208 a!204 key!205 low!206 (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (binarySearch!208 a!204 key!205 (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32)) high!207))) (_ bv4294967295 32)) (_ bv0 32)) (or (= (select (content!895 a!204) (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (binarySearch!208 a!204 key!205 low!206 (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (binarySearch!208 a!204 key!205 (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32)) high!207))) (_ bv4294967295 32))) key!205) (not (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) true (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) a!204) (= (binarySearch!208_arg_1_15 ?z) key!205) (= (binarySearch!208_arg_2_16 ?z) low!206) (= (binarySearch!208_arg_3_17 ?z) (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))))) )) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) a!204) (= (binarySearch!208_arg_1_15 ?z) key!205) (= (binarySearch!208_arg_2_16 ?z) (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (= (binarySearch!208_arg_3_17 ?z) high!207))) )))) true))) (or (or (bvslt high!207 (_ bv0 32)) (bvslt high!207 (_ bv0 32))) (and (and (not (and (occurs!213 a!204 low!206 (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) key!205) (not (forall ((?z I_occurs!213)) (not (and (= (occurs!213_arg_0_18 ?z) a!204) (= (occurs!213_arg_1_19 ?z) low!206) (= (occurs!213_arg_2_20 ?z) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) (= (occurs!213_arg_3_21 ?z) key!205))) )))) (not (and (occurs!213 a!204 low!206 (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) key!205) (not (forall ((?z I_occurs!213)) (not (and (= (occurs!213_arg_0_18 ?z) a!204) (= (occurs!213_arg_1_19 ?z) low!206) (= (occurs!213_arg_2_20 ?z) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) (= (occurs!213_arg_3_21 ?z) key!205))) ))))) (not (and (occurs!213 a!204 (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) high!207 key!205) (not (forall ((?z I_occurs!213)) (not (and (= (occurs!213_arg_0_18 ?z) a!204) (= (occurs!213_arg_1_19 ?z) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) (= (occurs!213_arg_2_20 ?z) high!207) (= (occurs!213_arg_3_21 ?z) key!205))) ))))))) (not (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) true (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!902) key!205) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) a!204) (= (binarySearch!208_arg_1_15 ?z) key!205) (= (binarySearch!208_arg_2_16 ?z) low!206) (= (binarySearch!208_arg_3_17 ?z) (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))))) )) (not (forall ((?z I_binarySearch!208)) (not (and (= (binarySearch!208_arg_0_14 ?z) a!204) (= (binarySearch!208_arg_1_15 ?z) key!205) (= (binarySearch!208_arg_2_16 ?z) (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (= (binarySearch!208_arg_3_17 ?z) high!207))) )))) true)))))) ))
(check-sat)
(exit)

