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

(assert (and (and (and (and (and (and (not (= null x2)) (not ((_ is node) (leaf x1)))) ((_ is succ) x1)) ((_ is node) (node (cons (node (ite ((_ is node) (leaf (succ (succ x1)))) (children (leaf (succ (succ x1)))) null)) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) (cdr (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) null)) (cdr (ite ((_ is cons) (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) (cdr (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) (cdr (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) null)) (cdr (ite ((_ is cons) (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) (cdr (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) null)) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (cdr (ite ((_ is cons) x2) (cdr x2) null)) null))) (cdr (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) (cdr (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) null)) (cdr (ite ((_ is cons) (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) (cdr (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) (cdr (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) null)) (cdr (ite ((_ is cons) (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) (cdr (cons x3 (cons (node (ite ((_ is node) (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (cons (node (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)) null))) null)) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (cdr (ite ((_ is cons) x2) (cdr x2) null)) null))) null))))) (not ((_ is node) (leaf (ite ((_ is succ) (ite ((_ is leaf) (leaf (ite ((_ is leaf) x3) (data x3) zero))) (data (leaf (ite ((_ is leaf) x3) (data x3) zero))) zero)) (pred (ite ((_ is leaf) (leaf (ite ((_ is leaf) x3) (data x3) zero))) (data (leaf (ite ((_ is leaf) x3) (data x3) zero))) zero)) zero))))) (not (= x3 (ite ((_ is cons) x2) (car x2) (leaf zero))))) ((_ is zero) zero)))
(check-sat)
(exit)

