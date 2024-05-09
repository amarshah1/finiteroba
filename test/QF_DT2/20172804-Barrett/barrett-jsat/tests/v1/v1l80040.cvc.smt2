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

(assert (and (and (and (and (and (and (and ((_ is cons) (cons (leaf (data (node x2))) (children (car (cdr (cdr (cons x3 (children (car (children (node (children (car (cdr (cons (car (cons (leaf (succ (data (node null)))) (children x3))) (cons (leaf (succ x1)) (cons (node (children (node (cons (node x2) null)))) (children x3)))))))))))))))))) (= (cons (leaf (succ (pred (pred (pred (pred (pred (succ (pred (succ zero)))))))))) x2) null)) (not (is-leaf x3))) (not (= (cons (car (cons x3 x2)) null) null))) (not ((_ is succ) (data x3)))) (not (is-leaf x3))) (= (children (car null)) (children (node (cdr x2))))) (= (children (leaf zero)) (children (leaf zero)))))
(check-sat)
(exit)

