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
(declare-fun x2 () list)
(declare-fun x3 () tree)

(assert (and (and (not ((_ is succ) x1)) (= (succ zero) (succ (ite (is-leaf (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) (data (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) zero)))) (not (= (succ (succ (ite ((_ is succ) (ite (is-leaf (node (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) null)) null))) (data (node (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) null)) null))) zero)) (pred (ite (is-leaf (node (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) null)) null))) (data (node (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) (children (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (car (ite ((_ is cons) (cons x3 null)) (cdr (cons x3 null)) null)) (leaf zero))) zero))) null)) null)) null))) zero)) zero))) (ite (is-leaf (node (cons (node (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) null)) null))) (data (node (cons (node (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) null)) null))) zero)))))
(check-sat)
(exit)


