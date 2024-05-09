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
(declare-fun x2 () list)
(declare-fun x3 () tree)

(assert (and (and (and (and (and (is-leaf (ite (is-cons x2) (car x2) (leaf zero))) (is-leaf (node (cons (ite (is-cons (ite (is-cons (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite (is-cons (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero)) null)))) (not ((_ is null) x2))) (not (is-cons (ite (is-cons (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null)))) (= (ite (is-leaf (node (cons (node (cons (leaf (succ zero)) (cons x3 null))) x2))) (data (node (cons (node (cons (leaf (succ zero)) (cons x3 null))) x2))) zero) (ite (is-leaf (ite (is-cons (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (data (ite (is-cons (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) zero))) (not ((_ is node) (node null)))))
(check-sat)
(exit)


