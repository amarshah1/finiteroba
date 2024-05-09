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

(assert (and (and (and (and (and (and (and (and (not (= (car (children x3)) (leaf (succ zero)))) (not ((_ is null) (cdr (cdr x2))))) (not ((_ is zero) (data (node (cons x3 (children (node (children (node (cdr (cdr (children (car (cdr (cdr (cons x3 (children (car (cdr null)))))))))))))))))))) ((_ is cons) null)) (not ((_ is zero) (succ zero)))) (not (= x2 (cons (car null) null)))) ((_ is succ) x1)) (= (succ (data (leaf zero))) (data (node null)))) (= null x2)))
(check-sat)
(exit)


