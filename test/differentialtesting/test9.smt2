;Testing that the model size gets limited
(declare-datatypes ((Enum_A_B_C_D_E_F_G_H 0)) (((A) (B) (C))))

(declare-const e1 Enum_A_B_C_D_E_F_G_H)
(assert (not (is-A A)))
(assert (not (is-B B)))
(assert (not (is-C C)))

(check-sat)
(check-sat)