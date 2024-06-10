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


(declare-datatypes ((List!1044 0)) (((Cons!1045 (head!1046 (_ BitVec 32)) (tail!1047 List!1044)) (Nil!1048))
))
(declare-fun error_value!1049 () Int)
(declare-fun error_value!1050 () Int)
(declare-fun sizeTailRecAcc!217 (List!1044 Int) Int)
(declare-fun size!206 (List!1044) Int)
(declare-fun error_value!1051 () Int)
(assert (forall ((l!215 List!1044) (acc!216 Int)) (= (sizeTailRecAcc!217 l!215 acc!216) (ite ((_ is Nil!1048) l!215) acc!216 (ite ((_ is Cons!1045) l!215) (sizeTailRecAcc!217 (tail!1047 l!215) (+ acc!216 1)) error_value!1049))) ))
(assert (forall ((l!205 List!1044)) (= (size!206 l!205) (ite ((_ is Nil!1048) l!205) (- 0) (ite ((_ is Cons!1045) l!205) (+ 1 (size!206 (tail!1047 l!205))) error_value!1050))) ))
(assert (not (forall ((acc!216 Int) (l!215 List!1044)) (or (not (>= acc!216 0)) (= acc!216 (+ (* (- 1) (size!206 l!215)) (ite ((_ is Nil!1048) l!215) acc!216 (ite ((_ is Cons!1045) (tail!1047 l!215)) (sizeTailRecAcc!217 l!215 (+ 1 acc!216)) error_value!1051))))) )))
(check-sat)
(exit)

