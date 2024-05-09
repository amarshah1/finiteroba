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
(declare-fun x4 () list)
(declare-fun x5 () list)
(declare-fun x6 () list)
(declare-fun x7 () tree)
(declare-fun x8 () tree)
(declare-fun x9 () tree)

(assert (and (and (and (and (and (and (and (and (= (node x4) x7) (is-cons (ite ((_ is node) x8) (children x8) null))) (not (= (ite (is-cons (ite (is-cons x6) (cdr x6) null)) (car (ite (is-cons x6) (cdr x6) null)) (leaf zero)) x8))) (= (ite ((_ is succ) x2) (pred x2) zero) (ite (is-leaf x8) (data x8) zero))) (= x8 x8)) (not (= zero (ite (is-leaf (ite (is-cons null) (car null) (leaf zero))) (data (ite (is-cons null) (car null) (leaf zero))) zero)))) (= (leaf x1) (node (cons x8 (cons x8 (ite (is-cons (ite (is-cons (cons x7 (ite ((_ is node) (node (ite (is-cons x4) (cdr x4) null))) (children (node (ite (is-cons x4) (cdr x4) null))) null))) (cdr (cons x7 (ite ((_ is node) (node (ite (is-cons x4) (cdr x4) null))) (children (node (ite (is-cons x4) (cdr x4) null))) null))) null)) (cdr (ite (is-cons (cons x7 (ite ((_ is node) (node (ite (is-cons x4) (cdr x4) null))) (children (node (ite (is-cons x4) (cdr x4) null))) null))) (cdr (cons x7 (ite ((_ is node) (node (ite (is-cons x4) (cdr x4) null))) (children (node (ite (is-cons x4) (cdr x4) null))) null))) null)) null)))))) (= (succ x1) (succ x1))) (not ((_ is succ) x3))))
(check-sat)
(exit)

