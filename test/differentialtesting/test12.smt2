;Testing how we redo declare functions with two types
(declare-datatypes ((enum1 0)) (((A) (B) (C))))
(declare-datatypes ((enum2 0)) (((A1) (B1) (C1))))

(declare-const e1 enum1)
(declare-const e2 enum1)


(declare-const e3 enum2)
(declare-const e4 enum2)

(declare-fun f (enum1 enum2) Bool)

(assert (is-C e1))
(assert (is-C e2))
(assert (is-C1 e3))
(assert (is-C1 e4))
(assert (not (= (f e1 e3) (f e2 e4))))

(check-sat)
(check-sat)