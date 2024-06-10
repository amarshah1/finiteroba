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


(declare-datatypes ((List!909 0)) (((Cons!910 (head!911 (_ BitVec 32)) (tail!912 List!909)) (Nil!913))
))
(declare-fun error_value!914 () Int)
(declare-fun error_value!915 () Bool)
(declare-fun error_value!916 () Bool)
(declare-fun error_value!917 () Int)
(declare-fun firstZero!211 (List!909) Int)
(declare-fun contains!209 (List!909 (_ BitVec 32)) Bool)
(declare-fun firstZeroAtPos!214 (List!909 Int) Bool)
(declare-fun size!206 (List!909) Int)
(declare-fun error_value!918 () Int)
(assert (forall ((list!210 List!909)) (= (firstZero!211 list!210) (ite ((_ is Nil!913) list!210) (- 0) (ite ((_ is Cons!910) list!210) (ite (= (head!911 list!210) (_ bv0 32)) (- 0) (+ (firstZero!211 (tail!912 list!210)) 1)) error_value!914))) ))
(assert (forall ((list!207 List!909) (elem!208 (_ BitVec 32))) (= (contains!209 list!207 elem!208) (ite ((_ is Nil!913) list!207) false (ite ((_ is Cons!910) list!207) (or (or (= (head!911 list!207) elem!208) (= (head!911 list!207) elem!208)) (contains!209 (tail!912 list!207) elem!208)) error_value!915))) ))
(assert (forall ((list!212 List!909) (pos!213 Int)) (= (firstZeroAtPos!214 list!212 pos!213) (ite ((_ is Nil!913) list!212) false (ite ((_ is Cons!910) list!212) (ite (= pos!213 (- 0)) (= (head!911 list!212) (_ bv0 32)) (and (and (not (= (head!911 list!212) (_ bv0 32))) (not (= (head!911 list!212) (_ bv0 32)))) (firstZeroAtPos!214 (tail!912 list!212) (- pos!213 1)))) error_value!916))) ))
(assert (forall ((list!205 List!909)) (= (size!206 list!205) (ite ((_ is Nil!913) list!205) (- 0) (ite ((_ is Cons!910) list!205) (+ 1 (size!206 (tail!912 list!205))) error_value!917))) ))
(assert (exists ((list!210 List!909)) (not (and (and (>= (ite ((_ is Nil!913) list!210) (- 0) (ite ((_ is Cons!910) list!210) (ite (= (head!911 list!210) (_ bv0 32)) (- 0) (+ (firstZero!211 (tail!912 list!210)) 1)) error_value!918)) (- 0)) (>= (ite ((_ is Nil!913) list!210) (- 0) (ite ((_ is Cons!910) list!210) (ite (= (head!911 list!210) (_ bv0 32)) (- 0) (+ (firstZero!211 (tail!912 list!210)) 1)) error_value!918)) (- 0))) (ite (contains!209 list!210 (_ bv0 32)) (firstZeroAtPos!214 list!210 (ite ((_ is Nil!913) list!210) (- 0) (ite ((_ is Cons!910) list!210) (ite (= (head!911 list!210) (_ bv0 32)) (- 0) (+ (firstZero!211 (tail!912 list!210)) 1)) error_value!918))) (= (ite ((_ is Nil!913) list!210) (- 0) (ite ((_ is Cons!910) list!210) (ite (= (head!911 list!210) (_ bv0 32)) (- 0) (+ (firstZero!211 (tail!912 list!210)) 1)) error_value!918)) (size!206 list!210))))) ))
(check-sat)
(exit)

