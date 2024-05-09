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

(assert (and (and (and (and (and (and (and (and (not (= (cons (leaf zero) (cons (ite (is-cons x3) (car x3) (leaf zero)) (ite (is-cons (cons x5 x3)) (cdr (cons x5 x3)) null))) (cons (leaf (ite (is-leaf (leaf (ite ((_ is succ) (succ (ite (is-leaf x5) (data x5) zero))) (pred (succ (ite (is-leaf x5) (data x5) zero))) zero))) (data (leaf (ite ((_ is succ) (succ (ite (is-leaf x5) (data x5) zero))) (pred (succ (ite (is-leaf x5) (data x5) zero))) zero))) zero)) (cons (node (cons x5 x4)) (cons (leaf x2) (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (cdr (ite (is-cons x4) (cdr x4) null)) null)))))) (not (is-cons x4))) (not ((_ is zero) x1))) (not (is-cons null))) (not ((_ is zero) x1))) (not ((_ is zero) zero))) (not (= (succ (ite (is-leaf (leaf x1)) (data (leaf x1)) zero)) (ite (is-leaf x6) (data x6) zero)))) (not ((_ is null) x4))) (is-leaf (ite (is-cons (ite ((_ is node) (leaf (ite ((_ is succ) x2) (pred x2) zero))) (children (leaf (ite ((_ is succ) x2) (pred x2) zero))) null)) (car (ite ((_ is node) (leaf (ite ((_ is succ) x2) (pred x2) zero))) (children (leaf (ite ((_ is succ) x2) (pred x2) zero))) null)) (leaf zero)))))
(check-sat)
(exit)


