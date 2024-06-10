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


(declare-fun isBitNSet!213 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-sort I_isBitNSet!213 0)
(declare-fun isBitNSet!213_arg_0_1 (I_isBitNSet!213) (_ BitVec 32))
(declare-fun isBitNSet!213_arg_1_2 (I_isBitNSet!213) (_ BitVec 32))
(assert (forall ((?i I_isBitNSet!213)) (= (bvand (isBitNSet!213_arg_0_1 ?i) (bvshl (_ bv1 32) (isBitNSet!213_arg_1_2 ?i))) (isBitNSet!213 (isBitNSet!213_arg_0_1 ?i) (isBitNSet!213_arg_1_2 ?i))) ))
(assert (not (forall ((n!220 (_ BitVec 32)) (x!219 (_ BitVec 32))) (or (= (isBitNSet!213 x!219 n!220) (_ bv0 32)) (forall ((?z I_isBitNSet!213)) (not (and (= (isBitNSet!213_arg_0_1 ?z) x!219) (= (isBitNSet!213_arg_1_2 ?z) n!220))) )) )))
(check-sat)
(exit)

