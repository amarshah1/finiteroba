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


(declare-fun isRotationLeft!238 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun bitAt!206 ((_ BitVec 32) (_ BitVec 32)) Bool)
(assert (forall ((x!234 (_ BitVec 32)) (y!235 (_ BitVec 32)) (n!236 (_ BitVec 32)) (i!237 (_ BitVec 32))) (= (isRotationLeft!238 x!234 y!235 n!236 i!237) (ite (= i!237 (_ bv32 32)) true (and (and (= (bitAt!206 x!234 i!237) (bitAt!206 y!235 (bvsrem (bvadd i!237 n!236) (_ bv32 32)))) (= (bitAt!206 x!234 i!237) (bitAt!206 y!235 (bvsrem (bvadd i!237 n!236) (_ bv32 32))))) (isRotationLeft!238 x!234 y!235 n!236 (bvadd i!237 (_ bv1 32)))))) ))
(assert (forall ((x!204 (_ BitVec 32)) (n!205 (_ BitVec 32))) (= (bitAt!206 x!204 n!205) (= (bvand (bvashr x!204 n!205) (_ bv1 32)) (_ bv1 32))) ))
(assert (not (forall ((n!240 (_ BitVec 32)) (x!239 (_ BitVec 32))) (isRotationLeft!238 x!239 (bvor (bvshl x!239 n!240) (bvlshr x!239 (bvadd (bvneg n!240) (_ bv32 32)))) n!240 (_ bv0 32)) )))
(check-sat)
(exit)

