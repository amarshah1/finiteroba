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

(assert (and (and (and (and (not (= (node (ite (is-cons (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (cdr (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) null)) (leaf zero))) (= zero (ite ((_ is leaf) (node (ite (is-cons (ite (is-cons (ite ((_ is node) (node (cons (node (cons x5 x4)) x4))) (children (node (cons (node (cons x5 x4)) x4))) null)) (cdr (ite ((_ is node) (node (cons (node (cons x5 x4)) x4))) (children (node (cons (node (cons x5 x4)) x4))) null)) null)) (cdr (ite (is-cons (ite ((_ is node) (node (cons (node (cons x5 x4)) x4))) (children (node (cons (node (cons x5 x4)) x4))) null)) (cdr (ite ((_ is node) (node (cons (node (cons x5 x4)) x4))) (children (node (cons (node (cons x5 x4)) x4))) null)) null)) null))) (data (node (ite (is-cons (ite (is-cons (ite ((_ is node) (node (cons (node (cons x5 x4)) x4))) (children (node (cons (node (cons x5 x4)) x4))) null)) (cdr (ite ((_ is node) (node (cons (node (cons x5 x4)) x4))) (children (node (cons (node (cons x5 x4)) x4))) null)) null)) (cdr (ite (is-cons (ite ((_ is node) (node (cons (node (cons x5 x4)) x4))) (children (node (cons (node (cons x5 x4)) x4))) null)) (cdr (ite ((_ is node) (node (cons (node (cons x5 x4)) x4))) (children (node (cons (node (cons x5 x4)) x4))) null)) null)) null))) zero))) (= x6 (ite (is-cons null) (car null) (leaf zero)))) (not (= (ite ((_ is node) (ite (is-cons (cons x6 null)) (car (cons x6 null)) (leaf zero))) (children (ite (is-cons (cons x6 null)) (car (cons x6 null)) (leaf zero))) null) x4))) ((_ is leaf) x5)))
(check-sat)
(exit)


