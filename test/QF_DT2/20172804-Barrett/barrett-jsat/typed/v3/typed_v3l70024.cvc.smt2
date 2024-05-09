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

(assert (and (and (and (and (and (and (not (= x3 x1)) (= (ite ((_ is node) x7) (children x7) null) (ite ((_ is node) (ite (is-cons (ite ((_ is node) (ite (is-cons (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (car (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (leaf zero))) (children (ite (is-cons (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (car (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (car (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (leaf zero))) (children (ite (is-cons (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (car (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (leaf zero))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (ite (is-cons (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (car (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (leaf zero))) (children (ite (is-cons (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (car (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (car (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (leaf zero))) (children (ite (is-cons (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (car (cons x8 (ite (is-cons (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (leaf zero))) null)) (leaf zero))) null))) ((_ is succ) (ite ((_ is succ) (ite (is-leaf (leaf x2)) (data (leaf x2)) zero)) (pred (ite (is-leaf (leaf x2)) (data (leaf x2)) zero)) zero))) (= (ite ((_ is node) (node (cons x7 (cons (node x4) (ite (is-cons null) (cdr null) null))))) (children (node (cons x7 (cons (node x4) (ite (is-cons null) (cdr null) null))))) null) (ite (is-cons (ite (is-cons x5) (cdr x5) null)) (cdr (ite (is-cons x5) (cdr x5) null)) null))) ((_ is node) x7)) (not (= x2 zero))) (not (= x4 x6))))
(check-sat)
(exit)

