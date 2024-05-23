(declare-datatypes ((Enum_A_B_C_D_E_F_G_H 0)) (((A) (B) (C) (D) (E) (F) (G) (H))))
(declare-datatypes ((Record_left_center_right 0)) (((I) (J) (Record_left_center_right (left Enum_A_B_C_D_E_F_G_H) (center Enum_A_B_C_D_E_F_G_H) (right Enum_A_B_C_D_E_F_G_H)))))
(declare-datatypes ((Record_2 0)) (((Record_left_center_right2 (left2 Record_left_center_right) (center2 Record_left_center_right) (right2 Record_left_center_right)))))


(declare-const e1 Enum_A_B_C_D_E_F_G_H)
(declare-const e2 Enum_A_B_C_D_E_F_G_H)
(declare-const e3 Enum_A_B_C_D_E_F_G_H)


(declare-const r1 Record_left_center_right)
(assert (= r1 (Record_left_center_right e1 e2 e3)))
(assert (= e2 (left r1)))
(assert (not (= e1 e2)))

;(assert (= (+ 5 7) 9))

(check-sat)
(check-sat)