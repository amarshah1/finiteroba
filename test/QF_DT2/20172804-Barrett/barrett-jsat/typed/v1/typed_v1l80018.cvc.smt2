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

(assert (and (and (and (and (and (and (and (is-leaf x3) (not (= (leaf zero) x3))) (not (= zero x1))) (= x2 null)) (= zero x1)) ((_ is null) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null))) (not ((_ is zero) (succ (succ (succ (succ zero))))))) (not (= null (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) null) (cdr null) null))) (children (node (ite ((_ is cons) null) (cdr null) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) null) (cdr null) null))) (children (node (ite ((_ is cons) null) (cdr null) null))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) null) (cdr null) null))) (children (node (ite ((_ is cons) null) (cdr null) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) null) (cdr null) null))) (children (node (ite ((_ is cons) null) (cdr null) null))) null)) null)) null)))))
(check-sat)
(exit)


