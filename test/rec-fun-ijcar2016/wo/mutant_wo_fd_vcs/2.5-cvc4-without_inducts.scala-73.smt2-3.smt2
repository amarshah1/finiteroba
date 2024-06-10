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


(declare-datatypes ((Nat!2151 0)) (((succ!2152 (pred!2153 Nat!2151)) (zero!2154))
))
(declare-datatypes ((Lst!2155 0)) (((cons!2156 (head!2157 Nat!2151) (tail!2158 Lst!2155)) (nil!2159))
))
(declare-datatypes ((ZLst!2160 0)(Pair!2165 0)) (((zcons!2161 (zhead!2162 Pair!2165) (ztail!2163 ZLst!2160)) (znil!2164))
((mkpair!2166 (first!2167 Nat!2151) (second!2168 Nat!2151)))
))
(declare-fun error_value!2169 () ZLst!2160)
(declare-fun zip!288 (Lst!2155 Lst!2155) ZLst!2160)
(declare-fun error_value!2170 () Nat!2151)
(declare-fun head!209 (Lst!2155) Nat!2151)
(declare-fun error_value!2171 () Lst!2155)
(declare-fun tail!211 (Lst!2155) Lst!2155)
(assert (forall ((l1!286 Lst!2155) (l2!287 Lst!2155)) (= (zip!288 l1!286 l2!287) (ite ((_ is nil!2159) l1!286) znil!2164 (ite ((_ is nil!2159) l2!287) znil!2164 (ite (and (and ((_ is cons!2156) l1!286) ((_ is cons!2156) l1!286)) ((_ is cons!2156) l2!287)) (zcons!2161 (mkpair!2166 (head!2157 l1!286) (head!2157 l2!287)) (zip!288 (tail!2158 l1!286) (tail!2158 l2!287))) error_value!2169)))) ))
(assert (forall ((l!208 Lst!2155)) (= (head!209 l!208) (ite ((_ is cons!2156) l!208) (head!2157 l!208) error_value!2170)) ))
(assert (forall ((l!210 Lst!2155)) (= (tail!211 l!210) (ite ((_ is cons!2156) l!210) (tail!2158 l!210) error_value!2171)) ))
(assert (not (forall ((x!422 Nat!2151) (xs!423 Lst!2155) (ys!424 Lst!2155)) (= (zip!288 (cons!2156 x!422 xs!423) ys!424) (ite (= ys!424 nil!2159) znil!2164 (zcons!2161 (mkpair!2166 (head!209 ys!424) x!422) (zip!288 xs!423 (tail!211 ys!424))))) )))
(check-sat)
(exit)

