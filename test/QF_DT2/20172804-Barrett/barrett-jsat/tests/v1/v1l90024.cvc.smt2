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

(assert (and (and (and (and (and (and (and (and (= (succ (pred x1)) (pred (succ (data (car (cdr (cdr (cdr x2)))))))) (not (is-leaf (car (cons x3 (cdr (cons x3 (cons (leaf x1) null)))))))) (is-leaf (node (cdr (cdr (children (car (children x3)))))))) (= (car (children (leaf (pred (succ (data (node (cons (leaf zero) (cons (leaf (pred x1)) x2))))))))) (car x2))) (= (pred (pred x1)) zero)) (not (= null x2))) (not (= zero (data (node null))))) (not ((_ is succ) (pred (pred (pred (data (node (children (leaf (pred (pred (data (node null)))))))))))))) ((_ is node) x3)))
(check-sat)
(exit)


