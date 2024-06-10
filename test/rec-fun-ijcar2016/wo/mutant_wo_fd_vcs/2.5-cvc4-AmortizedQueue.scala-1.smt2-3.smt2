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


(declare-datatypes ((List!961 0)) (((Cons!962 (head!963 (_ BitVec 32)) (tail!964 List!961)) (Nil!965))
))
(declare-fun error_value!966 () Int)
(declare-fun size!206 (List!961) Int)
(declare-fun error_value!967 () Int)
(assert (forall ((list!205 List!961)) (= (size!206 list!205) (ite ((_ is Nil!965) list!205) (- 0) (ite ((_ is Cons!962) list!205) (+ 1 (size!206 (tail!964 list!205))) error_value!966))) ))
(assert (not (forall ((list!205 List!961)) ((_ is Nil!965) list!205) )))
(check-sat)
(exit)

