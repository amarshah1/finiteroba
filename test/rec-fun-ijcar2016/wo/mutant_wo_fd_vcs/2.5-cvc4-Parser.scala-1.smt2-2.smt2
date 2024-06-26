(set-info :smt-lib-version 2.6)
(set-logic AUFBVDTLIA)
(set-info :source |
Generated by: Andrew Reynolds
Generated on: 2017-04-28
Generator: Nunchaku, Leon, CVC4, converted to v2.6 by CVC4
Application: Counterexample generation for higher-order theorem provers
Target solver: CVC4, Z3
Publications: "Model Finding for Recursive Functions in SMT" by Andrew Reynolds, Jasmin Christian Blanchette, Simon Cruanes, and Cesare Tinelli, IJCAR 2016.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)


(declare-datatypes ((TokenList!939 0)(Token!944 0)) (((Cons!940 (head!941 Token!944) (tail!942 TokenList!939)) (Nil!943))
((Div!945) (IntLit!946 (value!947 Bool)) (LParen!948) (Minus!949) (Plus!950) (RParen!951) (Times!952))
))
(declare-fun error_value!953 () (_ BitVec 32))
(declare-fun size!206 (TokenList!939) (_ BitVec 32))
(declare-fun error_value!954 () (_ BitVec 32))
(assert (forall ((l!205 TokenList!939)) (= (size!206 l!205) (ite ((_ is Nil!943) l!205) (_ bv0 32) (ite ((_ is Cons!940) l!205) (bvadd (_ bv1 32) (size!206 (tail!942 l!205))) error_value!953))) ))
(assert (not (forall ((l!205 TokenList!939)) (bvslt (ite ((_ is Nil!943) l!205) (_ bv0 32) (ite ((_ is Cons!940) l!205) (bvadd (size!206 (tail!942 l!205)) (_ bv1 32)) error_value!954)) (_ bv0 32)) )))
(check-sat)
(exit)

