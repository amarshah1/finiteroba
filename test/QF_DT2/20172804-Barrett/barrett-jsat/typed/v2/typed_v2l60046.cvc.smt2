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

(assert (and (and (and (and (and (not (= zero (succ x2))) (not (= zero (ite ((_ is succ) x1) (pred x1) zero)))) (not (is-cons null))) (not (= (cons x5 x3) (cons (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (car (ite ((_ is node) x5) (children x5) null)) (leaf zero)) x3)))) (is-cons x3)) (not (is-cons (cons (node (cons (ite (is-cons (ite (is-cons (cons x6 (ite (is-cons (cons x5 null)) (cdr (cons x5 null)) null))) (cdr (cons x6 (ite (is-cons (cons x5 null)) (cdr (cons x5 null)) null))) null)) (car (ite (is-cons (cons x6 (ite (is-cons (cons x5 null)) (cdr (cons x5 null)) null))) (cdr (cons x6 (ite (is-cons (cons x5 null)) (cdr (cons x5 null)) null))) null)) (leaf zero)) (ite (is-cons (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (cdr (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) null))) (ite ((_ is node) (node x3)) (children (node x3)) null))))))
(check-sat)
(exit)


