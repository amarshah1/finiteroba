;Testing that the model size gets limited
(declare-datatypes ((Enum_A_B_C_D_E_F_G_H 0)) (((A) (B) (C) (D) (E) (F) (G))))

(declare-const e1 Enum_A_B_C_D_E_F_G_H)
(declare-const e2 Enum_A_B_C_D_E_F_G_H)
(declare-const e3 Enum_A_B_C_D_E_F_G_H)
(declare-const e4 Enum_A_B_C_D_E_F_G_H)
(declare-const e5 Enum_A_B_C_D_E_F_G_H)
(declare-const e6 Enum_A_B_C_D_E_F_G_H)
(declare-const e7 Enum_A_B_C_D_E_F_G_H)
(declare-const e8 Enum_A_B_C_D_E_F_G_H)


(assert (distinct e1 e2 e3 e4 e5 e6 e7 e8))

(check-sat)