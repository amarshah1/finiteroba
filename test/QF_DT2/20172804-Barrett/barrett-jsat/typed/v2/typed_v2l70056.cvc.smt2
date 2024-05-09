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

(assert (and (and (and (and (and (and ((_ is null) x4) (= (node (cons (node (cons (leaf (ite ((_ is succ) zero) (pred zero) zero)) (cons (ite (is-cons (cons (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero)) x4)) (car (cons (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero)) x4)) (leaf zero)) (cons x5 (ite (is-cons null) (cdr null) null))))) x3)) (node x3))) (= (ite (is-cons x4) (car x4) (leaf zero)) (node null))) (not (is-leaf x5))) (is-cons null)) (= (ite ((_ is node) (node x3)) (children (node x3)) null) (cons (node (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) x3))) ((_ is null) null)))
(check-sat)
(exit)


