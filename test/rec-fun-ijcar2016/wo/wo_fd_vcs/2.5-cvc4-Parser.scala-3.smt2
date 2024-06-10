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


(declare-datatypes ((TokenList!969 0)(Token!974 0)) (((Cons!970 (head!971 Token!974) (tail!972 TokenList!969)) (Nil!973))
((Div!975) (IntLit!976 (value!977 Bool)) (LParen!978) (Minus!979) (Plus!980) (RParen!981) (Times!982))
))
(declare-fun error_value!983 () (_ BitVec 32))
(declare-fun size!206 (TokenList!969) (_ BitVec 32))
(declare-fun error_value!984 () TokenList!969)
(declare-fun append!209 (TokenList!969 TokenList!969) TokenList!969)
(declare-fun error_value!985 () TokenList!969)
(assert (forall ((l!205 TokenList!969)) (= (size!206 l!205) (ite ((_ is Nil!973) l!205) (_ bv0 32) (ite ((_ is Cons!970) l!205) (bvadd (_ bv1 32) (size!206 (tail!972 l!205))) error_value!983))) ))
(assert (forall ((l1!207 TokenList!969) (l2!208 TokenList!969)) (= (append!209 l1!207 l2!208) (ite ((_ is Nil!973) l1!207) l2!208 (ite ((_ is Cons!970) l1!207) (Cons!970 (head!971 l1!207) (append!209 (tail!972 l1!207) l2!208)) error_value!984))) ))
(assert (exists ((l1!207 TokenList!969) (l2!208 TokenList!969)) (not (= (size!206 (ite ((_ is Nil!973) l1!207) l2!208 (ite ((_ is Cons!970) l1!207) (Cons!970 (head!971 l1!207) (append!209 (tail!972 l1!207) l2!208)) error_value!985))) (bvadd (size!206 l1!207) (size!206 l2!208)))) ))
(check-sat)
(exit)

