;Testing that the model size gets limited
(declare-datatypes ((Enum_A_B_C_D_E_F_G_H 0)) (((A) (B) (C) (D) (E) (F) (G))))

;(declare-const e1 Enum_A_B_C_D_E_F_G_H)
(assert (forall ((e1 Enum_A_B_C_D_E_F_G_H)) (or (= e1 A) (= e1 B))))

(check-sat)
(check-sat)