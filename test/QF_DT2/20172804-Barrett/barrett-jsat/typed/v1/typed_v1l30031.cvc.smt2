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

(assert (and (and (not ((_ is null) (cons (leaf (ite ((_ is succ) (succ (succ (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero)))) (pred (succ (succ (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero)))) zero)) (cons (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (car (ite ((_ is node) (node null)) (children (node null)) null)) (leaf zero)) (ite ((_ is cons) null) (cdr null) null))))) (= (node null) x3)) ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) (ite ((_ is leaf) (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) (data (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) zero)) (pred (ite ((_ is leaf) (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) (data (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) zero)) zero))) (children (leaf (ite ((_ is succ) (ite ((_ is leaf) (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) (data (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) zero)) (pred (ite ((_ is leaf) (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) (data (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) zero)) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) (ite ((_ is leaf) (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) (data (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) zero)) (pred (ite ((_ is leaf) (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) (data (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) zero)) zero))) (children (leaf (ite ((_ is succ) (ite ((_ is leaf) (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) (data (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) zero)) (pred (ite ((_ is leaf) (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) (data (leaf (ite ((_ is leaf) (node x2)) (data (node x2)) zero))) zero)) zero))) null)) null))))
(check-sat)
(exit)


