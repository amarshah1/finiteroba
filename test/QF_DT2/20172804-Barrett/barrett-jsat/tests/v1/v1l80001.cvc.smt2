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

(assert (and (and (and (and (and (and (and (= (succ (pred zero)) (data (car (children (car x2))))) (not ((_ is succ) x1))) (= (data (car (cdr (cdr x2)))) (data (car null)))) ((_ is succ) (succ (succ (data x3))))) ((_ is null) (cons (node (children (node null))) (cdr (cdr (cdr null)))))) (= x3 (leaf (pred (data (car x2)))))) ((_ is zero) x1)) (not (= (node (cdr x2)) (car (cons (car (cons (car (cdr (cdr null))) x2)) (children (leaf x1))))))))
(check-sat)
(exit)


