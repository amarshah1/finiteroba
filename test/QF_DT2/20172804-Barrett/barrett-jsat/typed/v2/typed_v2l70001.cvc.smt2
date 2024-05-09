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

(assert (and (and (and (and (and (and (not (is-leaf (ite (is-cons null) (car null) (leaf zero)))) (not (= (cons x5 null) x3))) (not ((_ is zero) (ite (is-leaf (ite (is-cons (ite (is-cons (ite ((_ is node) (node x3)) (children (node x3)) null)) (cdr (ite ((_ is node) (node x3)) (children (node x3)) null)) null)) (car (ite (is-cons (ite ((_ is node) (node x3)) (children (node x3)) null)) (cdr (ite ((_ is node) (node x3)) (children (node x3)) null)) null)) (leaf zero))) (data (ite (is-cons (ite (is-cons (ite ((_ is node) (node x3)) (children (node x3)) null)) (cdr (ite ((_ is node) (node x3)) (children (node x3)) null)) null)) (car (ite (is-cons (ite ((_ is node) (node x3)) (children (node x3)) null)) (cdr (ite ((_ is node) (node x3)) (children (node x3)) null)) null)) (leaf zero))) zero)))) (not (= (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x5) (data x5) zero)) (pred (ite (is-leaf x5) (data x5) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x5) (data x5) zero)) (pred (ite (is-leaf x5) (data x5) zero)) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x5) (data x5) zero)) (pred (ite (is-leaf x5) (data x5) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x5) (data x5) zero)) (pred (ite (is-leaf x5) (data x5) zero)) zero)) zero)) zero) (ite ((_ is succ) x1) (pred x1) zero)))) (= x1 (ite ((_ is succ) x2) (pred x2) zero))) ((_ is node) (leaf x2))) (not (= x3 (cons x5 (ite (is-cons x4) (cdr x4) null))))))
(check-sat)
(exit)

