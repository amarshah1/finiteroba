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


(declare-fun turnOffRightmostOneRec!227 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun bitAt!206 ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun toggleBitN!221 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun isBitNSet!213 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-sort I_turnOffRightmostOneRec!227 0)
(declare-fun turnOffRightmostOneRec!227_arg_0_1 (I_turnOffRightmostOneRec!227) (_ BitVec 32))
(declare-fun turnOffRightmostOneRec!227_arg_1_2 (I_turnOffRightmostOneRec!227) (_ BitVec 32))
(declare-sort I_bitAt!206 0)
(declare-fun bitAt!206_arg_0_3 (I_bitAt!206) (_ BitVec 32))
(declare-fun bitAt!206_arg_1_4 (I_bitAt!206) (_ BitVec 32))
(declare-sort I_toggleBitN!221 0)
(declare-fun toggleBitN!221_arg_0_5 (I_toggleBitN!221) (_ BitVec 32))
(declare-fun toggleBitN!221_arg_1_6 (I_toggleBitN!221) (_ BitVec 32))
(declare-sort I_isBitNSet!213 0)
(declare-fun isBitNSet!213_arg_0_7 (I_isBitNSet!213) (_ BitVec 32))
(declare-fun isBitNSet!213_arg_1_8 (I_isBitNSet!213) (_ BitVec 32))
(assert (forall ((?i I_turnOffRightmostOneRec!227)) (and (= (ite (bitAt!206 (turnOffRightmostOneRec!227_arg_0_1 ?i) (turnOffRightmostOneRec!227_arg_1_2 ?i)) (toggleBitN!221 (turnOffRightmostOneRec!227_arg_0_1 ?i) (turnOffRightmostOneRec!227_arg_1_2 ?i)) (ite (= (turnOffRightmostOneRec!227_arg_1_2 ?i) (_ bv31 32)) (turnOffRightmostOneRec!227_arg_0_1 ?i) (turnOffRightmostOneRec!227 (turnOffRightmostOneRec!227_arg_0_1 ?i) (bvadd (turnOffRightmostOneRec!227_arg_1_2 ?i) (_ bv1 32))))) (turnOffRightmostOneRec!227 (turnOffRightmostOneRec!227_arg_0_1 ?i) (turnOffRightmostOneRec!227_arg_1_2 ?i))) (not (forall ((?z I_bitAt!206)) (not (and (= (bitAt!206_arg_0_3 ?z) (turnOffRightmostOneRec!227_arg_0_1 ?i)) (= (bitAt!206_arg_1_4 ?z) (turnOffRightmostOneRec!227_arg_1_2 ?i)))) )) (ite (bitAt!206 (turnOffRightmostOneRec!227_arg_0_1 ?i) (turnOffRightmostOneRec!227_arg_1_2 ?i)) (not (forall ((?z I_toggleBitN!221)) (not (and (= (toggleBitN!221_arg_0_5 ?z) (turnOffRightmostOneRec!227_arg_0_1 ?i)) (= (toggleBitN!221_arg_1_6 ?z) (turnOffRightmostOneRec!227_arg_1_2 ?i)))) )) (ite (= (turnOffRightmostOneRec!227_arg_1_2 ?i) (_ bv31 32)) true (not (forall ((?z I_turnOffRightmostOneRec!227)) (not (and (= (turnOffRightmostOneRec!227_arg_0_1 ?z) (turnOffRightmostOneRec!227_arg_0_1 ?i)) (= (turnOffRightmostOneRec!227_arg_1_2 ?z) (bvadd (turnOffRightmostOneRec!227_arg_1_2 ?i) (_ bv1 32))))) ))))) ))
(assert (forall ((?i I_bitAt!206)) (= (bitAt!206 (bitAt!206_arg_0_3 ?i) (bitAt!206_arg_1_4 ?i)) (= (concat (_ bv0 31) ((_ extract 0 0) (bvashr (bitAt!206_arg_0_3 ?i) (bitAt!206_arg_1_4 ?i)))) (_ bv1 32))) ))
(assert (forall ((?i I_toggleBitN!221)) (= (bvxor (toggleBitN!221_arg_0_5 ?i) (bvshl (_ bv1 32) (toggleBitN!221_arg_1_6 ?i))) (toggleBitN!221 (toggleBitN!221_arg_0_5 ?i) (toggleBitN!221_arg_1_6 ?i))) ))
(assert (forall ((?i I_isBitNSet!213)) (= (bvand (isBitNSet!213_arg_0_7 ?i) (bvshl (_ bv1 32) (isBitNSet!213_arg_1_8 ?i))) (isBitNSet!213 (isBitNSet!213_arg_0_7 ?i) (isBitNSet!213_arg_1_8 ?i))) ))
(assert (not (forall ((x!228 (_ BitVec 32))) (or (= (bvadd x!228 (_ bv4294967295 32)) (turnOffRightmostOneRec!227 x!228 (_ bv0 32))) (forall ((?z I_turnOffRightmostOneRec!227)) (not (and (= (turnOffRightmostOneRec!227_arg_0_1 ?z) x!228) (= (turnOffRightmostOneRec!227_arg_1_2 ?z) (_ bv0 32)))) )) )))
(check-sat)
(exit)

