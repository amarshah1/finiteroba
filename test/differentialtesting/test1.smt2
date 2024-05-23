(declare-datatypes ((Enum_A_B_C_D_E_F_G_H 0)) (((A) (B) (C) (D) (E) (F) (G))))
(declare-datatypes ((Record_left_center_right 0)) (((Record_left_center_right (left Enum_A_B_C_D_E_F_G_H) (center Enum_A_B_C_D_E_F_G_H) (right Enum_A_B_C_D_E_F_G_H)))))
(declare-datatypes ((Record_2 0)) (((Record_left_center_right2 (left2 Record_left_center_right) (center2 Record_left_center_right) (right2 Record_left_center_right)))))


(declare-const p Enum_A_B_C_D_E_F_G_H)
(declare-const r2 Record_2)
(declare-const r Record_left_center_right)



(assert (= p (center (center2 r2))))
(assert (= r (center2 r2)))
(assert (not (= p (center r))))

(check-sat)
(check-sat)