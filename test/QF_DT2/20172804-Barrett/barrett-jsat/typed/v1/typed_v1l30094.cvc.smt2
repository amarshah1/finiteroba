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

(assert (and (and (not (= (succ (succ (succ (ite ((_ is succ) x1) (pred x1) zero)))) (succ (succ (succ (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)))))) (= (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) null)) (leaf zero)) (cons x3 (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (cdr (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) null))) (cons (node x2) (cons (leaf x1) null)))) (not (= (cons (node (ite ((_ is node) (ite ((_ is cons) (cons x3 null)) (car (cons x3 null)) (leaf zero))) (children (ite ((_ is cons) (cons x3 null)) (car (cons x3 null)) (leaf zero))) null)) (cons (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (car (ite ((_ is cons) null) (cdr null) null)) (leaf zero)) null)) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)))))
(check-sat)
(exit)


