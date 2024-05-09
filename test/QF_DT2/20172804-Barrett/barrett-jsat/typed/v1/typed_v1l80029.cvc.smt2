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

(assert (and (and (and (and (and (and (and (not (= (ite ((_ is succ) (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) (cdr (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) null)) (car (ite ((_ is cons) (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) (cdr (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) (cdr (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) null)) (car (ite ((_ is cons) (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) (cdr (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) null)) (leaf zero))) zero)) (pred (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) (cdr (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) null)) (car (ite ((_ is cons) (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) (cdr (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) (cdr (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) null)) (car (ite ((_ is cons) (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) (cdr (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null))) null))) (leaf zero)) x2)) null)) (leaf zero))) zero)) zero) (ite (is-leaf (node (cons x3 null))) (data (node (cons x3 null))) zero))) (not (= (cons x3 (cons x3 (cons (leaf x1) (cons (node null) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))))) null))) (not ((_ is node) (node x2)))) (not ((_ is zero) (ite (is-leaf x3) (data x3) zero)))) (not (is-leaf x3))) ((_ is null) (cons (ite ((_ is cons) (ite ((_ is node) (leaf (succ (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero)))) (children (leaf (succ (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero)))) null)) (car (ite ((_ is node) (leaf (succ (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero)))) (children (leaf (succ (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero)))) null)) (leaf zero)) null))) ((_ is null) (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (cdr (ite ((_ is cons) x2) (cdr x2) null)) null))) (not (= (cons (node null) x2) (ite ((_ is node) (ite ((_ is cons) (cons (node x2) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (node x2) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) (children (ite ((_ is cons) (cons (node x2) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (node x2) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) null)))))
(check-sat)
(exit)

