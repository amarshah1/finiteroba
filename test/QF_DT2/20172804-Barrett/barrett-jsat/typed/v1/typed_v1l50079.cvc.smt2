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

(assert (and (and (and (and (not (= x3 (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null))) (data (node (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null))) zero))) (children (leaf (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null))) (data (node (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null))) zero))) null)) (car (ite ((_ is node) (leaf (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null))) (data (node (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null))) zero))) (children (leaf (ite ((_ is leaf) (node (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null))) (data (node (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null))) zero))) null)) (leaf zero)))) (= (succ (ite ((_ is succ) zero) (pred zero) zero)) x1)) (= x3 (ite ((_ is cons) null) (car null) (leaf zero)))) (= (ite ((_ is cons) null) (car null) (leaf zero)) (leaf (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null)) (car (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null)) (car (ite ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons x3 (ite ((_ is cons) x2) (cdr x2) null))) null)) (leaf zero))) zero)))) ((_ is null) (cons (node (ite ((_ is node) x3) (children x3) null)) (ite ((_ is node) x3) (children x3) null)))))
(check-sat)
(exit)

