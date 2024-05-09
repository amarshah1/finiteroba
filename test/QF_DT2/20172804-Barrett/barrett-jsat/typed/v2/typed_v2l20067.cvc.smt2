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
(set-info :status sat)


(declare-datatypes ((nat 0)(list 0)(tree 0)) (((succ (pred nat)) (zero))
((cons (car tree) (cdr list)) (null))
((node (children list)) (leaf (data nat)))
))
(declare-fun x1 () nat)
(declare-fun x2 () nat)
(declare-fun x3 () list)
(declare-fun x4 () list)
(declare-fun x5 () tree)
(declare-fun x6 () tree)

(assert (and (= (cons x5 (ite ((_ is node) (leaf (succ (ite ((_ is succ) (ite (is-leaf x6) (data x6) zero)) (pred (ite (is-leaf x6) (data x6) zero)) zero)))) (children (leaf (succ (ite ((_ is succ) (ite (is-leaf x6) (data x6) zero)) (pred (ite (is-leaf x6) (data x6) zero)) zero)))) null)) (ite (is-cons (ite ((_ is node) (ite (is-cons x3) (car x3) (leaf zero))) (children (ite (is-cons x3) (car x3) (leaf zero))) null)) (cdr (ite ((_ is node) (ite (is-cons x3) (car x3) (leaf zero))) (children (ite (is-cons x3) (car x3) (leaf zero))) null)) null)) (not (is-cons (ite (is-cons x4) (cdr x4) null)))))
(check-sat)
(exit)


