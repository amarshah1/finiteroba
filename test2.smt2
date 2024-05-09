(declare-datatypes ((Enum_A_B_C_D_E_F_G_H 0)) (((A) (B) (C) (D) (E) (F) (G) (H))))
(declare-datatypes ((Record_left_center_right 0)) (((I) (J) (K) (Record_left_center_right (left Enum_A_B_C_D_E_F_G_H) (center Enum_A_B_C_D_E_F_G_H) (right Enum_A_B_C_D_E_F_G_H)))))
(declare-datatypes ((Record_2 0)) (((Record_left_center_right2 (left2 Record_left_center_right) (center2 Record_left_center_right) (right2 Record_left_center_right)))))


(declare-const e Enum_A_B_C_D_E_F_G_H)
;(declare-const p Enum_A_B_C_D_E_F_G_H_2)
(declare-const c Record_left_center_right)
(declare-const r Record_left_center_right)

(assert (is-Record_left_center_right r))
(assert (is-Record_left_center_right c))


(assert (= e (left c)))
(assert (= e (center c)))
(assert (= e (right c)))
(assert (= e (left r)))
(assert (= e (center r)))
(assert (= e (right r)))

(assert (not (= c r)))

;(assert (not (<= (+ (- (x (center c)) 3)^2 (- (y (center c)) 3)) (^ (radius c) 2))))
(check-sat)