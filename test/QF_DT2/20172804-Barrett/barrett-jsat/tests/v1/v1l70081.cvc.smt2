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

(assert (and (and (and (and (and (and (not (= (pred x1) (pred zero))) (= (node (cons (car (children (car (cdr (children (node (cdr x2))))))) (cdr (children (leaf (pred zero)))))) (leaf (succ (pred zero))))) (not ((_ is succ) (pred (pred zero))))) ((_ is cons) (cons (car null) x2))) (not (= zero x1))) (not ((_ is cons) (cdr (cons (car (cons (leaf (data (leaf zero))) (children (car x2)))) (children (leaf zero))))))) ((_ is succ) (succ (succ (succ zero))))))
(check-sat)
(exit)


