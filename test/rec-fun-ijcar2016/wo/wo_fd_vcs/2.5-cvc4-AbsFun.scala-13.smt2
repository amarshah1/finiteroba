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
(assert (forall ((a!204 array!977) (size!205 (_ BitVec 32))) (= (isPositive!206 a!204 size!205) (rec!210 (_ bv0 32) a!204 size!205)) ))
(assert (forall ((i!207 (_ BitVec 32)) (a!208 array!977) (size!209 (_ BitVec 32))) (= (rec!210 i!207 a!208 size!209) (ite (bvsge i!207 size!209) true (ite (bvslt (ite (and (and (bvsge i!207 (_ bv0 32)) (bvsge i!207 (_ bv0 32))) (bvslt i!207 (size!979 a!208))) (select (content!980 a!208) i!207) error_value!981) (_ bv0 32)) false (rec!210 (bvadd i!207 (_ bv1 32)) a!208 size!209)))) ))
(assert (exists ((t!217 array!977) (k!218 (_ BitVec 32))) (not (=> (and (and (and (and (isPositive!206 t!217 k!218) (isPositive!206 t!217 k!218)) (bvsge (size!979 t!217) (_ bv0 32))) (bvsge k!218 (_ bv0 32))) (bvsge (size!979 t!217) (_ bv0 32))) (ite (bvslt k!218 (size!979 t!217)) (isPositive!206 (ite (bvslt (ite (and (and (bvsge k!218 (_ bv0 32)) (bvsge k!218 (_ bv0 32))) (bvslt k!218 (size!979 t!217))) (select (content!980 t!217) k!218) error_value!982) (_ bv0 32)) (ite (and (and (bvsge k!218 (_ bv0 32)) (bvsge k!218 (_ bv0 32))) (bvslt k!218 (size!979 t!217))) (array!977!978 (size!979 t!217) (store (content!980 t!217) k!218 (bvneg (ite (and (and (bvsge k!218 (_ bv0 32)) (bvsge k!218 (_ bv0 32))) (bvslt k!218 (size!979 t!217))) (select (content!980 t!217) k!218) error_value!983)))) error_value!984) (ite (and (and (bvsge k!218 (_ bv0 32)) (bvsge k!218 (_ bv0 32))) (bvslt k!218 (size!979 t!217))) (array!977!978 (size!979 t!217) (store (content!980 t!217) k!218 (ite (and (and (bvsge k!218 (_ bv0 32)) (bvsge k!218 (_ bv0 32))) (bvslt k!218 (size!979 t!217))) (select (content!980 t!217) k!218) error_value!985))) error_value!986)) (bvadd k!218 (_ bv1 32))) true))) ))
(check-sat)
(exit)

