;Testing individual testers for functions with one datatype to see that they default to true
(declare-datatypes ((Enum_A_B_C_D_E_F_G_H 0)) (((A) (B))))
(declare-datatypes ((Record_left_center_right 0)) (((I) (J)  (Record_left_center_right (left Enum_A_B_C_D_E_F_G_H) (center Enum_A_B_C_D_E_F_G_H) (right Enum_A_B_C_D_E_F_G_H)))))

(declare-const r Record_left_center_right)
(assert (is-Record_left_center_right r))
(assert (= r I))

(check-sat)