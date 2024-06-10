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
(assert (forall ((a!214 array!892) (l!215 (_ BitVec 32)) (u!216 (_ BitVec 32))) (= (sorted!217 a!214 l!215 u!216) (_1!898 (sortedWhile!223 true l!215 l!215 u!216 a!214))) ))
(assert (forall ((isSorted!218 Bool) (k!219 (_ BitVec 32)) (l!220 (_ BitVec 32)) (u!221 (_ BitVec 32)) (a!222 array!892)) (= (sortedWhile!223 isSorted!218 k!219 l!220 u!221 a!222) (ite (bvslt k!219 u!221) (sortedWhile!223 (ite (bvsgt (ite (and (and (bvsge k!219 (_ bv0 32)) (bvsge k!219 (_ bv0 32))) (bvslt k!219 (size!894 a!222))) (select (content!895 a!222) k!219) error_value!900) (ite (and (and (bvsge (bvadd k!219 (_ bv1 32)) (_ bv0 32)) (bvsge (bvadd k!219 (_ bv1 32)) (_ bv0 32))) (bvslt (bvadd k!219 (_ bv1 32)) (size!894 a!222))) (select (content!895 a!222) (bvadd k!219 (_ bv1 32))) error_value!901)) false isSorted!218) (bvadd k!219 (_ bv1 32)) l!220 u!221 a!222) (tuple2!896!897 isSorted!218 k!219))) ))
(assert (forall ((i!433 (_ BitVec 32)) (a!882 array!892) (from!883 (_ BitVec 32)) (to!884 (_ BitVec 32)) (key!885 (_ BitVec 32))) (= (rec0!886 i!433 a!882 from!883 to!884 key!885) (ite (bvsge i!433 to!884) false (ite (= (ite (and (and (bvsge i!433 (_ bv0 32)) (bvsge i!433 (_ bv0 32))) (bvslt i!433 (size!894 a!882))) (select (content!895 a!882) i!433) error_value!903) key!885) true (rec0!886 (bvadd i!433 (_ bv1 32)) a!882 from!883 to!884 key!885)))) ))
(assert (forall ((a!204 array!892) (key!205 (_ BitVec 32)) (low!206 (_ BitVec 32)) (high!207 (_ BitVec 32))) (= (binarySearch!208 a!204 key!205 low!206 high!207) (ite (bvsle low!206 high!207) (ite (= (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!904) key!205) (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (ite (bvsgt (ite (and (and (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32)) (bvsge (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv0 32))) (bvslt (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (size!894 a!204))) (select (content!895 a!204) (bvsdiv (bvadd high!207 low!206) (_ bv2 32))) error_value!904) key!205) (binarySearch!208 a!204 key!205 low!206 (bvsub (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32))) (binarySearch!208 a!204 key!205 (bvadd (bvsdiv (bvadd high!207 low!206) (_ bv2 32)) (_ bv1 32)) high!207))) (_ bv4294967295 32))) ))
(assert (forall ((a!209 array!892) (from!210 (_ BitVec 32)) (to!211 (_ BitVec 32)) (key!212 (_ BitVec 32))) (= (occurs!213 a!209 from!210 to!211 key!212) (ite (bvsge from!210 to!211) false (rec0!886 from!210 a!209 from!210 to!211 key!212))) ))
(assert (not (forall ((a!204 array!892) (low!206 (_ BitVec 32)) (high!207 (_ BitVec 32)) (key!205 (_ BitVec 32))) (or (bvslt (size!894 a!204) (_ bv0 32)) (not (bvslt high!207 (size!894 a!204))) (bvslt (bvadd high!207 (_ bv1 32)) low!206) (bvslt low!206 (_ bv0 32)) (occurs!213 a!204 (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) high!207 key!205) (occurs!213 a!204 low!206 (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) key!205) (not (bvslt (_ bv0 32) (size!894 a!204))) (and (ite (not (bvslt (ite (not (bvslt high!207 low!206)) (ite (= (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (size!894 a!204)) (not (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv0 32)))) (select (content!895 a!204) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207)))))) error_value!902) key!205) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (ite (bvslt key!205 (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (size!894 a!204)) (not (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv0 32)))) (select (content!895 a!204) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207)))))) error_value!902)) (binarySearch!208 a!204 key!205 low!206 (bvadd (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv4294967295 32))) (binarySearch!208 a!204 key!205 (bvadd (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv1 32)) high!207))) (_ bv4294967295 32)) (_ bv0 32))) (= (select (content!895 a!204) (ite (not (bvslt high!207 low!206)) (ite (= (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (size!894 a!204)) (not (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv0 32)))) (select (content!895 a!204) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207)))))) error_value!902) key!205) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (ite (bvslt key!205 (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (size!894 a!204)) (not (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv0 32)))) (select (content!895 a!204) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207)))))) error_value!902)) (binarySearch!208 a!204 key!205 low!206 (bvadd (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv4294967295 32))) (binarySearch!208 a!204 key!205 (bvadd (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv1 32)) high!207))) (_ bv4294967295 32))) key!205) (or (sorted!217 a!204 low!206 high!207) (bvslt high!207 (_ bv0 32)))) (bvslt (ite (not (bvslt high!207 low!206)) (ite (= (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (size!894 a!204)) (not (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv0 32)))) (select (content!895 a!204) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207)))))) error_value!902) key!205) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (ite (bvslt key!205 (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (size!894 a!204)) (not (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv0 32)))) (select (content!895 a!204) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207)))))) error_value!902)) (binarySearch!208 a!204 key!205 low!206 (bvadd (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv4294967295 32))) (binarySearch!208 a!204 key!205 (bvadd (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv1 32)) high!207))) (_ bv4294967295 32)) (size!894 a!204)) (not (bvslt (ite (not (bvslt high!207 low!206)) (ite (= (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (size!894 a!204)) (not (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv0 32)))) (select (content!895 a!204) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207)))))) error_value!902) key!205) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (ite (bvslt key!205 (ite (and (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (size!894 a!204)) (not (bvslt (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv0 32)))) (select (content!895 a!204) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207)))))) error_value!902)) (binarySearch!208 a!204 key!205 low!206 (bvadd (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv4294967295 32))) (binarySearch!208 a!204 key!205 (bvadd (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvneg (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (concat (_ bv0 1) ((_ extract 31 1) (ite (= ((_ extract 31 31) (bvadd low!206 high!207)) (_ bv1 1)) (bvadd (bvneg low!206) (bvneg high!207)) (bvadd low!206 high!207))))) (_ bv1 32)) high!207))) (_ bv4294967295 32)) (_ bv4294967295 32))))) )))
(check-sat)
(exit)

