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


(declare-datatypes ((List!892 0)) (((Cons!893 (head!894 (_ BitVec 32)) (tail!895 List!892)) (Nil!896))
))
(declare-fun error_value!897 () Int)
(declare-fun size!206 (List!892) Int)
(declare-fun error_value!898 () Int)
(assert (forall ((list!205 List!892)) (= (size!206 list!205) (ite ((_ is Nil!896) list!205) (- 0) (ite ((_ is Cons!893) list!205) (+ 1 (size!206 (tail!895 list!205))) error_value!897))) ))
(assert (not (forall ((list!205 List!892)) ((_ is Nil!896) list!205) )))
(check-sat)
(exit)

