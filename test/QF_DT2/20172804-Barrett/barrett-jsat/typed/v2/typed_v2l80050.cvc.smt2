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

(assert (and (and (and (and (and (and (and (not (= x4 x3)) ((_ is leaf) x6)) (not (= x3 x4))) (not (= x1 x2))) (= zero x2)) (= x2 x2)) ((_ is node) (ite (is-cons (cons x5 x3)) (car (cons x5 x3)) (leaf zero)))) (= (ite (is-cons (ite (is-cons x3) (cdr x3) null)) (cdr (ite (is-cons x3) (cdr x3) null)) null) (ite (is-cons (ite (is-cons (ite ((_ is node) (ite (is-cons (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (leaf zero))) null)) (cdr (ite ((_ is node) (ite (is-cons (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (leaf zero))) null)) null)) (cdr (ite (is-cons (ite ((_ is node) (ite (is-cons (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (leaf zero))) null)) (cdr (ite ((_ is node) (ite (is-cons (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))) null)) (leaf zero))) null)) null)) null))))
(check-sat)
(exit)


