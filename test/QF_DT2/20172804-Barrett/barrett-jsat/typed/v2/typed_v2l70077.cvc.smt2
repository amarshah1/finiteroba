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
(declare-fun x3 () list)
(declare-fun x4 () list)
(declare-fun x5 () tree)
(declare-fun x6 () tree)

(assert (and (and (and (and (and (and (not ((_ is node) (node (ite (is-cons (ite ((_ is node) (ite (is-cons x3) (car x3) (leaf zero))) (children (ite (is-cons x3) (car x3) (leaf zero))) null)) (cdr (ite ((_ is node) (ite (is-cons x3) (car x3) (leaf zero))) (children (ite (is-cons x3) (car x3) (leaf zero))) null)) null)))) (is-cons (cons (node (cons (node (ite ((_ is node) (ite (is-cons (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null)) (leaf zero))) null)) x3)) (cons (leaf (ite ((_ is succ) x2) (pred x2) zero)) (ite (is-cons (cons (node x3) x3)) (cdr (cons (node x3) x3)) null))))) (not (= (cons (leaf zero) x4) (ite ((_ is node) x5) (children x5) null)))) ((_ is zero) (ite ((_ is succ) (ite ((_ is leaf) (ite (is-cons (ite (is-cons (cons x5 x3)) (cdr (cons x5 x3)) null)) (car (ite (is-cons (cons x5 x3)) (cdr (cons x5 x3)) null)) (leaf zero))) (data (ite (is-cons (ite (is-cons (cons x5 x3)) (cdr (cons x5 x3)) null)) (car (ite (is-cons (cons x5 x3)) (cdr (cons x5 x3)) null)) (leaf zero))) zero)) (pred (ite ((_ is leaf) (ite (is-cons (ite (is-cons (cons x5 x3)) (cdr (cons x5 x3)) null)) (car (ite (is-cons (cons x5 x3)) (cdr (cons x5 x3)) null)) (leaf zero))) (data (ite (is-cons (ite (is-cons (cons x5 x3)) (cdr (cons x5 x3)) null)) (car (ite (is-cons (cons x5 x3)) (cdr (cons x5 x3)) null)) (leaf zero))) zero)) zero))) (is-cons x4)) (not ((_ is node) (node (ite ((_ is node) (node null)) (children (node null)) null))))) (= zero (ite ((_ is succ) x2) (pred x2) zero))))
(check-sat)
(exit)


