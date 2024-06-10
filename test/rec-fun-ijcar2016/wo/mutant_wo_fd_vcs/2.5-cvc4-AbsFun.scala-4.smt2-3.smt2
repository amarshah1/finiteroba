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


(declare-datatypes ((array!896 0)) (((array!896!897 (size!898 (_ BitVec 32)) (content!899 (Array (_ BitVec 32) (_ BitVec 32)))))
))
(declare-datatypes ((tuple2!900 0)) (((tuple2!900!901 (_1!902 array!896) (_2!903 (_ BitVec 32))))
))
(declare-fun error_value!904 () (_ BitVec 32))
(declare-fun error_value!905 () (_ BitVec 32))
(declare-fun error_value!906 () array!896)
(declare-fun error_value!907 () (_ BitVec 32))
(declare-fun error_value!908 () array!896)
(declare-fun error_value!909 () (_ BitVec 32))
(declare-fun while0!216 (array!896 (_ BitVec 32) array!896) tuple2!900)
(declare-fun isPositive!206 (array!896 (_ BitVec 32)) Bool)
(declare-fun rec!210 ((_ BitVec 32) array!896 (_ BitVec 32)) Bool)
(declare-fun arrayconst!910 () (Array (_ BitVec 32) (_ BitVec 32)))
(assert (forall ((t!213 array!896) (k!214 (_ BitVec 32)) (tab!215 array!896)) (= (while0!216 t!213 k!214 tab!215) (ite (bvslt k!214 (size!898 tab!215)) (while0!216 (ite (bvslt (ite (and (and (bvsge k!214 (_ bv0 32)) (bvsge k!214 (_ bv0 32))) (bvslt k!214 (size!898 tab!215))) (select (content!899 tab!215) k!214) error_value!904) (_ bv0 32)) (ite (and (and (bvsge k!214 (_ bv0 32)) (bvsge k!214 (_ bv0 32))) (bvslt k!214 (size!898 t!213))) (array!896!897 (size!898 t!213) (store (content!899 t!213) k!214 (bvneg (ite (and (and (bvsge k!214 (_ bv0 32)) (bvsge k!214 (_ bv0 32))) (bvslt k!214 (size!898 tab!215))) (select (content!899 tab!215) k!214) error_value!905)))) error_value!906) (ite (and (and (bvsge k!214 (_ bv0 32)) (bvsge k!214 (_ bv0 32))) (bvslt k!214 (size!898 t!213))) (array!896!897 (size!898 t!213) (store (content!899 t!213) k!214 (ite (and (and (bvsge k!214 (_ bv0 32)) (bvsge k!214 (_ bv0 32))) (bvslt k!214 (size!898 tab!215))) (select (content!899 tab!215) k!214) error_value!907))) error_value!908)) (bvadd k!214 (_ bv1 32)) tab!215) (tuple2!900!901 t!213 k!214))) ))
(assert (forall ((a!204 array!896) (size!205 (_ BitVec 32))) (= (isPositive!206 a!204 size!205) (rec!210 (_ bv0 32) a!204 size!205)) ))
(assert (forall ((i!207 (_ BitVec 32)) (a!208 array!896) (size!209 (_ BitVec 32))) (= (rec!210 i!207 a!208 size!209) (ite (bvsge i!207 size!209) true (ite (bvslt (ite (and (and (bvsge i!207 (_ bv0 32)) (bvsge i!207 (_ bv0 32))) (bvslt i!207 (size!898 a!208))) (select (content!899 a!208) i!207) error_value!909) (_ bv0 32)) false (rec!210 (bvadd i!207 (_ bv1 32)) a!208 size!209)))) ))
(assert (not (forall ((tab!211 array!896)) (or (bvslt (size!898 (_1!902 (while0!216 (array!896!897 (size!898 tab!211) arrayconst!910) (_ bv0 32) tab!211))) (_ bv0 32)) (isPositive!206 (_1!902 (while0!216 (array!896!897 (size!898 tab!211) arrayconst!910) (_ bv0 32) tab!211)) (size!898 tab!211))) )))
(check-sat)
(exit)

