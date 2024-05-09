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

(assert (and (and (and (and ((_ is cons) x2) (not ((_ is cons) x2))) (not ((_ is node) (leaf (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) (data (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) zero)) (pred (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) (data (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) (data (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) zero)) (pred (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) (data (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) zero)) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) (data (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) zero)) (pred (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) (data (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) (data (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) zero)) (pred (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) (data (node (ite ((_ is cons) (cons x3 x2)) (cdr (cons x3 x2)) null))) zero)) zero)) zero)) zero))))) (not ((_ is node) (node (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is cons) (cons x3 (cons (node (cons (node (cons x3 (cons (leaf (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) zero)) (ite ((_ is node) (node (ite ((_ is node) (node x2)) (children (node x2)) null))) (children (node (ite ((_ is node) (node x2)) (children (node x2)) null))) null)))) x2)) (ite ((_ is node) x3) (children x3) null)))) (cdr (cons x3 (cons (node (cons (node (cons x3 (cons (leaf (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) zero)) (ite ((_ is node) (node (ite ((_ is node) (node x2)) (children (node x2)) null))) (children (node (ite ((_ is node) (node x2)) (children (node x2)) null))) null)))) x2)) (ite ((_ is node) x3) (children x3) null)))) null)) (car (ite ((_ is cons) (cons x3 (cons (node (cons (node (cons x3 (cons (leaf (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) zero)) (ite ((_ is node) (node (ite ((_ is node) (node x2)) (children (node x2)) null))) (children (node (ite ((_ is node) (node x2)) (children (node x2)) null))) null)))) x2)) (ite ((_ is node) x3) (children x3) null)))) (cdr (cons x3 (cons (node (cons (node (cons x3 (cons (leaf (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) zero)) (ite ((_ is node) (node (ite ((_ is node) (node x2)) (children (node x2)) null))) (children (node (ite ((_ is node) (node x2)) (children (node x2)) null))) null)))) x2)) (ite ((_ is node) x3) (children x3) null)))) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (car (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (leaf zero)) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null)))) (cdr (cons (ite ((_ is cons) (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (car (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (leaf zero)) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null)))) null)) (cdr (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (car (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (leaf zero)) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null)))) (cdr (cons (ite ((_ is cons) (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (car (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (leaf zero)) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null)))) null)) null))) (car (cons (ite ((_ is cons) (ite ((_ is cons) (cons x3 (cons (node (cons (node (cons x3 (cons (leaf (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) zero)) (ite ((_ is node) (node (ite ((_ is node) (node x2)) (children (node x2)) null))) (children (node (ite ((_ is node) (node x2)) (children (node x2)) null))) null)))) x2)) (ite ((_ is node) x3) (children x3) null)))) (cdr (cons x3 (cons (node (cons (node (cons x3 (cons (leaf (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) zero)) (ite ((_ is node) (node (ite ((_ is node) (node x2)) (children (node x2)) null))) (children (node (ite ((_ is node) (node x2)) (children (node x2)) null))) null)))) x2)) (ite ((_ is node) x3) (children x3) null)))) null)) (car (ite ((_ is cons) (cons x3 (cons (node (cons (node (cons x3 (cons (leaf (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) zero)) (ite ((_ is node) (node (ite ((_ is node) (node x2)) (children (node x2)) null))) (children (node (ite ((_ is node) (node x2)) (children (node x2)) null))) null)))) x2)) (ite ((_ is node) x3) (children x3) null)))) (cdr (cons x3 (cons (node (cons (node (cons x3 (cons (leaf (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) zero)) (ite ((_ is node) (node (ite ((_ is node) (node x2)) (children (node x2)) null))) (children (node (ite ((_ is node) (node x2)) (children (node x2)) null))) null)))) x2)) (ite ((_ is node) x3) (children x3) null)))) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (car (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (leaf zero)) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null)))) (cdr (cons (ite ((_ is cons) (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (car (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (leaf zero)) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null)))) null)) (cdr (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (car (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (leaf zero)) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null)))) (cdr (cons (ite ((_ is cons) (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (car (ite ((_ is cons) (cons (leaf zero) null)) (cdr (cons (leaf zero) null)) null)) (leaf zero)) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null)))) null)) null))) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (cdr (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (cdr (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (cdr (ite ((_ is cons) x2) (cdr x2) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (cdr (ite ((_ is cons) x2) (cdr x2) null)) null)) (leaf zero))) null)))))) (= x3 (node x2))))
(check-sat)
(exit)


