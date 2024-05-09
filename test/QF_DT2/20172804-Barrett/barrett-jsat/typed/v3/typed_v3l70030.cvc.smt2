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

(assert (and (and (and (and (and (and (not (= x2 x3)) (not (= (ite (is-cons (ite (is-cons (ite (is-cons (ite (is-cons x5) (cdr x5) null)) (cdr (ite (is-cons x5) (cdr x5) null)) null)) (cdr (ite (is-cons (ite (is-cons x5) (cdr x5) null)) (cdr (ite (is-cons x5) (cdr x5) null)) null)) null)) (car (ite (is-cons (ite (is-cons (ite (is-cons x5) (cdr x5) null)) (cdr (ite (is-cons x5) (cdr x5) null)) null)) (cdr (ite (is-cons (ite (is-cons x5) (cdr x5) null)) (cdr (ite (is-cons x5) (cdr x5) null)) null)) null)) (leaf zero)) x9))) (not (= x3 (succ (succ (ite (is-leaf (ite (is-cons (cons x8 (ite (is-cons x6) (cdr x6) null))) (car (cons x8 (ite (is-cons x6) (cdr x6) null))) (leaf zero))) (data (ite (is-cons (cons x8 (ite (is-cons x6) (cdr x6) null))) (car (cons x8 (ite (is-cons x6) (cdr x6) null))) (leaf zero))) zero)))))) (= x6 (cons x8 x6))) (not (= (leaf (succ x3)) (ite (is-cons (ite ((_ is node) x7) (children x7) null)) (car (ite ((_ is node) x7) (children x7) null)) (leaf zero))))) (not ((_ is node) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero))))) (is-cons null)))
(check-sat)
(exit)


