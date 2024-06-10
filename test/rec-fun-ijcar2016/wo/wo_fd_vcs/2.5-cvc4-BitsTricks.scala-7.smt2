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
(set-info :status unsat)


(declare-fun isBitNSet!213 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(assert (forall ((x!211 (_ BitVec 32)) (n!212 (_ BitVec 32))) (= (isBitNSet!213 x!211 n!212) (bvand x!211 (bvshl (_ bv1 32) n!212))) ))
(assert (exists ((n!217 (_ BitVec 32)) (x!216 (_ BitVec 32))) (not (=> (and (and (bvsge n!217 (_ bv0 32)) (bvsge n!217 (_ bv0 32))) (bvslt n!217 (_ bv32 32))) (not (= (isBitNSet!213 (bvor x!216 (bvshl (_ bv1 32) n!217)) n!217) (_ bv0 32))))) ))
(check-sat)
(exit)

