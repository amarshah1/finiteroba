

(define-fun x () (_ BitVec 6) #b101011)
(define-fun y () (_ BitVec 6) #b000010)

(assert (= (bvlshr x y) #b001010))
(assert (= (bvmul y y) #b00100))
(check-sat)
