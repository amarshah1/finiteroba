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

(assert (and (and (and (and (and (not ((_ is zero) (ite ((_ is leaf) (node (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) null)) null)) null))) (data (node (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) zero) (pred zero) zero))) (pred (succ (ite ((_ is succ) zero) (pred zero) zero))) zero))) null)) null)) null))) zero))) (= (node x2) (ite ((_ is cons) (cons (node x2) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) (cdr (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) (cdr (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) (cdr (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) (cdr (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) null)) null)) null))) (car (cons (node x2) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) (cdr (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) (cdr (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) (cdr (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) (cdr (ite ((_ is cons) (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) (cdr (cons (node (cons (ite ((_ is cons) (cons (node null) (ite ((_ is node) x3) (children x3) null))) (car (cons (node null) (ite ((_ is node) x3) (children x3) null))) (leaf zero)) x2)) null)) null)) null)) null)) null))) (leaf zero)))) (= (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) null)) (leaf zero))) zero) (succ zero))) (= x2 (cons (node x2) (ite ((_ is cons) (cons x3 (ite ((_ is node) x3) (children x3) null))) (cdr (cons x3 (ite ((_ is node) x3) (children x3) null))) null)))) (not (= x1 (ite ((_ is succ) (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (car (ite ((_ is cons) x2) (cdr x2) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (car (ite ((_ is cons) x2) (cdr x2) null)) (leaf zero))) zero)) (pred (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (car (ite ((_ is cons) x2) (cdr x2) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (car (ite ((_ is cons) x2) (cdr x2) null)) (leaf zero))) zero)) zero)))) (not (= null (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)))))
(check-sat)
(exit)

