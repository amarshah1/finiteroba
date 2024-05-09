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

(assert (and (and (and (and (and (not (= (ite ((_ is cons) null) (car null) (leaf zero)) (leaf (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is leaf) (node (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) null))) (data (node (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) null))) zero)) (pred (ite ((_ is leaf) (node (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) null))) (data (node (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) null))) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is leaf) (node (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) null))) (data (node (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) null))) zero)) (pred (ite ((_ is leaf) (node (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) null))) (data (node (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) (pred (succ (ite ((_ is leaf) (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) (data (leaf (ite ((_ is leaf) (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) (data (leaf (ite ((_ is succ) (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) (pred (ite ((_ is leaf) (node x2)) (data (node x2)) zero)) zero))) zero))) zero))) zero))) null))) zero)) zero)) zero)))) ((_ is null) (ite ((_ is node) x3) (children x3) null))) (not ((_ is leaf) (leaf (ite ((_ is succ) zero) (pred zero) zero))))) (not ((_ is null) (ite ((_ is cons) null) (cdr null) null)))) ((_ is zero) zero)) (not ((_ is succ) (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is node) (leaf (succ (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero)))) (children (leaf (succ (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero)))) null)) (car (ite ((_ is node) (leaf (succ (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero)))) (children (leaf (succ (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero)))) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) (leaf (succ (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero)))) (children (leaf (succ (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero)))) null)) (car (ite ((_ is node) (leaf (succ (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero)))) (children (leaf (succ (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero)))) null)) (leaf zero))) zero)))))
(check-sat)
(exit)


