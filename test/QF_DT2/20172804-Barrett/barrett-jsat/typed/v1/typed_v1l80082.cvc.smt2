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

(assert (and (and (and (and (and (and (and (= (ite ((_ is succ) (ite (is-leaf (node x2)) (data (node x2)) zero)) (pred (ite (is-leaf (node x2)) (data (node x2)) zero)) zero) (succ (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero)) zero))) ((_ is null) null)) (not (= null null))) (not (= x3 (ite (is-cons (ite (is-cons null) (cdr null) null)) (car (ite (is-cons null) (cdr null) null)) (leaf zero))))) (= (leaf (ite (is-leaf x3) (data x3) zero)) x3)) (not (is-cons (cons (leaf (ite ((_ is succ) (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero)) (pred (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero)) zero)) (ite (is-cons (ite (is-cons null) (cdr null) null)) (cdr (ite (is-cons null) (cdr null) null)) null))))) (not ((_ is null) null))) (not ((_ is zero) (ite ((_ is succ) (ite (is-leaf (ite (is-cons null) (car null) (leaf zero))) (data (ite (is-cons null) (car null) (leaf zero))) zero)) (pred (ite (is-leaf (ite (is-cons null) (car null) (leaf zero))) (data (ite (is-cons null) (car null) (leaf zero))) zero)) zero)))))
(check-sat)
(exit)


