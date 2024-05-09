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

(assert (and (and (and (and (and (= (ite ((_ is cons) null) (cdr null) null) (cons x3 (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) null))) ((_ is cons) null)) ((_ is node) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) null)) null))) null)) (car (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) null)) null))) null)) (leaf zero)))) (not ((_ is zero) (ite ((_ is succ) x1) (pred x1) zero)))) (not (= (node x2) (node x2)))) (not ((_ is cons) x2))))
(check-sat)
(exit)


