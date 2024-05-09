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

(assert (and (and (and (and (and (and (not (is-leaf (node (ite ((_ is node) (ite ((_ is cons) (cons x3 (ite ((_ is cons) (cons x3 (ite ((_ is node) x3) (children x3) null))) (cdr (cons x3 (ite ((_ is node) x3) (children x3) null))) null))) (car (cons x3 (ite ((_ is cons) (cons x3 (ite ((_ is node) x3) (children x3) null))) (cdr (cons x3 (ite ((_ is node) x3) (children x3) null))) null))) (leaf zero))) (children (ite ((_ is cons) (cons x3 (ite ((_ is cons) (cons x3 (ite ((_ is node) x3) (children x3) null))) (cdr (cons x3 (ite ((_ is node) x3) (children x3) null))) null))) (car (cons x3 (ite ((_ is cons) (cons x3 (ite ((_ is node) x3) (children x3) null))) (cdr (cons x3 (ite ((_ is node) x3) (children x3) null))) null))) (leaf zero))) null)))) (not ((_ is null) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)))) (not (= x3 (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))))) (= (succ x1) (ite (is-leaf (node (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) null)) (leaf zero)) null))) (data (node (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) null)) (leaf zero)) null))) zero))) (not (= x1 (ite (is-leaf (leaf (ite (is-leaf (ite ((_ is cons) null) (car null) (leaf zero))) (data (ite ((_ is cons) null) (car null) (leaf zero))) zero))) (data (leaf (ite (is-leaf (ite ((_ is cons) null) (car null) (leaf zero))) (data (ite ((_ is cons) null) (car null) (leaf zero))) zero))) zero)))) (not (= x3 (node (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null))))) (not (= (node (ite ((_ is node) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null)) (cdr (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null)) (cdr (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null)) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null)) (cdr (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null)) (cdr (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null)) null)) (leaf zero))) null)) (leaf (ite ((_ is succ) (ite ((_ is succ) (succ (ite (is-leaf x3) (data x3) zero))) (pred (succ (ite (is-leaf x3) (data x3) zero))) zero)) (pred (ite ((_ is succ) (succ (ite (is-leaf x3) (data x3) zero))) (pred (succ (ite (is-leaf x3) (data x3) zero))) zero)) zero))))))
(check-sat)
(exit)

