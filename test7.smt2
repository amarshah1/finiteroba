;Testing that the model size gets limited
(declare-datatypes ((Enum_A_B_C_D_E_F_G_H 0)) (((A) (B) (C) (D) (E) (F) (G))))

(declare-const e1 Enum_A_B_C_D_E_F_G_H)
(assert (= e1 A))
(assert (= e1 B))

(check-sat)