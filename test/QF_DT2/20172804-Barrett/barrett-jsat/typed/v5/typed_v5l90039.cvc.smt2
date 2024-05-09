(set-info :smt-lib-version 2.6)
(set-logic QF_DT)
(set-info :source |
Generated by: Andrew Reynolds
Generated on: 2017-04-28
Generator: Random, converted to v2.6 by CVC4
Application: Regressions for datatypes decision procedure.
Target solver: CVC3
Publications: "An Abstract Decision Procedure for Satisfiability in the Theory of Inductive Data Types" by Clark Barrett, Igor Shikanian, and Cesare Tinelli, Journal on Satisfiability, Boolean Modeling and Computation 2007.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "random")
(set-info :status unsat)


(declare-datatypes ((nat 0)(list 0)(tree 0)) (((succ (pred nat)) (zero))
((cons (car tree) (cdr list)) (null))
((node (children list)) (leaf (data nat)))
))
(declare-fun x1 () nat)
(declare-fun x2 () nat)
(declare-fun x3 () nat)
(declare-fun x4 () nat)
(declare-fun x5 () nat)
(declare-fun x6 () list)
(declare-fun x7 () list)
(declare-fun x8 () list)
(declare-fun x9 () list)
(declare-fun x10 () list)
(declare-fun x11 () tree)
(declare-fun x12 () tree)
(declare-fun x13 () tree)
(declare-fun x14 () tree)
(declare-fun x15 () tree)

(assert (and (and (and (and (and (and (and (and (not (= x7 x8)) (not (= x5 (succ (ite (is-leaf x15) (data x15) zero))))) (= x5 (ite ((_ is succ) (ite (is-leaf x14) (data x14) zero)) (pred (ite (is-leaf x14) (data x14) zero)) zero))) ((_ is null) x10)) (= (cons (leaf x1) x7) x7)) (not (= (ite ((_ is succ) zero) (pred zero) zero) (ite ((_ is succ) x1) (pred x1) zero)))) (is-cons null)) (not ((_ is node) x12))) ((_ is node) x14)))
(check-sat)
(exit)


