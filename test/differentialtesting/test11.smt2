;Testing how we redo declare functions
(declare-datatypes ((enum 0)) (((A) (B) (C))))

(declare-const e1 enum)
(declare-const e2 enum)

(declare-fun f (enum) Bool)

(assert (is-C e1))
(assert (is-C e2))
(assert (not (= (f e1) (f e2))))

(check-sat)
(check-sat)