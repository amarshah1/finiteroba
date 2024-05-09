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
(declare-fun x3 () nat)
(declare-fun x4 () list)
(declare-fun x5 () list)
(declare-fun x6 () list)
(declare-fun x7 () tree)
(declare-fun x8 () tree)
(declare-fun x9 () tree)

(assert (and (and (and (not (= (node null) x8)) (is-cons (cons (leaf (succ zero)) (cons (ite (is-cons (cons x7 (ite (is-cons (ite ((_ is node) (ite (is-cons (ite ((_ is node) x9) (children x9) null)) (car (ite ((_ is node) x9) (children x9) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) x9) (children x9) null)) (car (ite ((_ is node) x9) (children x9) null)) (leaf zero))) null)) (cdr (ite ((_ is node) (ite (is-cons (ite ((_ is node) x9) (children x9) null)) (car (ite ((_ is node) x9) (children x9) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) x9) (children x9) null)) (car (ite ((_ is node) x9) (children x9) null)) (leaf zero))) null)) null))) (car (cons x7 (ite (is-cons (ite ((_ is node) (ite (is-cons (ite ((_ is node) x9) (children x9) null)) (car (ite ((_ is node) x9) (children x9) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) x9) (children x9) null)) (car (ite ((_ is node) x9) (children x9) null)) (leaf zero))) null)) (cdr (ite ((_ is node) (ite (is-cons (ite ((_ is node) x9) (children x9) null)) (car (ite ((_ is node) x9) (children x9) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) x9) (children x9) null)) (car (ite ((_ is node) x9) (children x9) null)) (leaf zero))) null)) null))) (leaf zero)) (ite ((_ is node) x9) (children x9) null))))) (not (= x8 (leaf zero)))) ((_ is null) x6)))
(check-sat)
(exit)


