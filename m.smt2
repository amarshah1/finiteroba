(set-logic ALL)
(define-fun
   _make__type_record_1_
     ((_field__rec_alloc_var (_ BitVec 1))
      (_field__rec_lowend_var (_ BitVec 2))
      (_field__rec_highend_var (_ BitVec 2))
      (_field__rec_Boolrue_var (_ BitVec 1)))
     (_ BitVec 7)
     (concat
      (concat
       (concat (concat #b0 _field__rec_Boolrue_var) _field__rec_highend_var)
       _field__rec_lowend_var)
      _field__rec_alloc_var))
(declare-fun _field__rec_alloc_non_bv ((_ BitVec 7)) (_ BitVec 1))
(declare-fun _field__rec_lowend_non_bv ((_ BitVec 7)) (_ BitVec 2))
(declare-fun _field__rec_highend_non_bv ((_ BitVec 7)) (_ BitVec 2))
(declare-fun _field__rec_Boolrue_non_bv ((_ BitVec 7)) (_ BitVec 1))
(define-fun
   _field__rec_alloc ((_type_record_1__var (_ BitVec 7))) (_ BitVec 1)
     (ite (= ((_ extract 6 6) _type_record_1__var) #b0)
      ((_ extract 0 0) _type_record_1__var) (_field__rec_alloc_non_bv
      _type_record_1__var)))
(define-fun
   _field__rec_lowend ((_type_record_1__var (_ BitVec 7))) (_ BitVec 2)
     (ite (= ((_ extract 6 6) _type_record_1__var) #b0)
      ((_ extract 2 1) _type_record_1__var) (_field__rec_lowend_non_bv
      _type_record_1__var)))
(define-fun
   _field__rec_highend ((_type_record_1__var (_ BitVec 7))) (_ BitVec 2)
     (ite (= ((_ extract 6 6) _type_record_1__var) #b0)
      ((_ extract 4 3) _type_record_1__var) (_field__rec_highend_non_bv
      _type_record_1__var)))
(define-fun
   _field__rec_Boolrue ((_type_record_1__var (_ BitVec 7))) (_ BitVec 1)
     (ite (= ((_ extract 6 6) _type_record_1__var) #b0)
      ((_ extract 5 5) _type_record_1__var) (_field__rec_Boolrue_non_bv
      _type_record_1__var)))
(define-fun
   is-_make__type_record_1_ ((_type_record_1__var (_ BitVec 7))) Bool
     (= ((_ extract 6 6) _type_record_1__var) #b0))
(define-fun RAW () (_ BitVec 1) #b0)
(define-fun
   is-RAW ((_type_enum_5__var (_ BitVec 1))) Bool
     (= ((_ extract 0 0) _type_enum_5__var) #b0))
(assert (is-RAW RAW))
(define-fun HAN () (_ BitVec 1) #b1)
(define-fun
   is-HAN ((_type_enum_5__var (_ BitVec 1))) Bool
     (= ((_ extract 0 0) _type_enum_5__var) #b1))
(assert (is-HAN HAN))
(define-fun PLN () (_ BitVec 2) #b00)
(define-fun
   is-PLN ((_type_enum_4__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_4__var) #b00))
(assert (is-PLN PLN))
(define-fun GAR () (_ BitVec 2) #b01)
(define-fun
   is-GAR ((_type_enum_4__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_4__var) #b01))
(assert (is-GAR GAR))
(define-fun ENC () (_ BitVec 2) #b10)
(define-fun
   is-ENC ((_type_enum_4__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_4__var) #b10))
(assert (is-ENC ENC))
(define-fun NoKey () (_ BitVec 2) #b00)
(define-fun
   is-NoKey ((_type_enum_3__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_3__var) #b00))
(assert (is-NoKey NoKey))
(define-fun AtKey () (_ BitVec 2) #b01)
(define-fun
   is-AtKey ((_type_enum_3__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_3__var) #b01))
(assert (is-AtKey AtKey))
(define-fun ViKey () (_ BitVec 2) #b10)
(define-fun
   is-ViKey ((_type_enum_3__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_3__var) #b10))
(assert (is-ViKey ViKey))
(define-fun
   _make__type_record_2_
     ((_field__rec_value_var (_ BitVec 2))
      (_field__rec_vtype_var (_ BitVec 1))
      (_field__rec_h_base_var (_ BitVec 2))
      (_field__rec_h_offset_var (_ BitVec 2))
      (_field__rec_h_length_var (_ BitVec 2))
      (_field__rec_enc_state_p_var (_ BitVec 2))
      (_field__rec_key_p_var (_ BitVec 2))
      (_field__rec_enc_state_d_var (_ BitVec 2))
      (_field__rec_key_d_var (_ BitVec 2))
      (_field__rec_ca_nonce_used_var (_ BitVec 1))
      (_field__rec_ca_Boolrue_var (_ BitVec 1)))
     (_ BitVec 20)
     (concat
      (concat
       (concat
        (concat
         (concat
          (concat
           (concat
            (concat
             (concat
              (concat
               (concat #b0 _field__rec_ca_Boolrue_var)
               _field__rec_ca_nonce_used_var)
              _field__rec_key_d_var)
             _field__rec_enc_state_d_var)
            _field__rec_key_p_var)
           _field__rec_enc_state_p_var)
          _field__rec_h_length_var)
         _field__rec_h_offset_var)
        _field__rec_h_base_var)
       _field__rec_vtype_var)
      _field__rec_value_var))
(declare-fun _field__rec_value_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_vtype_non_bv ((_ BitVec 20)) (_ BitVec 1))
(declare-fun _field__rec_h_base_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_h_offset_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_h_length_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_enc_state_p_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_key_p_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_enc_state_d_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_key_d_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_ca_nonce_used_non_bv ((_ BitVec 20)) (_ BitVec 1))
(declare-fun _field__rec_ca_Boolrue_non_bv ((_ BitVec 20)) (_ BitVec 1))
(define-fun
   _field__rec_value ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 1 0) _type_record_2__var) (_field__rec_value_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_vtype ((_type_record_2__var (_ BitVec 20))) (_ BitVec 1)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 2 2) _type_record_2__var) (_field__rec_vtype_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_h_base ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 4 3) _type_record_2__var) (_field__rec_h_base_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_h_offset ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 6 5) _type_record_2__var) (_field__rec_h_offset_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_h_length ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 8 7) _type_record_2__var) (_field__rec_h_length_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_enc_state_p ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 10 9) _type_record_2__var) (_field__rec_enc_state_p_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_key_p ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 12 11) _type_record_2__var) (_field__rec_key_p_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_enc_state_d ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 14 13) _type_record_2__var) (_field__rec_enc_state_d_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_key_d ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 16 15) _type_record_2__var) (_field__rec_key_d_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_ca_nonce_used ((_type_record_2__var (_ BitVec 20)))
     (_ BitVec 1)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 17 17) _type_record_2__var)
      (_field__rec_ca_nonce_used_non_bv _type_record_2__var)))
(define-fun
   _field__rec_ca_Boolrue ((_type_record_2__var (_ BitVec 20))) (_ BitVec 1)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 18 18) _type_record_2__var) (_field__rec_ca_Boolrue_non_bv
      _type_record_2__var)))
(define-fun
   is-_make__type_record_2_ ((_type_record_2__var (_ BitVec 20))) Bool
     (= ((_ extract 19 19) _type_record_2__var) #b0))
(define-fun
   _make__type_record_6_
     ((_field__rec_valid_var (_ BitVec 1))
      (_field__rec_data_g_var (_ BitVec 20)))
     (_ BitVec 22)
     (concat (concat #b0 _field__rec_data_g_var) _field__rec_valid_var))
(declare-fun _field__rec_valid_non_bv ((_ BitVec 22)) (_ BitVec 1))
(declare-fun _field__rec_data_g_non_bv ((_ BitVec 22)) (_ BitVec 20))
(define-fun
   _field__rec_valid ((_type_record_6__var (_ BitVec 22))) (_ BitVec 1)
     (ite (= ((_ extract 21 21) _type_record_6__var) #b0)
      ((_ extract 0 0) _type_record_6__var) (_field__rec_valid_non_bv
      _type_record_6__var)))
(define-fun
   _field__rec_data_g ((_type_record_6__var (_ BitVec 22))) (_ BitVec 20)
     (ite (= ((_ extract 21 21) _type_record_6__var) #b0)
      ((_ extract 20 1) _type_record_6__var) (_field__rec_data_g_non_bv
      _type_record_6__var)))
(define-fun
   is-_make__type_record_6_ ((_type_record_6__var (_ BitVec 22))) Bool
     (= ((_ extract 21 21) _type_record_6__var) #b0))
(define-fun MALLOC () (_ BitVec 3) #b000)
(define-fun
   is-MALLOC ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b000))
(assert (is-MALLOC MALLOC))
(define-fun FREE () (_ BitVec 3) #b001)
(define-fun
   is-FREE ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b001))
(assert (is-FREE FREE))
(define-fun LOAD () (_ BitVec 3) #b010)
(define-fun
   is-LOAD ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b010))
(assert (is-LOAD LOAD))
(define-fun STORE () (_ BitVec 3) #b011)
(define-fun
   is-STORE ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b011))
(assert (is-STORE STORE))
(define-fun HANOP () (_ BitVec 3) #b100)
(define-fun
   is-HANOP ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b100))
(assert (is-HANOP HANOP))
(define-fun ARITHOP () (_ BitVec 3) #b101)
(define-fun
   is-ARITHOP ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b101))
(assert (is-ARITHOP ARITHOP))
(define-fun
   _make__type_record_8_
     ((_field__rec_valid_var (_ BitVec 1))
      (_field__rec_allocg_var (_ BitVec 20))
      (_field__rec_newgmem_var (_ BitVec 40))
      (_field__rec_newamap_var (_ BitVec 2)))
     (_ BitVec 64)
     (concat
      (concat
       (concat (concat #b0 _field__rec_newamap_var) _field__rec_newgmem_var)
       _field__rec_allocg_var)
      _field__rec_valid_var))
(declare-fun _field__rec_valid_non_bv ((_ BitVec 64)) (_ BitVec 1))
(declare-fun _field__rec_allocg_non_bv ((_ BitVec 64)) (_ BitVec 20))
(declare-fun _field__rec_newgmem_non_bv ((_ BitVec 64)) (_ BitVec 40))
(declare-fun _field__rec_newamap_non_bv ((_ BitVec 64)) (_ BitVec 2))
(define-fun
   _field__rec_valid ((_type_record_8__var (_ BitVec 64))) (_ BitVec 1)
     (ite (= ((_ extract 63 63) _type_record_8__var) #b0)
      ((_ extract 0 0) _type_record_8__var) (_field__rec_valid_non_bv
      _type_record_8__var)))
(define-fun
   _field__rec_allocg ((_type_record_8__var (_ BitVec 64))) (_ BitVec 20)
     (ite (= ((_ extract 63 63) _type_record_8__var) #b0)
      ((_ extract 20 1) _type_record_8__var) (_field__rec_allocg_non_bv
      _type_record_8__var)))
(define-fun
   _field__rec_newgmem ((_type_record_8__var (_ BitVec 64))) (_ BitVec 40)
     (ite (= ((_ extract 63 63) _type_record_8__var) #b0)
      ((_ extract 60 21) _type_record_8__var) (_field__rec_newgmem_non_bv
      _type_record_8__var)))
(define-fun
   _field__rec_newamap ((_type_record_8__var (_ BitVec 64))) (_ BitVec 2)
     (ite (= ((_ extract 63 63) _type_record_8__var) #b0)
      ((_ extract 62 61) _type_record_8__var) (_field__rec_newamap_non_bv
      _type_record_8__var)))
(define-fun
   is-_make__type_record_8_ ((_type_record_8__var (_ BitVec 64))) Bool
     (= ((_ extract 63 63) _type_record_8__var) #b0))
(push 1)
(declare-fun i3 () (_ BitVec 2))
(declare-fun const___ucld_153_slot_to_nonce_c3 ((_ BitVec 2) (_ BitVec 2))
 Bool)
(declare-fun i2 () (_ BitVec 2))
(declare-fun i1 () (_ BitVec 2))
(declare-fun i4 () (_ BitVec 2))
(assert
 (let
  ((_let_9_
    (forall
     ((i1 (_ BitVec 2)) (i2 (_ BitVec 2)) (i3 (_ BitVec 2)) (i4 (_ BitVec 2)))
     (=>
      (and (bvult i1 i2) (and (bvult i3 i4) (and
       (not (and (bvule i3 i1) (bvult i1 i4)))
       (not (and (bvule i1 i3) (bvult i3 i2))))))
      (not
       (= (const___ucld_153_slot_to_nonce_c3 i1 i2)
        (const___ucld_153_slot_to_nonce_c3 i3 i4)))))))
  _let_9_))
(declare-fun initial_3___ucld_157_alloc_map_var () (_ BitVec 4))
(declare-fun a () (_ BitVec 2))
(declare-fun initial_12___ucld_164_shadow_mem_var () (_ BitVec 28))
(assert
 (let
  ((_let_10_
    (forall ((a (_ BitVec 2)))
     (and
      (not
       ((_ extract 0 0)
        (bvlshr
         initial_3___ucld_157_alloc_map_var
         (bvmul ((_ zero_extend 2) a) #b0001))))
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111)))))))))
  _let_10_))
(declare-fun initial_21___ucld_173_ghost_lmap_var () (_ BitVec 160))
(declare-fun a () (_ BitVec 3))
(assert
 (let
  ((_let_11_
    (forall ((a (_ BitVec 3)))
     (and
      (or
       (and
        (=
         ((_ extract 0 0)
          (_field__rec_vtype
          ((_ extract 19 0)
           (bvlshr
            initial_21___ucld_173_ghost_lmap_var
            (bvmul
             ((_ zero_extend 157) a)
             #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         ((_ extract 0 0) RAW)))
       (and
        (=
         ((_ extract 0 0)
          (_field__rec_vtype
          ((_ extract 19 0)
           (bvlshr
            initial_21___ucld_173_ghost_lmap_var
            (bvmul
             ((_ zero_extend 157) a)
             #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         ((_ extract 0 0) RAW))))))))
  _let_11_))
(declare-fun initial_8___ucld_171_ghost_mem_var () (_ BitVec 80))
(assert
 (let
  ((_let_12_
    (forall ((a (_ BitVec 2)))
     (and
      (or
       (and
        (=
         ((_ extract 0 0)
          (_field__rec_vtype
          ((_ extract 19 0)
           (bvlshr
            initial_8___ucld_171_ghost_mem_var
            (bvmul
             ((_ zero_extend 78) a)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         ((_ extract 0 0) RAW)))
       (and
        (=
         ((_ extract 0 0)
          (_field__rec_vtype
          ((_ extract 19 0)
           (bvlshr
            initial_8___ucld_171_ghost_mem_var
            (bvmul
             ((_ zero_extend 78) a)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         ((_ extract 0 0) RAW))))))))
  _let_12_))
(push 1)
(declare-fun l () (_ BitVec 3))
(assert
 (let
  ((_let_13_
    (forall ((l (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_21___ucld_173_ghost_lmap_var
               (bvmul
                ((_ zero_extend 157) l)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_21___ucld_173_ghost_lmap_var
           (bvmul
            ((_ zero_extend 157) l)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_21___ucld_173_ghost_lmap_var
               (bvmul
                ((_ zero_extend 157) l)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         (select initial_21___ucld_173_ghost_lmap_var l))
         (_field__rec_h_length
         (select initial_21___ucld_173_ghost_lmap_var l))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              initial_21___ucld_173_ghost_lmap_var
              (bvmul
               ((_ zero_extend 157) l)
               #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  (let ((_let_14_ (not _let_13_))) _let_14_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_15_
    (forall ((a (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) a)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) a)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          initial_21___ucld_173_ghost_lmap_var
          (bvmul
           ((_ zero_extend 157) a)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        (select initial_21___ucld_173_ghost_lmap_var a))
        (_field__rec_h_offset
        (select initial_21___ucld_173_ghost_lmap_var a))))))))
  (let ((_let_16_ (not _let_15_))) _let_16_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_17_
    (forall ((a (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111)))))
      (and
       (bvule (_field__rec_lowend
        (select initial_12___ucld_164_shadow_mem_var a)) a)
       (bvult
        a
        (_field__rec_highend
        (select initial_12___ucld_164_shadow_mem_var a))))))))
  (let ((_let_18_ (not _let_17_))) _let_18_)))
(check-sat)
(pop 1)
(push 1)
(declare-fun initial_19___ucld_160_observable_var () (_ BitVec 22))
(assert
 (let ((_let_19_ (_field__rec_data_g initial_19___ucld_160_observable_var)))
  (let ((_let_20_ (_make__type_record_6_ false _let_19_))) (let
  ((_let_21_ (_field__rec_data_g _let_20_))) (let
  ((_let_22_ (_field__rec_enc_state_d _let_21_))) (let
  ((_let_23_ (= _let_22_ GAR))) (let ((_let_24_ (= _let_22_ ENC))) (let
  ((_let_25_ (or _let_24_ _let_23_))) (let
  ((_let_26_ (_field__rec_valid _let_20_))) (let ((_let_27_ (not _let_26_)))
  (let ((_let_28_ (or _let_27_ _let_25_))) (let
  ((_let_29_ (=> false _let_28_))) (let ((_let_30_ (not _let_29_)))
  _let_30_)))))))))))))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_31_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       ((_ extract 0 0)
        (bvlshr
         initial_3___ucld_157_alloc_map_var
         (bvmul ((_ zero_extend 2) a) #b0001)))
       (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_8___ucld_171_ghost_mem_var
               (bvmul
                ((_ zero_extend 78) a)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_8___ucld_171_ghost_mem_var
           (bvmul
            ((_ zero_extend 78) a)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_8___ucld_171_ghost_mem_var
               (bvmul
                ((_ zero_extend 78) a)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         (select initial_8___ucld_171_ghost_mem_var a))
         (_field__rec_h_length
         (select initial_8___ucld_171_ghost_mem_var a))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              initial_8___ucld_171_ghost_mem_var
              (bvmul
               ((_ zero_extend 78) a)
               #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  (let ((_let_32_ (not _let_31_))) _let_32_)))
(check-sat)
(pop 1)
(push 1)
(declare-fun a1 () (_ BitVec 2))
(declare-fun a2 () (_ BitVec 2))
(assert
 (let
  ((_let_33_
    (forall ((a1 (_ BitVec 2))) (forall ((a2 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
       (and
       (bvule (_field__rec_lowend
        (select initial_12___ucld_164_shadow_mem_var a1)) a2)
       (bvult
        a2
        (_field__rec_highend
        (select initial_12___ucld_164_shadow_mem_var a1)))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))))))))
  (let ((_let_34_ (not _let_33_))) _let_34_)))
(check-sat)
(pop 1)
(push 1)
(declare-fun l () (_ BitVec 3))
(assert
 (let
  ((_let_35_
    (forall ((l (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       ((_ bv0 2) )
       (_field__rec_h_length
       (select initial_21___ucld_173_ghost_lmap_var l)))))))
  (let
  ((_let_36_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       ((_ bv0 2) )
       (_field__rec_h_length
       (select initial_8___ucld_171_ghost_mem_var a)))))))
  (let ((_let_37_ (and _let_36_ _let_35_))) (let ((_let_38_ (not _let_37_)))
  _let_38_)))))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_39_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          initial_8___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        (select initial_8___ucld_171_ghost_mem_var a))
        (_field__rec_h_offset
        (select initial_8___ucld_171_ghost_mem_var a))))))))
  (let ((_let_40_ (not _let_39_))) _let_40_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_41_
    (forall ((a (_ BitVec 2)))
     (=
      ((_ extract 0 0)
       (bvlshr
        initial_3___ucld_157_alloc_map_var
        (bvmul ((_ zero_extend 2) a) #b0001)))
      (_field__rec_alloc
       ((_ extract 6 0)
        (bvlshr
         initial_12___ucld_164_shadow_mem_var
         (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111))))))))
  (let ((_let_42_ (not _let_41_))) _let_42_)))
(check-sat)
(pop 1)
(push 1)
(declare-fun a1 () (_ BitVec 2))
(declare-fun a2 () (_ BitVec 2))
(assert
 (let
  ((_let_43_
    (forall ((a1 (_ BitVec 2))) (forall ((a2 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
      (or
      (and
       (bvult
        (_field__rec_lowend
        (select initial_12___ucld_164_shadow_mem_var a1))
        (_field__rec_highend
        (select initial_12___ucld_164_shadow_mem_var a1)))
       (and
       (bvult
        (_field__rec_lowend
        (select initial_12___ucld_164_shadow_mem_var a2))
        (_field__rec_highend
        (select initial_12___ucld_164_shadow_mem_var a2)))
       (and
       (not
        (and
         (bvule (_field__rec_lowend
          (select initial_12___ucld_164_shadow_mem_var a2))
          (_field__rec_lowend
          (select initial_12___ucld_164_shadow_mem_var a1)))
         (bvult
          (_field__rec_lowend
          (select initial_12___ucld_164_shadow_mem_var a1))
          (_field__rec_highend
          (select initial_12___ucld_164_shadow_mem_var a2)))))
       (not
        (and
         (bvule (_field__rec_lowend
          (select initial_12___ucld_164_shadow_mem_var a1))
          (_field__rec_lowend
          (select initial_12___ucld_164_shadow_mem_var a2)))
         (bvult
          (_field__rec_lowend
          (select initial_12___ucld_164_shadow_mem_var a2))
          (_field__rec_highend
          (select initial_12___ucld_164_shadow_mem_var a1))))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111))))))))))))
  (let ((_let_44_ (not _let_43_))) _let_44_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_45_
    (forall ((a (_ BitVec 2)))
     (or
      (not
       ((_ extract 0 0)
        (bvlshr
         initial_3___ucld_157_alloc_map_var
         (bvmul ((_ zero_extend 2) a) #b0001))))
      (or
      (=
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          initial_8___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (_field__rec_ca_nonce_used
        ((_ extract 19 0)
         (bvlshr
          initial_8___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
      (and
       (or
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR))))
       (not
        (=
         ((_ extract 1 0)
          (_field__rec_enc_state_d
          ((_ extract 19 0)
           (bvlshr
            initial_8___ucld_171_ghost_mem_var
            (bvmul
             ((_ zero_extend 78) a)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         #b11))))))))
  (let ((_let_46_ (not _let_45_))) _let_46_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_47_
    (forall ((a (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111)))))
      (=
       (const___ucld_153_slot_to_nonce_c3 (_field__rec_lowend
        (select initial_12___ucld_164_shadow_mem_var a)) (_field__rec_highend
        (select initial_12___ucld_164_shadow_mem_var a)))
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          initial_8___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  (let ((_let_48_ (not _let_47_))) _let_48_)))
(check-sat)
(pop 1)
(push 1)
(pop 1)
(push 1)
(declare-fun const___ucld_147_ghost_to_nonce_c3 ((_ BitVec 20)) Bool)
(declare-fun a2 () (_ BitVec 2))
(declare-fun const___ucld_151_ghost_to_addr_value_c3 ((_ BitVec 20))
 (_ BitVec 2))
(declare-fun initial_50_v () Bool)
(declare-fun initial_57___ucld_162_l2_var () (_ BitVec 3))
(declare-fun havoc_136___ucld_37_ret_ghost_addr_out () (_ BitVec 20))
(declare-fun initial_51___ucld_157_alloc_map_var () (_ BitVec 4))
(declare-fun a1 () (_ BitVec 2))
(declare-fun initial_69___ucld_173_ghost_lmap_var () (_ BitVec 160))
(declare-fun initial_54___ucld_167_action_var () (_ BitVec 3))
(assert
 (let
  ((_let_49_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_50_ (_field__rec_ca_nonce_used _let_49_))) (let
  ((_let_51_ (_field__rec_ca_Boolrue _let_49_))) (let
  ((_let_52_ (_field__rec_enc_state_d _let_49_))) (let
  ((_let_53_ (_field__rec_h_length _let_49_))) (let
  ((_let_54_ (_field__rec_h_offset _let_49_))) (let
  ((_let_55_ (_field__rec_h_base _let_49_))) (let
  ((_let_56_ (_field__rec_vtype _let_49_))) (let
  ((_let_57_ (_field__rec_value _let_49_))) (let
  ((_let_58_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_59_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_60_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_61_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_62_ (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_63_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_64_ (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_65_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_66_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_67_ (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_68_
    (_make__type_record_2_ _let_57_ _let_58_ _let_59_ _let_60_ _let_61_
     _let_62_ _let_63_ _let_64_ _let_65_ _let_66_ _let_67_)))
  (let ((_let_69_ (_field__rec_value _let_68_))) (let
  ((_let_70_ (_field__rec_h_base _let_68_))) (let
  ((_let_71_ (_field__rec_h_offset _let_68_))) (let
  ((_let_72_ (_field__rec_h_length _let_68_))) (let
  ((_let_73_ (_field__rec_enc_state_p _let_68_))) (let
  ((_let_74_ (_field__rec_key_p _let_68_))) (let
  ((_let_75_ (_field__rec_enc_state_d _let_68_))) (let
  ((_let_76_ (_field__rec_key_d _let_68_))) (let
  ((_let_77_ (_field__rec_ca_nonce_used _let_68_))) (let
  ((_let_78_ (_field__rec_ca_Boolrue _let_68_))) (let
  ((_let_79_
    (_make__type_record_2_ _let_69_ _let_56_ _let_70_ _let_71_ _let_72_
     _let_73_ _let_74_ _let_75_ _let_76_ _let_77_ _let_78_)))
  (let ((_let_80_ (_field__rec_value _let_79_))) (let
  ((_let_81_ (_field__rec_vtype _let_79_))) (let
  ((_let_82_ (_field__rec_h_offset _let_79_))) (let
  ((_let_83_ (_field__rec_h_length _let_79_))) (let
  ((_let_84_ (_field__rec_enc_state_p _let_79_))) (let
  ((_let_85_ (_field__rec_key_p _let_79_))) (let
  ((_let_86_ (_field__rec_enc_state_d _let_79_))) (let
  ((_let_87_ (_field__rec_key_d _let_79_))) (let
  ((_let_88_ (_field__rec_ca_nonce_used _let_79_))) (let
  ((_let_89_ (_field__rec_ca_Boolrue _let_79_))) (let
  ((_let_90_
    (_make__type_record_2_ _let_80_ _let_81_ _let_55_ _let_82_ _let_83_
     _let_84_ _let_85_ _let_86_ _let_87_ _let_88_ _let_89_)))
  (let ((_let_91_ (_field__rec_value _let_90_))) (let
  ((_let_92_ (_field__rec_vtype _let_90_))) (let
  ((_let_93_ (_field__rec_h_base _let_90_))) (let
  ((_let_94_ (_field__rec_h_length _let_90_))) (let
  ((_let_95_ (_field__rec_enc_state_p _let_90_))) (let
  ((_let_96_ (_field__rec_key_p _let_90_))) (let
  ((_let_97_ (_field__rec_enc_state_d _let_90_))) (let
  ((_let_98_ (_field__rec_key_d _let_90_))) (let
  ((_let_99_ (_field__rec_ca_nonce_used _let_90_))) (let
  ((_let_100_ (_field__rec_ca_Boolrue _let_90_))) (let
  ((_let_101_
    (_make__type_record_2_ _let_91_ _let_92_ _let_93_ _let_54_ _let_94_
     _let_95_ _let_96_ _let_97_ _let_98_ _let_99_ _let_100_)))
  (let ((_let_102_ (_field__rec_value _let_101_))) (let
  ((_let_103_ (_field__rec_vtype _let_101_))) (let
  ((_let_104_ (_field__rec_h_base _let_101_))) (let
  ((_let_105_ (_field__rec_h_offset _let_101_))) (let
  ((_let_106_ (_field__rec_enc_state_p _let_101_))) (let
  ((_let_107_ (_field__rec_key_p _let_101_))) (let
  ((_let_108_ (_field__rec_enc_state_d _let_101_))) (let
  ((_let_109_ (_field__rec_key_d _let_101_))) (let
  ((_let_110_ (_field__rec_ca_nonce_used _let_101_))) (let
  ((_let_111_ (_field__rec_ca_Boolrue _let_101_))) (let
  ((_let_112_
    (_make__type_record_2_ _let_102_ _let_103_ _let_104_ _let_105_ _let_53_
     _let_106_ _let_107_ _let_108_ _let_109_ _let_110_ _let_111_)))
  (let ((_let_113_ (_field__rec_value _let_112_))) (let
  ((_let_114_ (_field__rec_vtype _let_112_))) (let
  ((_let_115_ (_field__rec_h_base _let_112_))) (let
  ((_let_116_ (_field__rec_h_offset _let_112_))) (let
  ((_let_117_ (_field__rec_h_length _let_112_))) (let
  ((_let_118_ (_field__rec_enc_state_p _let_112_))) (let
  ((_let_119_ (_field__rec_key_p _let_112_))) (let
  ((_let_120_ (_field__rec_key_d _let_112_))) (let
  ((_let_121_ (_field__rec_ca_nonce_used _let_112_))) (let
  ((_let_122_ (_field__rec_ca_Boolrue _let_112_))) (let
  ((_let_123_
    (_make__type_record_2_ _let_113_ _let_114_ _let_115_ _let_116_ _let_117_
     _let_118_ _let_119_ _let_52_ _let_120_ _let_121_ _let_122_)))
  (let ((_let_124_ (_field__rec_value _let_123_))) (let
  ((_let_125_ (_field__rec_vtype _let_123_))) (let
  ((_let_126_ (_field__rec_h_base _let_123_))) (let
  ((_let_127_ (_field__rec_h_offset _let_123_))) (let
  ((_let_128_ (_field__rec_h_length _let_123_))) (let
  ((_let_129_ (_field__rec_key_p _let_123_))) (let
  ((_let_130_ (_field__rec_enc_state_d _let_123_))) (let
  ((_let_131_ (_field__rec_key_d _let_123_))) (let
  ((_let_132_ (_field__rec_ca_nonce_used _let_123_))) (let
  ((_let_133_ (_field__rec_ca_Boolrue _let_123_))) (let
  ((_let_134_
    (_make__type_record_2_ _let_124_ _let_125_ _let_126_ _let_127_ _let_128_
     GAR _let_129_ _let_130_ _let_131_ _let_132_ _let_133_)))
  (let
  ((_let_135_
    (_make__type_record_2_ _let_124_ _let_125_ _let_126_ _let_127_ _let_128_
     PLN _let_129_ _let_130_ _let_131_ _let_132_ _let_133_)))
  (let ((_let_136_ (_field__rec_key_p _let_49_))) (let
  ((_let_137_ (= _let_136_ ViKey))) (let
  ((_let_138_ (ite _let_137_ _let_135_ _let_134_))) (let
  ((_let_139_ (_field__rec_enc_state_p _let_49_))) (let
  ((_let_140_ (not (= _let_139_ ENC)))) (let
  ((_let_141_ (ite _let_140_ _let_134_ _let_138_))) (let
  ((_let_142_
    (_make__type_record_2_ _let_113_ _let_114_ _let_115_ _let_116_ _let_117_
     _let_118_ _let_119_ GAR _let_120_ _let_121_ _let_122_)))
  (let ((_let_143_ (_field__rec_value _let_142_))) (let
  ((_let_144_ (_field__rec_vtype _let_142_))) (let
  ((_let_145_ (_field__rec_h_base _let_142_))) (let
  ((_let_146_ (_field__rec_h_offset _let_142_))) (let
  ((_let_147_ (_field__rec_h_length _let_142_))) (let
  ((_let_148_ (_field__rec_key_p _let_142_))) (let
  ((_let_149_ (_field__rec_enc_state_d _let_142_))) (let
  ((_let_150_ (_field__rec_key_d _let_142_))) (let
  ((_let_151_ (_field__rec_ca_nonce_used _let_142_))) (let
  ((_let_152_ (_field__rec_ca_Boolrue _let_142_))) (let
  ((_let_153_
    (_make__type_record_2_ _let_143_ _let_144_ _let_145_ _let_146_ _let_147_
     GAR _let_148_ _let_149_ _let_150_ _let_151_ _let_152_)))
  (let ((_let_154_ (not (= _let_52_ PLN)))) (let
  ((_let_155_ (ite _let_154_ _let_153_ _let_141_))) (let
  ((_let_156_ (_field__rec_value _let_155_))) (let
  ((_let_157_ (_field__rec_vtype _let_155_))) (let
  ((_let_158_ (_field__rec_h_base _let_155_))) (let
  ((_let_159_ (_field__rec_h_offset _let_155_))) (let
  ((_let_160_ (_field__rec_h_length _let_155_))) (let
  ((_let_161_ (_field__rec_enc_state_p _let_155_))) (let
  ((_let_162_ (_field__rec_enc_state_d _let_155_))) (let
  ((_let_163_ (_field__rec_key_d _let_155_))) (let
  ((_let_164_ (_field__rec_ca_nonce_used _let_155_))) (let
  ((_let_165_ (_field__rec_ca_Boolrue _let_155_))) (let
  ((_let_166_
    (_make__type_record_2_ _let_156_ _let_157_ _let_158_ _let_159_ _let_160_
     _let_161_ NoKey _let_162_ _let_163_ _let_164_ _let_165_)))
  (let ((_let_167_ (_field__rec_value _let_166_))) (let
  ((_let_168_ (_field__rec_vtype _let_166_))) (let
  ((_let_169_ (_field__rec_h_base _let_166_))) (let
  ((_let_170_ (_field__rec_h_offset _let_166_))) (let
  ((_let_171_ (_field__rec_h_length _let_166_))) (let
  ((_let_172_ (_field__rec_enc_state_p _let_166_))) (let
  ((_let_173_ (_field__rec_key_p _let_166_))) (let
  ((_let_174_ (_field__rec_enc_state_d _let_166_))) (let
  ((_let_175_ (_field__rec_ca_nonce_used _let_166_))) (let
  ((_let_176_ (_field__rec_ca_Boolrue _let_166_))) (let
  ((_let_177_
    (_make__type_record_2_ _let_167_ _let_168_ _let_169_ _let_170_ _let_171_
     _let_172_ _let_173_ _let_174_ NoKey _let_175_ _let_176_)))
  (let ((_let_178_ (_field__rec_value _let_177_))) (let
  ((_let_179_ (_field__rec_vtype _let_177_))) (let
  ((_let_180_ (_field__rec_h_base _let_177_))) (let
  ((_let_181_ (_field__rec_h_offset _let_177_))) (let
  ((_let_182_ (_field__rec_h_length _let_177_))) (let
  ((_let_183_ (_field__rec_enc_state_p _let_177_))) (let
  ((_let_184_ (_field__rec_key_p _let_177_))) (let
  ((_let_185_ (_field__rec_enc_state_d _let_177_))) (let
  ((_let_186_ (_field__rec_key_d _let_177_))) (let
  ((_let_187_ (_field__rec_ca_nonce_used _let_177_))) (let
  ((_let_188_
    (_make__type_record_2_ _let_178_ _let_179_ _let_180_ _let_181_ _let_182_
     _let_183_ _let_184_ _let_185_ _let_186_ _let_187_ _let_51_)))
  (let ((_let_189_ (_field__rec_value _let_188_))) (let
  ((_let_190_ (_field__rec_vtype _let_188_))) (let
  ((_let_191_ (_field__rec_h_base _let_188_))) (let
  ((_let_192_ (_field__rec_h_offset _let_188_))) (let
  ((_let_193_ (_field__rec_h_length _let_188_))) (let
  ((_let_194_ (_field__rec_enc_state_p _let_188_))) (let
  ((_let_195_ (_field__rec_key_p _let_188_))) (let
  ((_let_196_ (_field__rec_enc_state_d _let_188_))) (let
  ((_let_197_ (_field__rec_key_d _let_188_))) (let
  ((_let_198_ (_field__rec_ca_Boolrue _let_188_))) (let
  ((_let_199_
    (_make__type_record_2_ _let_189_ _let_190_ _let_191_ _let_192_ _let_193_
     _let_194_ _let_195_ _let_196_ _let_197_ _let_50_ _let_198_)))
  (let ((_let_200_ (const___ucld_151_ghost_to_addr_value_c3 _let_199_))) (let
  ((_let_201_ (_field__rec_value _let_199_))) (let
  ((_let_202_ (= _let_201_ _let_200_))) (let
  ((_let_203_ (_field__rec_h_length _let_199_))) (let
  ((_let_204_ (_field__rec_h_base _let_199_))) (let
  ((_let_205_ (bvadd _let_204_ _let_203_))) (let
  ((_let_206_ (const___ucld_153_slot_to_nonce_c3 _let_204_ _let_205_))) (let
  ((_let_207_ (const___ucld_147_ghost_to_nonce_c3 _let_199_))) (let
  ((_let_208_ (= _let_207_ _let_206_))) (let
  ((_let_209_ (and _let_208_ _let_202_))) (let
  ((_let_210_ (_field__rec_enc_state_d _let_199_))) (let
  ((_let_211_ (= _let_210_ PLN))) (let
  ((_let_212_ (_field__rec_vtype _let_199_))) (let
  ((_let_213_ (= _let_212_ HAN))) (let
  ((_let_214_ (and _let_213_ _let_211_))) (let
  ((_let_215_ (=> _let_214_ _let_209_))) (let
  ((_let_216_
    (forall ((a1 (_ BitVec 2))) (forall ((a2 (_ BitVec 2)))
     (=> (bvult a1 a2)
      (not (= _let_207_ (const___ucld_153_slot_to_nonce_c3 a1 a2))))))))
  (let ((_let_217_ (not (= _let_210_ PLN)))) (let
  ((_let_218_ (not (= _let_212_ HAN)))) (let
  ((_let_219_ (or _let_218_ _let_217_))) (let
  ((_let_220_ (=> _let_219_ _let_216_))) (let
  ((_let_221_ (and _let_220_ _let_215_))) (let
  ((_let_222_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_223_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_200_) #b0001)))))
  (let ((_let_224_ (not _let_223_))) (let ((_let_225_ (not _let_224_))) (let
  ((_let_226_ (and true _let_225_))) (let
  ((_let_227_ (and _let_226_ _let_222_))) (let
  ((_let_228_ (and _let_227_ initial_50_v))) (let
  ((_let_229_ (=> _let_228_ _let_221_)))
  _let_229_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun state_1___ucld_175_alloc_probe_var () (_ BitVec 64))
(declare-fun havoc_193___ucld_34_ret_as () (_ BitVec 64))
(declare-fun initial_70___ucld_175_alloc_probe_var () (_ BitVec 64))
(assert
 (let
  ((_let_230_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_231_
    (ite _let_230_ havoc_193___ucld_34_ret_as
     initial_70___ucld_175_alloc_probe_var)))
  (let
  ((_let_232_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_233_ (ite _let_232_ initial_70___ucld_175_alloc_probe_var _let_231_)))
  (let
  ((_let_234_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_235_ (ite _let_234_ initial_70___ucld_175_alloc_probe_var _let_233_)))
  (let
  ((_let_236_
    (ite initial_50_v _let_235_ initial_70___ucld_175_alloc_probe_var)))
  (let
  ((_let_237_
    (and
     (or
      (and
       (= ((_ extract 63 63) state_1___ucld_175_alloc_probe_var)
        ((_ extract 63 63) _let_236_))
       (and (and
       (or
        (and
         (= ((_ extract 20 20) state_1___ucld_175_alloc_probe_var)
          ((_ extract 20 20) _let_236_))
         (and (and
         (or
          (and
           (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var)
            ((_ extract 14 13) _let_236_)))
          (and
           (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var)
            ((_ extract 14 13) _let_236_)))
          (and
           (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var)
            ((_ extract 14 13) _let_236_))))
         (not (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var)
            ((_ extract 10 9) _let_236_)))
          (and
           (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var)
            ((_ extract 10 9) _let_236_)))
          (and
           (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var)
            ((_ extract 10 9) _let_236_))))
         (not (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var)
            ((_ extract 12 11) _let_236_)))
          (and
           (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var)
            ((_ extract 12 11) _let_236_)))
          (and
           (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var)
            ((_ extract 12 11) _let_236_))))
         (not (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var)
            ((_ extract 16 15) _let_236_)))
          (and
           (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var)
            ((_ extract 16 15) _let_236_)))
          (and
           (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var)
            ((_ extract 16 15) _let_236_))))
         (not (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 2 2) state_1___ucld_175_alloc_probe_var)
            ((_ extract 2 2) _let_236_)))
          (and
           (= ((_ extract 2 2) state_1___ucld_175_alloc_probe_var)
            ((_ extract 2 2) _let_236_))))))))
       (not (= ((_ extract 20 20) state_1___ucld_175_alloc_probe_var) #b1))))))
     (not (= ((_ extract 63 63) state_1___ucld_175_alloc_probe_var) #b1)))))
  _let_237_)))))))))
(declare-fun state_1___ucld_159_src1_probe_var () (_ BitVec 2))
(declare-fun initial_53___ucld_159_src1_probe_var () (_ BitVec 2))
(assert
 (let
  ((_let_238_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_239_
    (ite _let_238_ initial_53___ucld_159_src1_probe_var
     initial_53___ucld_159_src1_probe_var)))
  (let
  ((_let_240_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_241_ (ite _let_240_ initial_53___ucld_159_src1_probe_var _let_239_)))
  (let
  ((_let_242_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_243_ (ite _let_242_ initial_53___ucld_159_src1_probe_var _let_241_)))
  (let
  ((_let_244_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_245_ (ite _let_244_ initial_53___ucld_159_src1_probe_var _let_243_)))
  (let
  ((_let_246_
    (ite initial_50_v _let_245_ initial_53___ucld_159_src1_probe_var)))
  (let ((_let_247_ (= state_1___ucld_159_src1_probe_var _let_246_)))
  _let_247_)))))))))))
(declare-fun initial_65___ucld_154_data_probe_var () (_ BitVec 2))
(declare-fun initial_63___ucld_161_l1_var () (_ BitVec 3))
(declare-fun havoc_177_enc_cell_data () (_ BitVec 2))
(declare-fun state_1___ucld_154_data_probe_var () (_ BitVec 2))
(declare-fun havoc_243_newdata () (_ BitVec 2))
(declare-fun havoc_127_dec_cell_data () (_ BitVec 2))
(declare-fun havoc_175___ucld_44_ret_ghost_addr_out () (_ BitVec 20))
(assert
 (let
  ((_let_248_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_249_
    (ite _let_248_ havoc_243_newdata initial_65___ucld_154_data_probe_var)))
  (let
  ((_let_250_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_251_ (ite _let_250_ initial_65___ucld_154_data_probe_var _let_249_)))
  (let
  ((_let_252_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_253_ (ite _let_252_ initial_65___ucld_154_data_probe_var _let_251_)))
  (let
  ((_let_254_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_255_ (_field__rec_ca_nonce_used _let_254_))) (let
  ((_let_256_ (_field__rec_ca_Boolrue _let_254_))) (let
  ((_let_257_ (_field__rec_enc_state_d _let_254_))) (let
  ((_let_258_ (_field__rec_h_length _let_254_))) (let
  ((_let_259_ (_field__rec_h_offset _let_254_))) (let
  ((_let_260_ (_field__rec_h_base _let_254_))) (let
  ((_let_261_ (_field__rec_vtype _let_254_))) (let
  ((_let_262_ (_field__rec_value _let_254_))) (let
  ((_let_263_ (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_264_ (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_265_ (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_266_ (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_267_
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_268_ (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_269_
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_270_ (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_271_
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_272_ (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_273_
    (_make__type_record_2_ _let_262_ _let_263_ _let_264_ _let_265_ _let_266_
     _let_267_ _let_268_ _let_269_ _let_270_ _let_271_ _let_272_)))
  (let ((_let_274_ (_field__rec_value _let_273_))) (let
  ((_let_275_ (_field__rec_h_base _let_273_))) (let
  ((_let_276_ (_field__rec_h_offset _let_273_))) (let
  ((_let_277_ (_field__rec_h_length _let_273_))) (let
  ((_let_278_ (_field__rec_enc_state_p _let_273_))) (let
  ((_let_279_ (_field__rec_key_p _let_273_))) (let
  ((_let_280_ (_field__rec_enc_state_d _let_273_))) (let
  ((_let_281_ (_field__rec_key_d _let_273_))) (let
  ((_let_282_ (_field__rec_ca_nonce_used _let_273_))) (let
  ((_let_283_ (_field__rec_ca_Boolrue _let_273_))) (let
  ((_let_284_
    (_make__type_record_2_ _let_274_ _let_261_ _let_275_ _let_276_ _let_277_
     _let_278_ _let_279_ _let_280_ _let_281_ _let_282_ _let_283_)))
  (let ((_let_285_ (_field__rec_value _let_284_))) (let
  ((_let_286_ (_field__rec_vtype _let_284_))) (let
  ((_let_287_ (_field__rec_h_offset _let_284_))) (let
  ((_let_288_ (_field__rec_h_length _let_284_))) (let
  ((_let_289_ (_field__rec_enc_state_p _let_284_))) (let
  ((_let_290_ (_field__rec_key_p _let_284_))) (let
  ((_let_291_ (_field__rec_enc_state_d _let_284_))) (let
  ((_let_292_ (_field__rec_key_d _let_284_))) (let
  ((_let_293_ (_field__rec_ca_nonce_used _let_284_))) (let
  ((_let_294_ (_field__rec_ca_Boolrue _let_284_))) (let
  ((_let_295_
    (_make__type_record_2_ _let_285_ _let_286_ _let_260_ _let_287_ _let_288_
     _let_289_ _let_290_ _let_291_ _let_292_ _let_293_ _let_294_)))
  (let ((_let_296_ (_field__rec_value _let_295_))) (let
  ((_let_297_ (_field__rec_vtype _let_295_))) (let
  ((_let_298_ (_field__rec_h_base _let_295_))) (let
  ((_let_299_ (_field__rec_h_length _let_295_))) (let
  ((_let_300_ (_field__rec_enc_state_p _let_295_))) (let
  ((_let_301_ (_field__rec_key_p _let_295_))) (let
  ((_let_302_ (_field__rec_enc_state_d _let_295_))) (let
  ((_let_303_ (_field__rec_key_d _let_295_))) (let
  ((_let_304_ (_field__rec_ca_nonce_used _let_295_))) (let
  ((_let_305_ (_field__rec_ca_Boolrue _let_295_))) (let
  ((_let_306_
    (_make__type_record_2_ _let_296_ _let_297_ _let_298_ _let_259_ _let_299_
     _let_300_ _let_301_ _let_302_ _let_303_ _let_304_ _let_305_)))
  (let ((_let_307_ (_field__rec_value _let_306_))) (let
  ((_let_308_ (_field__rec_vtype _let_306_))) (let
  ((_let_309_ (_field__rec_h_base _let_306_))) (let
  ((_let_310_ (_field__rec_h_offset _let_306_))) (let
  ((_let_311_ (_field__rec_enc_state_p _let_306_))) (let
  ((_let_312_ (_field__rec_key_p _let_306_))) (let
  ((_let_313_ (_field__rec_enc_state_d _let_306_))) (let
  ((_let_314_ (_field__rec_key_d _let_306_))) (let
  ((_let_315_ (_field__rec_ca_nonce_used _let_306_))) (let
  ((_let_316_ (_field__rec_ca_Boolrue _let_306_))) (let
  ((_let_317_
    (_make__type_record_2_ _let_307_ _let_308_ _let_309_ _let_310_ _let_258_
     _let_311_ _let_312_ _let_313_ _let_314_ _let_315_ _let_316_)))
  (let ((_let_318_ (_field__rec_value _let_317_))) (let
  ((_let_319_ (_field__rec_vtype _let_317_))) (let
  ((_let_320_ (_field__rec_h_base _let_317_))) (let
  ((_let_321_ (_field__rec_h_offset _let_317_))) (let
  ((_let_322_ (_field__rec_h_length _let_317_))) (let
  ((_let_323_ (_field__rec_enc_state_p _let_317_))) (let
  ((_let_324_ (_field__rec_key_p _let_317_))) (let
  ((_let_325_ (_field__rec_key_d _let_317_))) (let
  ((_let_326_ (_field__rec_ca_nonce_used _let_317_))) (let
  ((_let_327_ (_field__rec_ca_Boolrue _let_317_))) (let
  ((_let_328_
    (_make__type_record_2_ _let_318_ _let_319_ _let_320_ _let_321_ _let_322_
     _let_323_ _let_324_ _let_257_ _let_325_ _let_326_ _let_327_)))
  (let ((_let_329_ (_field__rec_value _let_328_))) (let
  ((_let_330_ (_field__rec_vtype _let_328_))) (let
  ((_let_331_ (_field__rec_h_base _let_328_))) (let
  ((_let_332_ (_field__rec_h_offset _let_328_))) (let
  ((_let_333_ (_field__rec_h_length _let_328_))) (let
  ((_let_334_ (_field__rec_key_p _let_328_))) (let
  ((_let_335_ (_field__rec_enc_state_d _let_328_))) (let
  ((_let_336_ (_field__rec_key_d _let_328_))) (let
  ((_let_337_ (_field__rec_ca_nonce_used _let_328_))) (let
  ((_let_338_ (_field__rec_ca_Boolrue _let_328_))) (let
  ((_let_339_
    (_make__type_record_2_ _let_329_ _let_330_ _let_331_ _let_332_ _let_333_
     GAR _let_334_ _let_335_ _let_336_ _let_337_ _let_338_)))
  (let
  ((_let_340_
    (_make__type_record_2_ _let_329_ _let_330_ _let_331_ _let_332_ _let_333_
     PLN _let_334_ _let_335_ _let_336_ _let_337_ _let_338_)))
  (let ((_let_341_ (_field__rec_key_p _let_254_))) (let
  ((_let_342_ (= _let_341_ ViKey))) (let
  ((_let_343_ (ite _let_342_ _let_340_ _let_339_))) (let
  ((_let_344_ (_field__rec_enc_state_p _let_254_))) (let
  ((_let_345_ (not (= _let_344_ ENC)))) (let
  ((_let_346_ (ite _let_345_ _let_339_ _let_343_))) (let
  ((_let_347_
    (_make__type_record_2_ _let_318_ _let_319_ _let_320_ _let_321_ _let_322_
     _let_323_ _let_324_ GAR _let_325_ _let_326_ _let_327_)))
  (let ((_let_348_ (_field__rec_value _let_347_))) (let
  ((_let_349_ (_field__rec_vtype _let_347_))) (let
  ((_let_350_ (_field__rec_h_base _let_347_))) (let
  ((_let_351_ (_field__rec_h_offset _let_347_))) (let
  ((_let_352_ (_field__rec_h_length _let_347_))) (let
  ((_let_353_ (_field__rec_key_p _let_347_))) (let
  ((_let_354_ (_field__rec_enc_state_d _let_347_))) (let
  ((_let_355_ (_field__rec_key_d _let_347_))) (let
  ((_let_356_ (_field__rec_ca_nonce_used _let_347_))) (let
  ((_let_357_ (_field__rec_ca_Boolrue _let_347_))) (let
  ((_let_358_
    (_make__type_record_2_ _let_348_ _let_349_ _let_350_ _let_351_ _let_352_
     GAR _let_353_ _let_354_ _let_355_ _let_356_ _let_357_)))
  (let ((_let_359_ (not (= _let_257_ PLN)))) (let
  ((_let_360_ (ite _let_359_ _let_358_ _let_346_))) (let
  ((_let_361_ (_field__rec_value _let_360_))) (let
  ((_let_362_ (_field__rec_vtype _let_360_))) (let
  ((_let_363_ (_field__rec_h_base _let_360_))) (let
  ((_let_364_ (_field__rec_h_offset _let_360_))) (let
  ((_let_365_ (_field__rec_h_length _let_360_))) (let
  ((_let_366_ (_field__rec_enc_state_p _let_360_))) (let
  ((_let_367_ (_field__rec_enc_state_d _let_360_))) (let
  ((_let_368_ (_field__rec_key_d _let_360_))) (let
  ((_let_369_ (_field__rec_ca_nonce_used _let_360_))) (let
  ((_let_370_ (_field__rec_ca_Boolrue _let_360_))) (let
  ((_let_371_
    (_make__type_record_2_ _let_361_ _let_362_ _let_363_ _let_364_ _let_365_
     _let_366_ NoKey _let_367_ _let_368_ _let_369_ _let_370_)))
  (let ((_let_372_ (_field__rec_value _let_371_))) (let
  ((_let_373_ (_field__rec_vtype _let_371_))) (let
  ((_let_374_ (_field__rec_h_base _let_371_))) (let
  ((_let_375_ (_field__rec_h_offset _let_371_))) (let
  ((_let_376_ (_field__rec_h_length _let_371_))) (let
  ((_let_377_ (_field__rec_enc_state_p _let_371_))) (let
  ((_let_378_ (_field__rec_key_p _let_371_))) (let
  ((_let_379_ (_field__rec_enc_state_d _let_371_))) (let
  ((_let_380_ (_field__rec_ca_nonce_used _let_371_))) (let
  ((_let_381_ (_field__rec_ca_Boolrue _let_371_))) (let
  ((_let_382_
    (_make__type_record_2_ _let_372_ _let_373_ _let_374_ _let_375_ _let_376_
     _let_377_ _let_378_ _let_379_ NoKey _let_380_ _let_381_)))
  (let ((_let_383_ (_field__rec_value _let_382_))) (let
  ((_let_384_ (_field__rec_vtype _let_382_))) (let
  ((_let_385_ (_field__rec_h_base _let_382_))) (let
  ((_let_386_ (_field__rec_h_offset _let_382_))) (let
  ((_let_387_ (_field__rec_h_length _let_382_))) (let
  ((_let_388_ (_field__rec_enc_state_p _let_382_))) (let
  ((_let_389_ (_field__rec_key_p _let_382_))) (let
  ((_let_390_ (_field__rec_enc_state_d _let_382_))) (let
  ((_let_391_ (_field__rec_key_d _let_382_))) (let
  ((_let_392_ (_field__rec_ca_nonce_used _let_382_))) (let
  ((_let_393_
    (_make__type_record_2_ _let_383_ _let_384_ _let_385_ _let_386_ _let_387_
     _let_388_ _let_389_ _let_390_ _let_391_ _let_392_ _let_256_)))
  (let ((_let_394_ (_field__rec_value _let_393_))) (let
  ((_let_395_ (_field__rec_vtype _let_393_))) (let
  ((_let_396_ (_field__rec_h_base _let_393_))) (let
  ((_let_397_ (_field__rec_h_offset _let_393_))) (let
  ((_let_398_ (_field__rec_h_length _let_393_))) (let
  ((_let_399_ (_field__rec_enc_state_p _let_393_))) (let
  ((_let_400_ (_field__rec_key_p _let_393_))) (let
  ((_let_401_ (_field__rec_enc_state_d _let_393_))) (let
  ((_let_402_ (_field__rec_key_d _let_393_))) (let
  ((_let_403_ (_field__rec_ca_Boolrue _let_393_))) (let
  ((_let_404_
    (_make__type_record_2_ _let_394_ _let_395_ _let_396_ _let_397_ _let_398_
     _let_399_ _let_400_ _let_401_ _let_402_ _let_255_ _let_403_)))
  (let ((_let_405_ (const___ucld_151_ghost_to_addr_value_c3 _let_404_))) (let
  ((_let_406_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_405_) #b0001)))))
  (let
  ((_let_407_
    (ite _let_406_ initial_65___ucld_154_data_probe_var
     havoc_177_enc_cell_data)))
  (let
  ((_let_408_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_409_ (ite _let_408_ _let_407_ _let_253_))) (let
  ((_let_410_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_411_ (_field__rec_ca_nonce_used _let_410_))) (let
  ((_let_412_ (_field__rec_ca_Boolrue _let_410_))) (let
  ((_let_413_ (_field__rec_enc_state_d _let_410_))) (let
  ((_let_414_ (_field__rec_h_length _let_410_))) (let
  ((_let_415_ (_field__rec_h_offset _let_410_))) (let
  ((_let_416_ (_field__rec_h_base _let_410_))) (let
  ((_let_417_ (_field__rec_vtype _let_410_))) (let
  ((_let_418_ (_field__rec_value _let_410_))) (let
  ((_let_419_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_420_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_421_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_422_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_423_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_424_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_425_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_426_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_427_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_428_ (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_429_
    (_make__type_record_2_ _let_418_ _let_419_ _let_420_ _let_421_ _let_422_
     _let_423_ _let_424_ _let_425_ _let_426_ _let_427_ _let_428_)))
  (let ((_let_430_ (_field__rec_value _let_429_))) (let
  ((_let_431_ (_field__rec_h_base _let_429_))) (let
  ((_let_432_ (_field__rec_h_offset _let_429_))) (let
  ((_let_433_ (_field__rec_h_length _let_429_))) (let
  ((_let_434_ (_field__rec_enc_state_p _let_429_))) (let
  ((_let_435_ (_field__rec_key_p _let_429_))) (let
  ((_let_436_ (_field__rec_enc_state_d _let_429_))) (let
  ((_let_437_ (_field__rec_key_d _let_429_))) (let
  ((_let_438_ (_field__rec_ca_nonce_used _let_429_))) (let
  ((_let_439_ (_field__rec_ca_Boolrue _let_429_))) (let
  ((_let_440_
    (_make__type_record_2_ _let_430_ _let_417_ _let_431_ _let_432_ _let_433_
     _let_434_ _let_435_ _let_436_ _let_437_ _let_438_ _let_439_)))
  (let ((_let_441_ (_field__rec_value _let_440_))) (let
  ((_let_442_ (_field__rec_vtype _let_440_))) (let
  ((_let_443_ (_field__rec_h_offset _let_440_))) (let
  ((_let_444_ (_field__rec_h_length _let_440_))) (let
  ((_let_445_ (_field__rec_enc_state_p _let_440_))) (let
  ((_let_446_ (_field__rec_key_p _let_440_))) (let
  ((_let_447_ (_field__rec_enc_state_d _let_440_))) (let
  ((_let_448_ (_field__rec_key_d _let_440_))) (let
  ((_let_449_ (_field__rec_ca_nonce_used _let_440_))) (let
  ((_let_450_ (_field__rec_ca_Boolrue _let_440_))) (let
  ((_let_451_
    (_make__type_record_2_ _let_441_ _let_442_ _let_416_ _let_443_ _let_444_
     _let_445_ _let_446_ _let_447_ _let_448_ _let_449_ _let_450_)))
  (let ((_let_452_ (_field__rec_value _let_451_))) (let
  ((_let_453_ (_field__rec_vtype _let_451_))) (let
  ((_let_454_ (_field__rec_h_base _let_451_))) (let
  ((_let_455_ (_field__rec_h_length _let_451_))) (let
  ((_let_456_ (_field__rec_enc_state_p _let_451_))) (let
  ((_let_457_ (_field__rec_key_p _let_451_))) (let
  ((_let_458_ (_field__rec_enc_state_d _let_451_))) (let
  ((_let_459_ (_field__rec_key_d _let_451_))) (let
  ((_let_460_ (_field__rec_ca_nonce_used _let_451_))) (let
  ((_let_461_ (_field__rec_ca_Boolrue _let_451_))) (let
  ((_let_462_
    (_make__type_record_2_ _let_452_ _let_453_ _let_454_ _let_415_ _let_455_
     _let_456_ _let_457_ _let_458_ _let_459_ _let_460_ _let_461_)))
  (let ((_let_463_ (_field__rec_value _let_462_))) (let
  ((_let_464_ (_field__rec_vtype _let_462_))) (let
  ((_let_465_ (_field__rec_h_base _let_462_))) (let
  ((_let_466_ (_field__rec_h_offset _let_462_))) (let
  ((_let_467_ (_field__rec_enc_state_p _let_462_))) (let
  ((_let_468_ (_field__rec_key_p _let_462_))) (let
  ((_let_469_ (_field__rec_enc_state_d _let_462_))) (let
  ((_let_470_ (_field__rec_key_d _let_462_))) (let
  ((_let_471_ (_field__rec_ca_nonce_used _let_462_))) (let
  ((_let_472_ (_field__rec_ca_Boolrue _let_462_))) (let
  ((_let_473_
    (_make__type_record_2_ _let_463_ _let_464_ _let_465_ _let_466_ _let_414_
     _let_467_ _let_468_ _let_469_ _let_470_ _let_471_ _let_472_)))
  (let ((_let_474_ (_field__rec_value _let_473_))) (let
  ((_let_475_ (_field__rec_vtype _let_473_))) (let
  ((_let_476_ (_field__rec_h_base _let_473_))) (let
  ((_let_477_ (_field__rec_h_offset _let_473_))) (let
  ((_let_478_ (_field__rec_h_length _let_473_))) (let
  ((_let_479_ (_field__rec_enc_state_p _let_473_))) (let
  ((_let_480_ (_field__rec_key_p _let_473_))) (let
  ((_let_481_ (_field__rec_key_d _let_473_))) (let
  ((_let_482_ (_field__rec_ca_nonce_used _let_473_))) (let
  ((_let_483_ (_field__rec_ca_Boolrue _let_473_))) (let
  ((_let_484_
    (_make__type_record_2_ _let_474_ _let_475_ _let_476_ _let_477_ _let_478_
     _let_479_ _let_480_ _let_413_ _let_481_ _let_482_ _let_483_)))
  (let ((_let_485_ (_field__rec_value _let_484_))) (let
  ((_let_486_ (_field__rec_vtype _let_484_))) (let
  ((_let_487_ (_field__rec_h_base _let_484_))) (let
  ((_let_488_ (_field__rec_h_offset _let_484_))) (let
  ((_let_489_ (_field__rec_h_length _let_484_))) (let
  ((_let_490_ (_field__rec_key_p _let_484_))) (let
  ((_let_491_ (_field__rec_enc_state_d _let_484_))) (let
  ((_let_492_ (_field__rec_key_d _let_484_))) (let
  ((_let_493_ (_field__rec_ca_nonce_used _let_484_))) (let
  ((_let_494_ (_field__rec_ca_Boolrue _let_484_))) (let
  ((_let_495_
    (_make__type_record_2_ _let_485_ _let_486_ _let_487_ _let_488_ _let_489_
     GAR _let_490_ _let_491_ _let_492_ _let_493_ _let_494_)))
  (let
  ((_let_496_
    (_make__type_record_2_ _let_485_ _let_486_ _let_487_ _let_488_ _let_489_
     PLN _let_490_ _let_491_ _let_492_ _let_493_ _let_494_)))
  (let ((_let_497_ (_field__rec_key_p _let_410_))) (let
  ((_let_498_ (= _let_497_ ViKey))) (let
  ((_let_499_ (ite _let_498_ _let_496_ _let_495_))) (let
  ((_let_500_ (_field__rec_enc_state_p _let_410_))) (let
  ((_let_501_ (not (= _let_500_ ENC)))) (let
  ((_let_502_ (ite _let_501_ _let_495_ _let_499_))) (let
  ((_let_503_
    (_make__type_record_2_ _let_474_ _let_475_ _let_476_ _let_477_ _let_478_
     _let_479_ _let_480_ GAR _let_481_ _let_482_ _let_483_)))
  (let ((_let_504_ (_field__rec_value _let_503_))) (let
  ((_let_505_ (_field__rec_vtype _let_503_))) (let
  ((_let_506_ (_field__rec_h_base _let_503_))) (let
  ((_let_507_ (_field__rec_h_offset _let_503_))) (let
  ((_let_508_ (_field__rec_h_length _let_503_))) (let
  ((_let_509_ (_field__rec_key_p _let_503_))) (let
  ((_let_510_ (_field__rec_enc_state_d _let_503_))) (let
  ((_let_511_ (_field__rec_key_d _let_503_))) (let
  ((_let_512_ (_field__rec_ca_nonce_used _let_503_))) (let
  ((_let_513_ (_field__rec_ca_Boolrue _let_503_))) (let
  ((_let_514_
    (_make__type_record_2_ _let_504_ _let_505_ _let_506_ _let_507_ _let_508_
     GAR _let_509_ _let_510_ _let_511_ _let_512_ _let_513_)))
  (let ((_let_515_ (not (= _let_413_ PLN)))) (let
  ((_let_516_ (ite _let_515_ _let_514_ _let_502_))) (let
  ((_let_517_ (_field__rec_value _let_516_))) (let
  ((_let_518_ (_field__rec_vtype _let_516_))) (let
  ((_let_519_ (_field__rec_h_base _let_516_))) (let
  ((_let_520_ (_field__rec_h_offset _let_516_))) (let
  ((_let_521_ (_field__rec_h_length _let_516_))) (let
  ((_let_522_ (_field__rec_enc_state_p _let_516_))) (let
  ((_let_523_ (_field__rec_enc_state_d _let_516_))) (let
  ((_let_524_ (_field__rec_key_d _let_516_))) (let
  ((_let_525_ (_field__rec_ca_nonce_used _let_516_))) (let
  ((_let_526_ (_field__rec_ca_Boolrue _let_516_))) (let
  ((_let_527_
    (_make__type_record_2_ _let_517_ _let_518_ _let_519_ _let_520_ _let_521_
     _let_522_ NoKey _let_523_ _let_524_ _let_525_ _let_526_)))
  (let ((_let_528_ (_field__rec_value _let_527_))) (let
  ((_let_529_ (_field__rec_vtype _let_527_))) (let
  ((_let_530_ (_field__rec_h_base _let_527_))) (let
  ((_let_531_ (_field__rec_h_offset _let_527_))) (let
  ((_let_532_ (_field__rec_h_length _let_527_))) (let
  ((_let_533_ (_field__rec_enc_state_p _let_527_))) (let
  ((_let_534_ (_field__rec_key_p _let_527_))) (let
  ((_let_535_ (_field__rec_enc_state_d _let_527_))) (let
  ((_let_536_ (_field__rec_ca_nonce_used _let_527_))) (let
  ((_let_537_ (_field__rec_ca_Boolrue _let_527_))) (let
  ((_let_538_
    (_make__type_record_2_ _let_528_ _let_529_ _let_530_ _let_531_ _let_532_
     _let_533_ _let_534_ _let_535_ NoKey _let_536_ _let_537_)))
  (let ((_let_539_ (_field__rec_value _let_538_))) (let
  ((_let_540_ (_field__rec_vtype _let_538_))) (let
  ((_let_541_ (_field__rec_h_base _let_538_))) (let
  ((_let_542_ (_field__rec_h_offset _let_538_))) (let
  ((_let_543_ (_field__rec_h_length _let_538_))) (let
  ((_let_544_ (_field__rec_enc_state_p _let_538_))) (let
  ((_let_545_ (_field__rec_key_p _let_538_))) (let
  ((_let_546_ (_field__rec_enc_state_d _let_538_))) (let
  ((_let_547_ (_field__rec_key_d _let_538_))) (let
  ((_let_548_ (_field__rec_ca_nonce_used _let_538_))) (let
  ((_let_549_
    (_make__type_record_2_ _let_539_ _let_540_ _let_541_ _let_542_ _let_543_
     _let_544_ _let_545_ _let_546_ _let_547_ _let_548_ _let_412_)))
  (let ((_let_550_ (_field__rec_value _let_549_))) (let
  ((_let_551_ (_field__rec_vtype _let_549_))) (let
  ((_let_552_ (_field__rec_h_base _let_549_))) (let
  ((_let_553_ (_field__rec_h_offset _let_549_))) (let
  ((_let_554_ (_field__rec_h_length _let_549_))) (let
  ((_let_555_ (_field__rec_enc_state_p _let_549_))) (let
  ((_let_556_ (_field__rec_key_p _let_549_))) (let
  ((_let_557_ (_field__rec_enc_state_d _let_549_))) (let
  ((_let_558_ (_field__rec_key_d _let_549_))) (let
  ((_let_559_ (_field__rec_ca_Boolrue _let_549_))) (let
  ((_let_560_
    (_make__type_record_2_ _let_550_ _let_551_ _let_552_ _let_553_ _let_554_
     _let_555_ _let_556_ _let_557_ _let_558_ _let_411_ _let_559_)))
  (let ((_let_561_ (const___ucld_151_ghost_to_addr_value_c3 _let_560_))) (let
  ((_let_562_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_561_) #b0001)))))
  (let ((_let_563_ (not _let_562_))) (let
  ((_let_564_
    (ite _let_563_ initial_65___ucld_154_data_probe_var
     havoc_127_dec_cell_data)))
  (let
  ((_let_565_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_566_ (ite _let_565_ _let_564_ _let_409_))) (let
  ((_let_567_
    (ite initial_50_v _let_566_ initial_65___ucld_154_data_probe_var)))
  (let ((_let_568_ (= state_1___ucld_154_data_probe_var _let_567_)))
  _let_568_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun initial_56___ucld_171_ghost_mem_var () (_ BitVec 80))
(declare-fun state_1___ucld_171_ghost_mem_var () (_ BitVec 80))
(declare-fun havoc_180___ucld_49_ret_ghost_data_out () (_ BitVec 20))
(assert
 (let ((_let_569_ (_field__rec_newgmem havoc_193___ucld_34_ret_as))) (let
  ((_let_570_ (_field__rec_valid havoc_193___ucld_34_ret_as))) (let
  ((_let_571_ (ite _let_570_ _let_569_ initial_56___ucld_171_ghost_mem_var)))
  (let
  ((_let_572_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_573_ (ite _let_572_ _let_571_ initial_56___ucld_171_ghost_mem_var)))
  (let
  ((_let_574_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_575_ (_field__rec_ca_nonce_used _let_574_))) (let
  ((_let_576_ (_field__rec_ca_Boolrue _let_574_))) (let
  ((_let_577_ (_field__rec_enc_state_d _let_574_))) (let
  ((_let_578_ (_field__rec_h_length _let_574_))) (let
  ((_let_579_ (_field__rec_h_offset _let_574_))) (let
  ((_let_580_ (_field__rec_h_base _let_574_))) (let
  ((_let_581_ (_field__rec_vtype _let_574_))) (let
  ((_let_582_ (_field__rec_value _let_574_))) (let
  ((_let_583_ (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_584_ (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_585_ (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_586_ (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_587_
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_588_ (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_589_
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_590_ (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_591_
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_592_ (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_593_
    (_make__type_record_2_ _let_582_ _let_583_ _let_584_ _let_585_ _let_586_
     _let_587_ _let_588_ _let_589_ _let_590_ _let_591_ _let_592_)))
  (let ((_let_594_ (_field__rec_value _let_593_))) (let
  ((_let_595_ (_field__rec_h_base _let_593_))) (let
  ((_let_596_ (_field__rec_h_offset _let_593_))) (let
  ((_let_597_ (_field__rec_h_length _let_593_))) (let
  ((_let_598_ (_field__rec_enc_state_p _let_593_))) (let
  ((_let_599_ (_field__rec_key_p _let_593_))) (let
  ((_let_600_ (_field__rec_enc_state_d _let_593_))) (let
  ((_let_601_ (_field__rec_key_d _let_593_))) (let
  ((_let_602_ (_field__rec_ca_nonce_used _let_593_))) (let
  ((_let_603_ (_field__rec_ca_Boolrue _let_593_))) (let
  ((_let_604_
    (_make__type_record_2_ _let_594_ _let_581_ _let_595_ _let_596_ _let_597_
     _let_598_ _let_599_ _let_600_ _let_601_ _let_602_ _let_603_)))
  (let ((_let_605_ (_field__rec_value _let_604_))) (let
  ((_let_606_ (_field__rec_vtype _let_604_))) (let
  ((_let_607_ (_field__rec_h_offset _let_604_))) (let
  ((_let_608_ (_field__rec_h_length _let_604_))) (let
  ((_let_609_ (_field__rec_enc_state_p _let_604_))) (let
  ((_let_610_ (_field__rec_key_p _let_604_))) (let
  ((_let_611_ (_field__rec_enc_state_d _let_604_))) (let
  ((_let_612_ (_field__rec_key_d _let_604_))) (let
  ((_let_613_ (_field__rec_ca_nonce_used _let_604_))) (let
  ((_let_614_ (_field__rec_ca_Boolrue _let_604_))) (let
  ((_let_615_
    (_make__type_record_2_ _let_605_ _let_606_ _let_580_ _let_607_ _let_608_
     _let_609_ _let_610_ _let_611_ _let_612_ _let_613_ _let_614_)))
  (let ((_let_616_ (_field__rec_value _let_615_))) (let
  ((_let_617_ (_field__rec_vtype _let_615_))) (let
  ((_let_618_ (_field__rec_h_base _let_615_))) (let
  ((_let_619_ (_field__rec_h_length _let_615_))) (let
  ((_let_620_ (_field__rec_enc_state_p _let_615_))) (let
  ((_let_621_ (_field__rec_key_p _let_615_))) (let
  ((_let_622_ (_field__rec_enc_state_d _let_615_))) (let
  ((_let_623_ (_field__rec_key_d _let_615_))) (let
  ((_let_624_ (_field__rec_ca_nonce_used _let_615_))) (let
  ((_let_625_ (_field__rec_ca_Boolrue _let_615_))) (let
  ((_let_626_
    (_make__type_record_2_ _let_616_ _let_617_ _let_618_ _let_579_ _let_619_
     _let_620_ _let_621_ _let_622_ _let_623_ _let_624_ _let_625_)))
  (let ((_let_627_ (_field__rec_value _let_626_))) (let
  ((_let_628_ (_field__rec_vtype _let_626_))) (let
  ((_let_629_ (_field__rec_h_base _let_626_))) (let
  ((_let_630_ (_field__rec_h_offset _let_626_))) (let
  ((_let_631_ (_field__rec_enc_state_p _let_626_))) (let
  ((_let_632_ (_field__rec_key_p _let_626_))) (let
  ((_let_633_ (_field__rec_enc_state_d _let_626_))) (let
  ((_let_634_ (_field__rec_key_d _let_626_))) (let
  ((_let_635_ (_field__rec_ca_nonce_used _let_626_))) (let
  ((_let_636_ (_field__rec_ca_Boolrue _let_626_))) (let
  ((_let_637_
    (_make__type_record_2_ _let_627_ _let_628_ _let_629_ _let_630_ _let_578_
     _let_631_ _let_632_ _let_633_ _let_634_ _let_635_ _let_636_)))
  (let ((_let_638_ (_field__rec_value _let_637_))) (let
  ((_let_639_ (_field__rec_vtype _let_637_))) (let
  ((_let_640_ (_field__rec_h_base _let_637_))) (let
  ((_let_641_ (_field__rec_h_offset _let_637_))) (let
  ((_let_642_ (_field__rec_h_length _let_637_))) (let
  ((_let_643_ (_field__rec_enc_state_p _let_637_))) (let
  ((_let_644_ (_field__rec_key_p _let_637_))) (let
  ((_let_645_ (_field__rec_key_d _let_637_))) (let
  ((_let_646_ (_field__rec_ca_nonce_used _let_637_))) (let
  ((_let_647_ (_field__rec_ca_Boolrue _let_637_))) (let
  ((_let_648_
    (_make__type_record_2_ _let_638_ _let_639_ _let_640_ _let_641_ _let_642_
     _let_643_ _let_644_ _let_577_ _let_645_ _let_646_ _let_647_)))
  (let ((_let_649_ (_field__rec_value _let_648_))) (let
  ((_let_650_ (_field__rec_vtype _let_648_))) (let
  ((_let_651_ (_field__rec_h_base _let_648_))) (let
  ((_let_652_ (_field__rec_h_offset _let_648_))) (let
  ((_let_653_ (_field__rec_h_length _let_648_))) (let
  ((_let_654_ (_field__rec_key_p _let_648_))) (let
  ((_let_655_ (_field__rec_enc_state_d _let_648_))) (let
  ((_let_656_ (_field__rec_key_d _let_648_))) (let
  ((_let_657_ (_field__rec_ca_nonce_used _let_648_))) (let
  ((_let_658_ (_field__rec_ca_Boolrue _let_648_))) (let
  ((_let_659_
    (_make__type_record_2_ _let_649_ _let_650_ _let_651_ _let_652_ _let_653_
     GAR _let_654_ _let_655_ _let_656_ _let_657_ _let_658_)))
  (let
  ((_let_660_
    (_make__type_record_2_ _let_649_ _let_650_ _let_651_ _let_652_ _let_653_
     PLN _let_654_ _let_655_ _let_656_ _let_657_ _let_658_)))
  (let ((_let_661_ (_field__rec_key_p _let_574_))) (let
  ((_let_662_ (= _let_661_ ViKey))) (let
  ((_let_663_ (ite _let_662_ _let_660_ _let_659_))) (let
  ((_let_664_ (_field__rec_enc_state_p _let_574_))) (let
  ((_let_665_ (not (= _let_664_ ENC)))) (let
  ((_let_666_ (ite _let_665_ _let_659_ _let_663_))) (let
  ((_let_667_
    (_make__type_record_2_ _let_638_ _let_639_ _let_640_ _let_641_ _let_642_
     _let_643_ _let_644_ GAR _let_645_ _let_646_ _let_647_)))
  (let ((_let_668_ (_field__rec_value _let_667_))) (let
  ((_let_669_ (_field__rec_vtype _let_667_))) (let
  ((_let_670_ (_field__rec_h_base _let_667_))) (let
  ((_let_671_ (_field__rec_h_offset _let_667_))) (let
  ((_let_672_ (_field__rec_h_length _let_667_))) (let
  ((_let_673_ (_field__rec_key_p _let_667_))) (let
  ((_let_674_ (_field__rec_enc_state_d _let_667_))) (let
  ((_let_675_ (_field__rec_key_d _let_667_))) (let
  ((_let_676_ (_field__rec_ca_nonce_used _let_667_))) (let
  ((_let_677_ (_field__rec_ca_Boolrue _let_667_))) (let
  ((_let_678_
    (_make__type_record_2_ _let_668_ _let_669_ _let_670_ _let_671_ _let_672_
     GAR _let_673_ _let_674_ _let_675_ _let_676_ _let_677_)))
  (let ((_let_679_ (not (= _let_577_ PLN)))) (let
  ((_let_680_ (ite _let_679_ _let_678_ _let_666_))) (let
  ((_let_681_ (_field__rec_value _let_680_))) (let
  ((_let_682_ (_field__rec_vtype _let_680_))) (let
  ((_let_683_ (_field__rec_h_base _let_680_))) (let
  ((_let_684_ (_field__rec_h_offset _let_680_))) (let
  ((_let_685_ (_field__rec_h_length _let_680_))) (let
  ((_let_686_ (_field__rec_enc_state_p _let_680_))) (let
  ((_let_687_ (_field__rec_enc_state_d _let_680_))) (let
  ((_let_688_ (_field__rec_key_d _let_680_))) (let
  ((_let_689_ (_field__rec_ca_nonce_used _let_680_))) (let
  ((_let_690_ (_field__rec_ca_Boolrue _let_680_))) (let
  ((_let_691_
    (_make__type_record_2_ _let_681_ _let_682_ _let_683_ _let_684_ _let_685_
     _let_686_ NoKey _let_687_ _let_688_ _let_689_ _let_690_)))
  (let ((_let_692_ (_field__rec_value _let_691_))) (let
  ((_let_693_ (_field__rec_vtype _let_691_))) (let
  ((_let_694_ (_field__rec_h_base _let_691_))) (let
  ((_let_695_ (_field__rec_h_offset _let_691_))) (let
  ((_let_696_ (_field__rec_h_length _let_691_))) (let
  ((_let_697_ (_field__rec_enc_state_p _let_691_))) (let
  ((_let_698_ (_field__rec_key_p _let_691_))) (let
  ((_let_699_ (_field__rec_enc_state_d _let_691_))) (let
  ((_let_700_ (_field__rec_ca_nonce_used _let_691_))) (let
  ((_let_701_ (_field__rec_ca_Boolrue _let_691_))) (let
  ((_let_702_
    (_make__type_record_2_ _let_692_ _let_693_ _let_694_ _let_695_ _let_696_
     _let_697_ _let_698_ _let_699_ NoKey _let_700_ _let_701_)))
  (let ((_let_703_ (_field__rec_value _let_702_))) (let
  ((_let_704_ (_field__rec_vtype _let_702_))) (let
  ((_let_705_ (_field__rec_h_base _let_702_))) (let
  ((_let_706_ (_field__rec_h_offset _let_702_))) (let
  ((_let_707_ (_field__rec_h_length _let_702_))) (let
  ((_let_708_ (_field__rec_enc_state_p _let_702_))) (let
  ((_let_709_ (_field__rec_key_p _let_702_))) (let
  ((_let_710_ (_field__rec_enc_state_d _let_702_))) (let
  ((_let_711_ (_field__rec_key_d _let_702_))) (let
  ((_let_712_ (_field__rec_ca_nonce_used _let_702_))) (let
  ((_let_713_
    (_make__type_record_2_ _let_703_ _let_704_ _let_705_ _let_706_ _let_707_
     _let_708_ _let_709_ _let_710_ _let_711_ _let_712_ _let_576_)))
  (let ((_let_714_ (_field__rec_value _let_713_))) (let
  ((_let_715_ (_field__rec_vtype _let_713_))) (let
  ((_let_716_ (_field__rec_h_base _let_713_))) (let
  ((_let_717_ (_field__rec_h_offset _let_713_))) (let
  ((_let_718_ (_field__rec_h_length _let_713_))) (let
  ((_let_719_ (_field__rec_enc_state_p _let_713_))) (let
  ((_let_720_ (_field__rec_key_p _let_713_))) (let
  ((_let_721_ (_field__rec_enc_state_d _let_713_))) (let
  ((_let_722_ (_field__rec_key_d _let_713_))) (let
  ((_let_723_ (_field__rec_ca_Boolrue _let_713_))) (let
  ((_let_724_
    (_make__type_record_2_ _let_714_ _let_715_ _let_716_ _let_717_ _let_718_
     _let_719_ _let_720_ _let_721_ _let_722_ _let_575_ _let_723_)))
  (let ((_let_725_ (const___ucld_151_ghost_to_addr_value_c3 _let_724_))) (let
  ((_let_726_
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var
      (bvmul
       ((_ zero_extend 78) _let_725_)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_727_ (_field__rec_ca_Boolrue _let_726_))) (let
  ((_let_728_ (const___ucld_147_ghost_to_nonce_c3 _let_724_))) (let
  ((_let_729_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_730_ (_field__rec_key_p _let_729_))) (let
  ((_let_731_ (_field__rec_enc_state_p _let_729_))) (let
  ((_let_732_ (_field__rec_h_length _let_729_))) (let
  ((_let_733_ (_field__rec_h_offset _let_729_))) (let
  ((_let_734_ (_field__rec_h_base _let_729_))) (let
  ((_let_735_ (_field__rec_vtype _let_729_))) (let
  ((_let_736_ (_field__rec_value _let_729_))) (let
  ((_let_737_ (_field__rec_vtype havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_738_ (_field__rec_h_base havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_739_ (_field__rec_h_offset havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_740_ (_field__rec_h_length havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_741_
    (_field__rec_enc_state_p havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_742_ (_field__rec_key_p havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_743_
    (_field__rec_enc_state_d havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_744_ (_field__rec_key_d havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_745_
    (_field__rec_ca_nonce_used havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_746_ (_field__rec_ca_Boolrue havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_747_
    (_make__type_record_2_ _let_736_ _let_737_ _let_738_ _let_739_ _let_740_
     _let_741_ _let_742_ _let_743_ _let_744_ _let_745_ _let_746_)))
  (let ((_let_748_ (_field__rec_value _let_747_))) (let
  ((_let_749_ (_field__rec_h_base _let_747_))) (let
  ((_let_750_ (_field__rec_h_offset _let_747_))) (let
  ((_let_751_ (_field__rec_h_length _let_747_))) (let
  ((_let_752_ (_field__rec_enc_state_p _let_747_))) (let
  ((_let_753_ (_field__rec_key_p _let_747_))) (let
  ((_let_754_ (_field__rec_enc_state_d _let_747_))) (let
  ((_let_755_ (_field__rec_key_d _let_747_))) (let
  ((_let_756_ (_field__rec_ca_nonce_used _let_747_))) (let
  ((_let_757_ (_field__rec_ca_Boolrue _let_747_))) (let
  ((_let_758_
    (_make__type_record_2_ _let_748_ _let_735_ _let_749_ _let_750_ _let_751_
     _let_752_ _let_753_ _let_754_ _let_755_ _let_756_ _let_757_)))
  (let ((_let_759_ (_field__rec_value _let_758_))) (let
  ((_let_760_ (_field__rec_vtype _let_758_))) (let
  ((_let_761_ (_field__rec_h_offset _let_758_))) (let
  ((_let_762_ (_field__rec_h_length _let_758_))) (let
  ((_let_763_ (_field__rec_enc_state_p _let_758_))) (let
  ((_let_764_ (_field__rec_key_p _let_758_))) (let
  ((_let_765_ (_field__rec_enc_state_d _let_758_))) (let
  ((_let_766_ (_field__rec_key_d _let_758_))) (let
  ((_let_767_ (_field__rec_ca_nonce_used _let_758_))) (let
  ((_let_768_ (_field__rec_ca_Boolrue _let_758_))) (let
  ((_let_769_
    (_make__type_record_2_ _let_759_ _let_760_ _let_734_ _let_761_ _let_762_
     _let_763_ _let_764_ _let_765_ _let_766_ _let_767_ _let_768_)))
  (let ((_let_770_ (_field__rec_value _let_769_))) (let
  ((_let_771_ (_field__rec_vtype _let_769_))) (let
  ((_let_772_ (_field__rec_h_base _let_769_))) (let
  ((_let_773_ (_field__rec_h_length _let_769_))) (let
  ((_let_774_ (_field__rec_enc_state_p _let_769_))) (let
  ((_let_775_ (_field__rec_key_p _let_769_))) (let
  ((_let_776_ (_field__rec_enc_state_d _let_769_))) (let
  ((_let_777_ (_field__rec_key_d _let_769_))) (let
  ((_let_778_ (_field__rec_ca_nonce_used _let_769_))) (let
  ((_let_779_ (_field__rec_ca_Boolrue _let_769_))) (let
  ((_let_780_
    (_make__type_record_2_ _let_770_ _let_771_ _let_772_ _let_733_ _let_773_
     _let_774_ _let_775_ _let_776_ _let_777_ _let_778_ _let_779_)))
  (let ((_let_781_ (_field__rec_value _let_780_))) (let
  ((_let_782_ (_field__rec_vtype _let_780_))) (let
  ((_let_783_ (_field__rec_h_base _let_780_))) (let
  ((_let_784_ (_field__rec_h_offset _let_780_))) (let
  ((_let_785_ (_field__rec_enc_state_p _let_780_))) (let
  ((_let_786_ (_field__rec_key_p _let_780_))) (let
  ((_let_787_ (_field__rec_enc_state_d _let_780_))) (let
  ((_let_788_ (_field__rec_key_d _let_780_))) (let
  ((_let_789_ (_field__rec_ca_nonce_used _let_780_))) (let
  ((_let_790_ (_field__rec_ca_Boolrue _let_780_))) (let
  ((_let_791_
    (_make__type_record_2_ _let_781_ _let_782_ _let_783_ _let_784_ _let_732_
     _let_785_ _let_786_ _let_787_ _let_788_ _let_789_ _let_790_)))
  (let ((_let_792_ (_field__rec_value _let_791_))) (let
  ((_let_793_ (_field__rec_vtype _let_791_))) (let
  ((_let_794_ (_field__rec_h_base _let_791_))) (let
  ((_let_795_ (_field__rec_h_offset _let_791_))) (let
  ((_let_796_ (_field__rec_h_length _let_791_))) (let
  ((_let_797_ (_field__rec_enc_state_p _let_791_))) (let
  ((_let_798_ (_field__rec_key_p _let_791_))) (let
  ((_let_799_ (_field__rec_key_d _let_791_))) (let
  ((_let_800_ (_field__rec_ca_nonce_used _let_791_))) (let
  ((_let_801_ (_field__rec_ca_Boolrue _let_791_))) (let
  ((_let_802_
    (_make__type_record_2_ _let_792_ _let_793_ _let_794_ _let_795_ _let_796_
     _let_797_ _let_798_ ENC _let_799_ _let_800_ _let_801_)))
  (let ((_let_803_ (_field__rec_value _let_802_))) (let
  ((_let_804_ (_field__rec_vtype _let_802_))) (let
  ((_let_805_ (_field__rec_h_base _let_802_))) (let
  ((_let_806_ (_field__rec_h_offset _let_802_))) (let
  ((_let_807_ (_field__rec_h_length _let_802_))) (let
  ((_let_808_ (_field__rec_enc_state_p _let_802_))) (let
  ((_let_809_ (_field__rec_key_p _let_802_))) (let
  ((_let_810_ (_field__rec_enc_state_d _let_802_))) (let
  ((_let_811_ (_field__rec_ca_nonce_used _let_802_))) (let
  ((_let_812_ (_field__rec_ca_Boolrue _let_802_))) (let
  ((_let_813_
    (_make__type_record_2_ _let_803_ _let_804_ _let_805_ _let_806_ _let_807_
     _let_808_ _let_809_ _let_810_ ViKey _let_811_ _let_812_)))
  (let ((_let_814_ (_field__rec_value _let_813_))) (let
  ((_let_815_ (_field__rec_vtype _let_813_))) (let
  ((_let_816_ (_field__rec_h_base _let_813_))) (let
  ((_let_817_ (_field__rec_h_offset _let_813_))) (let
  ((_let_818_ (_field__rec_h_length _let_813_))) (let
  ((_let_819_ (_field__rec_key_p _let_813_))) (let
  ((_let_820_ (_field__rec_enc_state_d _let_813_))) (let
  ((_let_821_ (_field__rec_key_d _let_813_))) (let
  ((_let_822_ (_field__rec_ca_nonce_used _let_813_))) (let
  ((_let_823_ (_field__rec_ca_Boolrue _let_813_))) (let
  ((_let_824_
    (_make__type_record_2_ _let_814_ _let_815_ _let_816_ _let_817_ _let_818_
     _let_731_ _let_819_ _let_820_ _let_821_ _let_822_ _let_823_)))
  (let ((_let_825_ (_field__rec_value _let_824_))) (let
  ((_let_826_ (_field__rec_vtype _let_824_))) (let
  ((_let_827_ (_field__rec_h_base _let_824_))) (let
  ((_let_828_ (_field__rec_h_offset _let_824_))) (let
  ((_let_829_ (_field__rec_h_length _let_824_))) (let
  ((_let_830_ (_field__rec_enc_state_p _let_824_))) (let
  ((_let_831_ (_field__rec_enc_state_d _let_824_))) (let
  ((_let_832_ (_field__rec_key_d _let_824_))) (let
  ((_let_833_ (_field__rec_ca_nonce_used _let_824_))) (let
  ((_let_834_ (_field__rec_ca_Boolrue _let_824_))) (let
  ((_let_835_
    (_make__type_record_2_ _let_825_ _let_826_ _let_827_ _let_828_ _let_829_
     _let_830_ _let_730_ _let_831_ _let_832_ _let_833_ _let_834_)))
  (let
  ((_let_836_
    (_make__type_record_2_ _let_792_ _let_793_ _let_794_ _let_795_ _let_796_
     _let_797_ _let_798_ GAR _let_799_ _let_800_ _let_801_)))
  (let ((_let_837_ (_field__rec_value _let_836_))) (let
  ((_let_838_ (_field__rec_vtype _let_836_))) (let
  ((_let_839_ (_field__rec_h_base _let_836_))) (let
  ((_let_840_ (_field__rec_h_offset _let_836_))) (let
  ((_let_841_ (_field__rec_h_length _let_836_))) (let
  ((_let_842_ (_field__rec_enc_state_p _let_836_))) (let
  ((_let_843_ (_field__rec_key_p _let_836_))) (let
  ((_let_844_ (_field__rec_enc_state_d _let_836_))) (let
  ((_let_845_ (_field__rec_ca_nonce_used _let_836_))) (let
  ((_let_846_ (_field__rec_ca_Boolrue _let_836_))) (let
  ((_let_847_
    (_make__type_record_2_ _let_837_ _let_838_ _let_839_ _let_840_ _let_841_
     _let_842_ _let_843_ _let_844_ NoKey _let_845_ _let_846_)))
  (let ((_let_848_ (_field__rec_value _let_847_))) (let
  ((_let_849_ (_field__rec_vtype _let_847_))) (let
  ((_let_850_ (_field__rec_h_base _let_847_))) (let
  ((_let_851_ (_field__rec_h_offset _let_847_))) (let
  ((_let_852_ (_field__rec_h_length _let_847_))) (let
  ((_let_853_ (_field__rec_key_p _let_847_))) (let
  ((_let_854_ (_field__rec_enc_state_d _let_847_))) (let
  ((_let_855_ (_field__rec_key_d _let_847_))) (let
  ((_let_856_ (_field__rec_ca_nonce_used _let_847_))) (let
  ((_let_857_ (_field__rec_ca_Boolrue _let_847_))) (let
  ((_let_858_
    (_make__type_record_2_ _let_848_ _let_849_ _let_850_ _let_851_ _let_852_
     _let_731_ _let_853_ _let_854_ _let_855_ _let_856_ _let_857_)))
  (let ((_let_859_ (_field__rec_value _let_858_))) (let
  ((_let_860_ (_field__rec_vtype _let_858_))) (let
  ((_let_861_ (_field__rec_h_base _let_858_))) (let
  ((_let_862_ (_field__rec_h_offset _let_858_))) (let
  ((_let_863_ (_field__rec_h_length _let_858_))) (let
  ((_let_864_ (_field__rec_enc_state_p _let_858_))) (let
  ((_let_865_ (_field__rec_enc_state_d _let_858_))) (let
  ((_let_866_ (_field__rec_key_d _let_858_))) (let
  ((_let_867_ (_field__rec_ca_nonce_used _let_858_))) (let
  ((_let_868_ (_field__rec_ca_Boolrue _let_858_))) (let
  ((_let_869_
    (_make__type_record_2_ _let_859_ _let_860_ _let_861_ _let_862_ _let_863_
     _let_864_ _let_730_ _let_865_ _let_866_ _let_867_ _let_868_)))
  (let ((_let_870_ (not (= _let_727_ _let_728_)))) (let
  ((_let_871_ (ite _let_870_ _let_869_ _let_835_))) (let
  ((_let_872_ (_field__rec_enc_state_d _let_729_))) (let
  ((_let_873_ (not (= _let_872_ PLN)))) (let
  ((_let_874_ (ite _let_873_ _let_869_ _let_871_))) (let
  ((_let_875_ (_field__rec_value _let_874_))) (let
  ((_let_876_ (_field__rec_vtype _let_874_))) (let
  ((_let_877_ (_field__rec_h_base _let_874_))) (let
  ((_let_878_ (_field__rec_h_offset _let_874_))) (let
  ((_let_879_ (_field__rec_h_length _let_874_))) (let
  ((_let_880_ (_field__rec_enc_state_p _let_874_))) (let
  ((_let_881_ (_field__rec_key_p _let_874_))) (let
  ((_let_882_ (_field__rec_enc_state_d _let_874_))) (let
  ((_let_883_ (_field__rec_key_d _let_874_))) (let
  ((_let_884_ (_field__rec_ca_Boolrue _let_874_))) (let
  ((_let_885_
    (_make__type_record_2_ _let_875_ _let_876_ _let_877_ _let_878_ _let_879_
     _let_880_ _let_881_ _let_882_ _let_883_ _let_728_ _let_884_)))
  (let ((_let_886_ (_field__rec_value _let_885_))) (let
  ((_let_887_ (_field__rec_vtype _let_885_))) (let
  ((_let_888_ (_field__rec_h_base _let_885_))) (let
  ((_let_889_ (_field__rec_h_offset _let_885_))) (let
  ((_let_890_ (_field__rec_h_length _let_885_))) (let
  ((_let_891_ (_field__rec_enc_state_p _let_885_))) (let
  ((_let_892_ (_field__rec_key_p _let_885_))) (let
  ((_let_893_ (_field__rec_enc_state_d _let_885_))) (let
  ((_let_894_ (_field__rec_key_d _let_885_))) (let
  ((_let_895_ (_field__rec_ca_nonce_used _let_885_))) (let
  ((_let_896_
    (_make__type_record_2_ _let_886_ _let_887_ _let_888_ _let_889_ _let_890_
     _let_891_ _let_892_ _let_893_ _let_894_ _let_895_ _let_727_)))
  (let
  ((_let_897_
    (bvor
     (bvand
      initial_56___ucld_171_ghost_mem_var
      (bvxor
       (bvshl
        #b00000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 78) _let_725_))
       #b11111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl ((_ zero_extend 60) _let_896_) ((_ zero_extend 78) _let_725_)))))
  (let
  ((_let_898_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_725_) #b0001)))))
  (let
  ((_let_899_ (ite _let_898_ initial_56___ucld_171_ghost_mem_var _let_897_)))
  (let
  ((_let_900_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_901_ (ite _let_900_ _let_899_ _let_573_))) (let
  ((_let_902_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_903_ (ite _let_902_ initial_56___ucld_171_ghost_mem_var _let_901_)))
  (let
  ((_let_904_
    (ite initial_50_v _let_903_ initial_56___ucld_171_ghost_mem_var)))
  (let ((_let_905_ (= state_1___ucld_171_ghost_mem_var _let_904_)))
  _let_905_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun initial_60___ucld_164_shadow_mem_var () (_ BitVec 28))
(assert
 (let
  ((_let_906_
    (forall ((a1 (_ BitVec 2))) (forall ((a2 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
       (and
       (bvule (_field__rec_lowend
        (select initial_60___ucld_164_shadow_mem_var a1)) a2)
       (bvult
        a2
        (_field__rec_highend
        (select initial_60___ucld_164_shadow_mem_var a1)))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))))))))
  _let_906_))
(declare-fun state_1___ucld_155_src1_probe_g_var () (_ BitVec 20))
(declare-fun initial_49___ucld_155_src1_probe_g_var () (_ BitVec 20))
(assert
 (let
  ((_let_907_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let
  ((_let_908_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_909_
    (ite _let_908_ _let_907_ initial_49___ucld_155_src1_probe_g_var)))
  (let
  ((_let_910_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_911_
    (ite _let_910_ initial_49___ucld_155_src1_probe_g_var _let_909_)))
  (let
  ((_let_912_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_913_
    (ite _let_912_ initial_49___ucld_155_src1_probe_g_var _let_911_)))
  (let
  ((_let_914_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_915_
    (ite _let_914_ initial_49___ucld_155_src1_probe_g_var _let_913_)))
  (let
  ((_let_916_
    (ite initial_50_v _let_915_ initial_49___ucld_155_src1_probe_g_var)))
  (let
  ((_let_917_
    (and
     (or
      (and
       (= ((_ extract 19 19) state_1___ucld_155_src1_probe_g_var)
        ((_ extract 19 19) _let_916_))
       (and (and
       (or
        (and
         (= ((_ extract 14 13) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 14 13) _let_916_)))
        (and
         (= ((_ extract 14 13) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 14 13) _let_916_)))
        (and
         (= ((_ extract 14 13) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 14 13) _let_916_))))
       (not (= ((_ extract 14 13) state_1___ucld_155_src1_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 10 9) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 10 9) _let_916_)))
        (and
         (= ((_ extract 10 9) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 10 9) _let_916_)))
        (and
         (= ((_ extract 10 9) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 10 9) _let_916_))))
       (not (= ((_ extract 10 9) state_1___ucld_155_src1_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 12 11) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 12 11) _let_916_)))
        (and
         (= ((_ extract 12 11) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 12 11) _let_916_)))
        (and
         (= ((_ extract 12 11) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 12 11) _let_916_))))
       (not (= ((_ extract 12 11) state_1___ucld_155_src1_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 16 15) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 16 15) _let_916_)))
        (and
         (= ((_ extract 16 15) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 16 15) _let_916_)))
        (and
         (= ((_ extract 16 15) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 16 15) _let_916_))))
       (not (= ((_ extract 16 15) state_1___ucld_155_src1_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 2 2) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 2 2) _let_916_)))
        (and
         (= ((_ extract 2 2) state_1___ucld_155_src1_probe_g_var)
          ((_ extract 2 2) _let_916_))))))))
     (not (= ((_ extract 19 19) state_1___ucld_155_src1_probe_g_var) #b1)))))
  _let_917_))))))))))))
(declare-fun state_1___ucld_157_alloc_map_var () (_ BitVec 4))
(assert
 (let ((_let_918_ (_field__rec_newamap havoc_193___ucld_34_ret_as))) (let
  ((_let_919_ (_field__rec_valid havoc_193___ucld_34_ret_as))) (let
  ((_let_920_ (ite _let_919_ _let_918_ initial_51___ucld_157_alloc_map_var)))
  (let
  ((_let_921_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_922_ (ite _let_921_ _let_920_ initial_51___ucld_157_alloc_map_var)))
  (let
  ((_let_923_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_924_ (ite _let_923_ initial_51___ucld_157_alloc_map_var _let_922_)))
  (let
  ((_let_925_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_926_ (ite _let_925_ initial_51___ucld_157_alloc_map_var _let_924_)))
  (let
  ((_let_927_
    (ite initial_50_v _let_926_ initial_51___ucld_157_alloc_map_var)))
  (let ((_let_928_ (= state_1___ucld_157_alloc_map_var _let_927_)))
  _let_928_))))))))))))
(declare-fun havoc_237_newdata_g () (_ BitVec 20))
(declare-fun havoc_227_newdata () (_ BitVec 20))
(declare-fun havoc_225_nondet_arg () (_ BitVec 2))
(declare-fun havoc_143___ucld_41_ret_ghost_data_out () (_ BitVec 20))
(declare-fun state_1___ucld_169_data_probe_g_var () (_ BitVec 20))
(declare-fun initial_64___ucld_169_data_probe_g_var () (_ BitVec 20))
(assert
 (let
  ((_let_929_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_930_
    (ite _let_929_ havoc_237_newdata_g initial_64___ucld_169_data_probe_g_var)))
  (let
  ((_let_931_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_932_ (_field__rec_h_offset _let_931_))) (let
  ((_let_933_ (bvadd _let_932_ havoc_225_nondet_arg))) (let
  ((_let_934_ (_field__rec_value _let_931_))) (let
  ((_let_935_ (_field__rec_vtype _let_931_))) (let
  ((_let_936_ (_field__rec_h_base _let_931_))) (let
  ((_let_937_ (_field__rec_h_length _let_931_))) (let
  ((_let_938_ (_field__rec_enc_state_p _let_931_))) (let
  ((_let_939_ (_field__rec_key_p _let_931_))) (let
  ((_let_940_ (_field__rec_enc_state_d _let_931_))) (let
  ((_let_941_ (_field__rec_key_d _let_931_))) (let
  ((_let_942_ (_field__rec_ca_nonce_used _let_931_))) (let
  ((_let_943_ (_field__rec_ca_Boolrue _let_931_))) (let
  ((_let_944_
    (_make__type_record_2_ _let_934_ _let_935_ _let_936_ _let_933_ _let_937_
     _let_938_ _let_939_ _let_940_ _let_941_ _let_942_ _let_943_)))
  (let ((_let_945_ (_field__rec_value _let_944_))) (let
  ((_let_946_ (bvadd _let_945_ havoc_225_nondet_arg))) (let
  ((_let_947_ (_field__rec_vtype _let_944_))) (let
  ((_let_948_ (_field__rec_h_base _let_944_))) (let
  ((_let_949_ (_field__rec_h_offset _let_944_))) (let
  ((_let_950_ (_field__rec_h_length _let_944_))) (let
  ((_let_951_ (_field__rec_enc_state_p _let_944_))) (let
  ((_let_952_ (_field__rec_key_p _let_944_))) (let
  ((_let_953_ (_field__rec_enc_state_d _let_944_))) (let
  ((_let_954_ (_field__rec_key_d _let_944_))) (let
  ((_let_955_ (_field__rec_ca_nonce_used _let_944_))) (let
  ((_let_956_ (_field__rec_ca_Boolrue _let_944_))) (let
  ((_let_957_
    (_make__type_record_2_ _let_946_ _let_947_ _let_948_ _let_949_ _let_950_
     _let_951_ _let_952_ _let_953_ _let_954_ _let_955_ _let_956_)))
  (let ((_let_958_ (= _let_935_ HAN))) (let
  ((_let_959_ (ite _let_958_ _let_957_ havoc_227_newdata))) (let
  ((_let_960_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_961_ (ite _let_960_ _let_959_ _let_930_))) (let
  ((_let_962_ (_field__rec_allocg havoc_193___ucld_34_ret_as))) (let
  ((_let_963_
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) _let_962_)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var)))))
  (let ((_let_964_ (_field__rec_valid havoc_193___ucld_34_ret_as))) (let
  ((_let_965_ (ite _let_964_ _let_963_ initial_69___ucld_173_ghost_lmap_var)))
  (let
  ((_let_966_
    ((_ extract 19 0)
     (bvlshr
      _let_965_
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let
  ((_let_967_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_968_ (ite _let_967_ _let_966_ _let_961_))) (let
  ((_let_969_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_970_ (_field__rec_ca_nonce_used _let_969_))) (let
  ((_let_971_ (_field__rec_ca_Boolrue _let_969_))) (let
  ((_let_972_ (_field__rec_enc_state_d _let_969_))) (let
  ((_let_973_ (_field__rec_h_length _let_969_))) (let
  ((_let_974_ (_field__rec_h_offset _let_969_))) (let
  ((_let_975_ (_field__rec_h_base _let_969_))) (let
  ((_let_976_ (_field__rec_vtype _let_969_))) (let
  ((_let_977_ (_field__rec_value _let_969_))) (let
  ((_let_978_ (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_979_ (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_980_ (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_981_ (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_982_
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_983_ (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_984_
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_985_ (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_986_
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_987_ (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_988_
    (_make__type_record_2_ _let_977_ _let_978_ _let_979_ _let_980_ _let_981_
     _let_982_ _let_983_ _let_984_ _let_985_ _let_986_ _let_987_)))
  (let ((_let_989_ (_field__rec_value _let_988_))) (let
  ((_let_990_ (_field__rec_h_base _let_988_))) (let
  ((_let_991_ (_field__rec_h_offset _let_988_))) (let
  ((_let_992_ (_field__rec_h_length _let_988_))) (let
  ((_let_993_ (_field__rec_enc_state_p _let_988_))) (let
  ((_let_994_ (_field__rec_key_p _let_988_))) (let
  ((_let_995_ (_field__rec_enc_state_d _let_988_))) (let
  ((_let_996_ (_field__rec_key_d _let_988_))) (let
  ((_let_997_ (_field__rec_ca_nonce_used _let_988_))) (let
  ((_let_998_ (_field__rec_ca_Boolrue _let_988_))) (let
  ((_let_999_
    (_make__type_record_2_ _let_989_ _let_976_ _let_990_ _let_991_ _let_992_
     _let_993_ _let_994_ _let_995_ _let_996_ _let_997_ _let_998_)))
  (let ((_let_1000_ (_field__rec_value _let_999_))) (let
  ((_let_1001_ (_field__rec_vtype _let_999_))) (let
  ((_let_1002_ (_field__rec_h_offset _let_999_))) (let
  ((_let_1003_ (_field__rec_h_length _let_999_))) (let
  ((_let_1004_ (_field__rec_enc_state_p _let_999_))) (let
  ((_let_1005_ (_field__rec_key_p _let_999_))) (let
  ((_let_1006_ (_field__rec_enc_state_d _let_999_))) (let
  ((_let_1007_ (_field__rec_key_d _let_999_))) (let
  ((_let_1008_ (_field__rec_ca_nonce_used _let_999_))) (let
  ((_let_1009_ (_field__rec_ca_Boolrue _let_999_))) (let
  ((_let_1010_
    (_make__type_record_2_ _let_1000_ _let_1001_ _let_975_ _let_1002_
     _let_1003_ _let_1004_ _let_1005_ _let_1006_ _let_1007_ _let_1008_
     _let_1009_)))
  (let ((_let_1011_ (_field__rec_value _let_1010_))) (let
  ((_let_1012_ (_field__rec_vtype _let_1010_))) (let
  ((_let_1013_ (_field__rec_h_base _let_1010_))) (let
  ((_let_1014_ (_field__rec_h_length _let_1010_))) (let
  ((_let_1015_ (_field__rec_enc_state_p _let_1010_))) (let
  ((_let_1016_ (_field__rec_key_p _let_1010_))) (let
  ((_let_1017_ (_field__rec_enc_state_d _let_1010_))) (let
  ((_let_1018_ (_field__rec_key_d _let_1010_))) (let
  ((_let_1019_ (_field__rec_ca_nonce_used _let_1010_))) (let
  ((_let_1020_ (_field__rec_ca_Boolrue _let_1010_))) (let
  ((_let_1021_
    (_make__type_record_2_ _let_1011_ _let_1012_ _let_1013_ _let_974_
     _let_1014_ _let_1015_ _let_1016_ _let_1017_ _let_1018_ _let_1019_
     _let_1020_)))
  (let ((_let_1022_ (_field__rec_value _let_1021_))) (let
  ((_let_1023_ (_field__rec_vtype _let_1021_))) (let
  ((_let_1024_ (_field__rec_h_base _let_1021_))) (let
  ((_let_1025_ (_field__rec_h_offset _let_1021_))) (let
  ((_let_1026_ (_field__rec_enc_state_p _let_1021_))) (let
  ((_let_1027_ (_field__rec_key_p _let_1021_))) (let
  ((_let_1028_ (_field__rec_enc_state_d _let_1021_))) (let
  ((_let_1029_ (_field__rec_key_d _let_1021_))) (let
  ((_let_1030_ (_field__rec_ca_nonce_used _let_1021_))) (let
  ((_let_1031_ (_field__rec_ca_Boolrue _let_1021_))) (let
  ((_let_1032_
    (_make__type_record_2_ _let_1022_ _let_1023_ _let_1024_ _let_1025_
     _let_973_ _let_1026_ _let_1027_ _let_1028_ _let_1029_ _let_1030_
     _let_1031_)))
  (let ((_let_1033_ (_field__rec_value _let_1032_))) (let
  ((_let_1034_ (_field__rec_vtype _let_1032_))) (let
  ((_let_1035_ (_field__rec_h_base _let_1032_))) (let
  ((_let_1036_ (_field__rec_h_offset _let_1032_))) (let
  ((_let_1037_ (_field__rec_h_length _let_1032_))) (let
  ((_let_1038_ (_field__rec_enc_state_p _let_1032_))) (let
  ((_let_1039_ (_field__rec_key_p _let_1032_))) (let
  ((_let_1040_ (_field__rec_key_d _let_1032_))) (let
  ((_let_1041_ (_field__rec_ca_nonce_used _let_1032_))) (let
  ((_let_1042_ (_field__rec_ca_Boolrue _let_1032_))) (let
  ((_let_1043_
    (_make__type_record_2_ _let_1033_ _let_1034_ _let_1035_ _let_1036_
     _let_1037_ _let_1038_ _let_1039_ _let_972_ _let_1040_ _let_1041_
     _let_1042_)))
  (let ((_let_1044_ (_field__rec_value _let_1043_))) (let
  ((_let_1045_ (_field__rec_vtype _let_1043_))) (let
  ((_let_1046_ (_field__rec_h_base _let_1043_))) (let
  ((_let_1047_ (_field__rec_h_offset _let_1043_))) (let
  ((_let_1048_ (_field__rec_h_length _let_1043_))) (let
  ((_let_1049_ (_field__rec_key_p _let_1043_))) (let
  ((_let_1050_ (_field__rec_enc_state_d _let_1043_))) (let
  ((_let_1051_ (_field__rec_key_d _let_1043_))) (let
  ((_let_1052_ (_field__rec_ca_nonce_used _let_1043_))) (let
  ((_let_1053_ (_field__rec_ca_Boolrue _let_1043_))) (let
  ((_let_1054_
    (_make__type_record_2_ _let_1044_ _let_1045_ _let_1046_ _let_1047_
     _let_1048_ GAR _let_1049_ _let_1050_ _let_1051_ _let_1052_ _let_1053_)))
  (let
  ((_let_1055_
    (_make__type_record_2_ _let_1044_ _let_1045_ _let_1046_ _let_1047_
     _let_1048_ PLN _let_1049_ _let_1050_ _let_1051_ _let_1052_ _let_1053_)))
  (let ((_let_1056_ (_field__rec_key_p _let_969_))) (let
  ((_let_1057_ (= _let_1056_ ViKey))) (let
  ((_let_1058_ (ite _let_1057_ _let_1055_ _let_1054_))) (let
  ((_let_1059_ (_field__rec_enc_state_p _let_969_))) (let
  ((_let_1060_ (not (= _let_1059_ ENC)))) (let
  ((_let_1061_ (ite _let_1060_ _let_1054_ _let_1058_))) (let
  ((_let_1062_
    (_make__type_record_2_ _let_1033_ _let_1034_ _let_1035_ _let_1036_
     _let_1037_ _let_1038_ _let_1039_ GAR _let_1040_ _let_1041_ _let_1042_)))
  (let ((_let_1063_ (_field__rec_value _let_1062_))) (let
  ((_let_1064_ (_field__rec_vtype _let_1062_))) (let
  ((_let_1065_ (_field__rec_h_base _let_1062_))) (let
  ((_let_1066_ (_field__rec_h_offset _let_1062_))) (let
  ((_let_1067_ (_field__rec_h_length _let_1062_))) (let
  ((_let_1068_ (_field__rec_key_p _let_1062_))) (let
  ((_let_1069_ (_field__rec_enc_state_d _let_1062_))) (let
  ((_let_1070_ (_field__rec_key_d _let_1062_))) (let
  ((_let_1071_ (_field__rec_ca_nonce_used _let_1062_))) (let
  ((_let_1072_ (_field__rec_ca_Boolrue _let_1062_))) (let
  ((_let_1073_
    (_make__type_record_2_ _let_1063_ _let_1064_ _let_1065_ _let_1066_
     _let_1067_ GAR _let_1068_ _let_1069_ _let_1070_ _let_1071_ _let_1072_)))
  (let ((_let_1074_ (not (= _let_972_ PLN)))) (let
  ((_let_1075_ (ite _let_1074_ _let_1073_ _let_1061_))) (let
  ((_let_1076_ (_field__rec_value _let_1075_))) (let
  ((_let_1077_ (_field__rec_vtype _let_1075_))) (let
  ((_let_1078_ (_field__rec_h_base _let_1075_))) (let
  ((_let_1079_ (_field__rec_h_offset _let_1075_))) (let
  ((_let_1080_ (_field__rec_h_length _let_1075_))) (let
  ((_let_1081_ (_field__rec_enc_state_p _let_1075_))) (let
  ((_let_1082_ (_field__rec_enc_state_d _let_1075_))) (let
  ((_let_1083_ (_field__rec_key_d _let_1075_))) (let
  ((_let_1084_ (_field__rec_ca_nonce_used _let_1075_))) (let
  ((_let_1085_ (_field__rec_ca_Boolrue _let_1075_))) (let
  ((_let_1086_
    (_make__type_record_2_ _let_1076_ _let_1077_ _let_1078_ _let_1079_
     _let_1080_ _let_1081_ NoKey _let_1082_ _let_1083_ _let_1084_ _let_1085_)))
  (let ((_let_1087_ (_field__rec_value _let_1086_))) (let
  ((_let_1088_ (_field__rec_vtype _let_1086_))) (let
  ((_let_1089_ (_field__rec_h_base _let_1086_))) (let
  ((_let_1090_ (_field__rec_h_offset _let_1086_))) (let
  ((_let_1091_ (_field__rec_h_length _let_1086_))) (let
  ((_let_1092_ (_field__rec_enc_state_p _let_1086_))) (let
  ((_let_1093_ (_field__rec_key_p _let_1086_))) (let
  ((_let_1094_ (_field__rec_enc_state_d _let_1086_))) (let
  ((_let_1095_ (_field__rec_ca_nonce_used _let_1086_))) (let
  ((_let_1096_ (_field__rec_ca_Boolrue _let_1086_))) (let
  ((_let_1097_
    (_make__type_record_2_ _let_1087_ _let_1088_ _let_1089_ _let_1090_
     _let_1091_ _let_1092_ _let_1093_ _let_1094_ NoKey _let_1095_ _let_1096_)))
  (let ((_let_1098_ (_field__rec_value _let_1097_))) (let
  ((_let_1099_ (_field__rec_vtype _let_1097_))) (let
  ((_let_1100_ (_field__rec_h_base _let_1097_))) (let
  ((_let_1101_ (_field__rec_h_offset _let_1097_))) (let
  ((_let_1102_ (_field__rec_h_length _let_1097_))) (let
  ((_let_1103_ (_field__rec_enc_state_p _let_1097_))) (let
  ((_let_1104_ (_field__rec_key_p _let_1097_))) (let
  ((_let_1105_ (_field__rec_enc_state_d _let_1097_))) (let
  ((_let_1106_ (_field__rec_key_d _let_1097_))) (let
  ((_let_1107_ (_field__rec_ca_nonce_used _let_1097_))) (let
  ((_let_1108_
    (_make__type_record_2_ _let_1098_ _let_1099_ _let_1100_ _let_1101_
     _let_1102_ _let_1103_ _let_1104_ _let_1105_ _let_1106_ _let_1107_
     _let_971_)))
  (let ((_let_1109_ (_field__rec_value _let_1108_))) (let
  ((_let_1110_ (_field__rec_vtype _let_1108_))) (let
  ((_let_1111_ (_field__rec_h_base _let_1108_))) (let
  ((_let_1112_ (_field__rec_h_offset _let_1108_))) (let
  ((_let_1113_ (_field__rec_h_length _let_1108_))) (let
  ((_let_1114_ (_field__rec_enc_state_p _let_1108_))) (let
  ((_let_1115_ (_field__rec_key_p _let_1108_))) (let
  ((_let_1116_ (_field__rec_enc_state_d _let_1108_))) (let
  ((_let_1117_ (_field__rec_key_d _let_1108_))) (let
  ((_let_1118_ (_field__rec_ca_Boolrue _let_1108_))) (let
  ((_let_1119_
    (_make__type_record_2_ _let_1109_ _let_1110_ _let_1111_ _let_1112_
     _let_1113_ _let_1114_ _let_1115_ _let_1116_ _let_1117_ _let_970_
     _let_1118_)))
  (let ((_let_1120_ (const___ucld_151_ghost_to_addr_value_c3 _let_1119_)))
  (let
  ((_let_1121_
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var
      (bvmul
       ((_ zero_extend 78) _let_1120_)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_1122_ (_field__rec_ca_Boolrue _let_1121_))) (let
  ((_let_1123_ (const___ucld_147_ghost_to_nonce_c3 _let_1119_))) (let
  ((_let_1124_ (_field__rec_vtype havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_1125_ (_field__rec_h_base havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_1126_ (_field__rec_h_offset havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_1127_ (_field__rec_h_length havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_1128_
    (_field__rec_enc_state_p havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_1129_ (_field__rec_key_p havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_1130_
    (_field__rec_enc_state_d havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_1131_ (_field__rec_key_d havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_1132_
    (_field__rec_ca_nonce_used havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_1133_
    (_field__rec_ca_Boolrue havoc_180___ucld_49_ret_ghost_data_out)))
  (let
  ((_let_1134_
    (_make__type_record_2_ _let_934_ _let_1124_ _let_1125_ _let_1126_
     _let_1127_ _let_1128_ _let_1129_ _let_1130_ _let_1131_ _let_1132_
     _let_1133_)))
  (let ((_let_1135_ (_field__rec_value _let_1134_))) (let
  ((_let_1136_ (_field__rec_h_base _let_1134_))) (let
  ((_let_1137_ (_field__rec_h_offset _let_1134_))) (let
  ((_let_1138_ (_field__rec_h_length _let_1134_))) (let
  ((_let_1139_ (_field__rec_enc_state_p _let_1134_))) (let
  ((_let_1140_ (_field__rec_key_p _let_1134_))) (let
  ((_let_1141_ (_field__rec_enc_state_d _let_1134_))) (let
  ((_let_1142_ (_field__rec_key_d _let_1134_))) (let
  ((_let_1143_ (_field__rec_ca_nonce_used _let_1134_))) (let
  ((_let_1144_ (_field__rec_ca_Boolrue _let_1134_))) (let
  ((_let_1145_
    (_make__type_record_2_ _let_1135_ _let_935_ _let_1136_ _let_1137_
     _let_1138_ _let_1139_ _let_1140_ _let_1141_ _let_1142_ _let_1143_
     _let_1144_)))
  (let ((_let_1146_ (_field__rec_value _let_1145_))) (let
  ((_let_1147_ (_field__rec_vtype _let_1145_))) (let
  ((_let_1148_ (_field__rec_h_offset _let_1145_))) (let
  ((_let_1149_ (_field__rec_h_length _let_1145_))) (let
  ((_let_1150_ (_field__rec_enc_state_p _let_1145_))) (let
  ((_let_1151_ (_field__rec_key_p _let_1145_))) (let
  ((_let_1152_ (_field__rec_enc_state_d _let_1145_))) (let
  ((_let_1153_ (_field__rec_key_d _let_1145_))) (let
  ((_let_1154_ (_field__rec_ca_nonce_used _let_1145_))) (let
  ((_let_1155_ (_field__rec_ca_Boolrue _let_1145_))) (let
  ((_let_1156_
    (_make__type_record_2_ _let_1146_ _let_1147_ _let_936_ _let_1148_
     _let_1149_ _let_1150_ _let_1151_ _let_1152_ _let_1153_ _let_1154_
     _let_1155_)))
  (let ((_let_1157_ (_field__rec_value _let_1156_))) (let
  ((_let_1158_ (_field__rec_vtype _let_1156_))) (let
  ((_let_1159_ (_field__rec_h_base _let_1156_))) (let
  ((_let_1160_ (_field__rec_h_length _let_1156_))) (let
  ((_let_1161_ (_field__rec_enc_state_p _let_1156_))) (let
  ((_let_1162_ (_field__rec_key_p _let_1156_))) (let
  ((_let_1163_ (_field__rec_enc_state_d _let_1156_))) (let
  ((_let_1164_ (_field__rec_key_d _let_1156_))) (let
  ((_let_1165_ (_field__rec_ca_nonce_used _let_1156_))) (let
  ((_let_1166_ (_field__rec_ca_Boolrue _let_1156_))) (let
  ((_let_1167_
    (_make__type_record_2_ _let_1157_ _let_1158_ _let_1159_ _let_932_
     _let_1160_ _let_1161_ _let_1162_ _let_1163_ _let_1164_ _let_1165_
     _let_1166_)))
  (let ((_let_1168_ (_field__rec_value _let_1167_))) (let
  ((_let_1169_ (_field__rec_vtype _let_1167_))) (let
  ((_let_1170_ (_field__rec_h_base _let_1167_))) (let
  ((_let_1171_ (_field__rec_h_offset _let_1167_))) (let
  ((_let_1172_ (_field__rec_enc_state_p _let_1167_))) (let
  ((_let_1173_ (_field__rec_key_p _let_1167_))) (let
  ((_let_1174_ (_field__rec_enc_state_d _let_1167_))) (let
  ((_let_1175_ (_field__rec_key_d _let_1167_))) (let
  ((_let_1176_ (_field__rec_ca_nonce_used _let_1167_))) (let
  ((_let_1177_ (_field__rec_ca_Boolrue _let_1167_))) (let
  ((_let_1178_
    (_make__type_record_2_ _let_1168_ _let_1169_ _let_1170_ _let_1171_
     _let_937_ _let_1172_ _let_1173_ _let_1174_ _let_1175_ _let_1176_
     _let_1177_)))
  (let ((_let_1179_ (_field__rec_value _let_1178_))) (let
  ((_let_1180_ (_field__rec_vtype _let_1178_))) (let
  ((_let_1181_ (_field__rec_h_base _let_1178_))) (let
  ((_let_1182_ (_field__rec_h_offset _let_1178_))) (let
  ((_let_1183_ (_field__rec_h_length _let_1178_))) (let
  ((_let_1184_ (_field__rec_enc_state_p _let_1178_))) (let
  ((_let_1185_ (_field__rec_key_p _let_1178_))) (let
  ((_let_1186_ (_field__rec_key_d _let_1178_))) (let
  ((_let_1187_ (_field__rec_ca_nonce_used _let_1178_))) (let
  ((_let_1188_ (_field__rec_ca_Boolrue _let_1178_))) (let
  ((_let_1189_
    (_make__type_record_2_ _let_1179_ _let_1180_ _let_1181_ _let_1182_
     _let_1183_ _let_1184_ _let_1185_ ENC _let_1186_ _let_1187_ _let_1188_)))
  (let ((_let_1190_ (_field__rec_value _let_1189_))) (let
  ((_let_1191_ (_field__rec_vtype _let_1189_))) (let
  ((_let_1192_ (_field__rec_h_base _let_1189_))) (let
  ((_let_1193_ (_field__rec_h_offset _let_1189_))) (let
  ((_let_1194_ (_field__rec_h_length _let_1189_))) (let
  ((_let_1195_ (_field__rec_enc_state_p _let_1189_))) (let
  ((_let_1196_ (_field__rec_key_p _let_1189_))) (let
  ((_let_1197_ (_field__rec_enc_state_d _let_1189_))) (let
  ((_let_1198_ (_field__rec_ca_nonce_used _let_1189_))) (let
  ((_let_1199_ (_field__rec_ca_Boolrue _let_1189_))) (let
  ((_let_1200_
    (_make__type_record_2_ _let_1190_ _let_1191_ _let_1192_ _let_1193_
     _let_1194_ _let_1195_ _let_1196_ _let_1197_ ViKey _let_1198_ _let_1199_)))
  (let ((_let_1201_ (_field__rec_value _let_1200_))) (let
  ((_let_1202_ (_field__rec_vtype _let_1200_))) (let
  ((_let_1203_ (_field__rec_h_base _let_1200_))) (let
  ((_let_1204_ (_field__rec_h_offset _let_1200_))) (let
  ((_let_1205_ (_field__rec_h_length _let_1200_))) (let
  ((_let_1206_ (_field__rec_key_p _let_1200_))) (let
  ((_let_1207_ (_field__rec_enc_state_d _let_1200_))) (let
  ((_let_1208_ (_field__rec_key_d _let_1200_))) (let
  ((_let_1209_ (_field__rec_ca_nonce_used _let_1200_))) (let
  ((_let_1210_ (_field__rec_ca_Boolrue _let_1200_))) (let
  ((_let_1211_
    (_make__type_record_2_ _let_1201_ _let_1202_ _let_1203_ _let_1204_
     _let_1205_ _let_938_ _let_1206_ _let_1207_ _let_1208_ _let_1209_
     _let_1210_)))
  (let ((_let_1212_ (_field__rec_value _let_1211_))) (let
  ((_let_1213_ (_field__rec_vtype _let_1211_))) (let
  ((_let_1214_ (_field__rec_h_base _let_1211_))) (let
  ((_let_1215_ (_field__rec_h_offset _let_1211_))) (let
  ((_let_1216_ (_field__rec_h_length _let_1211_))) (let
  ((_let_1217_ (_field__rec_enc_state_p _let_1211_))) (let
  ((_let_1218_ (_field__rec_enc_state_d _let_1211_))) (let
  ((_let_1219_ (_field__rec_key_d _let_1211_))) (let
  ((_let_1220_ (_field__rec_ca_nonce_used _let_1211_))) (let
  ((_let_1221_ (_field__rec_ca_Boolrue _let_1211_))) (let
  ((_let_1222_
    (_make__type_record_2_ _let_1212_ _let_1213_ _let_1214_ _let_1215_
     _let_1216_ _let_1217_ _let_939_ _let_1218_ _let_1219_ _let_1220_
     _let_1221_)))
  (let
  ((_let_1223_
    (_make__type_record_2_ _let_1179_ _let_1180_ _let_1181_ _let_1182_
     _let_1183_ _let_1184_ _let_1185_ GAR _let_1186_ _let_1187_ _let_1188_)))
  (let ((_let_1224_ (_field__rec_value _let_1223_))) (let
  ((_let_1225_ (_field__rec_vtype _let_1223_))) (let
  ((_let_1226_ (_field__rec_h_base _let_1223_))) (let
  ((_let_1227_ (_field__rec_h_offset _let_1223_))) (let
  ((_let_1228_ (_field__rec_h_length _let_1223_))) (let
  ((_let_1229_ (_field__rec_enc_state_p _let_1223_))) (let
  ((_let_1230_ (_field__rec_key_p _let_1223_))) (let
  ((_let_1231_ (_field__rec_enc_state_d _let_1223_))) (let
  ((_let_1232_ (_field__rec_ca_nonce_used _let_1223_))) (let
  ((_let_1233_ (_field__rec_ca_Boolrue _let_1223_))) (let
  ((_let_1234_
    (_make__type_record_2_ _let_1224_ _let_1225_ _let_1226_ _let_1227_
     _let_1228_ _let_1229_ _let_1230_ _let_1231_ NoKey _let_1232_ _let_1233_)))
  (let ((_let_1235_ (_field__rec_value _let_1234_))) (let
  ((_let_1236_ (_field__rec_vtype _let_1234_))) (let
  ((_let_1237_ (_field__rec_h_base _let_1234_))) (let
  ((_let_1238_ (_field__rec_h_offset _let_1234_))) (let
  ((_let_1239_ (_field__rec_h_length _let_1234_))) (let
  ((_let_1240_ (_field__rec_key_p _let_1234_))) (let
  ((_let_1241_ (_field__rec_enc_state_d _let_1234_))) (let
  ((_let_1242_ (_field__rec_key_d _let_1234_))) (let
  ((_let_1243_ (_field__rec_ca_nonce_used _let_1234_))) (let
  ((_let_1244_ (_field__rec_ca_Boolrue _let_1234_))) (let
  ((_let_1245_
    (_make__type_record_2_ _let_1235_ _let_1236_ _let_1237_ _let_1238_
     _let_1239_ _let_938_ _let_1240_ _let_1241_ _let_1242_ _let_1243_
     _let_1244_)))
  (let ((_let_1246_ (_field__rec_value _let_1245_))) (let
  ((_let_1247_ (_field__rec_vtype _let_1245_))) (let
  ((_let_1248_ (_field__rec_h_base _let_1245_))) (let
  ((_let_1249_ (_field__rec_h_offset _let_1245_))) (let
  ((_let_1250_ (_field__rec_h_length _let_1245_))) (let
  ((_let_1251_ (_field__rec_enc_state_p _let_1245_))) (let
  ((_let_1252_ (_field__rec_enc_state_d _let_1245_))) (let
  ((_let_1253_ (_field__rec_key_d _let_1245_))) (let
  ((_let_1254_ (_field__rec_ca_nonce_used _let_1245_))) (let
  ((_let_1255_ (_field__rec_ca_Boolrue _let_1245_))) (let
  ((_let_1256_
    (_make__type_record_2_ _let_1246_ _let_1247_ _let_1248_ _let_1249_
     _let_1250_ _let_1251_ _let_939_ _let_1252_ _let_1253_ _let_1254_
     _let_1255_)))
  (let ((_let_1257_ (not (= _let_1122_ _let_1123_)))) (let
  ((_let_1258_ (ite _let_1257_ _let_1256_ _let_1222_))) (let
  ((_let_1259_ (not (= _let_940_ PLN)))) (let
  ((_let_1260_ (ite _let_1259_ _let_1256_ _let_1258_))) (let
  ((_let_1261_ (_field__rec_value _let_1260_))) (let
  ((_let_1262_ (_field__rec_vtype _let_1260_))) (let
  ((_let_1263_ (_field__rec_h_base _let_1260_))) (let
  ((_let_1264_ (_field__rec_h_offset _let_1260_))) (let
  ((_let_1265_ (_field__rec_h_length _let_1260_))) (let
  ((_let_1266_ (_field__rec_enc_state_p _let_1260_))) (let
  ((_let_1267_ (_field__rec_key_p _let_1260_))) (let
  ((_let_1268_ (_field__rec_enc_state_d _let_1260_))) (let
  ((_let_1269_ (_field__rec_key_d _let_1260_))) (let
  ((_let_1270_ (_field__rec_ca_Boolrue _let_1260_))) (let
  ((_let_1271_
    (_make__type_record_2_ _let_1261_ _let_1262_ _let_1263_ _let_1264_
     _let_1265_ _let_1266_ _let_1267_ _let_1268_ _let_1269_ _let_1123_
     _let_1270_)))
  (let ((_let_1272_ (_field__rec_value _let_1271_))) (let
  ((_let_1273_ (_field__rec_vtype _let_1271_))) (let
  ((_let_1274_ (_field__rec_h_base _let_1271_))) (let
  ((_let_1275_ (_field__rec_h_offset _let_1271_))) (let
  ((_let_1276_ (_field__rec_h_length _let_1271_))) (let
  ((_let_1277_ (_field__rec_enc_state_p _let_1271_))) (let
  ((_let_1278_ (_field__rec_key_p _let_1271_))) (let
  ((_let_1279_ (_field__rec_enc_state_d _let_1271_))) (let
  ((_let_1280_ (_field__rec_key_d _let_1271_))) (let
  ((_let_1281_ (_field__rec_ca_nonce_used _let_1271_))) (let
  ((_let_1282_
    (_make__type_record_2_ _let_1272_ _let_1273_ _let_1274_ _let_1275_
     _let_1276_ _let_1277_ _let_1278_ _let_1279_ _let_1280_ _let_1281_
     _let_1122_)))
  (let
  ((_let_1283_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_1120_) #b0001)))))
  (let
  ((_let_1284_
    (ite _let_1283_ initial_64___ucld_169_data_probe_g_var _let_1282_)))
  (let
  ((_let_1285_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_1286_ (ite _let_1285_ _let_1284_ _let_968_))) (let
  ((_let_1287_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1288_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1289_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1290_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1291_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1292_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1293_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1294_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1295_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1296_
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1297_
    (_make__type_record_2_ _let_934_ _let_1287_ _let_1288_ _let_1289_
     _let_1290_ _let_1291_ _let_1292_ _let_1293_ _let_1294_ _let_1295_
     _let_1296_)))
  (let ((_let_1298_ (_field__rec_value _let_1297_))) (let
  ((_let_1299_ (_field__rec_h_base _let_1297_))) (let
  ((_let_1300_ (_field__rec_h_offset _let_1297_))) (let
  ((_let_1301_ (_field__rec_h_length _let_1297_))) (let
  ((_let_1302_ (_field__rec_enc_state_p _let_1297_))) (let
  ((_let_1303_ (_field__rec_key_p _let_1297_))) (let
  ((_let_1304_ (_field__rec_enc_state_d _let_1297_))) (let
  ((_let_1305_ (_field__rec_key_d _let_1297_))) (let
  ((_let_1306_ (_field__rec_ca_nonce_used _let_1297_))) (let
  ((_let_1307_ (_field__rec_ca_Boolrue _let_1297_))) (let
  ((_let_1308_
    (_make__type_record_2_ _let_1298_ _let_935_ _let_1299_ _let_1300_
     _let_1301_ _let_1302_ _let_1303_ _let_1304_ _let_1305_ _let_1306_
     _let_1307_)))
  (let ((_let_1309_ (_field__rec_value _let_1308_))) (let
  ((_let_1310_ (_field__rec_vtype _let_1308_))) (let
  ((_let_1311_ (_field__rec_h_offset _let_1308_))) (let
  ((_let_1312_ (_field__rec_h_length _let_1308_))) (let
  ((_let_1313_ (_field__rec_enc_state_p _let_1308_))) (let
  ((_let_1314_ (_field__rec_key_p _let_1308_))) (let
  ((_let_1315_ (_field__rec_enc_state_d _let_1308_))) (let
  ((_let_1316_ (_field__rec_key_d _let_1308_))) (let
  ((_let_1317_ (_field__rec_ca_nonce_used _let_1308_))) (let
  ((_let_1318_ (_field__rec_ca_Boolrue _let_1308_))) (let
  ((_let_1319_
    (_make__type_record_2_ _let_1309_ _let_1310_ _let_936_ _let_1311_
     _let_1312_ _let_1313_ _let_1314_ _let_1315_ _let_1316_ _let_1317_
     _let_1318_)))
  (let ((_let_1320_ (_field__rec_value _let_1319_))) (let
  ((_let_1321_ (_field__rec_vtype _let_1319_))) (let
  ((_let_1322_ (_field__rec_h_base _let_1319_))) (let
  ((_let_1323_ (_field__rec_h_length _let_1319_))) (let
  ((_let_1324_ (_field__rec_enc_state_p _let_1319_))) (let
  ((_let_1325_ (_field__rec_key_p _let_1319_))) (let
  ((_let_1326_ (_field__rec_enc_state_d _let_1319_))) (let
  ((_let_1327_ (_field__rec_key_d _let_1319_))) (let
  ((_let_1328_ (_field__rec_ca_nonce_used _let_1319_))) (let
  ((_let_1329_ (_field__rec_ca_Boolrue _let_1319_))) (let
  ((_let_1330_
    (_make__type_record_2_ _let_1320_ _let_1321_ _let_1322_ _let_932_
     _let_1323_ _let_1324_ _let_1325_ _let_1326_ _let_1327_ _let_1328_
     _let_1329_)))
  (let ((_let_1331_ (_field__rec_value _let_1330_))) (let
  ((_let_1332_ (_field__rec_vtype _let_1330_))) (let
  ((_let_1333_ (_field__rec_h_base _let_1330_))) (let
  ((_let_1334_ (_field__rec_h_offset _let_1330_))) (let
  ((_let_1335_ (_field__rec_enc_state_p _let_1330_))) (let
  ((_let_1336_ (_field__rec_key_p _let_1330_))) (let
  ((_let_1337_ (_field__rec_enc_state_d _let_1330_))) (let
  ((_let_1338_ (_field__rec_key_d _let_1330_))) (let
  ((_let_1339_ (_field__rec_ca_nonce_used _let_1330_))) (let
  ((_let_1340_ (_field__rec_ca_Boolrue _let_1330_))) (let
  ((_let_1341_
    (_make__type_record_2_ _let_1331_ _let_1332_ _let_1333_ _let_1334_
     _let_937_ _let_1335_ _let_1336_ _let_1337_ _let_1338_ _let_1339_
     _let_1340_)))
  (let ((_let_1342_ (_field__rec_value _let_1341_))) (let
  ((_let_1343_ (_field__rec_vtype _let_1341_))) (let
  ((_let_1344_ (_field__rec_h_base _let_1341_))) (let
  ((_let_1345_ (_field__rec_h_offset _let_1341_))) (let
  ((_let_1346_ (_field__rec_h_length _let_1341_))) (let
  ((_let_1347_ (_field__rec_enc_state_p _let_1341_))) (let
  ((_let_1348_ (_field__rec_key_p _let_1341_))) (let
  ((_let_1349_ (_field__rec_key_d _let_1341_))) (let
  ((_let_1350_ (_field__rec_ca_nonce_used _let_1341_))) (let
  ((_let_1351_ (_field__rec_ca_Boolrue _let_1341_))) (let
  ((_let_1352_
    (_make__type_record_2_ _let_1342_ _let_1343_ _let_1344_ _let_1345_
     _let_1346_ _let_1347_ _let_1348_ _let_940_ _let_1349_ _let_1350_
     _let_1351_)))
  (let ((_let_1353_ (_field__rec_value _let_1352_))) (let
  ((_let_1354_ (_field__rec_vtype _let_1352_))) (let
  ((_let_1355_ (_field__rec_h_base _let_1352_))) (let
  ((_let_1356_ (_field__rec_h_offset _let_1352_))) (let
  ((_let_1357_ (_field__rec_h_length _let_1352_))) (let
  ((_let_1358_ (_field__rec_key_p _let_1352_))) (let
  ((_let_1359_ (_field__rec_enc_state_d _let_1352_))) (let
  ((_let_1360_ (_field__rec_key_d _let_1352_))) (let
  ((_let_1361_ (_field__rec_ca_nonce_used _let_1352_))) (let
  ((_let_1362_ (_field__rec_ca_Boolrue _let_1352_))) (let
  ((_let_1363_
    (_make__type_record_2_ _let_1353_ _let_1354_ _let_1355_ _let_1356_
     _let_1357_ GAR _let_1358_ _let_1359_ _let_1360_ _let_1361_ _let_1362_)))
  (let
  ((_let_1364_
    (_make__type_record_2_ _let_1353_ _let_1354_ _let_1355_ _let_1356_
     _let_1357_ PLN _let_1358_ _let_1359_ _let_1360_ _let_1361_ _let_1362_)))
  (let ((_let_1365_ (= _let_939_ ViKey))) (let
  ((_let_1366_ (ite _let_1365_ _let_1364_ _let_1363_))) (let
  ((_let_1367_ (not (= _let_938_ ENC)))) (let
  ((_let_1368_ (ite _let_1367_ _let_1363_ _let_1366_))) (let
  ((_let_1369_
    (_make__type_record_2_ _let_1342_ _let_1343_ _let_1344_ _let_1345_
     _let_1346_ _let_1347_ _let_1348_ GAR _let_1349_ _let_1350_ _let_1351_)))
  (let ((_let_1370_ (_field__rec_value _let_1369_))) (let
  ((_let_1371_ (_field__rec_vtype _let_1369_))) (let
  ((_let_1372_ (_field__rec_h_base _let_1369_))) (let
  ((_let_1373_ (_field__rec_h_offset _let_1369_))) (let
  ((_let_1374_ (_field__rec_h_length _let_1369_))) (let
  ((_let_1375_ (_field__rec_key_p _let_1369_))) (let
  ((_let_1376_ (_field__rec_enc_state_d _let_1369_))) (let
  ((_let_1377_ (_field__rec_key_d _let_1369_))) (let
  ((_let_1378_ (_field__rec_ca_nonce_used _let_1369_))) (let
  ((_let_1379_ (_field__rec_ca_Boolrue _let_1369_))) (let
  ((_let_1380_
    (_make__type_record_2_ _let_1370_ _let_1371_ _let_1372_ _let_1373_
     _let_1374_ GAR _let_1375_ _let_1376_ _let_1377_ _let_1378_ _let_1379_)))
  (let ((_let_1381_ (ite _let_1259_ _let_1380_ _let_1368_))) (let
  ((_let_1382_ (_field__rec_value _let_1381_))) (let
  ((_let_1383_ (_field__rec_vtype _let_1381_))) (let
  ((_let_1384_ (_field__rec_h_base _let_1381_))) (let
  ((_let_1385_ (_field__rec_h_offset _let_1381_))) (let
  ((_let_1386_ (_field__rec_h_length _let_1381_))) (let
  ((_let_1387_ (_field__rec_enc_state_p _let_1381_))) (let
  ((_let_1388_ (_field__rec_enc_state_d _let_1381_))) (let
  ((_let_1389_ (_field__rec_key_d _let_1381_))) (let
  ((_let_1390_ (_field__rec_ca_nonce_used _let_1381_))) (let
  ((_let_1391_ (_field__rec_ca_Boolrue _let_1381_))) (let
  ((_let_1392_
    (_make__type_record_2_ _let_1382_ _let_1383_ _let_1384_ _let_1385_
     _let_1386_ _let_1387_ NoKey _let_1388_ _let_1389_ _let_1390_ _let_1391_)))
  (let ((_let_1393_ (_field__rec_value _let_1392_))) (let
  ((_let_1394_ (_field__rec_vtype _let_1392_))) (let
  ((_let_1395_ (_field__rec_h_base _let_1392_))) (let
  ((_let_1396_ (_field__rec_h_offset _let_1392_))) (let
  ((_let_1397_ (_field__rec_h_length _let_1392_))) (let
  ((_let_1398_ (_field__rec_enc_state_p _let_1392_))) (let
  ((_let_1399_ (_field__rec_key_p _let_1392_))) (let
  ((_let_1400_ (_field__rec_enc_state_d _let_1392_))) (let
  ((_let_1401_ (_field__rec_ca_nonce_used _let_1392_))) (let
  ((_let_1402_ (_field__rec_ca_Boolrue _let_1392_))) (let
  ((_let_1403_
    (_make__type_record_2_ _let_1393_ _let_1394_ _let_1395_ _let_1396_
     _let_1397_ _let_1398_ _let_1399_ _let_1400_ NoKey _let_1401_ _let_1402_)))
  (let ((_let_1404_ (_field__rec_value _let_1403_))) (let
  ((_let_1405_ (_field__rec_vtype _let_1403_))) (let
  ((_let_1406_ (_field__rec_h_base _let_1403_))) (let
  ((_let_1407_ (_field__rec_h_offset _let_1403_))) (let
  ((_let_1408_ (_field__rec_h_length _let_1403_))) (let
  ((_let_1409_ (_field__rec_enc_state_p _let_1403_))) (let
  ((_let_1410_ (_field__rec_key_p _let_1403_))) (let
  ((_let_1411_ (_field__rec_enc_state_d _let_1403_))) (let
  ((_let_1412_ (_field__rec_key_d _let_1403_))) (let
  ((_let_1413_ (_field__rec_ca_nonce_used _let_1403_))) (let
  ((_let_1414_
    (_make__type_record_2_ _let_1404_ _let_1405_ _let_1406_ _let_1407_
     _let_1408_ _let_1409_ _let_1410_ _let_1411_ _let_1412_ _let_1413_
     _let_943_)))
  (let ((_let_1415_ (_field__rec_value _let_1414_))) (let
  ((_let_1416_ (_field__rec_vtype _let_1414_))) (let
  ((_let_1417_ (_field__rec_h_base _let_1414_))) (let
  ((_let_1418_ (_field__rec_h_offset _let_1414_))) (let
  ((_let_1419_ (_field__rec_h_length _let_1414_))) (let
  ((_let_1420_ (_field__rec_enc_state_p _let_1414_))) (let
  ((_let_1421_ (_field__rec_key_p _let_1414_))) (let
  ((_let_1422_ (_field__rec_enc_state_d _let_1414_))) (let
  ((_let_1423_ (_field__rec_key_d _let_1414_))) (let
  ((_let_1424_ (_field__rec_ca_Boolrue _let_1414_))) (let
  ((_let_1425_
    (_make__type_record_2_ _let_1415_ _let_1416_ _let_1417_ _let_1418_
     _let_1419_ _let_1420_ _let_1421_ _let_1422_ _let_1423_ _let_942_
     _let_1424_)))
  (let ((_let_1426_ (const___ucld_151_ghost_to_addr_value_c3 _let_1425_)))
  (let
  ((_let_1427_
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var
      (bvmul
       ((_ zero_extend 78) _let_1426_)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_1428_ (_field__rec_ca_Boolrue _let_1427_))) (let
  ((_let_1429_ (_field__rec_ca_nonce_used _let_1427_))) (let
  ((_let_1430_ (_field__rec_key_p _let_1427_))) (let
  ((_let_1431_ (_field__rec_enc_state_p _let_1427_))) (let
  ((_let_1432_ (_field__rec_h_length _let_1427_))) (let
  ((_let_1433_ (_field__rec_h_offset _let_1427_))) (let
  ((_let_1434_ (_field__rec_h_base _let_1427_))) (let
  ((_let_1435_ (_field__rec_vtype _let_1427_))) (let
  ((_let_1436_ (_field__rec_value _let_1427_))) (let
  ((_let_1437_ (_field__rec_vtype havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_1438_ (_field__rec_h_base havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_1439_ (_field__rec_h_offset havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_1440_ (_field__rec_h_length havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_1441_
    (_field__rec_enc_state_p havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_1442_ (_field__rec_key_p havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_1443_
    (_field__rec_enc_state_d havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_1444_ (_field__rec_key_d havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_1445_
    (_field__rec_ca_nonce_used havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_1446_
    (_field__rec_ca_Boolrue havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_1447_
    (_make__type_record_2_ _let_1436_ _let_1437_ _let_1438_ _let_1439_
     _let_1440_ _let_1441_ _let_1442_ _let_1443_ _let_1444_ _let_1445_
     _let_1446_)))
  (let ((_let_1448_ (_field__rec_value _let_1447_))) (let
  ((_let_1449_ (_field__rec_h_base _let_1447_))) (let
  ((_let_1450_ (_field__rec_h_offset _let_1447_))) (let
  ((_let_1451_ (_field__rec_h_length _let_1447_))) (let
  ((_let_1452_ (_field__rec_enc_state_p _let_1447_))) (let
  ((_let_1453_ (_field__rec_key_p _let_1447_))) (let
  ((_let_1454_ (_field__rec_enc_state_d _let_1447_))) (let
  ((_let_1455_ (_field__rec_key_d _let_1447_))) (let
  ((_let_1456_ (_field__rec_ca_nonce_used _let_1447_))) (let
  ((_let_1457_ (_field__rec_ca_Boolrue _let_1447_))) (let
  ((_let_1458_
    (_make__type_record_2_ _let_1448_ _let_1435_ _let_1449_ _let_1450_
     _let_1451_ _let_1452_ _let_1453_ _let_1454_ _let_1455_ _let_1456_
     _let_1457_)))
  (let ((_let_1459_ (_field__rec_value _let_1458_))) (let
  ((_let_1460_ (_field__rec_vtype _let_1458_))) (let
  ((_let_1461_ (_field__rec_h_offset _let_1458_))) (let
  ((_let_1462_ (_field__rec_h_length _let_1458_))) (let
  ((_let_1463_ (_field__rec_enc_state_p _let_1458_))) (let
  ((_let_1464_ (_field__rec_key_p _let_1458_))) (let
  ((_let_1465_ (_field__rec_enc_state_d _let_1458_))) (let
  ((_let_1466_ (_field__rec_key_d _let_1458_))) (let
  ((_let_1467_ (_field__rec_ca_nonce_used _let_1458_))) (let
  ((_let_1468_ (_field__rec_ca_Boolrue _let_1458_))) (let
  ((_let_1469_
    (_make__type_record_2_ _let_1459_ _let_1460_ _let_1434_ _let_1461_
     _let_1462_ _let_1463_ _let_1464_ _let_1465_ _let_1466_ _let_1467_
     _let_1468_)))
  (let ((_let_1470_ (_field__rec_value _let_1469_))) (let
  ((_let_1471_ (_field__rec_vtype _let_1469_))) (let
  ((_let_1472_ (_field__rec_h_base _let_1469_))) (let
  ((_let_1473_ (_field__rec_h_length _let_1469_))) (let
  ((_let_1474_ (_field__rec_enc_state_p _let_1469_))) (let
  ((_let_1475_ (_field__rec_key_p _let_1469_))) (let
  ((_let_1476_ (_field__rec_enc_state_d _let_1469_))) (let
  ((_let_1477_ (_field__rec_key_d _let_1469_))) (let
  ((_let_1478_ (_field__rec_ca_nonce_used _let_1469_))) (let
  ((_let_1479_ (_field__rec_ca_Boolrue _let_1469_))) (let
  ((_let_1480_
    (_make__type_record_2_ _let_1470_ _let_1471_ _let_1472_ _let_1433_
     _let_1473_ _let_1474_ _let_1475_ _let_1476_ _let_1477_ _let_1478_
     _let_1479_)))
  (let ((_let_1481_ (_field__rec_value _let_1480_))) (let
  ((_let_1482_ (_field__rec_vtype _let_1480_))) (let
  ((_let_1483_ (_field__rec_h_base _let_1480_))) (let
  ((_let_1484_ (_field__rec_h_offset _let_1480_))) (let
  ((_let_1485_ (_field__rec_enc_state_p _let_1480_))) (let
  ((_let_1486_ (_field__rec_key_p _let_1480_))) (let
  ((_let_1487_ (_field__rec_enc_state_d _let_1480_))) (let
  ((_let_1488_ (_field__rec_key_d _let_1480_))) (let
  ((_let_1489_ (_field__rec_ca_nonce_used _let_1480_))) (let
  ((_let_1490_ (_field__rec_ca_Boolrue _let_1480_))) (let
  ((_let_1491_
    (_make__type_record_2_ _let_1481_ _let_1482_ _let_1483_ _let_1484_
     _let_1432_ _let_1485_ _let_1486_ _let_1487_ _let_1488_ _let_1489_
     _let_1490_)))
  (let ((_let_1492_ (_field__rec_value _let_1491_))) (let
  ((_let_1493_ (_field__rec_vtype _let_1491_))) (let
  ((_let_1494_ (_field__rec_h_base _let_1491_))) (let
  ((_let_1495_ (_field__rec_h_offset _let_1491_))) (let
  ((_let_1496_ (_field__rec_h_length _let_1491_))) (let
  ((_let_1497_ (_field__rec_enc_state_p _let_1491_))) (let
  ((_let_1498_ (_field__rec_key_p _let_1491_))) (let
  ((_let_1499_ (_field__rec_key_d _let_1491_))) (let
  ((_let_1500_ (_field__rec_ca_nonce_used _let_1491_))) (let
  ((_let_1501_ (_field__rec_ca_Boolrue _let_1491_))) (let
  ((_let_1502_
    (_make__type_record_2_ _let_1492_ _let_1493_ _let_1494_ _let_1495_
     _let_1496_ _let_1497_ _let_1498_ GAR _let_1499_ _let_1500_ _let_1501_)))
  (let ((_let_1503_ (_field__rec_value _let_1502_))) (let
  ((_let_1504_ (_field__rec_vtype _let_1502_))) (let
  ((_let_1505_ (_field__rec_h_base _let_1502_))) (let
  ((_let_1506_ (_field__rec_h_offset _let_1502_))) (let
  ((_let_1507_ (_field__rec_h_length _let_1502_))) (let
  ((_let_1508_ (_field__rec_enc_state_p _let_1502_))) (let
  ((_let_1509_ (_field__rec_key_p _let_1502_))) (let
  ((_let_1510_ (_field__rec_enc_state_d _let_1502_))) (let
  ((_let_1511_ (_field__rec_ca_nonce_used _let_1502_))) (let
  ((_let_1512_ (_field__rec_ca_Boolrue _let_1502_))) (let
  ((_let_1513_
    (_make__type_record_2_ _let_1503_ _let_1504_ _let_1505_ _let_1506_
     _let_1507_ _let_1508_ _let_1509_ _let_1510_ NoKey _let_1511_ _let_1512_)))
  (let
  ((_let_1514_
    (_make__type_record_2_ _let_1492_ _let_1493_ _let_1494_ _let_1495_
     _let_1496_ _let_1497_ _let_1498_ PLN _let_1499_ _let_1500_ _let_1501_)))
  (let ((_let_1515_ (_field__rec_value _let_1514_))) (let
  ((_let_1516_ (_field__rec_vtype _let_1514_))) (let
  ((_let_1517_ (_field__rec_h_base _let_1514_))) (let
  ((_let_1518_ (_field__rec_h_offset _let_1514_))) (let
  ((_let_1519_ (_field__rec_h_length _let_1514_))) (let
  ((_let_1520_ (_field__rec_enc_state_p _let_1514_))) (let
  ((_let_1521_ (_field__rec_key_p _let_1514_))) (let
  ((_let_1522_ (_field__rec_enc_state_d _let_1514_))) (let
  ((_let_1523_ (_field__rec_ca_nonce_used _let_1514_))) (let
  ((_let_1524_ (_field__rec_ca_Boolrue _let_1514_))) (let
  ((_let_1525_
    (_make__type_record_2_ _let_1515_ _let_1516_ _let_1517_ _let_1518_
     _let_1519_ _let_1520_ _let_1521_ _let_1522_ NoKey _let_1523_ _let_1524_)))
  (let ((_let_1526_ (const___ucld_147_ghost_to_nonce_c3 _let_1425_))) (let
  ((_let_1527_ (= _let_1429_ _let_1526_))) (let
  ((_let_1528_ (_field__rec_key_d _let_1427_))) (let
  ((_let_1529_ (= _let_1528_ ViKey))) (let
  ((_let_1530_ (and _let_1529_ _let_1527_))) (let
  ((_let_1531_ (ite _let_1530_ _let_1525_ _let_1513_))) (let
  ((_let_1532_ (_field__rec_enc_state_d _let_1427_))) (let
  ((_let_1533_ (not (= _let_1532_ ENC)))) (let
  ((_let_1534_ (ite _let_1533_ _let_1513_ _let_1531_))) (let
  ((_let_1535_ (_field__rec_value _let_1534_))) (let
  ((_let_1536_ (_field__rec_vtype _let_1534_))) (let
  ((_let_1537_ (_field__rec_h_base _let_1534_))) (let
  ((_let_1538_ (_field__rec_h_offset _let_1534_))) (let
  ((_let_1539_ (_field__rec_h_length _let_1534_))) (let
  ((_let_1540_ (_field__rec_key_p _let_1534_))) (let
  ((_let_1541_ (_field__rec_enc_state_d _let_1534_))) (let
  ((_let_1542_ (_field__rec_key_d _let_1534_))) (let
  ((_let_1543_ (_field__rec_ca_nonce_used _let_1534_))) (let
  ((_let_1544_ (_field__rec_ca_Boolrue _let_1534_))) (let
  ((_let_1545_
    (_make__type_record_2_ _let_1535_ _let_1536_ _let_1537_ _let_1538_
     _let_1539_ _let_1431_ _let_1540_ _let_1541_ _let_1542_ _let_1543_
     _let_1544_)))
  (let ((_let_1546_ (_field__rec_value _let_1545_))) (let
  ((_let_1547_ (_field__rec_vtype _let_1545_))) (let
  ((_let_1548_ (_field__rec_h_base _let_1545_))) (let
  ((_let_1549_ (_field__rec_h_offset _let_1545_))) (let
  ((_let_1550_ (_field__rec_h_length _let_1545_))) (let
  ((_let_1551_ (_field__rec_enc_state_p _let_1545_))) (let
  ((_let_1552_ (_field__rec_enc_state_d _let_1545_))) (let
  ((_let_1553_ (_field__rec_key_d _let_1545_))) (let
  ((_let_1554_ (_field__rec_ca_nonce_used _let_1545_))) (let
  ((_let_1555_ (_field__rec_ca_Boolrue _let_1545_))) (let
  ((_let_1556_
    (_make__type_record_2_ _let_1546_ _let_1547_ _let_1548_ _let_1549_
     _let_1550_ _let_1551_ _let_1430_ _let_1552_ _let_1553_ _let_1554_
     _let_1555_)))
  (let ((_let_1557_ (_field__rec_value _let_1556_))) (let
  ((_let_1558_ (_field__rec_vtype _let_1556_))) (let
  ((_let_1559_ (_field__rec_h_base _let_1556_))) (let
  ((_let_1560_ (_field__rec_h_offset _let_1556_))) (let
  ((_let_1561_ (_field__rec_h_length _let_1556_))) (let
  ((_let_1562_ (_field__rec_enc_state_p _let_1556_))) (let
  ((_let_1563_ (_field__rec_key_p _let_1556_))) (let
  ((_let_1564_ (_field__rec_enc_state_d _let_1556_))) (let
  ((_let_1565_ (_field__rec_key_d _let_1556_))) (let
  ((_let_1566_ (_field__rec_ca_Boolrue _let_1556_))) (let
  ((_let_1567_
    (_make__type_record_2_ _let_1557_ _let_1558_ _let_1559_ _let_1560_
     _let_1561_ _let_1562_ _let_1563_ _let_1564_ _let_1565_ _let_1429_
     _let_1566_)))
  (let ((_let_1568_ (_field__rec_value _let_1567_))) (let
  ((_let_1569_ (_field__rec_vtype _let_1567_))) (let
  ((_let_1570_ (_field__rec_h_base _let_1567_))) (let
  ((_let_1571_ (_field__rec_h_offset _let_1567_))) (let
  ((_let_1572_ (_field__rec_h_length _let_1567_))) (let
  ((_let_1573_ (_field__rec_enc_state_p _let_1567_))) (let
  ((_let_1574_ (_field__rec_key_p _let_1567_))) (let
  ((_let_1575_ (_field__rec_enc_state_d _let_1567_))) (let
  ((_let_1576_ (_field__rec_key_d _let_1567_))) (let
  ((_let_1577_ (_field__rec_ca_nonce_used _let_1567_))) (let
  ((_let_1578_
    (_make__type_record_2_ _let_1568_ _let_1569_ _let_1570_ _let_1571_
     _let_1572_ _let_1573_ _let_1574_ _let_1575_ _let_1576_ _let_1577_
     _let_1428_)))
  (let
  ((_let_1579_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_1426_) #b0001)))))
  (let ((_let_1580_ (not _let_1579_))) (let
  ((_let_1581_
    (ite _let_1580_ initial_64___ucld_169_data_probe_g_var _let_1578_)))
  (let
  ((_let_1582_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_1583_ (ite _let_1582_ _let_1581_ _let_1286_))) (let
  ((_let_1584_
    (ite initial_50_v _let_1583_ initial_64___ucld_169_data_probe_g_var)))
  (let
  ((_let_1585_
    (and
     (or
      (and
       (= ((_ extract 19 19) state_1___ucld_169_data_probe_g_var)
        ((_ extract 19 19) _let_1584_))
       (and (and
       (or
        (and
         (= ((_ extract 14 13) state_1___ucld_169_data_probe_g_var)
          ((_ extract 14 13) _let_1584_)))
        (and
         (= ((_ extract 14 13) state_1___ucld_169_data_probe_g_var)
          ((_ extract 14 13) _let_1584_)))
        (and
         (= ((_ extract 14 13) state_1___ucld_169_data_probe_g_var)
          ((_ extract 14 13) _let_1584_))))
       (not (= ((_ extract 14 13) state_1___ucld_169_data_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 10 9) state_1___ucld_169_data_probe_g_var)
          ((_ extract 10 9) _let_1584_)))
        (and
         (= ((_ extract 10 9) state_1___ucld_169_data_probe_g_var)
          ((_ extract 10 9) _let_1584_)))
        (and
         (= ((_ extract 10 9) state_1___ucld_169_data_probe_g_var)
          ((_ extract 10 9) _let_1584_))))
       (not (= ((_ extract 10 9) state_1___ucld_169_data_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 12 11) state_1___ucld_169_data_probe_g_var)
          ((_ extract 12 11) _let_1584_)))
        (and
         (= ((_ extract 12 11) state_1___ucld_169_data_probe_g_var)
          ((_ extract 12 11) _let_1584_)))
        (and
         (= ((_ extract 12 11) state_1___ucld_169_data_probe_g_var)
          ((_ extract 12 11) _let_1584_))))
       (not (= ((_ extract 12 11) state_1___ucld_169_data_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 16 15) state_1___ucld_169_data_probe_g_var)
          ((_ extract 16 15) _let_1584_)))
        (and
         (= ((_ extract 16 15) state_1___ucld_169_data_probe_g_var)
          ((_ extract 16 15) _let_1584_)))
        (and
         (= ((_ extract 16 15) state_1___ucld_169_data_probe_g_var)
          ((_ extract 16 15) _let_1584_))))
       (not (= ((_ extract 16 15) state_1___ucld_169_data_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 2 2) state_1___ucld_169_data_probe_g_var)
          ((_ extract 2 2) _let_1584_)))
        (and
         (= ((_ extract 2 2) state_1___ucld_169_data_probe_g_var)
          ((_ extract 2 2) _let_1584_))))))))
     (not (= ((_ extract 19 19) state_1___ucld_169_data_probe_g_var) #b1)))))
  _let_1585_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let
  ((_let_1586_
    (forall ((a (_ BitVec 2)))
     (or
      (not
       ((_ extract 0 0)
        (bvlshr
         initial_51___ucld_157_alloc_map_var
         (bvmul ((_ zero_extend 2) a) #b0001))))
      (or
      (=
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          initial_56___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (_field__rec_ca_nonce_used
        ((_ extract 19 0)
         (bvlshr
          initial_56___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
      (and
       (or
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR))))
       (not
        (=
         ((_ extract 1 0)
          (_field__rec_enc_state_d
          ((_ extract 19 0)
           (bvlshr
            initial_56___ucld_171_ghost_mem_var
            (bvmul
             ((_ zero_extend 78) a)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         #b11))))))))
  _let_1586_))
(declare-fun l () (_ BitVec 3))
(assert
 (let
  ((_let_1587_
    (forall ((l (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_69___ucld_173_ghost_lmap_var
               (bvmul
                ((_ zero_extend 157) l)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_69___ucld_173_ghost_lmap_var
           (bvmul
            ((_ zero_extend 157) l)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_69___ucld_173_ghost_lmap_var
               (bvmul
                ((_ zero_extend 157) l)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         (select initial_69___ucld_173_ghost_lmap_var l))
         (_field__rec_h_length
         (select initial_69___ucld_173_ghost_lmap_var l))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              initial_69___ucld_173_ghost_lmap_var
              (bvmul
               ((_ zero_extend 157) l)
               #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  _let_1587_))
(declare-fun initial_66___ucld_166_addr_probe_g_var () (_ BitVec 20))
(declare-fun state_1___ucld_166_addr_probe_g_var () (_ BitVec 20))
(assert
 (let
  ((_let_1588_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_1589_ (_field__rec_ca_nonce_used _let_1588_))) (let
  ((_let_1590_ (_field__rec_ca_Boolrue _let_1588_))) (let
  ((_let_1591_ (_field__rec_enc_state_d _let_1588_))) (let
  ((_let_1592_ (_field__rec_h_length _let_1588_))) (let
  ((_let_1593_ (_field__rec_h_offset _let_1588_))) (let
  ((_let_1594_ (_field__rec_h_base _let_1588_))) (let
  ((_let_1595_ (_field__rec_vtype _let_1588_))) (let
  ((_let_1596_ (_field__rec_value _let_1588_))) (let
  ((_let_1597_ (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_1598_ (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_1599_ (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_1600_ (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_1601_
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_1602_ (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_1603_
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_1604_ (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_1605_
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_1606_
    (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_1607_
    (_make__type_record_2_ _let_1596_ _let_1597_ _let_1598_ _let_1599_
     _let_1600_ _let_1601_ _let_1602_ _let_1603_ _let_1604_ _let_1605_
     _let_1606_)))
  (let ((_let_1608_ (_field__rec_value _let_1607_))) (let
  ((_let_1609_ (_field__rec_h_base _let_1607_))) (let
  ((_let_1610_ (_field__rec_h_offset _let_1607_))) (let
  ((_let_1611_ (_field__rec_h_length _let_1607_))) (let
  ((_let_1612_ (_field__rec_enc_state_p _let_1607_))) (let
  ((_let_1613_ (_field__rec_key_p _let_1607_))) (let
  ((_let_1614_ (_field__rec_enc_state_d _let_1607_))) (let
  ((_let_1615_ (_field__rec_key_d _let_1607_))) (let
  ((_let_1616_ (_field__rec_ca_nonce_used _let_1607_))) (let
  ((_let_1617_ (_field__rec_ca_Boolrue _let_1607_))) (let
  ((_let_1618_
    (_make__type_record_2_ _let_1608_ _let_1595_ _let_1609_ _let_1610_
     _let_1611_ _let_1612_ _let_1613_ _let_1614_ _let_1615_ _let_1616_
     _let_1617_)))
  (let ((_let_1619_ (_field__rec_value _let_1618_))) (let
  ((_let_1620_ (_field__rec_vtype _let_1618_))) (let
  ((_let_1621_ (_field__rec_h_offset _let_1618_))) (let
  ((_let_1622_ (_field__rec_h_length _let_1618_))) (let
  ((_let_1623_ (_field__rec_enc_state_p _let_1618_))) (let
  ((_let_1624_ (_field__rec_key_p _let_1618_))) (let
  ((_let_1625_ (_field__rec_enc_state_d _let_1618_))) (let
  ((_let_1626_ (_field__rec_key_d _let_1618_))) (let
  ((_let_1627_ (_field__rec_ca_nonce_used _let_1618_))) (let
  ((_let_1628_ (_field__rec_ca_Boolrue _let_1618_))) (let
  ((_let_1629_
    (_make__type_record_2_ _let_1619_ _let_1620_ _let_1594_ _let_1621_
     _let_1622_ _let_1623_ _let_1624_ _let_1625_ _let_1626_ _let_1627_
     _let_1628_)))
  (let ((_let_1630_ (_field__rec_value _let_1629_))) (let
  ((_let_1631_ (_field__rec_vtype _let_1629_))) (let
  ((_let_1632_ (_field__rec_h_base _let_1629_))) (let
  ((_let_1633_ (_field__rec_h_length _let_1629_))) (let
  ((_let_1634_ (_field__rec_enc_state_p _let_1629_))) (let
  ((_let_1635_ (_field__rec_key_p _let_1629_))) (let
  ((_let_1636_ (_field__rec_enc_state_d _let_1629_))) (let
  ((_let_1637_ (_field__rec_key_d _let_1629_))) (let
  ((_let_1638_ (_field__rec_ca_nonce_used _let_1629_))) (let
  ((_let_1639_ (_field__rec_ca_Boolrue _let_1629_))) (let
  ((_let_1640_
    (_make__type_record_2_ _let_1630_ _let_1631_ _let_1632_ _let_1593_
     _let_1633_ _let_1634_ _let_1635_ _let_1636_ _let_1637_ _let_1638_
     _let_1639_)))
  (let ((_let_1641_ (_field__rec_value _let_1640_))) (let
  ((_let_1642_ (_field__rec_vtype _let_1640_))) (let
  ((_let_1643_ (_field__rec_h_base _let_1640_))) (let
  ((_let_1644_ (_field__rec_h_offset _let_1640_))) (let
  ((_let_1645_ (_field__rec_enc_state_p _let_1640_))) (let
  ((_let_1646_ (_field__rec_key_p _let_1640_))) (let
  ((_let_1647_ (_field__rec_enc_state_d _let_1640_))) (let
  ((_let_1648_ (_field__rec_key_d _let_1640_))) (let
  ((_let_1649_ (_field__rec_ca_nonce_used _let_1640_))) (let
  ((_let_1650_ (_field__rec_ca_Boolrue _let_1640_))) (let
  ((_let_1651_
    (_make__type_record_2_ _let_1641_ _let_1642_ _let_1643_ _let_1644_
     _let_1592_ _let_1645_ _let_1646_ _let_1647_ _let_1648_ _let_1649_
     _let_1650_)))
  (let ((_let_1652_ (_field__rec_value _let_1651_))) (let
  ((_let_1653_ (_field__rec_vtype _let_1651_))) (let
  ((_let_1654_ (_field__rec_h_base _let_1651_))) (let
  ((_let_1655_ (_field__rec_h_offset _let_1651_))) (let
  ((_let_1656_ (_field__rec_h_length _let_1651_))) (let
  ((_let_1657_ (_field__rec_enc_state_p _let_1651_))) (let
  ((_let_1658_ (_field__rec_key_p _let_1651_))) (let
  ((_let_1659_ (_field__rec_key_d _let_1651_))) (let
  ((_let_1660_ (_field__rec_ca_nonce_used _let_1651_))) (let
  ((_let_1661_ (_field__rec_ca_Boolrue _let_1651_))) (let
  ((_let_1662_
    (_make__type_record_2_ _let_1652_ _let_1653_ _let_1654_ _let_1655_
     _let_1656_ _let_1657_ _let_1658_ _let_1591_ _let_1659_ _let_1660_
     _let_1661_)))
  (let ((_let_1663_ (_field__rec_value _let_1662_))) (let
  ((_let_1664_ (_field__rec_vtype _let_1662_))) (let
  ((_let_1665_ (_field__rec_h_base _let_1662_))) (let
  ((_let_1666_ (_field__rec_h_offset _let_1662_))) (let
  ((_let_1667_ (_field__rec_h_length _let_1662_))) (let
  ((_let_1668_ (_field__rec_key_p _let_1662_))) (let
  ((_let_1669_ (_field__rec_enc_state_d _let_1662_))) (let
  ((_let_1670_ (_field__rec_key_d _let_1662_))) (let
  ((_let_1671_ (_field__rec_ca_nonce_used _let_1662_))) (let
  ((_let_1672_ (_field__rec_ca_Boolrue _let_1662_))) (let
  ((_let_1673_
    (_make__type_record_2_ _let_1663_ _let_1664_ _let_1665_ _let_1666_
     _let_1667_ GAR _let_1668_ _let_1669_ _let_1670_ _let_1671_ _let_1672_)))
  (let
  ((_let_1674_
    (_make__type_record_2_ _let_1663_ _let_1664_ _let_1665_ _let_1666_
     _let_1667_ PLN _let_1668_ _let_1669_ _let_1670_ _let_1671_ _let_1672_)))
  (let ((_let_1675_ (_field__rec_key_p _let_1588_))) (let
  ((_let_1676_ (= _let_1675_ ViKey))) (let
  ((_let_1677_ (ite _let_1676_ _let_1674_ _let_1673_))) (let
  ((_let_1678_ (_field__rec_enc_state_p _let_1588_))) (let
  ((_let_1679_ (not (= _let_1678_ ENC)))) (let
  ((_let_1680_ (ite _let_1679_ _let_1673_ _let_1677_))) (let
  ((_let_1681_
    (_make__type_record_2_ _let_1652_ _let_1653_ _let_1654_ _let_1655_
     _let_1656_ _let_1657_ _let_1658_ GAR _let_1659_ _let_1660_ _let_1661_)))
  (let ((_let_1682_ (_field__rec_value _let_1681_))) (let
  ((_let_1683_ (_field__rec_vtype _let_1681_))) (let
  ((_let_1684_ (_field__rec_h_base _let_1681_))) (let
  ((_let_1685_ (_field__rec_h_offset _let_1681_))) (let
  ((_let_1686_ (_field__rec_h_length _let_1681_))) (let
  ((_let_1687_ (_field__rec_key_p _let_1681_))) (let
  ((_let_1688_ (_field__rec_enc_state_d _let_1681_))) (let
  ((_let_1689_ (_field__rec_key_d _let_1681_))) (let
  ((_let_1690_ (_field__rec_ca_nonce_used _let_1681_))) (let
  ((_let_1691_ (_field__rec_ca_Boolrue _let_1681_))) (let
  ((_let_1692_
    (_make__type_record_2_ _let_1682_ _let_1683_ _let_1684_ _let_1685_
     _let_1686_ GAR _let_1687_ _let_1688_ _let_1689_ _let_1690_ _let_1691_)))
  (let ((_let_1693_ (not (= _let_1591_ PLN)))) (let
  ((_let_1694_ (ite _let_1693_ _let_1692_ _let_1680_))) (let
  ((_let_1695_ (_field__rec_value _let_1694_))) (let
  ((_let_1696_ (_field__rec_vtype _let_1694_))) (let
  ((_let_1697_ (_field__rec_h_base _let_1694_))) (let
  ((_let_1698_ (_field__rec_h_offset _let_1694_))) (let
  ((_let_1699_ (_field__rec_h_length _let_1694_))) (let
  ((_let_1700_ (_field__rec_enc_state_p _let_1694_))) (let
  ((_let_1701_ (_field__rec_enc_state_d _let_1694_))) (let
  ((_let_1702_ (_field__rec_key_d _let_1694_))) (let
  ((_let_1703_ (_field__rec_ca_nonce_used _let_1694_))) (let
  ((_let_1704_ (_field__rec_ca_Boolrue _let_1694_))) (let
  ((_let_1705_
    (_make__type_record_2_ _let_1695_ _let_1696_ _let_1697_ _let_1698_
     _let_1699_ _let_1700_ NoKey _let_1701_ _let_1702_ _let_1703_ _let_1704_)))
  (let ((_let_1706_ (_field__rec_value _let_1705_))) (let
  ((_let_1707_ (_field__rec_vtype _let_1705_))) (let
  ((_let_1708_ (_field__rec_h_base _let_1705_))) (let
  ((_let_1709_ (_field__rec_h_offset _let_1705_))) (let
  ((_let_1710_ (_field__rec_h_length _let_1705_))) (let
  ((_let_1711_ (_field__rec_enc_state_p _let_1705_))) (let
  ((_let_1712_ (_field__rec_key_p _let_1705_))) (let
  ((_let_1713_ (_field__rec_enc_state_d _let_1705_))) (let
  ((_let_1714_ (_field__rec_ca_nonce_used _let_1705_))) (let
  ((_let_1715_ (_field__rec_ca_Boolrue _let_1705_))) (let
  ((_let_1716_
    (_make__type_record_2_ _let_1706_ _let_1707_ _let_1708_ _let_1709_
     _let_1710_ _let_1711_ _let_1712_ _let_1713_ NoKey _let_1714_ _let_1715_)))
  (let ((_let_1717_ (_field__rec_value _let_1716_))) (let
  ((_let_1718_ (_field__rec_vtype _let_1716_))) (let
  ((_let_1719_ (_field__rec_h_base _let_1716_))) (let
  ((_let_1720_ (_field__rec_h_offset _let_1716_))) (let
  ((_let_1721_ (_field__rec_h_length _let_1716_))) (let
  ((_let_1722_ (_field__rec_enc_state_p _let_1716_))) (let
  ((_let_1723_ (_field__rec_key_p _let_1716_))) (let
  ((_let_1724_ (_field__rec_enc_state_d _let_1716_))) (let
  ((_let_1725_ (_field__rec_key_d _let_1716_))) (let
  ((_let_1726_ (_field__rec_ca_nonce_used _let_1716_))) (let
  ((_let_1727_
    (_make__type_record_2_ _let_1717_ _let_1718_ _let_1719_ _let_1720_
     _let_1721_ _let_1722_ _let_1723_ _let_1724_ _let_1725_ _let_1726_
     _let_1590_)))
  (let ((_let_1728_ (_field__rec_value _let_1727_))) (let
  ((_let_1729_ (_field__rec_vtype _let_1727_))) (let
  ((_let_1730_ (_field__rec_h_base _let_1727_))) (let
  ((_let_1731_ (_field__rec_h_offset _let_1727_))) (let
  ((_let_1732_ (_field__rec_h_length _let_1727_))) (let
  ((_let_1733_ (_field__rec_enc_state_p _let_1727_))) (let
  ((_let_1734_ (_field__rec_key_p _let_1727_))) (let
  ((_let_1735_ (_field__rec_enc_state_d _let_1727_))) (let
  ((_let_1736_ (_field__rec_key_d _let_1727_))) (let
  ((_let_1737_ (_field__rec_ca_Boolrue _let_1727_))) (let
  ((_let_1738_
    (_make__type_record_2_ _let_1728_ _let_1729_ _let_1730_ _let_1731_
     _let_1732_ _let_1733_ _let_1734_ _let_1735_ _let_1736_ _let_1589_
     _let_1737_)))
  (let
  ((_let_1739_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_1740_
    (ite _let_1739_ _let_1738_ initial_66___ucld_166_addr_probe_g_var)))
  (let
  ((_let_1741_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_1742_ (_field__rec_ca_nonce_used _let_1741_))) (let
  ((_let_1743_ (_field__rec_ca_Boolrue _let_1741_))) (let
  ((_let_1744_ (_field__rec_enc_state_d _let_1741_))) (let
  ((_let_1745_ (_field__rec_h_length _let_1741_))) (let
  ((_let_1746_ (_field__rec_h_offset _let_1741_))) (let
  ((_let_1747_ (_field__rec_h_base _let_1741_))) (let
  ((_let_1748_ (_field__rec_vtype _let_1741_))) (let
  ((_let_1749_ (_field__rec_value _let_1741_))) (let
  ((_let_1750_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1751_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1752_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1753_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1754_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1755_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1756_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1757_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1758_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1759_
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1760_
    (_make__type_record_2_ _let_1749_ _let_1750_ _let_1751_ _let_1752_
     _let_1753_ _let_1754_ _let_1755_ _let_1756_ _let_1757_ _let_1758_
     _let_1759_)))
  (let ((_let_1761_ (_field__rec_value _let_1760_))) (let
  ((_let_1762_ (_field__rec_h_base _let_1760_))) (let
  ((_let_1763_ (_field__rec_h_offset _let_1760_))) (let
  ((_let_1764_ (_field__rec_h_length _let_1760_))) (let
  ((_let_1765_ (_field__rec_enc_state_p _let_1760_))) (let
  ((_let_1766_ (_field__rec_key_p _let_1760_))) (let
  ((_let_1767_ (_field__rec_enc_state_d _let_1760_))) (let
  ((_let_1768_ (_field__rec_key_d _let_1760_))) (let
  ((_let_1769_ (_field__rec_ca_nonce_used _let_1760_))) (let
  ((_let_1770_ (_field__rec_ca_Boolrue _let_1760_))) (let
  ((_let_1771_
    (_make__type_record_2_ _let_1761_ _let_1748_ _let_1762_ _let_1763_
     _let_1764_ _let_1765_ _let_1766_ _let_1767_ _let_1768_ _let_1769_
     _let_1770_)))
  (let ((_let_1772_ (_field__rec_value _let_1771_))) (let
  ((_let_1773_ (_field__rec_vtype _let_1771_))) (let
  ((_let_1774_ (_field__rec_h_offset _let_1771_))) (let
  ((_let_1775_ (_field__rec_h_length _let_1771_))) (let
  ((_let_1776_ (_field__rec_enc_state_p _let_1771_))) (let
  ((_let_1777_ (_field__rec_key_p _let_1771_))) (let
  ((_let_1778_ (_field__rec_enc_state_d _let_1771_))) (let
  ((_let_1779_ (_field__rec_key_d _let_1771_))) (let
  ((_let_1780_ (_field__rec_ca_nonce_used _let_1771_))) (let
  ((_let_1781_ (_field__rec_ca_Boolrue _let_1771_))) (let
  ((_let_1782_
    (_make__type_record_2_ _let_1772_ _let_1773_ _let_1747_ _let_1774_
     _let_1775_ _let_1776_ _let_1777_ _let_1778_ _let_1779_ _let_1780_
     _let_1781_)))
  (let ((_let_1783_ (_field__rec_value _let_1782_))) (let
  ((_let_1784_ (_field__rec_vtype _let_1782_))) (let
  ((_let_1785_ (_field__rec_h_base _let_1782_))) (let
  ((_let_1786_ (_field__rec_h_length _let_1782_))) (let
  ((_let_1787_ (_field__rec_enc_state_p _let_1782_))) (let
  ((_let_1788_ (_field__rec_key_p _let_1782_))) (let
  ((_let_1789_ (_field__rec_enc_state_d _let_1782_))) (let
  ((_let_1790_ (_field__rec_key_d _let_1782_))) (let
  ((_let_1791_ (_field__rec_ca_nonce_used _let_1782_))) (let
  ((_let_1792_ (_field__rec_ca_Boolrue _let_1782_))) (let
  ((_let_1793_
    (_make__type_record_2_ _let_1783_ _let_1784_ _let_1785_ _let_1746_
     _let_1786_ _let_1787_ _let_1788_ _let_1789_ _let_1790_ _let_1791_
     _let_1792_)))
  (let ((_let_1794_ (_field__rec_value _let_1793_))) (let
  ((_let_1795_ (_field__rec_vtype _let_1793_))) (let
  ((_let_1796_ (_field__rec_h_base _let_1793_))) (let
  ((_let_1797_ (_field__rec_h_offset _let_1793_))) (let
  ((_let_1798_ (_field__rec_enc_state_p _let_1793_))) (let
  ((_let_1799_ (_field__rec_key_p _let_1793_))) (let
  ((_let_1800_ (_field__rec_enc_state_d _let_1793_))) (let
  ((_let_1801_ (_field__rec_key_d _let_1793_))) (let
  ((_let_1802_ (_field__rec_ca_nonce_used _let_1793_))) (let
  ((_let_1803_ (_field__rec_ca_Boolrue _let_1793_))) (let
  ((_let_1804_
    (_make__type_record_2_ _let_1794_ _let_1795_ _let_1796_ _let_1797_
     _let_1745_ _let_1798_ _let_1799_ _let_1800_ _let_1801_ _let_1802_
     _let_1803_)))
  (let ((_let_1805_ (_field__rec_value _let_1804_))) (let
  ((_let_1806_ (_field__rec_vtype _let_1804_))) (let
  ((_let_1807_ (_field__rec_h_base _let_1804_))) (let
  ((_let_1808_ (_field__rec_h_offset _let_1804_))) (let
  ((_let_1809_ (_field__rec_h_length _let_1804_))) (let
  ((_let_1810_ (_field__rec_enc_state_p _let_1804_))) (let
  ((_let_1811_ (_field__rec_key_p _let_1804_))) (let
  ((_let_1812_ (_field__rec_key_d _let_1804_))) (let
  ((_let_1813_ (_field__rec_ca_nonce_used _let_1804_))) (let
  ((_let_1814_ (_field__rec_ca_Boolrue _let_1804_))) (let
  ((_let_1815_
    (_make__type_record_2_ _let_1805_ _let_1806_ _let_1807_ _let_1808_
     _let_1809_ _let_1810_ _let_1811_ _let_1744_ _let_1812_ _let_1813_
     _let_1814_)))
  (let ((_let_1816_ (_field__rec_value _let_1815_))) (let
  ((_let_1817_ (_field__rec_vtype _let_1815_))) (let
  ((_let_1818_ (_field__rec_h_base _let_1815_))) (let
  ((_let_1819_ (_field__rec_h_offset _let_1815_))) (let
  ((_let_1820_ (_field__rec_h_length _let_1815_))) (let
  ((_let_1821_ (_field__rec_key_p _let_1815_))) (let
  ((_let_1822_ (_field__rec_enc_state_d _let_1815_))) (let
  ((_let_1823_ (_field__rec_key_d _let_1815_))) (let
  ((_let_1824_ (_field__rec_ca_nonce_used _let_1815_))) (let
  ((_let_1825_ (_field__rec_ca_Boolrue _let_1815_))) (let
  ((_let_1826_
    (_make__type_record_2_ _let_1816_ _let_1817_ _let_1818_ _let_1819_
     _let_1820_ GAR _let_1821_ _let_1822_ _let_1823_ _let_1824_ _let_1825_)))
  (let
  ((_let_1827_
    (_make__type_record_2_ _let_1816_ _let_1817_ _let_1818_ _let_1819_
     _let_1820_ PLN _let_1821_ _let_1822_ _let_1823_ _let_1824_ _let_1825_)))
  (let ((_let_1828_ (_field__rec_key_p _let_1741_))) (let
  ((_let_1829_ (= _let_1828_ ViKey))) (let
  ((_let_1830_ (ite _let_1829_ _let_1827_ _let_1826_))) (let
  ((_let_1831_ (_field__rec_enc_state_p _let_1741_))) (let
  ((_let_1832_ (not (= _let_1831_ ENC)))) (let
  ((_let_1833_ (ite _let_1832_ _let_1826_ _let_1830_))) (let
  ((_let_1834_
    (_make__type_record_2_ _let_1805_ _let_1806_ _let_1807_ _let_1808_
     _let_1809_ _let_1810_ _let_1811_ GAR _let_1812_ _let_1813_ _let_1814_)))
  (let ((_let_1835_ (_field__rec_value _let_1834_))) (let
  ((_let_1836_ (_field__rec_vtype _let_1834_))) (let
  ((_let_1837_ (_field__rec_h_base _let_1834_))) (let
  ((_let_1838_ (_field__rec_h_offset _let_1834_))) (let
  ((_let_1839_ (_field__rec_h_length _let_1834_))) (let
  ((_let_1840_ (_field__rec_key_p _let_1834_))) (let
  ((_let_1841_ (_field__rec_enc_state_d _let_1834_))) (let
  ((_let_1842_ (_field__rec_key_d _let_1834_))) (let
  ((_let_1843_ (_field__rec_ca_nonce_used _let_1834_))) (let
  ((_let_1844_ (_field__rec_ca_Boolrue _let_1834_))) (let
  ((_let_1845_
    (_make__type_record_2_ _let_1835_ _let_1836_ _let_1837_ _let_1838_
     _let_1839_ GAR _let_1840_ _let_1841_ _let_1842_ _let_1843_ _let_1844_)))
  (let ((_let_1846_ (not (= _let_1744_ PLN)))) (let
  ((_let_1847_ (ite _let_1846_ _let_1845_ _let_1833_))) (let
  ((_let_1848_ (_field__rec_value _let_1847_))) (let
  ((_let_1849_ (_field__rec_vtype _let_1847_))) (let
  ((_let_1850_ (_field__rec_h_base _let_1847_))) (let
  ((_let_1851_ (_field__rec_h_offset _let_1847_))) (let
  ((_let_1852_ (_field__rec_h_length _let_1847_))) (let
  ((_let_1853_ (_field__rec_enc_state_p _let_1847_))) (let
  ((_let_1854_ (_field__rec_enc_state_d _let_1847_))) (let
  ((_let_1855_ (_field__rec_key_d _let_1847_))) (let
  ((_let_1856_ (_field__rec_ca_nonce_used _let_1847_))) (let
  ((_let_1857_ (_field__rec_ca_Boolrue _let_1847_))) (let
  ((_let_1858_
    (_make__type_record_2_ _let_1848_ _let_1849_ _let_1850_ _let_1851_
     _let_1852_ _let_1853_ NoKey _let_1854_ _let_1855_ _let_1856_ _let_1857_)))
  (let ((_let_1859_ (_field__rec_value _let_1858_))) (let
  ((_let_1860_ (_field__rec_vtype _let_1858_))) (let
  ((_let_1861_ (_field__rec_h_base _let_1858_))) (let
  ((_let_1862_ (_field__rec_h_offset _let_1858_))) (let
  ((_let_1863_ (_field__rec_h_length _let_1858_))) (let
  ((_let_1864_ (_field__rec_enc_state_p _let_1858_))) (let
  ((_let_1865_ (_field__rec_key_p _let_1858_))) (let
  ((_let_1866_ (_field__rec_enc_state_d _let_1858_))) (let
  ((_let_1867_ (_field__rec_ca_nonce_used _let_1858_))) (let
  ((_let_1868_ (_field__rec_ca_Boolrue _let_1858_))) (let
  ((_let_1869_
    (_make__type_record_2_ _let_1859_ _let_1860_ _let_1861_ _let_1862_
     _let_1863_ _let_1864_ _let_1865_ _let_1866_ NoKey _let_1867_ _let_1868_)))
  (let ((_let_1870_ (_field__rec_value _let_1869_))) (let
  ((_let_1871_ (_field__rec_vtype _let_1869_))) (let
  ((_let_1872_ (_field__rec_h_base _let_1869_))) (let
  ((_let_1873_ (_field__rec_h_offset _let_1869_))) (let
  ((_let_1874_ (_field__rec_h_length _let_1869_))) (let
  ((_let_1875_ (_field__rec_enc_state_p _let_1869_))) (let
  ((_let_1876_ (_field__rec_key_p _let_1869_))) (let
  ((_let_1877_ (_field__rec_enc_state_d _let_1869_))) (let
  ((_let_1878_ (_field__rec_key_d _let_1869_))) (let
  ((_let_1879_ (_field__rec_ca_nonce_used _let_1869_))) (let
  ((_let_1880_
    (_make__type_record_2_ _let_1870_ _let_1871_ _let_1872_ _let_1873_
     _let_1874_ _let_1875_ _let_1876_ _let_1877_ _let_1878_ _let_1879_
     _let_1743_)))
  (let ((_let_1881_ (_field__rec_value _let_1880_))) (let
  ((_let_1882_ (_field__rec_vtype _let_1880_))) (let
  ((_let_1883_ (_field__rec_h_base _let_1880_))) (let
  ((_let_1884_ (_field__rec_h_offset _let_1880_))) (let
  ((_let_1885_ (_field__rec_h_length _let_1880_))) (let
  ((_let_1886_ (_field__rec_enc_state_p _let_1880_))) (let
  ((_let_1887_ (_field__rec_key_p _let_1880_))) (let
  ((_let_1888_ (_field__rec_enc_state_d _let_1880_))) (let
  ((_let_1889_ (_field__rec_key_d _let_1880_))) (let
  ((_let_1890_ (_field__rec_ca_Boolrue _let_1880_))) (let
  ((_let_1891_
    (_make__type_record_2_ _let_1881_ _let_1882_ _let_1883_ _let_1884_
     _let_1885_ _let_1886_ _let_1887_ _let_1888_ _let_1889_ _let_1742_
     _let_1890_)))
  (let
  ((_let_1892_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_1893_ (ite _let_1892_ _let_1891_ _let_1740_))) (let
  ((_let_1894_
    (ite initial_50_v _let_1893_ initial_66___ucld_166_addr_probe_g_var)))
  (let
  ((_let_1895_
    (and
     (or
      (and
       (= ((_ extract 19 19) state_1___ucld_166_addr_probe_g_var)
        ((_ extract 19 19) _let_1894_))
       (and (and
       (or
        (and
         (= ((_ extract 14 13) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 14 13) _let_1894_)))
        (and
         (= ((_ extract 14 13) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 14 13) _let_1894_)))
        (and
         (= ((_ extract 14 13) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 14 13) _let_1894_))))
       (not (= ((_ extract 14 13) state_1___ucld_166_addr_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 10 9) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 10 9) _let_1894_)))
        (and
         (= ((_ extract 10 9) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 10 9) _let_1894_)))
        (and
         (= ((_ extract 10 9) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 10 9) _let_1894_))))
       (not (= ((_ extract 10 9) state_1___ucld_166_addr_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 12 11) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 12 11) _let_1894_)))
        (and
         (= ((_ extract 12 11) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 12 11) _let_1894_)))
        (and
         (= ((_ extract 12 11) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 12 11) _let_1894_))))
       (not (= ((_ extract 12 11) state_1___ucld_166_addr_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 16 15) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 16 15) _let_1894_)))
        (and
         (= ((_ extract 16 15) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 16 15) _let_1894_)))
        (and
         (= ((_ extract 16 15) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 16 15) _let_1894_))))
       (not (= ((_ extract 16 15) state_1___ucld_166_addr_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 2 2) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 2 2) _let_1894_)))
        (and
         (= ((_ extract 2 2) state_1___ucld_166_addr_probe_g_var)
          ((_ extract 2 2) _let_1894_))))))))
     (not (= ((_ extract 19 19) state_1___ucld_166_addr_probe_g_var) #b1)))))
  _let_1895_)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let
  ((_let_1896_
    (forall ((l (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       ((_ bv0 2) )
       (_field__rec_h_length
       (select initial_69___ucld_173_ghost_lmap_var l)))))))
  (let
  ((_let_1897_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       ((_ bv0 2) )
       (_field__rec_h_length
       (select initial_56___ucld_171_ghost_mem_var a)))))))
  (let ((_let_1898_ (and _let_1897_ _let_1896_))) _let_1898_))))
(declare-fun havoc_211___ucld_51_ret_nm () (_ BitVec 28))
(declare-fun state_1___ucld_164_shadow_mem_var () (_ BitVec 28))
(assert
 (let ((_let_1899_ (_field__rec_valid havoc_193___ucld_34_ret_as))) (let
  ((_let_1900_
    (ite _let_1899_ havoc_211___ucld_51_ret_nm
     initial_60___ucld_164_shadow_mem_var)))
  (let
  ((_let_1901_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_1902_
    (ite _let_1901_ _let_1900_ initial_60___ucld_164_shadow_mem_var)))
  (let
  ((_let_1903_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_1904_
    (ite _let_1903_ initial_60___ucld_164_shadow_mem_var _let_1902_)))
  (let
  ((_let_1905_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_1906_
    (ite _let_1905_ initial_60___ucld_164_shadow_mem_var _let_1904_)))
  (let
  ((_let_1907_
    (ite initial_50_v _let_1906_ initial_60___ucld_164_shadow_mem_var)))
  (let ((_let_1908_ (= state_1___ucld_164_shadow_mem_var _let_1907_)))
  _let_1908_)))))))))))
(declare-fun state_1___ucld_163_l3_var () (_ BitVec 3))
(declare-fun havoc_99___ucld_116_l3_havoc () (_ BitVec 3))
(declare-fun initial_72___ucld_163_l3_var () (_ BitVec 3))
(assert
 (let
  ((_let_1909_
    (ite initial_50_v havoc_99___ucld_116_l3_havoc
     initial_72___ucld_163_l3_var)))
  (let ((_let_1910_ (= state_1___ucld_163_l3_var _let_1909_))) _let_1910_)))
(assert
 (let
  ((_let_1911_
    (forall ((a (_ BitVec 2)))
     (=
      ((_ extract 0 0)
       (bvlshr
        initial_51___ucld_157_alloc_map_var
        (bvmul ((_ zero_extend 2) a) #b0001)))
      (_field__rec_alloc
       ((_ extract 6 0)
        (bvlshr
         initial_60___ucld_164_shadow_mem_var
         (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111))))))))
  _let_1911_))
(declare-fun state_1___ucld_172_src2_probe_var () (_ BitVec 2))
(declare-fun initial_52___ucld_172_src2_probe_var () (_ BitVec 2))
(assert
 (let
  ((_let_1912_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_1913_
    (ite _let_1912_ initial_52___ucld_172_src2_probe_var
     initial_52___ucld_172_src2_probe_var)))
  (let
  ((_let_1914_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_1915_
    (ite _let_1914_ initial_52___ucld_172_src2_probe_var _let_1913_)))
  (let
  ((_let_1916_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_1917_
    (ite _let_1916_ initial_52___ucld_172_src2_probe_var _let_1915_)))
  (let
  ((_let_1918_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_1919_
    (ite _let_1918_ initial_52___ucld_172_src2_probe_var _let_1917_)))
  (let
  ((_let_1920_
    (ite initial_50_v _let_1919_ initial_52___ucld_172_src2_probe_var)))
  (let ((_let_1921_ (= state_1___ucld_172_src2_probe_var _let_1920_)))
  _let_1921_)))))))))))
(declare-fun state_1___ucld_168_data_probe_pre_g_var () (_ BitVec 20))
(declare-fun initial_68___ucld_168_data_probe_pre_g_var () (_ BitVec 20))
(assert
 (let
  ((_let_1922_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_1923_ (_field__rec_ca_nonce_used _let_1922_))) (let
  ((_let_1924_ (_field__rec_ca_Boolrue _let_1922_))) (let
  ((_let_1925_ (_field__rec_enc_state_d _let_1922_))) (let
  ((_let_1926_ (_field__rec_h_length _let_1922_))) (let
  ((_let_1927_ (_field__rec_h_offset _let_1922_))) (let
  ((_let_1928_ (_field__rec_h_base _let_1922_))) (let
  ((_let_1929_ (_field__rec_vtype _let_1922_))) (let
  ((_let_1930_ (_field__rec_value _let_1922_))) (let
  ((_let_1931_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1932_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1933_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1934_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1935_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1936_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1937_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1938_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1939_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1940_
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_1941_
    (_make__type_record_2_ _let_1930_ _let_1931_ _let_1932_ _let_1933_
     _let_1934_ _let_1935_ _let_1936_ _let_1937_ _let_1938_ _let_1939_
     _let_1940_)))
  (let ((_let_1942_ (_field__rec_value _let_1941_))) (let
  ((_let_1943_ (_field__rec_h_base _let_1941_))) (let
  ((_let_1944_ (_field__rec_h_offset _let_1941_))) (let
  ((_let_1945_ (_field__rec_h_length _let_1941_))) (let
  ((_let_1946_ (_field__rec_enc_state_p _let_1941_))) (let
  ((_let_1947_ (_field__rec_key_p _let_1941_))) (let
  ((_let_1948_ (_field__rec_enc_state_d _let_1941_))) (let
  ((_let_1949_ (_field__rec_key_d _let_1941_))) (let
  ((_let_1950_ (_field__rec_ca_nonce_used _let_1941_))) (let
  ((_let_1951_ (_field__rec_ca_Boolrue _let_1941_))) (let
  ((_let_1952_
    (_make__type_record_2_ _let_1942_ _let_1929_ _let_1943_ _let_1944_
     _let_1945_ _let_1946_ _let_1947_ _let_1948_ _let_1949_ _let_1950_
     _let_1951_)))
  (let ((_let_1953_ (_field__rec_value _let_1952_))) (let
  ((_let_1954_ (_field__rec_vtype _let_1952_))) (let
  ((_let_1955_ (_field__rec_h_offset _let_1952_))) (let
  ((_let_1956_ (_field__rec_h_length _let_1952_))) (let
  ((_let_1957_ (_field__rec_enc_state_p _let_1952_))) (let
  ((_let_1958_ (_field__rec_key_p _let_1952_))) (let
  ((_let_1959_ (_field__rec_enc_state_d _let_1952_))) (let
  ((_let_1960_ (_field__rec_key_d _let_1952_))) (let
  ((_let_1961_ (_field__rec_ca_nonce_used _let_1952_))) (let
  ((_let_1962_ (_field__rec_ca_Boolrue _let_1952_))) (let
  ((_let_1963_
    (_make__type_record_2_ _let_1953_ _let_1954_ _let_1928_ _let_1955_
     _let_1956_ _let_1957_ _let_1958_ _let_1959_ _let_1960_ _let_1961_
     _let_1962_)))
  (let ((_let_1964_ (_field__rec_value _let_1963_))) (let
  ((_let_1965_ (_field__rec_vtype _let_1963_))) (let
  ((_let_1966_ (_field__rec_h_base _let_1963_))) (let
  ((_let_1967_ (_field__rec_h_length _let_1963_))) (let
  ((_let_1968_ (_field__rec_enc_state_p _let_1963_))) (let
  ((_let_1969_ (_field__rec_key_p _let_1963_))) (let
  ((_let_1970_ (_field__rec_enc_state_d _let_1963_))) (let
  ((_let_1971_ (_field__rec_key_d _let_1963_))) (let
  ((_let_1972_ (_field__rec_ca_nonce_used _let_1963_))) (let
  ((_let_1973_ (_field__rec_ca_Boolrue _let_1963_))) (let
  ((_let_1974_
    (_make__type_record_2_ _let_1964_ _let_1965_ _let_1966_ _let_1927_
     _let_1967_ _let_1968_ _let_1969_ _let_1970_ _let_1971_ _let_1972_
     _let_1973_)))
  (let ((_let_1975_ (_field__rec_value _let_1974_))) (let
  ((_let_1976_ (_field__rec_vtype _let_1974_))) (let
  ((_let_1977_ (_field__rec_h_base _let_1974_))) (let
  ((_let_1978_ (_field__rec_h_offset _let_1974_))) (let
  ((_let_1979_ (_field__rec_enc_state_p _let_1974_))) (let
  ((_let_1980_ (_field__rec_key_p _let_1974_))) (let
  ((_let_1981_ (_field__rec_enc_state_d _let_1974_))) (let
  ((_let_1982_ (_field__rec_key_d _let_1974_))) (let
  ((_let_1983_ (_field__rec_ca_nonce_used _let_1974_))) (let
  ((_let_1984_ (_field__rec_ca_Boolrue _let_1974_))) (let
  ((_let_1985_
    (_make__type_record_2_ _let_1975_ _let_1976_ _let_1977_ _let_1978_
     _let_1926_ _let_1979_ _let_1980_ _let_1981_ _let_1982_ _let_1983_
     _let_1984_)))
  (let ((_let_1986_ (_field__rec_value _let_1985_))) (let
  ((_let_1987_ (_field__rec_vtype _let_1985_))) (let
  ((_let_1988_ (_field__rec_h_base _let_1985_))) (let
  ((_let_1989_ (_field__rec_h_offset _let_1985_))) (let
  ((_let_1990_ (_field__rec_h_length _let_1985_))) (let
  ((_let_1991_ (_field__rec_enc_state_p _let_1985_))) (let
  ((_let_1992_ (_field__rec_key_p _let_1985_))) (let
  ((_let_1993_ (_field__rec_key_d _let_1985_))) (let
  ((_let_1994_ (_field__rec_ca_nonce_used _let_1985_))) (let
  ((_let_1995_ (_field__rec_ca_Boolrue _let_1985_))) (let
  ((_let_1996_
    (_make__type_record_2_ _let_1986_ _let_1987_ _let_1988_ _let_1989_
     _let_1990_ _let_1991_ _let_1992_ _let_1925_ _let_1993_ _let_1994_
     _let_1995_)))
  (let ((_let_1997_ (_field__rec_value _let_1996_))) (let
  ((_let_1998_ (_field__rec_vtype _let_1996_))) (let
  ((_let_1999_ (_field__rec_h_base _let_1996_))) (let
  ((_let_2000_ (_field__rec_h_offset _let_1996_))) (let
  ((_let_2001_ (_field__rec_h_length _let_1996_))) (let
  ((_let_2002_ (_field__rec_key_p _let_1996_))) (let
  ((_let_2003_ (_field__rec_enc_state_d _let_1996_))) (let
  ((_let_2004_ (_field__rec_key_d _let_1996_))) (let
  ((_let_2005_ (_field__rec_ca_nonce_used _let_1996_))) (let
  ((_let_2006_ (_field__rec_ca_Boolrue _let_1996_))) (let
  ((_let_2007_
    (_make__type_record_2_ _let_1997_ _let_1998_ _let_1999_ _let_2000_
     _let_2001_ GAR _let_2002_ _let_2003_ _let_2004_ _let_2005_ _let_2006_)))
  (let
  ((_let_2008_
    (_make__type_record_2_ _let_1997_ _let_1998_ _let_1999_ _let_2000_
     _let_2001_ PLN _let_2002_ _let_2003_ _let_2004_ _let_2005_ _let_2006_)))
  (let ((_let_2009_ (_field__rec_key_p _let_1922_))) (let
  ((_let_2010_ (= _let_2009_ ViKey))) (let
  ((_let_2011_ (ite _let_2010_ _let_2008_ _let_2007_))) (let
  ((_let_2012_ (_field__rec_enc_state_p _let_1922_))) (let
  ((_let_2013_ (not (= _let_2012_ ENC)))) (let
  ((_let_2014_ (ite _let_2013_ _let_2007_ _let_2011_))) (let
  ((_let_2015_
    (_make__type_record_2_ _let_1986_ _let_1987_ _let_1988_ _let_1989_
     _let_1990_ _let_1991_ _let_1992_ GAR _let_1993_ _let_1994_ _let_1995_)))
  (let ((_let_2016_ (_field__rec_value _let_2015_))) (let
  ((_let_2017_ (_field__rec_vtype _let_2015_))) (let
  ((_let_2018_ (_field__rec_h_base _let_2015_))) (let
  ((_let_2019_ (_field__rec_h_offset _let_2015_))) (let
  ((_let_2020_ (_field__rec_h_length _let_2015_))) (let
  ((_let_2021_ (_field__rec_key_p _let_2015_))) (let
  ((_let_2022_ (_field__rec_enc_state_d _let_2015_))) (let
  ((_let_2023_ (_field__rec_key_d _let_2015_))) (let
  ((_let_2024_ (_field__rec_ca_nonce_used _let_2015_))) (let
  ((_let_2025_ (_field__rec_ca_Boolrue _let_2015_))) (let
  ((_let_2026_
    (_make__type_record_2_ _let_2016_ _let_2017_ _let_2018_ _let_2019_
     _let_2020_ GAR _let_2021_ _let_2022_ _let_2023_ _let_2024_ _let_2025_)))
  (let ((_let_2027_ (not (= _let_1925_ PLN)))) (let
  ((_let_2028_ (ite _let_2027_ _let_2026_ _let_2014_))) (let
  ((_let_2029_ (_field__rec_value _let_2028_))) (let
  ((_let_2030_ (_field__rec_vtype _let_2028_))) (let
  ((_let_2031_ (_field__rec_h_base _let_2028_))) (let
  ((_let_2032_ (_field__rec_h_offset _let_2028_))) (let
  ((_let_2033_ (_field__rec_h_length _let_2028_))) (let
  ((_let_2034_ (_field__rec_enc_state_p _let_2028_))) (let
  ((_let_2035_ (_field__rec_enc_state_d _let_2028_))) (let
  ((_let_2036_ (_field__rec_key_d _let_2028_))) (let
  ((_let_2037_ (_field__rec_ca_nonce_used _let_2028_))) (let
  ((_let_2038_ (_field__rec_ca_Boolrue _let_2028_))) (let
  ((_let_2039_
    (_make__type_record_2_ _let_2029_ _let_2030_ _let_2031_ _let_2032_
     _let_2033_ _let_2034_ NoKey _let_2035_ _let_2036_ _let_2037_ _let_2038_)))
  (let ((_let_2040_ (_field__rec_value _let_2039_))) (let
  ((_let_2041_ (_field__rec_vtype _let_2039_))) (let
  ((_let_2042_ (_field__rec_h_base _let_2039_))) (let
  ((_let_2043_ (_field__rec_h_offset _let_2039_))) (let
  ((_let_2044_ (_field__rec_h_length _let_2039_))) (let
  ((_let_2045_ (_field__rec_enc_state_p _let_2039_))) (let
  ((_let_2046_ (_field__rec_key_p _let_2039_))) (let
  ((_let_2047_ (_field__rec_enc_state_d _let_2039_))) (let
  ((_let_2048_ (_field__rec_ca_nonce_used _let_2039_))) (let
  ((_let_2049_ (_field__rec_ca_Boolrue _let_2039_))) (let
  ((_let_2050_
    (_make__type_record_2_ _let_2040_ _let_2041_ _let_2042_ _let_2043_
     _let_2044_ _let_2045_ _let_2046_ _let_2047_ NoKey _let_2048_ _let_2049_)))
  (let ((_let_2051_ (_field__rec_value _let_2050_))) (let
  ((_let_2052_ (_field__rec_vtype _let_2050_))) (let
  ((_let_2053_ (_field__rec_h_base _let_2050_))) (let
  ((_let_2054_ (_field__rec_h_offset _let_2050_))) (let
  ((_let_2055_ (_field__rec_h_length _let_2050_))) (let
  ((_let_2056_ (_field__rec_enc_state_p _let_2050_))) (let
  ((_let_2057_ (_field__rec_key_p _let_2050_))) (let
  ((_let_2058_ (_field__rec_enc_state_d _let_2050_))) (let
  ((_let_2059_ (_field__rec_key_d _let_2050_))) (let
  ((_let_2060_ (_field__rec_ca_nonce_used _let_2050_))) (let
  ((_let_2061_
    (_make__type_record_2_ _let_2051_ _let_2052_ _let_2053_ _let_2054_
     _let_2055_ _let_2056_ _let_2057_ _let_2058_ _let_2059_ _let_2060_
     _let_1924_)))
  (let ((_let_2062_ (_field__rec_value _let_2061_))) (let
  ((_let_2063_ (_field__rec_vtype _let_2061_))) (let
  ((_let_2064_ (_field__rec_h_base _let_2061_))) (let
  ((_let_2065_ (_field__rec_h_offset _let_2061_))) (let
  ((_let_2066_ (_field__rec_h_length _let_2061_))) (let
  ((_let_2067_ (_field__rec_enc_state_p _let_2061_))) (let
  ((_let_2068_ (_field__rec_key_p _let_2061_))) (let
  ((_let_2069_ (_field__rec_enc_state_d _let_2061_))) (let
  ((_let_2070_ (_field__rec_key_d _let_2061_))) (let
  ((_let_2071_ (_field__rec_ca_Boolrue _let_2061_))) (let
  ((_let_2072_
    (_make__type_record_2_ _let_2062_ _let_2063_ _let_2064_ _let_2065_
     _let_2066_ _let_2067_ _let_2068_ _let_2069_ _let_2070_ _let_1923_
     _let_2071_)))
  (let ((_let_2073_ (const___ucld_151_ghost_to_addr_value_c3 _let_2072_)))
  (let
  ((_let_2074_
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var
      (bvmul
       ((_ zero_extend 78) _let_2073_)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let
  ((_let_2075_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_2073_) #b0001)))))
  (let ((_let_2076_ (not _let_2075_))) (let
  ((_let_2077_
    (ite _let_2076_ initial_68___ucld_168_data_probe_pre_g_var _let_2074_)))
  (let
  ((_let_2078_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_2079_
    (ite _let_2078_ _let_2077_ initial_68___ucld_168_data_probe_pre_g_var)))
  (let
  ((_let_2080_
    (ite initial_50_v _let_2079_ initial_68___ucld_168_data_probe_pre_g_var)))
  (let
  ((_let_2081_
    (and
     (or
      (and
       (= ((_ extract 19 19) state_1___ucld_168_data_probe_pre_g_var)
        ((_ extract 19 19) _let_2080_))
       (and (and
       (or
        (and
         (= ((_ extract 14 13) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 14 13) _let_2080_)))
        (and
         (= ((_ extract 14 13) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 14 13) _let_2080_)))
        (and
         (= ((_ extract 14 13) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 14 13) _let_2080_))))
       (not
        (= ((_ extract 14 13) state_1___ucld_168_data_probe_pre_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 10 9) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 10 9) _let_2080_)))
        (and
         (= ((_ extract 10 9) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 10 9) _let_2080_)))
        (and
         (= ((_ extract 10 9) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 10 9) _let_2080_))))
       (not
        (= ((_ extract 10 9) state_1___ucld_168_data_probe_pre_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 12 11) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 12 11) _let_2080_)))
        (and
         (= ((_ extract 12 11) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 12 11) _let_2080_)))
        (and
         (= ((_ extract 12 11) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 12 11) _let_2080_))))
       (not
        (= ((_ extract 12 11) state_1___ucld_168_data_probe_pre_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 16 15) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 16 15) _let_2080_)))
        (and
         (= ((_ extract 16 15) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 16 15) _let_2080_)))
        (and
         (= ((_ extract 16 15) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 16 15) _let_2080_))))
       (not
        (= ((_ extract 16 15) state_1___ucld_168_data_probe_pre_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 2 2) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 2 2) _let_2080_)))
        (and
         (= ((_ extract 2 2) state_1___ucld_168_data_probe_pre_g_var)
          ((_ extract 2 2) _let_2080_))))))))
     (not (= ((_ extract 19 19) state_1___ucld_168_data_probe_pre_g_var) #b1)))))
  _let_2081_)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let
  ((_let_2082_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2083_ (_field__rec_ca_nonce_used _let_2082_))) (let
  ((_let_2084_ (_field__rec_ca_Boolrue _let_2082_))) (let
  ((_let_2085_ (_field__rec_enc_state_d _let_2082_))) (let
  ((_let_2086_ (_field__rec_h_length _let_2082_))) (let
  ((_let_2087_ (_field__rec_h_offset _let_2082_))) (let
  ((_let_2088_ (_field__rec_h_base _let_2082_))) (let
  ((_let_2089_ (_field__rec_vtype _let_2082_))) (let
  ((_let_2090_ (_field__rec_value _let_2082_))) (let
  ((_let_2091_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2092_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2093_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2094_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2095_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2096_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2097_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2098_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2099_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2100_
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2101_
    (_make__type_record_2_ _let_2090_ _let_2091_ _let_2092_ _let_2093_
     _let_2094_ _let_2095_ _let_2096_ _let_2097_ _let_2098_ _let_2099_
     _let_2100_)))
  (let ((_let_2102_ (_field__rec_value _let_2101_))) (let
  ((_let_2103_ (_field__rec_h_base _let_2101_))) (let
  ((_let_2104_ (_field__rec_h_offset _let_2101_))) (let
  ((_let_2105_ (_field__rec_h_length _let_2101_))) (let
  ((_let_2106_ (_field__rec_enc_state_p _let_2101_))) (let
  ((_let_2107_ (_field__rec_key_p _let_2101_))) (let
  ((_let_2108_ (_field__rec_enc_state_d _let_2101_))) (let
  ((_let_2109_ (_field__rec_key_d _let_2101_))) (let
  ((_let_2110_ (_field__rec_ca_nonce_used _let_2101_))) (let
  ((_let_2111_ (_field__rec_ca_Boolrue _let_2101_))) (let
  ((_let_2112_
    (_make__type_record_2_ _let_2102_ _let_2089_ _let_2103_ _let_2104_
     _let_2105_ _let_2106_ _let_2107_ _let_2108_ _let_2109_ _let_2110_
     _let_2111_)))
  (let ((_let_2113_ (_field__rec_value _let_2112_))) (let
  ((_let_2114_ (_field__rec_vtype _let_2112_))) (let
  ((_let_2115_ (_field__rec_h_offset _let_2112_))) (let
  ((_let_2116_ (_field__rec_h_length _let_2112_))) (let
  ((_let_2117_ (_field__rec_enc_state_p _let_2112_))) (let
  ((_let_2118_ (_field__rec_key_p _let_2112_))) (let
  ((_let_2119_ (_field__rec_enc_state_d _let_2112_))) (let
  ((_let_2120_ (_field__rec_key_d _let_2112_))) (let
  ((_let_2121_ (_field__rec_ca_nonce_used _let_2112_))) (let
  ((_let_2122_ (_field__rec_ca_Boolrue _let_2112_))) (let
  ((_let_2123_
    (_make__type_record_2_ _let_2113_ _let_2114_ _let_2088_ _let_2115_
     _let_2116_ _let_2117_ _let_2118_ _let_2119_ _let_2120_ _let_2121_
     _let_2122_)))
  (let ((_let_2124_ (_field__rec_value _let_2123_))) (let
  ((_let_2125_ (_field__rec_vtype _let_2123_))) (let
  ((_let_2126_ (_field__rec_h_base _let_2123_))) (let
  ((_let_2127_ (_field__rec_h_length _let_2123_))) (let
  ((_let_2128_ (_field__rec_enc_state_p _let_2123_))) (let
  ((_let_2129_ (_field__rec_key_p _let_2123_))) (let
  ((_let_2130_ (_field__rec_enc_state_d _let_2123_))) (let
  ((_let_2131_ (_field__rec_key_d _let_2123_))) (let
  ((_let_2132_ (_field__rec_ca_nonce_used _let_2123_))) (let
  ((_let_2133_ (_field__rec_ca_Boolrue _let_2123_))) (let
  ((_let_2134_
    (_make__type_record_2_ _let_2124_ _let_2125_ _let_2126_ _let_2087_
     _let_2127_ _let_2128_ _let_2129_ _let_2130_ _let_2131_ _let_2132_
     _let_2133_)))
  (let ((_let_2135_ (_field__rec_value _let_2134_))) (let
  ((_let_2136_ (_field__rec_vtype _let_2134_))) (let
  ((_let_2137_ (_field__rec_h_base _let_2134_))) (let
  ((_let_2138_ (_field__rec_h_offset _let_2134_))) (let
  ((_let_2139_ (_field__rec_enc_state_p _let_2134_))) (let
  ((_let_2140_ (_field__rec_key_p _let_2134_))) (let
  ((_let_2141_ (_field__rec_enc_state_d _let_2134_))) (let
  ((_let_2142_ (_field__rec_key_d _let_2134_))) (let
  ((_let_2143_ (_field__rec_ca_nonce_used _let_2134_))) (let
  ((_let_2144_ (_field__rec_ca_Boolrue _let_2134_))) (let
  ((_let_2145_
    (_make__type_record_2_ _let_2135_ _let_2136_ _let_2137_ _let_2138_
     _let_2086_ _let_2139_ _let_2140_ _let_2141_ _let_2142_ _let_2143_
     _let_2144_)))
  (let ((_let_2146_ (_field__rec_value _let_2145_))) (let
  ((_let_2147_ (_field__rec_vtype _let_2145_))) (let
  ((_let_2148_ (_field__rec_h_base _let_2145_))) (let
  ((_let_2149_ (_field__rec_h_offset _let_2145_))) (let
  ((_let_2150_ (_field__rec_h_length _let_2145_))) (let
  ((_let_2151_ (_field__rec_enc_state_p _let_2145_))) (let
  ((_let_2152_ (_field__rec_key_p _let_2145_))) (let
  ((_let_2153_ (_field__rec_key_d _let_2145_))) (let
  ((_let_2154_ (_field__rec_ca_nonce_used _let_2145_))) (let
  ((_let_2155_ (_field__rec_ca_Boolrue _let_2145_))) (let
  ((_let_2156_
    (_make__type_record_2_ _let_2146_ _let_2147_ _let_2148_ _let_2149_
     _let_2150_ _let_2151_ _let_2152_ _let_2085_ _let_2153_ _let_2154_
     _let_2155_)))
  (let ((_let_2157_ (_field__rec_value _let_2156_))) (let
  ((_let_2158_ (_field__rec_vtype _let_2156_))) (let
  ((_let_2159_ (_field__rec_h_base _let_2156_))) (let
  ((_let_2160_ (_field__rec_h_offset _let_2156_))) (let
  ((_let_2161_ (_field__rec_h_length _let_2156_))) (let
  ((_let_2162_ (_field__rec_key_p _let_2156_))) (let
  ((_let_2163_ (_field__rec_enc_state_d _let_2156_))) (let
  ((_let_2164_ (_field__rec_key_d _let_2156_))) (let
  ((_let_2165_ (_field__rec_ca_nonce_used _let_2156_))) (let
  ((_let_2166_ (_field__rec_ca_Boolrue _let_2156_))) (let
  ((_let_2167_
    (_make__type_record_2_ _let_2157_ _let_2158_ _let_2159_ _let_2160_
     _let_2161_ GAR _let_2162_ _let_2163_ _let_2164_ _let_2165_ _let_2166_)))
  (let
  ((_let_2168_
    (_make__type_record_2_ _let_2157_ _let_2158_ _let_2159_ _let_2160_
     _let_2161_ PLN _let_2162_ _let_2163_ _let_2164_ _let_2165_ _let_2166_)))
  (let ((_let_2169_ (_field__rec_key_p _let_2082_))) (let
  ((_let_2170_ (= _let_2169_ ViKey))) (let
  ((_let_2171_ (ite _let_2170_ _let_2168_ _let_2167_))) (let
  ((_let_2172_ (_field__rec_enc_state_p _let_2082_))) (let
  ((_let_2173_ (not (= _let_2172_ ENC)))) (let
  ((_let_2174_ (ite _let_2173_ _let_2167_ _let_2171_))) (let
  ((_let_2175_
    (_make__type_record_2_ _let_2146_ _let_2147_ _let_2148_ _let_2149_
     _let_2150_ _let_2151_ _let_2152_ GAR _let_2153_ _let_2154_ _let_2155_)))
  (let ((_let_2176_ (_field__rec_value _let_2175_))) (let
  ((_let_2177_ (_field__rec_vtype _let_2175_))) (let
  ((_let_2178_ (_field__rec_h_base _let_2175_))) (let
  ((_let_2179_ (_field__rec_h_offset _let_2175_))) (let
  ((_let_2180_ (_field__rec_h_length _let_2175_))) (let
  ((_let_2181_ (_field__rec_key_p _let_2175_))) (let
  ((_let_2182_ (_field__rec_enc_state_d _let_2175_))) (let
  ((_let_2183_ (_field__rec_key_d _let_2175_))) (let
  ((_let_2184_ (_field__rec_ca_nonce_used _let_2175_))) (let
  ((_let_2185_ (_field__rec_ca_Boolrue _let_2175_))) (let
  ((_let_2186_
    (_make__type_record_2_ _let_2176_ _let_2177_ _let_2178_ _let_2179_
     _let_2180_ GAR _let_2181_ _let_2182_ _let_2183_ _let_2184_ _let_2185_)))
  (let ((_let_2187_ (not (= _let_2085_ PLN)))) (let
  ((_let_2188_ (ite _let_2187_ _let_2186_ _let_2174_))) (let
  ((_let_2189_ (_field__rec_value _let_2188_))) (let
  ((_let_2190_ (_field__rec_vtype _let_2188_))) (let
  ((_let_2191_ (_field__rec_h_base _let_2188_))) (let
  ((_let_2192_ (_field__rec_h_offset _let_2188_))) (let
  ((_let_2193_ (_field__rec_h_length _let_2188_))) (let
  ((_let_2194_ (_field__rec_enc_state_p _let_2188_))) (let
  ((_let_2195_ (_field__rec_enc_state_d _let_2188_))) (let
  ((_let_2196_ (_field__rec_key_d _let_2188_))) (let
  ((_let_2197_ (_field__rec_ca_nonce_used _let_2188_))) (let
  ((_let_2198_ (_field__rec_ca_Boolrue _let_2188_))) (let
  ((_let_2199_
    (_make__type_record_2_ _let_2189_ _let_2190_ _let_2191_ _let_2192_
     _let_2193_ _let_2194_ NoKey _let_2195_ _let_2196_ _let_2197_ _let_2198_)))
  (let ((_let_2200_ (_field__rec_value _let_2199_))) (let
  ((_let_2201_ (_field__rec_vtype _let_2199_))) (let
  ((_let_2202_ (_field__rec_h_base _let_2199_))) (let
  ((_let_2203_ (_field__rec_h_offset _let_2199_))) (let
  ((_let_2204_ (_field__rec_h_length _let_2199_))) (let
  ((_let_2205_ (_field__rec_enc_state_p _let_2199_))) (let
  ((_let_2206_ (_field__rec_key_p _let_2199_))) (let
  ((_let_2207_ (_field__rec_enc_state_d _let_2199_))) (let
  ((_let_2208_ (_field__rec_ca_nonce_used _let_2199_))) (let
  ((_let_2209_ (_field__rec_ca_Boolrue _let_2199_))) (let
  ((_let_2210_
    (_make__type_record_2_ _let_2200_ _let_2201_ _let_2202_ _let_2203_
     _let_2204_ _let_2205_ _let_2206_ _let_2207_ NoKey _let_2208_ _let_2209_)))
  (let ((_let_2211_ (_field__rec_value _let_2210_))) (let
  ((_let_2212_ (_field__rec_vtype _let_2210_))) (let
  ((_let_2213_ (_field__rec_h_base _let_2210_))) (let
  ((_let_2214_ (_field__rec_h_offset _let_2210_))) (let
  ((_let_2215_ (_field__rec_h_length _let_2210_))) (let
  ((_let_2216_ (_field__rec_enc_state_p _let_2210_))) (let
  ((_let_2217_ (_field__rec_key_p _let_2210_))) (let
  ((_let_2218_ (_field__rec_enc_state_d _let_2210_))) (let
  ((_let_2219_ (_field__rec_key_d _let_2210_))) (let
  ((_let_2220_ (_field__rec_ca_nonce_used _let_2210_))) (let
  ((_let_2221_
    (_make__type_record_2_ _let_2211_ _let_2212_ _let_2213_ _let_2214_
     _let_2215_ _let_2216_ _let_2217_ _let_2218_ _let_2219_ _let_2220_
     _let_2084_)))
  (let ((_let_2222_ (_field__rec_value _let_2221_))) (let
  ((_let_2223_ (_field__rec_vtype _let_2221_))) (let
  ((_let_2224_ (_field__rec_h_base _let_2221_))) (let
  ((_let_2225_ (_field__rec_h_offset _let_2221_))) (let
  ((_let_2226_ (_field__rec_h_length _let_2221_))) (let
  ((_let_2227_ (_field__rec_enc_state_p _let_2221_))) (let
  ((_let_2228_ (_field__rec_key_p _let_2221_))) (let
  ((_let_2229_ (_field__rec_enc_state_d _let_2221_))) (let
  ((_let_2230_ (_field__rec_key_d _let_2221_))) (let
  ((_let_2231_ (_field__rec_ca_Boolrue _let_2221_))) (let
  ((_let_2232_
    (_make__type_record_2_ _let_2222_ _let_2223_ _let_2224_ _let_2225_
     _let_2226_ _let_2227_ _let_2228_ _let_2229_ _let_2230_ _let_2083_
     _let_2231_)))
  (let ((_let_2233_ (_field__rec_h_offset _let_2232_))) (let
  ((_let_2234_ (bvsub ((_ bv3 2) ) _let_2233_))) (let
  ((_let_2235_ (_field__rec_h_base _let_2232_))) (let
  ((_let_2236_ (bvule _let_2235_ _let_2234_))) (let
  ((_let_2237_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2238_ (and true _let_2237_))) (let
  ((_let_2239_ (and _let_2238_ initial_50_v))) (let
  ((_let_2240_ (=> _let_2239_ _let_2236_)))
  _let_2240_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun state_1___ucld_161_l1_var () (_ BitVec 3))
(declare-fun havoc_97___ucld_114_l1_havoc () (_ BitVec 3))
(assert
 (let
  ((_let_2241_
    (ite initial_50_v havoc_97___ucld_114_l1_havoc
     initial_63___ucld_161_l1_var)))
  (let ((_let_2242_ (= state_1___ucld_161_l1_var _let_2241_))) _let_2242_)))
(assert
 (let
  ((_let_2243_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       ((_ extract 0 0)
        (bvlshr
         initial_51___ucld_157_alloc_map_var
         (bvmul ((_ zero_extend 2) a) #b0001)))
       (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_56___ucld_171_ghost_mem_var
               (bvmul
                ((_ zero_extend 78) a)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_56___ucld_171_ghost_mem_var
           (bvmul
            ((_ zero_extend 78) a)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_56___ucld_171_ghost_mem_var
               (bvmul
                ((_ zero_extend 78) a)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         (select initial_56___ucld_171_ghost_mem_var a))
         (_field__rec_h_length
         (select initial_56___ucld_171_ghost_mem_var a))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              initial_56___ucld_171_ghost_mem_var
              (bvmul
               ((_ zero_extend 78) a)
               #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  _let_2243_))
(declare-fun state_1___ucld_174_msv_curr_var () Bool)
(declare-fun initial_59___ucld_174_msv_curr_var () Bool)
(assert
 (let
  ((_let_2244_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2245_ (_field__rec_ca_nonce_used _let_2244_))) (let
  ((_let_2246_ (_field__rec_ca_Boolrue _let_2244_))) (let
  ((_let_2247_ (_field__rec_enc_state_d _let_2244_))) (let
  ((_let_2248_ (_field__rec_h_length _let_2244_))) (let
  ((_let_2249_ (_field__rec_h_offset _let_2244_))) (let
  ((_let_2250_ (_field__rec_h_base _let_2244_))) (let
  ((_let_2251_ (_field__rec_vtype _let_2244_))) (let
  ((_let_2252_ (_field__rec_value _let_2244_))) (let
  ((_let_2253_ (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2254_ (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2255_ (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2256_ (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2257_
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2258_ (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2259_
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2260_ (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2261_
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2262_
    (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2263_
    (_make__type_record_2_ _let_2252_ _let_2253_ _let_2254_ _let_2255_
     _let_2256_ _let_2257_ _let_2258_ _let_2259_ _let_2260_ _let_2261_
     _let_2262_)))
  (let ((_let_2264_ (_field__rec_value _let_2263_))) (let
  ((_let_2265_ (_field__rec_h_base _let_2263_))) (let
  ((_let_2266_ (_field__rec_h_offset _let_2263_))) (let
  ((_let_2267_ (_field__rec_h_length _let_2263_))) (let
  ((_let_2268_ (_field__rec_enc_state_p _let_2263_))) (let
  ((_let_2269_ (_field__rec_key_p _let_2263_))) (let
  ((_let_2270_ (_field__rec_enc_state_d _let_2263_))) (let
  ((_let_2271_ (_field__rec_key_d _let_2263_))) (let
  ((_let_2272_ (_field__rec_ca_nonce_used _let_2263_))) (let
  ((_let_2273_ (_field__rec_ca_Boolrue _let_2263_))) (let
  ((_let_2274_
    (_make__type_record_2_ _let_2264_ _let_2251_ _let_2265_ _let_2266_
     _let_2267_ _let_2268_ _let_2269_ _let_2270_ _let_2271_ _let_2272_
     _let_2273_)))
  (let ((_let_2275_ (_field__rec_value _let_2274_))) (let
  ((_let_2276_ (_field__rec_vtype _let_2274_))) (let
  ((_let_2277_ (_field__rec_h_offset _let_2274_))) (let
  ((_let_2278_ (_field__rec_h_length _let_2274_))) (let
  ((_let_2279_ (_field__rec_enc_state_p _let_2274_))) (let
  ((_let_2280_ (_field__rec_key_p _let_2274_))) (let
  ((_let_2281_ (_field__rec_enc_state_d _let_2274_))) (let
  ((_let_2282_ (_field__rec_key_d _let_2274_))) (let
  ((_let_2283_ (_field__rec_ca_nonce_used _let_2274_))) (let
  ((_let_2284_ (_field__rec_ca_Boolrue _let_2274_))) (let
  ((_let_2285_
    (_make__type_record_2_ _let_2275_ _let_2276_ _let_2250_ _let_2277_
     _let_2278_ _let_2279_ _let_2280_ _let_2281_ _let_2282_ _let_2283_
     _let_2284_)))
  (let ((_let_2286_ (_field__rec_value _let_2285_))) (let
  ((_let_2287_ (_field__rec_vtype _let_2285_))) (let
  ((_let_2288_ (_field__rec_h_base _let_2285_))) (let
  ((_let_2289_ (_field__rec_h_length _let_2285_))) (let
  ((_let_2290_ (_field__rec_enc_state_p _let_2285_))) (let
  ((_let_2291_ (_field__rec_key_p _let_2285_))) (let
  ((_let_2292_ (_field__rec_enc_state_d _let_2285_))) (let
  ((_let_2293_ (_field__rec_key_d _let_2285_))) (let
  ((_let_2294_ (_field__rec_ca_nonce_used _let_2285_))) (let
  ((_let_2295_ (_field__rec_ca_Boolrue _let_2285_))) (let
  ((_let_2296_
    (_make__type_record_2_ _let_2286_ _let_2287_ _let_2288_ _let_2249_
     _let_2289_ _let_2290_ _let_2291_ _let_2292_ _let_2293_ _let_2294_
     _let_2295_)))
  (let ((_let_2297_ (_field__rec_value _let_2296_))) (let
  ((_let_2298_ (_field__rec_vtype _let_2296_))) (let
  ((_let_2299_ (_field__rec_h_base _let_2296_))) (let
  ((_let_2300_ (_field__rec_h_offset _let_2296_))) (let
  ((_let_2301_ (_field__rec_enc_state_p _let_2296_))) (let
  ((_let_2302_ (_field__rec_key_p _let_2296_))) (let
  ((_let_2303_ (_field__rec_enc_state_d _let_2296_))) (let
  ((_let_2304_ (_field__rec_key_d _let_2296_))) (let
  ((_let_2305_ (_field__rec_ca_nonce_used _let_2296_))) (let
  ((_let_2306_ (_field__rec_ca_Boolrue _let_2296_))) (let
  ((_let_2307_
    (_make__type_record_2_ _let_2297_ _let_2298_ _let_2299_ _let_2300_
     _let_2248_ _let_2301_ _let_2302_ _let_2303_ _let_2304_ _let_2305_
     _let_2306_)))
  (let ((_let_2308_ (_field__rec_value _let_2307_))) (let
  ((_let_2309_ (_field__rec_vtype _let_2307_))) (let
  ((_let_2310_ (_field__rec_h_base _let_2307_))) (let
  ((_let_2311_ (_field__rec_h_offset _let_2307_))) (let
  ((_let_2312_ (_field__rec_h_length _let_2307_))) (let
  ((_let_2313_ (_field__rec_enc_state_p _let_2307_))) (let
  ((_let_2314_ (_field__rec_key_p _let_2307_))) (let
  ((_let_2315_ (_field__rec_key_d _let_2307_))) (let
  ((_let_2316_ (_field__rec_ca_nonce_used _let_2307_))) (let
  ((_let_2317_ (_field__rec_ca_Boolrue _let_2307_))) (let
  ((_let_2318_
    (_make__type_record_2_ _let_2308_ _let_2309_ _let_2310_ _let_2311_
     _let_2312_ _let_2313_ _let_2314_ _let_2247_ _let_2315_ _let_2316_
     _let_2317_)))
  (let ((_let_2319_ (_field__rec_value _let_2318_))) (let
  ((_let_2320_ (_field__rec_vtype _let_2318_))) (let
  ((_let_2321_ (_field__rec_h_base _let_2318_))) (let
  ((_let_2322_ (_field__rec_h_offset _let_2318_))) (let
  ((_let_2323_ (_field__rec_h_length _let_2318_))) (let
  ((_let_2324_ (_field__rec_key_p _let_2318_))) (let
  ((_let_2325_ (_field__rec_enc_state_d _let_2318_))) (let
  ((_let_2326_ (_field__rec_key_d _let_2318_))) (let
  ((_let_2327_ (_field__rec_ca_nonce_used _let_2318_))) (let
  ((_let_2328_ (_field__rec_ca_Boolrue _let_2318_))) (let
  ((_let_2329_
    (_make__type_record_2_ _let_2319_ _let_2320_ _let_2321_ _let_2322_
     _let_2323_ GAR _let_2324_ _let_2325_ _let_2326_ _let_2327_ _let_2328_)))
  (let
  ((_let_2330_
    (_make__type_record_2_ _let_2319_ _let_2320_ _let_2321_ _let_2322_
     _let_2323_ PLN _let_2324_ _let_2325_ _let_2326_ _let_2327_ _let_2328_)))
  (let ((_let_2331_ (_field__rec_key_p _let_2244_))) (let
  ((_let_2332_ (= _let_2331_ ViKey))) (let
  ((_let_2333_ (ite _let_2332_ _let_2330_ _let_2329_))) (let
  ((_let_2334_ (_field__rec_enc_state_p _let_2244_))) (let
  ((_let_2335_ (not (= _let_2334_ ENC)))) (let
  ((_let_2336_ (ite _let_2335_ _let_2329_ _let_2333_))) (let
  ((_let_2337_
    (_make__type_record_2_ _let_2308_ _let_2309_ _let_2310_ _let_2311_
     _let_2312_ _let_2313_ _let_2314_ GAR _let_2315_ _let_2316_ _let_2317_)))
  (let ((_let_2338_ (_field__rec_value _let_2337_))) (let
  ((_let_2339_ (_field__rec_vtype _let_2337_))) (let
  ((_let_2340_ (_field__rec_h_base _let_2337_))) (let
  ((_let_2341_ (_field__rec_h_offset _let_2337_))) (let
  ((_let_2342_ (_field__rec_h_length _let_2337_))) (let
  ((_let_2343_ (_field__rec_key_p _let_2337_))) (let
  ((_let_2344_ (_field__rec_enc_state_d _let_2337_))) (let
  ((_let_2345_ (_field__rec_key_d _let_2337_))) (let
  ((_let_2346_ (_field__rec_ca_nonce_used _let_2337_))) (let
  ((_let_2347_ (_field__rec_ca_Boolrue _let_2337_))) (let
  ((_let_2348_
    (_make__type_record_2_ _let_2338_ _let_2339_ _let_2340_ _let_2341_
     _let_2342_ GAR _let_2343_ _let_2344_ _let_2345_ _let_2346_ _let_2347_)))
  (let ((_let_2349_ (not (= _let_2247_ PLN)))) (let
  ((_let_2350_ (ite _let_2349_ _let_2348_ _let_2336_))) (let
  ((_let_2351_ (_field__rec_value _let_2350_))) (let
  ((_let_2352_ (_field__rec_vtype _let_2350_))) (let
  ((_let_2353_ (_field__rec_h_base _let_2350_))) (let
  ((_let_2354_ (_field__rec_h_offset _let_2350_))) (let
  ((_let_2355_ (_field__rec_h_length _let_2350_))) (let
  ((_let_2356_ (_field__rec_enc_state_p _let_2350_))) (let
  ((_let_2357_ (_field__rec_enc_state_d _let_2350_))) (let
  ((_let_2358_ (_field__rec_key_d _let_2350_))) (let
  ((_let_2359_ (_field__rec_ca_nonce_used _let_2350_))) (let
  ((_let_2360_ (_field__rec_ca_Boolrue _let_2350_))) (let
  ((_let_2361_
    (_make__type_record_2_ _let_2351_ _let_2352_ _let_2353_ _let_2354_
     _let_2355_ _let_2356_ NoKey _let_2357_ _let_2358_ _let_2359_ _let_2360_)))
  (let ((_let_2362_ (_field__rec_value _let_2361_))) (let
  ((_let_2363_ (_field__rec_vtype _let_2361_))) (let
  ((_let_2364_ (_field__rec_h_base _let_2361_))) (let
  ((_let_2365_ (_field__rec_h_offset _let_2361_))) (let
  ((_let_2366_ (_field__rec_h_length _let_2361_))) (let
  ((_let_2367_ (_field__rec_enc_state_p _let_2361_))) (let
  ((_let_2368_ (_field__rec_key_p _let_2361_))) (let
  ((_let_2369_ (_field__rec_enc_state_d _let_2361_))) (let
  ((_let_2370_ (_field__rec_ca_nonce_used _let_2361_))) (let
  ((_let_2371_ (_field__rec_ca_Boolrue _let_2361_))) (let
  ((_let_2372_
    (_make__type_record_2_ _let_2362_ _let_2363_ _let_2364_ _let_2365_
     _let_2366_ _let_2367_ _let_2368_ _let_2369_ NoKey _let_2370_ _let_2371_)))
  (let ((_let_2373_ (_field__rec_value _let_2372_))) (let
  ((_let_2374_ (_field__rec_vtype _let_2372_))) (let
  ((_let_2375_ (_field__rec_h_base _let_2372_))) (let
  ((_let_2376_ (_field__rec_h_offset _let_2372_))) (let
  ((_let_2377_ (_field__rec_h_length _let_2372_))) (let
  ((_let_2378_ (_field__rec_enc_state_p _let_2372_))) (let
  ((_let_2379_ (_field__rec_key_p _let_2372_))) (let
  ((_let_2380_ (_field__rec_enc_state_d _let_2372_))) (let
  ((_let_2381_ (_field__rec_key_d _let_2372_))) (let
  ((_let_2382_ (_field__rec_ca_nonce_used _let_2372_))) (let
  ((_let_2383_
    (_make__type_record_2_ _let_2373_ _let_2374_ _let_2375_ _let_2376_
     _let_2377_ _let_2378_ _let_2379_ _let_2380_ _let_2381_ _let_2382_
     _let_2246_)))
  (let ((_let_2384_ (_field__rec_value _let_2383_))) (let
  ((_let_2385_ (_field__rec_vtype _let_2383_))) (let
  ((_let_2386_ (_field__rec_h_base _let_2383_))) (let
  ((_let_2387_ (_field__rec_h_offset _let_2383_))) (let
  ((_let_2388_ (_field__rec_h_length _let_2383_))) (let
  ((_let_2389_ (_field__rec_enc_state_p _let_2383_))) (let
  ((_let_2390_ (_field__rec_key_p _let_2383_))) (let
  ((_let_2391_ (_field__rec_enc_state_d _let_2383_))) (let
  ((_let_2392_ (_field__rec_key_d _let_2383_))) (let
  ((_let_2393_ (_field__rec_ca_Boolrue _let_2383_))) (let
  ((_let_2394_
    (_make__type_record_2_ _let_2384_ _let_2385_ _let_2386_ _let_2387_
     _let_2388_ _let_2389_ _let_2390_ _let_2391_ _let_2392_ _let_2245_
     _let_2393_)))
  (let ((_let_2395_ (_field__rec_h_length _let_2394_))) (let
  ((_let_2396_ (_field__rec_h_offset _let_2394_))) (let
  ((_let_2397_ (bvult _let_2396_ _let_2395_))) (let
  ((_let_2398_ (bvule ((_ bv0 2) ) _let_2396_))) (let
  ((_let_2399_ (and _let_2398_ _let_2397_))) (let
  ((_let_2400_ (not _let_2399_))) (let
  ((_let_2401_ (ite _let_2400_ true false))) (let
  ((_let_2402_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_2403_ (ite _let_2402_ _let_2401_ initial_59___ucld_174_msv_curr_var)))
  (let
  ((_let_2404_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2405_ (_field__rec_ca_nonce_used _let_2404_))) (let
  ((_let_2406_ (_field__rec_ca_Boolrue _let_2404_))) (let
  ((_let_2407_ (_field__rec_enc_state_d _let_2404_))) (let
  ((_let_2408_ (_field__rec_h_length _let_2404_))) (let
  ((_let_2409_ (_field__rec_h_offset _let_2404_))) (let
  ((_let_2410_ (_field__rec_h_base _let_2404_))) (let
  ((_let_2411_ (_field__rec_vtype _let_2404_))) (let
  ((_let_2412_ (_field__rec_value _let_2404_))) (let
  ((_let_2413_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2414_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2415_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2416_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2417_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2418_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2419_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2420_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2421_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2422_
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2423_
    (_make__type_record_2_ _let_2412_ _let_2413_ _let_2414_ _let_2415_
     _let_2416_ _let_2417_ _let_2418_ _let_2419_ _let_2420_ _let_2421_
     _let_2422_)))
  (let ((_let_2424_ (_field__rec_value _let_2423_))) (let
  ((_let_2425_ (_field__rec_h_base _let_2423_))) (let
  ((_let_2426_ (_field__rec_h_offset _let_2423_))) (let
  ((_let_2427_ (_field__rec_h_length _let_2423_))) (let
  ((_let_2428_ (_field__rec_enc_state_p _let_2423_))) (let
  ((_let_2429_ (_field__rec_key_p _let_2423_))) (let
  ((_let_2430_ (_field__rec_enc_state_d _let_2423_))) (let
  ((_let_2431_ (_field__rec_key_d _let_2423_))) (let
  ((_let_2432_ (_field__rec_ca_nonce_used _let_2423_))) (let
  ((_let_2433_ (_field__rec_ca_Boolrue _let_2423_))) (let
  ((_let_2434_
    (_make__type_record_2_ _let_2424_ _let_2411_ _let_2425_ _let_2426_
     _let_2427_ _let_2428_ _let_2429_ _let_2430_ _let_2431_ _let_2432_
     _let_2433_)))
  (let ((_let_2435_ (_field__rec_value _let_2434_))) (let
  ((_let_2436_ (_field__rec_vtype _let_2434_))) (let
  ((_let_2437_ (_field__rec_h_offset _let_2434_))) (let
  ((_let_2438_ (_field__rec_h_length _let_2434_))) (let
  ((_let_2439_ (_field__rec_enc_state_p _let_2434_))) (let
  ((_let_2440_ (_field__rec_key_p _let_2434_))) (let
  ((_let_2441_ (_field__rec_enc_state_d _let_2434_))) (let
  ((_let_2442_ (_field__rec_key_d _let_2434_))) (let
  ((_let_2443_ (_field__rec_ca_nonce_used _let_2434_))) (let
  ((_let_2444_ (_field__rec_ca_Boolrue _let_2434_))) (let
  ((_let_2445_
    (_make__type_record_2_ _let_2435_ _let_2436_ _let_2410_ _let_2437_
     _let_2438_ _let_2439_ _let_2440_ _let_2441_ _let_2442_ _let_2443_
     _let_2444_)))
  (let ((_let_2446_ (_field__rec_value _let_2445_))) (let
  ((_let_2447_ (_field__rec_vtype _let_2445_))) (let
  ((_let_2448_ (_field__rec_h_base _let_2445_))) (let
  ((_let_2449_ (_field__rec_h_length _let_2445_))) (let
  ((_let_2450_ (_field__rec_enc_state_p _let_2445_))) (let
  ((_let_2451_ (_field__rec_key_p _let_2445_))) (let
  ((_let_2452_ (_field__rec_enc_state_d _let_2445_))) (let
  ((_let_2453_ (_field__rec_key_d _let_2445_))) (let
  ((_let_2454_ (_field__rec_ca_nonce_used _let_2445_))) (let
  ((_let_2455_ (_field__rec_ca_Boolrue _let_2445_))) (let
  ((_let_2456_
    (_make__type_record_2_ _let_2446_ _let_2447_ _let_2448_ _let_2409_
     _let_2449_ _let_2450_ _let_2451_ _let_2452_ _let_2453_ _let_2454_
     _let_2455_)))
  (let ((_let_2457_ (_field__rec_value _let_2456_))) (let
  ((_let_2458_ (_field__rec_vtype _let_2456_))) (let
  ((_let_2459_ (_field__rec_h_base _let_2456_))) (let
  ((_let_2460_ (_field__rec_h_offset _let_2456_))) (let
  ((_let_2461_ (_field__rec_enc_state_p _let_2456_))) (let
  ((_let_2462_ (_field__rec_key_p _let_2456_))) (let
  ((_let_2463_ (_field__rec_enc_state_d _let_2456_))) (let
  ((_let_2464_ (_field__rec_key_d _let_2456_))) (let
  ((_let_2465_ (_field__rec_ca_nonce_used _let_2456_))) (let
  ((_let_2466_ (_field__rec_ca_Boolrue _let_2456_))) (let
  ((_let_2467_
    (_make__type_record_2_ _let_2457_ _let_2458_ _let_2459_ _let_2460_
     _let_2408_ _let_2461_ _let_2462_ _let_2463_ _let_2464_ _let_2465_
     _let_2466_)))
  (let ((_let_2468_ (_field__rec_value _let_2467_))) (let
  ((_let_2469_ (_field__rec_vtype _let_2467_))) (let
  ((_let_2470_ (_field__rec_h_base _let_2467_))) (let
  ((_let_2471_ (_field__rec_h_offset _let_2467_))) (let
  ((_let_2472_ (_field__rec_h_length _let_2467_))) (let
  ((_let_2473_ (_field__rec_enc_state_p _let_2467_))) (let
  ((_let_2474_ (_field__rec_key_p _let_2467_))) (let
  ((_let_2475_ (_field__rec_key_d _let_2467_))) (let
  ((_let_2476_ (_field__rec_ca_nonce_used _let_2467_))) (let
  ((_let_2477_ (_field__rec_ca_Boolrue _let_2467_))) (let
  ((_let_2478_
    (_make__type_record_2_ _let_2468_ _let_2469_ _let_2470_ _let_2471_
     _let_2472_ _let_2473_ _let_2474_ _let_2407_ _let_2475_ _let_2476_
     _let_2477_)))
  (let ((_let_2479_ (_field__rec_value _let_2478_))) (let
  ((_let_2480_ (_field__rec_vtype _let_2478_))) (let
  ((_let_2481_ (_field__rec_h_base _let_2478_))) (let
  ((_let_2482_ (_field__rec_h_offset _let_2478_))) (let
  ((_let_2483_ (_field__rec_h_length _let_2478_))) (let
  ((_let_2484_ (_field__rec_key_p _let_2478_))) (let
  ((_let_2485_ (_field__rec_enc_state_d _let_2478_))) (let
  ((_let_2486_ (_field__rec_key_d _let_2478_))) (let
  ((_let_2487_ (_field__rec_ca_nonce_used _let_2478_))) (let
  ((_let_2488_ (_field__rec_ca_Boolrue _let_2478_))) (let
  ((_let_2489_
    (_make__type_record_2_ _let_2479_ _let_2480_ _let_2481_ _let_2482_
     _let_2483_ GAR _let_2484_ _let_2485_ _let_2486_ _let_2487_ _let_2488_)))
  (let
  ((_let_2490_
    (_make__type_record_2_ _let_2479_ _let_2480_ _let_2481_ _let_2482_
     _let_2483_ PLN _let_2484_ _let_2485_ _let_2486_ _let_2487_ _let_2488_)))
  (let ((_let_2491_ (_field__rec_key_p _let_2404_))) (let
  ((_let_2492_ (= _let_2491_ ViKey))) (let
  ((_let_2493_ (ite _let_2492_ _let_2490_ _let_2489_))) (let
  ((_let_2494_ (_field__rec_enc_state_p _let_2404_))) (let
  ((_let_2495_ (not (= _let_2494_ ENC)))) (let
  ((_let_2496_ (ite _let_2495_ _let_2489_ _let_2493_))) (let
  ((_let_2497_
    (_make__type_record_2_ _let_2468_ _let_2469_ _let_2470_ _let_2471_
     _let_2472_ _let_2473_ _let_2474_ GAR _let_2475_ _let_2476_ _let_2477_)))
  (let ((_let_2498_ (_field__rec_value _let_2497_))) (let
  ((_let_2499_ (_field__rec_vtype _let_2497_))) (let
  ((_let_2500_ (_field__rec_h_base _let_2497_))) (let
  ((_let_2501_ (_field__rec_h_offset _let_2497_))) (let
  ((_let_2502_ (_field__rec_h_length _let_2497_))) (let
  ((_let_2503_ (_field__rec_key_p _let_2497_))) (let
  ((_let_2504_ (_field__rec_enc_state_d _let_2497_))) (let
  ((_let_2505_ (_field__rec_key_d _let_2497_))) (let
  ((_let_2506_ (_field__rec_ca_nonce_used _let_2497_))) (let
  ((_let_2507_ (_field__rec_ca_Boolrue _let_2497_))) (let
  ((_let_2508_
    (_make__type_record_2_ _let_2498_ _let_2499_ _let_2500_ _let_2501_
     _let_2502_ GAR _let_2503_ _let_2504_ _let_2505_ _let_2506_ _let_2507_)))
  (let ((_let_2509_ (not (= _let_2407_ PLN)))) (let
  ((_let_2510_ (ite _let_2509_ _let_2508_ _let_2496_))) (let
  ((_let_2511_ (_field__rec_value _let_2510_))) (let
  ((_let_2512_ (_field__rec_vtype _let_2510_))) (let
  ((_let_2513_ (_field__rec_h_base _let_2510_))) (let
  ((_let_2514_ (_field__rec_h_offset _let_2510_))) (let
  ((_let_2515_ (_field__rec_h_length _let_2510_))) (let
  ((_let_2516_ (_field__rec_enc_state_p _let_2510_))) (let
  ((_let_2517_ (_field__rec_enc_state_d _let_2510_))) (let
  ((_let_2518_ (_field__rec_key_d _let_2510_))) (let
  ((_let_2519_ (_field__rec_ca_nonce_used _let_2510_))) (let
  ((_let_2520_ (_field__rec_ca_Boolrue _let_2510_))) (let
  ((_let_2521_
    (_make__type_record_2_ _let_2511_ _let_2512_ _let_2513_ _let_2514_
     _let_2515_ _let_2516_ NoKey _let_2517_ _let_2518_ _let_2519_ _let_2520_)))
  (let ((_let_2522_ (_field__rec_value _let_2521_))) (let
  ((_let_2523_ (_field__rec_vtype _let_2521_))) (let
  ((_let_2524_ (_field__rec_h_base _let_2521_))) (let
  ((_let_2525_ (_field__rec_h_offset _let_2521_))) (let
  ((_let_2526_ (_field__rec_h_length _let_2521_))) (let
  ((_let_2527_ (_field__rec_enc_state_p _let_2521_))) (let
  ((_let_2528_ (_field__rec_key_p _let_2521_))) (let
  ((_let_2529_ (_field__rec_enc_state_d _let_2521_))) (let
  ((_let_2530_ (_field__rec_ca_nonce_used _let_2521_))) (let
  ((_let_2531_ (_field__rec_ca_Boolrue _let_2521_))) (let
  ((_let_2532_
    (_make__type_record_2_ _let_2522_ _let_2523_ _let_2524_ _let_2525_
     _let_2526_ _let_2527_ _let_2528_ _let_2529_ NoKey _let_2530_ _let_2531_)))
  (let ((_let_2533_ (_field__rec_value _let_2532_))) (let
  ((_let_2534_ (_field__rec_vtype _let_2532_))) (let
  ((_let_2535_ (_field__rec_h_base _let_2532_))) (let
  ((_let_2536_ (_field__rec_h_offset _let_2532_))) (let
  ((_let_2537_ (_field__rec_h_length _let_2532_))) (let
  ((_let_2538_ (_field__rec_enc_state_p _let_2532_))) (let
  ((_let_2539_ (_field__rec_key_p _let_2532_))) (let
  ((_let_2540_ (_field__rec_enc_state_d _let_2532_))) (let
  ((_let_2541_ (_field__rec_key_d _let_2532_))) (let
  ((_let_2542_ (_field__rec_ca_nonce_used _let_2532_))) (let
  ((_let_2543_
    (_make__type_record_2_ _let_2533_ _let_2534_ _let_2535_ _let_2536_
     _let_2537_ _let_2538_ _let_2539_ _let_2540_ _let_2541_ _let_2542_
     _let_2406_)))
  (let ((_let_2544_ (_field__rec_value _let_2543_))) (let
  ((_let_2545_ (_field__rec_vtype _let_2543_))) (let
  ((_let_2546_ (_field__rec_h_base _let_2543_))) (let
  ((_let_2547_ (_field__rec_h_offset _let_2543_))) (let
  ((_let_2548_ (_field__rec_h_length _let_2543_))) (let
  ((_let_2549_ (_field__rec_enc_state_p _let_2543_))) (let
  ((_let_2550_ (_field__rec_key_p _let_2543_))) (let
  ((_let_2551_ (_field__rec_enc_state_d _let_2543_))) (let
  ((_let_2552_ (_field__rec_key_d _let_2543_))) (let
  ((_let_2553_ (_field__rec_ca_Boolrue _let_2543_))) (let
  ((_let_2554_
    (_make__type_record_2_ _let_2544_ _let_2545_ _let_2546_ _let_2547_
     _let_2548_ _let_2549_ _let_2550_ _let_2551_ _let_2552_ _let_2405_
     _let_2553_)))
  (let ((_let_2555_ (_field__rec_vtype _let_2554_))) (let
  ((_let_2556_ (not (= _let_2555_ HAN)))) (let
  ((_let_2557_ (_field__rec_h_length _let_2554_))) (let
  ((_let_2558_ (_field__rec_h_offset _let_2554_))) (let
  ((_let_2559_ (bvult _let_2558_ _let_2557_))) (let
  ((_let_2560_ (bvule ((_ bv0 2) ) _let_2558_))) (let
  ((_let_2561_ (and _let_2560_ _let_2559_))) (let
  ((_let_2562_ (not _let_2561_))) (let
  ((_let_2563_ (or _let_2562_ _let_2556_))) (let
  ((_let_2564_ (ite _let_2563_ true false))) (let
  ((_let_2565_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2566_ (ite _let_2565_ _let_2564_ _let_2403_))) (let
  ((_let_2567_
    (ite initial_50_v _let_2566_ initial_59___ucld_174_msv_curr_var)))
  (let ((_let_2568_ (= state_1___ucld_174_msv_curr_var _let_2567_)))
  _let_2568_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun initial_62___ucld_165_addr_probe_var () (_ BitVec 2))
(declare-fun havoc_156_addr_bundle () (_ BitVec 2))
(declare-fun state_1___ucld_165_addr_probe_var () (_ BitVec 2))
(declare-fun havoc_108_addr_bundle () (_ BitVec 2))
(assert
 (let
  ((_let_2569_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_2570_
    (ite _let_2569_ havoc_156_addr_bundle
     initial_62___ucld_165_addr_probe_var)))
  (let
  ((_let_2571_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2572_ (ite _let_2571_ havoc_108_addr_bundle _let_2570_))) (let
  ((_let_2573_
    (ite initial_50_v _let_2572_ initial_62___ucld_165_addr_probe_var)))
  (let ((_let_2574_ (= state_1___ucld_165_addr_probe_var _let_2573_)))
  _let_2574_)))))))
(assert
 (let
  ((_let_2575_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          initial_56___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        (select initial_56___ucld_171_ghost_mem_var a))
        (_field__rec_h_offset
        (select initial_56___ucld_171_ghost_mem_var a))))))))
  _let_2575_))
(declare-fun havoc_198_nondet_size () (_ BitVec 2))
(assert
 (let ((_let_2576_ (_field__rec_valid havoc_193___ucld_34_ret_as))) (let
  ((_let_2577_ (not _let_2576_))) (let
  ((_let_2578_
    (forall ((a (_ BitVec 2)))
     (=>
      (not
       (and
        (bvule (_field__rec_h_base (_field__rec_allocg
         havoc_193___ucld_34_ret_as)) a)
        (bvult
         a
         (bvadd
          (_field__rec_h_base
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as))
          havoc_198_nondet_size))))
      (=
       ((_ extract 0 0)
        (bvlshr
         (_field__rec_newamap
         havoc_193___ucld_34_ret_as)
         (bvmul ((_ zero_extend 2) a) #b0001)))
       ((_ extract 0 0)
        (bvlshr
         initial_51___ucld_157_alloc_map_var
         (bvmul ((_ zero_extend 2) a) #b0001))))))))
  (let
  ((_let_2579_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (bvule (_field__rec_h_base (_field__rec_allocg
        havoc_193___ucld_34_ret_as)) a)
       (bvult
        a
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as))
         havoc_198_nondet_size)))
      (and (and
       (or
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as)
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ENC)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as)
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ENC)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as)
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ENC))))
       (not
        (=
         ((_ extract 1 0)
          (_field__rec_enc_state_d
          ((_ extract 19 0)
           (bvlshr
            (_field__rec_newgmem
            havoc_193___ucld_34_ret_as)
            (bvmul
             ((_ zero_extend 78) a)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         #b11)))
       (and (and
       (or
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_key_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as)
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ViKey)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_key_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as)
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ViKey)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_key_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as)
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ViKey))))
       (not
        (=
         ((_ extract 1 0)
          (_field__rec_key_d
          ((_ extract 19 0)
           (bvlshr
            (_field__rec_newgmem
            havoc_193___ucld_34_ret_as)
            (bvmul
             ((_ zero_extend 78) a)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         #b11)))
       (and
       (=
        (_field__rec_ca_nonce_used
         ((_ extract 19 0)
          (bvlshr
           (_field__rec_newgmem
           havoc_193___ucld_34_ret_as)
           (bvmul
            ((_ zero_extend 78) a)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
        (const___ucld_153_slot_to_nonce_c3 (_field__rec_h_base
         (_field__rec_allocg havoc_193___ucld_34_ret_as))
         (bvadd
          (_field__rec_h_base
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as))
          havoc_198_nondet_size)))
       (and
       (=
        (_field__rec_ca_Boolrue
         ((_ extract 19 0)
          (bvlshr
           (_field__rec_newgmem
           havoc_193___ucld_34_ret_as)
           (bvmul
            ((_ zero_extend 78) a)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
        (const___ucld_153_slot_to_nonce_c3 (_field__rec_h_base
         (_field__rec_allocg havoc_193___ucld_34_ret_as))
         (bvadd
          (_field__rec_h_base
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as))
          havoc_198_nondet_size)))
       (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as)
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) RAW)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as)
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) RAW)))))))))))))
  (let ((_let_2580_ (and _let_2579_ _let_2578_))) (let
  ((_let_2581_
    (forall ((a (_ BitVec 2)))
     (=>
      (not
       (and
        (bvule (_field__rec_h_base (_field__rec_allocg
         havoc_193___ucld_34_ret_as)) a)
        (bvult
         a
         (bvadd
          (_field__rec_h_base
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as))
          havoc_198_nondet_size))))
      (=
       ((_ extract 19 0)
        (bvlshr
         (_field__rec_newgmem
         havoc_193___ucld_34_ret_as)
         (bvmul
          ((_ zero_extend 78) a)
          #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))
       ((_ extract 19 0)
        (bvlshr
         initial_56___ucld_171_ghost_mem_var
         (bvmul
          ((_ zero_extend 78) a)
          #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))))))
  (let ((_let_2582_ (and _let_2581_ _let_2580_))) (let
  ((_let_2583_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (bvule (_field__rec_h_base (_field__rec_allocg
        havoc_193___ucld_34_ret_as)) a)
       (bvult
        a
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as))
         havoc_198_nondet_size)))
      ((_ extract 0 0)
       (bvlshr
        (_field__rec_newamap
        havoc_193___ucld_34_ret_as)
        (bvmul ((_ zero_extend 2) a) #b0001)))))))
  (let ((_let_2584_ (and _let_2583_ _let_2582_))) (let
  ((_let_2585_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (bvule (_field__rec_h_base (_field__rec_allocg
        havoc_193___ucld_34_ret_as)) a)
       (bvult
        a
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as))
         havoc_198_nondet_size)))
      (not
       ((_ extract 0 0)
        (bvlshr
         initial_51___ucld_157_alloc_map_var
         (bvmul ((_ zero_extend 2) a) #b0001))))))))
  (let ((_let_2586_ (and _let_2585_ _let_2584_))) (let
  ((_let_2587_ (and true _let_2586_))) (let
  ((_let_2588_
    (_field__rec_value (_field__rec_allocg havoc_193___ucld_34_ret_as))))
  (let
  ((_let_2589_
    (= _let_2588_
     (_field__rec_h_base (_field__rec_allocg havoc_193___ucld_34_ret_as)))))
  (let ((_let_2590_ (and _let_2589_ _let_2587_))) (let
  ((_let_2591_
    (_field__rec_enc_state_d (_field__rec_allocg havoc_193___ucld_34_ret_as))))
  (let ((_let_2592_ (= _let_2591_ PLN))) (let
  ((_let_2593_ (and _let_2592_ _let_2590_))) (let
  ((_let_2594_
    (_field__rec_key_p (_field__rec_allocg havoc_193___ucld_34_ret_as))))
  (let ((_let_2595_ (= _let_2594_ ViKey))) (let
  ((_let_2596_ (and _let_2595_ _let_2593_))) (let
  ((_let_2597_
    (_field__rec_enc_state_p (_field__rec_allocg havoc_193___ucld_34_ret_as))))
  (let ((_let_2598_ (= _let_2597_ ENC))) (let
  ((_let_2599_ (and _let_2598_ _let_2596_))) (let
  ((_let_2600_
    (_field__rec_h_offset (_field__rec_allocg havoc_193___ucld_34_ret_as))))
  (let ((_let_2601_ (= _let_2600_ ((_ bv0 2) )))) (let
  ((_let_2602_ (and _let_2601_ _let_2599_))) (let
  ((_let_2603_ (bvsub ((_ bv3 2) ) havoc_198_nondet_size))) (let
  ((_let_2604_
    (bvule (_field__rec_h_base (_field__rec_allocg
     havoc_193___ucld_34_ret_as)) _let_2603_)))
  (let ((_let_2605_ (and _let_2604_ _let_2602_))) (let
  ((_let_2606_
    (_field__rec_h_length (_field__rec_allocg havoc_193___ucld_34_ret_as))))
  (let ((_let_2607_ (= _let_2606_ havoc_198_nondet_size))) (let
  ((_let_2608_ (and _let_2607_ _let_2605_))) (let
  ((_let_2609_
    (_field__rec_vtype (_field__rec_allocg havoc_193___ucld_34_ret_as))))
  (let ((_let_2610_ (= _let_2609_ HAN))) (let
  ((_let_2611_ (and _let_2610_ _let_2608_))) (let
  ((_let_2612_ (and _let_2576_ _let_2611_))) (let
  ((_let_2613_ (or _let_2612_ _let_2577_))) (let
  ((_let_2614_ (= havoc_198_nondet_size ((_ bv0 2) )))) (let
  ((_let_2615_ (=> _let_2614_ _let_2577_))) (let
  ((_let_2616_ (and _let_2615_ _let_2613_))) (let
  ((_let_2617_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2618_ (not _let_2617_))) (let
  ((_let_2619_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2620_ (not _let_2619_))) (let
  ((_let_2621_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2622_ (and true _let_2621_))) (let
  ((_let_2623_ (and _let_2622_ _let_2620_))) (let
  ((_let_2624_ (and _let_2623_ _let_2618_))) (let
  ((_let_2625_ (and _let_2624_ initial_50_v))) (let
  ((_let_2626_ (=> _let_2625_ _let_2616_)))
  _let_2626_))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let
  ((_let_2627_
    (forall ((a (_ BitVec 2)))
     (=>
      (not
       (and
        (bvule (_field__rec_h_base (_field__rec_allocg
         havoc_193___ucld_34_ret_as)) a)
        (bvult
         a
         (bvadd
          (_field__rec_h_base
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as))
          (_field__rec_h_length
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as))))))
      (=
       ((_ extract 6 0)
        (bvlshr
         havoc_211___ucld_51_ret_nm
         (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111)))
       ((_ extract 6 0)
        (bvlshr
         initial_60___ucld_164_shadow_mem_var
         (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111))))))))
  (let
  ((_let_2628_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (bvule (_field__rec_h_base (_field__rec_allocg
        havoc_193___ucld_34_ret_as)) a)
       (bvult
        a
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as))
         (_field__rec_h_length
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as)))))
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111)))))))))
  (let ((_let_2629_ (and _let_2628_ _let_2627_))) (let
  ((_let_2630_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (bvule (_field__rec_h_base (_field__rec_allocg
        havoc_193___ucld_34_ret_as)) a)
       (bvult
        a
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as))
         (_field__rec_h_length
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as)))))
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          havoc_211___ucld_51_ret_nm
          (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111))))
       (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           havoc_211___ucld_51_ret_nm
           (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111))))
        (_field__rec_h_base (_field__rec_allocg havoc_193___ucld_34_ret_as)))
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           havoc_211___ucld_51_ret_nm
           (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as))
         (_field__rec_h_length
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as))))))))))
  (let ((_let_2631_ (and _let_2630_ _let_2629_))) (let
  ((_let_2632_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2633_ (not _let_2632_))) (let
  ((_let_2634_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2635_ (not _let_2634_))) (let
  ((_let_2636_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2637_ (_field__rec_valid havoc_193___ucld_34_ret_as))) (let
  ((_let_2638_ (and true _let_2637_))) (let
  ((_let_2639_ (and _let_2638_ _let_2636_))) (let
  ((_let_2640_ (and _let_2639_ _let_2635_))) (let
  ((_let_2641_ (and _let_2640_ _let_2633_))) (let
  ((_let_2642_ (and _let_2641_ initial_50_v))) (let
  ((_let_2643_ (=> _let_2642_ _let_2631_))) _let_2643_))))))))))))))))))
(assert
 (let
  ((_let_2644_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2645_ (_field__rec_ca_nonce_used _let_2644_))) (let
  ((_let_2646_ (_field__rec_ca_Boolrue _let_2644_))) (let
  ((_let_2647_ (_field__rec_enc_state_d _let_2644_))) (let
  ((_let_2648_ (_field__rec_h_length _let_2644_))) (let
  ((_let_2649_ (_field__rec_h_offset _let_2644_))) (let
  ((_let_2650_ (_field__rec_h_base _let_2644_))) (let
  ((_let_2651_ (_field__rec_vtype _let_2644_))) (let
  ((_let_2652_ (_field__rec_value _let_2644_))) (let
  ((_let_2653_ (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2654_ (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2655_ (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2656_ (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2657_
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2658_ (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2659_
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2660_ (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2661_
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2662_
    (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_2663_
    (_make__type_record_2_ _let_2652_ _let_2653_ _let_2654_ _let_2655_
     _let_2656_ _let_2657_ _let_2658_ _let_2659_ _let_2660_ _let_2661_
     _let_2662_)))
  (let ((_let_2664_ (_field__rec_value _let_2663_))) (let
  ((_let_2665_ (_field__rec_h_base _let_2663_))) (let
  ((_let_2666_ (_field__rec_h_offset _let_2663_))) (let
  ((_let_2667_ (_field__rec_h_length _let_2663_))) (let
  ((_let_2668_ (_field__rec_enc_state_p _let_2663_))) (let
  ((_let_2669_ (_field__rec_key_p _let_2663_))) (let
  ((_let_2670_ (_field__rec_enc_state_d _let_2663_))) (let
  ((_let_2671_ (_field__rec_key_d _let_2663_))) (let
  ((_let_2672_ (_field__rec_ca_nonce_used _let_2663_))) (let
  ((_let_2673_ (_field__rec_ca_Boolrue _let_2663_))) (let
  ((_let_2674_
    (_make__type_record_2_ _let_2664_ _let_2651_ _let_2665_ _let_2666_
     _let_2667_ _let_2668_ _let_2669_ _let_2670_ _let_2671_ _let_2672_
     _let_2673_)))
  (let ((_let_2675_ (_field__rec_value _let_2674_))) (let
  ((_let_2676_ (_field__rec_vtype _let_2674_))) (let
  ((_let_2677_ (_field__rec_h_offset _let_2674_))) (let
  ((_let_2678_ (_field__rec_h_length _let_2674_))) (let
  ((_let_2679_ (_field__rec_enc_state_p _let_2674_))) (let
  ((_let_2680_ (_field__rec_key_p _let_2674_))) (let
  ((_let_2681_ (_field__rec_enc_state_d _let_2674_))) (let
  ((_let_2682_ (_field__rec_key_d _let_2674_))) (let
  ((_let_2683_ (_field__rec_ca_nonce_used _let_2674_))) (let
  ((_let_2684_ (_field__rec_ca_Boolrue _let_2674_))) (let
  ((_let_2685_
    (_make__type_record_2_ _let_2675_ _let_2676_ _let_2650_ _let_2677_
     _let_2678_ _let_2679_ _let_2680_ _let_2681_ _let_2682_ _let_2683_
     _let_2684_)))
  (let ((_let_2686_ (_field__rec_value _let_2685_))) (let
  ((_let_2687_ (_field__rec_vtype _let_2685_))) (let
  ((_let_2688_ (_field__rec_h_base _let_2685_))) (let
  ((_let_2689_ (_field__rec_h_length _let_2685_))) (let
  ((_let_2690_ (_field__rec_enc_state_p _let_2685_))) (let
  ((_let_2691_ (_field__rec_key_p _let_2685_))) (let
  ((_let_2692_ (_field__rec_enc_state_d _let_2685_))) (let
  ((_let_2693_ (_field__rec_key_d _let_2685_))) (let
  ((_let_2694_ (_field__rec_ca_nonce_used _let_2685_))) (let
  ((_let_2695_ (_field__rec_ca_Boolrue _let_2685_))) (let
  ((_let_2696_
    (_make__type_record_2_ _let_2686_ _let_2687_ _let_2688_ _let_2649_
     _let_2689_ _let_2690_ _let_2691_ _let_2692_ _let_2693_ _let_2694_
     _let_2695_)))
  (let ((_let_2697_ (_field__rec_value _let_2696_))) (let
  ((_let_2698_ (_field__rec_vtype _let_2696_))) (let
  ((_let_2699_ (_field__rec_h_base _let_2696_))) (let
  ((_let_2700_ (_field__rec_h_offset _let_2696_))) (let
  ((_let_2701_ (_field__rec_enc_state_p _let_2696_))) (let
  ((_let_2702_ (_field__rec_key_p _let_2696_))) (let
  ((_let_2703_ (_field__rec_enc_state_d _let_2696_))) (let
  ((_let_2704_ (_field__rec_key_d _let_2696_))) (let
  ((_let_2705_ (_field__rec_ca_nonce_used _let_2696_))) (let
  ((_let_2706_ (_field__rec_ca_Boolrue _let_2696_))) (let
  ((_let_2707_
    (_make__type_record_2_ _let_2697_ _let_2698_ _let_2699_ _let_2700_
     _let_2648_ _let_2701_ _let_2702_ _let_2703_ _let_2704_ _let_2705_
     _let_2706_)))
  (let ((_let_2708_ (_field__rec_value _let_2707_))) (let
  ((_let_2709_ (_field__rec_vtype _let_2707_))) (let
  ((_let_2710_ (_field__rec_h_base _let_2707_))) (let
  ((_let_2711_ (_field__rec_h_offset _let_2707_))) (let
  ((_let_2712_ (_field__rec_h_length _let_2707_))) (let
  ((_let_2713_ (_field__rec_enc_state_p _let_2707_))) (let
  ((_let_2714_ (_field__rec_key_p _let_2707_))) (let
  ((_let_2715_ (_field__rec_key_d _let_2707_))) (let
  ((_let_2716_ (_field__rec_ca_nonce_used _let_2707_))) (let
  ((_let_2717_ (_field__rec_ca_Boolrue _let_2707_))) (let
  ((_let_2718_
    (_make__type_record_2_ _let_2708_ _let_2709_ _let_2710_ _let_2711_
     _let_2712_ _let_2713_ _let_2714_ _let_2647_ _let_2715_ _let_2716_
     _let_2717_)))
  (let ((_let_2719_ (_field__rec_value _let_2718_))) (let
  ((_let_2720_ (_field__rec_vtype _let_2718_))) (let
  ((_let_2721_ (_field__rec_h_base _let_2718_))) (let
  ((_let_2722_ (_field__rec_h_offset _let_2718_))) (let
  ((_let_2723_ (_field__rec_h_length _let_2718_))) (let
  ((_let_2724_ (_field__rec_key_p _let_2718_))) (let
  ((_let_2725_ (_field__rec_enc_state_d _let_2718_))) (let
  ((_let_2726_ (_field__rec_key_d _let_2718_))) (let
  ((_let_2727_ (_field__rec_ca_nonce_used _let_2718_))) (let
  ((_let_2728_ (_field__rec_ca_Boolrue _let_2718_))) (let
  ((_let_2729_
    (_make__type_record_2_ _let_2719_ _let_2720_ _let_2721_ _let_2722_
     _let_2723_ GAR _let_2724_ _let_2725_ _let_2726_ _let_2727_ _let_2728_)))
  (let
  ((_let_2730_
    (_make__type_record_2_ _let_2719_ _let_2720_ _let_2721_ _let_2722_
     _let_2723_ PLN _let_2724_ _let_2725_ _let_2726_ _let_2727_ _let_2728_)))
  (let ((_let_2731_ (_field__rec_key_p _let_2644_))) (let
  ((_let_2732_ (= _let_2731_ ViKey))) (let
  ((_let_2733_ (ite _let_2732_ _let_2730_ _let_2729_))) (let
  ((_let_2734_ (_field__rec_enc_state_p _let_2644_))) (let
  ((_let_2735_ (not (= _let_2734_ ENC)))) (let
  ((_let_2736_ (ite _let_2735_ _let_2729_ _let_2733_))) (let
  ((_let_2737_
    (_make__type_record_2_ _let_2708_ _let_2709_ _let_2710_ _let_2711_
     _let_2712_ _let_2713_ _let_2714_ GAR _let_2715_ _let_2716_ _let_2717_)))
  (let ((_let_2738_ (_field__rec_value _let_2737_))) (let
  ((_let_2739_ (_field__rec_vtype _let_2737_))) (let
  ((_let_2740_ (_field__rec_h_base _let_2737_))) (let
  ((_let_2741_ (_field__rec_h_offset _let_2737_))) (let
  ((_let_2742_ (_field__rec_h_length _let_2737_))) (let
  ((_let_2743_ (_field__rec_key_p _let_2737_))) (let
  ((_let_2744_ (_field__rec_enc_state_d _let_2737_))) (let
  ((_let_2745_ (_field__rec_key_d _let_2737_))) (let
  ((_let_2746_ (_field__rec_ca_nonce_used _let_2737_))) (let
  ((_let_2747_ (_field__rec_ca_Boolrue _let_2737_))) (let
  ((_let_2748_
    (_make__type_record_2_ _let_2738_ _let_2739_ _let_2740_ _let_2741_
     _let_2742_ GAR _let_2743_ _let_2744_ _let_2745_ _let_2746_ _let_2747_)))
  (let ((_let_2749_ (not (= _let_2647_ PLN)))) (let
  ((_let_2750_ (ite _let_2749_ _let_2748_ _let_2736_))) (let
  ((_let_2751_ (_field__rec_value _let_2750_))) (let
  ((_let_2752_ (_field__rec_vtype _let_2750_))) (let
  ((_let_2753_ (_field__rec_h_base _let_2750_))) (let
  ((_let_2754_ (_field__rec_h_offset _let_2750_))) (let
  ((_let_2755_ (_field__rec_h_length _let_2750_))) (let
  ((_let_2756_ (_field__rec_enc_state_p _let_2750_))) (let
  ((_let_2757_ (_field__rec_enc_state_d _let_2750_))) (let
  ((_let_2758_ (_field__rec_key_d _let_2750_))) (let
  ((_let_2759_ (_field__rec_ca_nonce_used _let_2750_))) (let
  ((_let_2760_ (_field__rec_ca_Boolrue _let_2750_))) (let
  ((_let_2761_
    (_make__type_record_2_ _let_2751_ _let_2752_ _let_2753_ _let_2754_
     _let_2755_ _let_2756_ NoKey _let_2757_ _let_2758_ _let_2759_ _let_2760_)))
  (let ((_let_2762_ (_field__rec_value _let_2761_))) (let
  ((_let_2763_ (_field__rec_vtype _let_2761_))) (let
  ((_let_2764_ (_field__rec_h_base _let_2761_))) (let
  ((_let_2765_ (_field__rec_h_offset _let_2761_))) (let
  ((_let_2766_ (_field__rec_h_length _let_2761_))) (let
  ((_let_2767_ (_field__rec_enc_state_p _let_2761_))) (let
  ((_let_2768_ (_field__rec_key_p _let_2761_))) (let
  ((_let_2769_ (_field__rec_enc_state_d _let_2761_))) (let
  ((_let_2770_ (_field__rec_ca_nonce_used _let_2761_))) (let
  ((_let_2771_ (_field__rec_ca_Boolrue _let_2761_))) (let
  ((_let_2772_
    (_make__type_record_2_ _let_2762_ _let_2763_ _let_2764_ _let_2765_
     _let_2766_ _let_2767_ _let_2768_ _let_2769_ NoKey _let_2770_ _let_2771_)))
  (let ((_let_2773_ (_field__rec_value _let_2772_))) (let
  ((_let_2774_ (_field__rec_vtype _let_2772_))) (let
  ((_let_2775_ (_field__rec_h_base _let_2772_))) (let
  ((_let_2776_ (_field__rec_h_offset _let_2772_))) (let
  ((_let_2777_ (_field__rec_h_length _let_2772_))) (let
  ((_let_2778_ (_field__rec_enc_state_p _let_2772_))) (let
  ((_let_2779_ (_field__rec_key_p _let_2772_))) (let
  ((_let_2780_ (_field__rec_enc_state_d _let_2772_))) (let
  ((_let_2781_ (_field__rec_key_d _let_2772_))) (let
  ((_let_2782_ (_field__rec_ca_nonce_used _let_2772_))) (let
  ((_let_2783_
    (_make__type_record_2_ _let_2773_ _let_2774_ _let_2775_ _let_2776_
     _let_2777_ _let_2778_ _let_2779_ _let_2780_ _let_2781_ _let_2782_
     _let_2646_)))
  (let ((_let_2784_ (_field__rec_value _let_2783_))) (let
  ((_let_2785_ (_field__rec_vtype _let_2783_))) (let
  ((_let_2786_ (_field__rec_h_base _let_2783_))) (let
  ((_let_2787_ (_field__rec_h_offset _let_2783_))) (let
  ((_let_2788_ (_field__rec_h_length _let_2783_))) (let
  ((_let_2789_ (_field__rec_enc_state_p _let_2783_))) (let
  ((_let_2790_ (_field__rec_key_p _let_2783_))) (let
  ((_let_2791_ (_field__rec_enc_state_d _let_2783_))) (let
  ((_let_2792_ (_field__rec_key_d _let_2783_))) (let
  ((_let_2793_ (_field__rec_ca_Boolrue _let_2783_))) (let
  ((_let_2794_
    (_make__type_record_2_ _let_2784_ _let_2785_ _let_2786_ _let_2787_
     _let_2788_ _let_2789_ _let_2790_ _let_2791_ _let_2792_ _let_2645_
     _let_2793_)))
  (let ((_let_2795_ (_field__rec_h_offset _let_2794_))) (let
  ((_let_2796_ (bvsub ((_ bv3 2) ) _let_2795_))) (let
  ((_let_2797_ (_field__rec_h_base _let_2794_))) (let
  ((_let_2798_ (bvule _let_2797_ _let_2796_))) (let
  ((_let_2799_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2800_ (not _let_2799_))) (let
  ((_let_2801_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_2802_ (and true _let_2801_))) (let
  ((_let_2803_ (and _let_2802_ _let_2800_))) (let
  ((_let_2804_ (and _let_2803_ initial_50_v))) (let
  ((_let_2805_ (=> _let_2804_ _let_2798_)))
  _let_2805_)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun initial_55___ucld_176_addr_probe_true_var () (_ BitVec 2))
(declare-fun state_1___ucld_176_addr_probe_true_var () (_ BitVec 2))
(assert
 (let
  ((_let_2806_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2807_ (_field__rec_ca_nonce_used _let_2806_))) (let
  ((_let_2808_ (_field__rec_ca_Boolrue _let_2806_))) (let
  ((_let_2809_ (_field__rec_enc_state_d _let_2806_))) (let
  ((_let_2810_ (_field__rec_h_length _let_2806_))) (let
  ((_let_2811_ (_field__rec_h_offset _let_2806_))) (let
  ((_let_2812_ (_field__rec_h_base _let_2806_))) (let
  ((_let_2813_ (_field__rec_vtype _let_2806_))) (let
  ((_let_2814_ (_field__rec_value _let_2806_))) (let
  ((_let_2815_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2816_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2817_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2818_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2819_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2820_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2821_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2822_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2823_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2824_
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2825_
    (_make__type_record_2_ _let_2814_ _let_2815_ _let_2816_ _let_2817_
     _let_2818_ _let_2819_ _let_2820_ _let_2821_ _let_2822_ _let_2823_
     _let_2824_)))
  (let ((_let_2826_ (_field__rec_value _let_2825_))) (let
  ((_let_2827_ (_field__rec_h_base _let_2825_))) (let
  ((_let_2828_ (_field__rec_h_offset _let_2825_))) (let
  ((_let_2829_ (_field__rec_h_length _let_2825_))) (let
  ((_let_2830_ (_field__rec_enc_state_p _let_2825_))) (let
  ((_let_2831_ (_field__rec_key_p _let_2825_))) (let
  ((_let_2832_ (_field__rec_enc_state_d _let_2825_))) (let
  ((_let_2833_ (_field__rec_key_d _let_2825_))) (let
  ((_let_2834_ (_field__rec_ca_nonce_used _let_2825_))) (let
  ((_let_2835_ (_field__rec_ca_Boolrue _let_2825_))) (let
  ((_let_2836_
    (_make__type_record_2_ _let_2826_ _let_2813_ _let_2827_ _let_2828_
     _let_2829_ _let_2830_ _let_2831_ _let_2832_ _let_2833_ _let_2834_
     _let_2835_)))
  (let ((_let_2837_ (_field__rec_value _let_2836_))) (let
  ((_let_2838_ (_field__rec_vtype _let_2836_))) (let
  ((_let_2839_ (_field__rec_h_offset _let_2836_))) (let
  ((_let_2840_ (_field__rec_h_length _let_2836_))) (let
  ((_let_2841_ (_field__rec_enc_state_p _let_2836_))) (let
  ((_let_2842_ (_field__rec_key_p _let_2836_))) (let
  ((_let_2843_ (_field__rec_enc_state_d _let_2836_))) (let
  ((_let_2844_ (_field__rec_key_d _let_2836_))) (let
  ((_let_2845_ (_field__rec_ca_nonce_used _let_2836_))) (let
  ((_let_2846_ (_field__rec_ca_Boolrue _let_2836_))) (let
  ((_let_2847_
    (_make__type_record_2_ _let_2837_ _let_2838_ _let_2812_ _let_2839_
     _let_2840_ _let_2841_ _let_2842_ _let_2843_ _let_2844_ _let_2845_
     _let_2846_)))
  (let ((_let_2848_ (_field__rec_value _let_2847_))) (let
  ((_let_2849_ (_field__rec_vtype _let_2847_))) (let
  ((_let_2850_ (_field__rec_h_base _let_2847_))) (let
  ((_let_2851_ (_field__rec_h_length _let_2847_))) (let
  ((_let_2852_ (_field__rec_enc_state_p _let_2847_))) (let
  ((_let_2853_ (_field__rec_key_p _let_2847_))) (let
  ((_let_2854_ (_field__rec_enc_state_d _let_2847_))) (let
  ((_let_2855_ (_field__rec_key_d _let_2847_))) (let
  ((_let_2856_ (_field__rec_ca_nonce_used _let_2847_))) (let
  ((_let_2857_ (_field__rec_ca_Boolrue _let_2847_))) (let
  ((_let_2858_
    (_make__type_record_2_ _let_2848_ _let_2849_ _let_2850_ _let_2811_
     _let_2851_ _let_2852_ _let_2853_ _let_2854_ _let_2855_ _let_2856_
     _let_2857_)))
  (let ((_let_2859_ (_field__rec_value _let_2858_))) (let
  ((_let_2860_ (_field__rec_vtype _let_2858_))) (let
  ((_let_2861_ (_field__rec_h_base _let_2858_))) (let
  ((_let_2862_ (_field__rec_h_offset _let_2858_))) (let
  ((_let_2863_ (_field__rec_enc_state_p _let_2858_))) (let
  ((_let_2864_ (_field__rec_key_p _let_2858_))) (let
  ((_let_2865_ (_field__rec_enc_state_d _let_2858_))) (let
  ((_let_2866_ (_field__rec_key_d _let_2858_))) (let
  ((_let_2867_ (_field__rec_ca_nonce_used _let_2858_))) (let
  ((_let_2868_ (_field__rec_ca_Boolrue _let_2858_))) (let
  ((_let_2869_
    (_make__type_record_2_ _let_2859_ _let_2860_ _let_2861_ _let_2862_
     _let_2810_ _let_2863_ _let_2864_ _let_2865_ _let_2866_ _let_2867_
     _let_2868_)))
  (let ((_let_2870_ (_field__rec_value _let_2869_))) (let
  ((_let_2871_ (_field__rec_vtype _let_2869_))) (let
  ((_let_2872_ (_field__rec_h_base _let_2869_))) (let
  ((_let_2873_ (_field__rec_h_offset _let_2869_))) (let
  ((_let_2874_ (_field__rec_h_length _let_2869_))) (let
  ((_let_2875_ (_field__rec_enc_state_p _let_2869_))) (let
  ((_let_2876_ (_field__rec_key_p _let_2869_))) (let
  ((_let_2877_ (_field__rec_key_d _let_2869_))) (let
  ((_let_2878_ (_field__rec_ca_nonce_used _let_2869_))) (let
  ((_let_2879_ (_field__rec_ca_Boolrue _let_2869_))) (let
  ((_let_2880_
    (_make__type_record_2_ _let_2870_ _let_2871_ _let_2872_ _let_2873_
     _let_2874_ _let_2875_ _let_2876_ _let_2809_ _let_2877_ _let_2878_
     _let_2879_)))
  (let ((_let_2881_ (_field__rec_value _let_2880_))) (let
  ((_let_2882_ (_field__rec_vtype _let_2880_))) (let
  ((_let_2883_ (_field__rec_h_base _let_2880_))) (let
  ((_let_2884_ (_field__rec_h_offset _let_2880_))) (let
  ((_let_2885_ (_field__rec_h_length _let_2880_))) (let
  ((_let_2886_ (_field__rec_key_p _let_2880_))) (let
  ((_let_2887_ (_field__rec_enc_state_d _let_2880_))) (let
  ((_let_2888_ (_field__rec_key_d _let_2880_))) (let
  ((_let_2889_ (_field__rec_ca_nonce_used _let_2880_))) (let
  ((_let_2890_ (_field__rec_ca_Boolrue _let_2880_))) (let
  ((_let_2891_
    (_make__type_record_2_ _let_2881_ _let_2882_ _let_2883_ _let_2884_
     _let_2885_ GAR _let_2886_ _let_2887_ _let_2888_ _let_2889_ _let_2890_)))
  (let
  ((_let_2892_
    (_make__type_record_2_ _let_2881_ _let_2882_ _let_2883_ _let_2884_
     _let_2885_ PLN _let_2886_ _let_2887_ _let_2888_ _let_2889_ _let_2890_)))
  (let ((_let_2893_ (_field__rec_key_p _let_2806_))) (let
  ((_let_2894_ (= _let_2893_ ViKey))) (let
  ((_let_2895_ (ite _let_2894_ _let_2892_ _let_2891_))) (let
  ((_let_2896_ (_field__rec_enc_state_p _let_2806_))) (let
  ((_let_2897_ (not (= _let_2896_ ENC)))) (let
  ((_let_2898_ (ite _let_2897_ _let_2891_ _let_2895_))) (let
  ((_let_2899_
    (_make__type_record_2_ _let_2870_ _let_2871_ _let_2872_ _let_2873_
     _let_2874_ _let_2875_ _let_2876_ GAR _let_2877_ _let_2878_ _let_2879_)))
  (let ((_let_2900_ (_field__rec_value _let_2899_))) (let
  ((_let_2901_ (_field__rec_vtype _let_2899_))) (let
  ((_let_2902_ (_field__rec_h_base _let_2899_))) (let
  ((_let_2903_ (_field__rec_h_offset _let_2899_))) (let
  ((_let_2904_ (_field__rec_h_length _let_2899_))) (let
  ((_let_2905_ (_field__rec_key_p _let_2899_))) (let
  ((_let_2906_ (_field__rec_enc_state_d _let_2899_))) (let
  ((_let_2907_ (_field__rec_key_d _let_2899_))) (let
  ((_let_2908_ (_field__rec_ca_nonce_used _let_2899_))) (let
  ((_let_2909_ (_field__rec_ca_Boolrue _let_2899_))) (let
  ((_let_2910_
    (_make__type_record_2_ _let_2900_ _let_2901_ _let_2902_ _let_2903_
     _let_2904_ GAR _let_2905_ _let_2906_ _let_2907_ _let_2908_ _let_2909_)))
  (let ((_let_2911_ (not (= _let_2809_ PLN)))) (let
  ((_let_2912_ (ite _let_2911_ _let_2910_ _let_2898_))) (let
  ((_let_2913_ (_field__rec_value _let_2912_))) (let
  ((_let_2914_ (_field__rec_vtype _let_2912_))) (let
  ((_let_2915_ (_field__rec_h_base _let_2912_))) (let
  ((_let_2916_ (_field__rec_h_offset _let_2912_))) (let
  ((_let_2917_ (_field__rec_h_length _let_2912_))) (let
  ((_let_2918_ (_field__rec_enc_state_p _let_2912_))) (let
  ((_let_2919_ (_field__rec_enc_state_d _let_2912_))) (let
  ((_let_2920_ (_field__rec_key_d _let_2912_))) (let
  ((_let_2921_ (_field__rec_ca_nonce_used _let_2912_))) (let
  ((_let_2922_ (_field__rec_ca_Boolrue _let_2912_))) (let
  ((_let_2923_
    (_make__type_record_2_ _let_2913_ _let_2914_ _let_2915_ _let_2916_
     _let_2917_ _let_2918_ NoKey _let_2919_ _let_2920_ _let_2921_ _let_2922_)))
  (let ((_let_2924_ (_field__rec_value _let_2923_))) (let
  ((_let_2925_ (_field__rec_vtype _let_2923_))) (let
  ((_let_2926_ (_field__rec_h_base _let_2923_))) (let
  ((_let_2927_ (_field__rec_h_offset _let_2923_))) (let
  ((_let_2928_ (_field__rec_h_length _let_2923_))) (let
  ((_let_2929_ (_field__rec_enc_state_p _let_2923_))) (let
  ((_let_2930_ (_field__rec_key_p _let_2923_))) (let
  ((_let_2931_ (_field__rec_enc_state_d _let_2923_))) (let
  ((_let_2932_ (_field__rec_ca_nonce_used _let_2923_))) (let
  ((_let_2933_ (_field__rec_ca_Boolrue _let_2923_))) (let
  ((_let_2934_
    (_make__type_record_2_ _let_2924_ _let_2925_ _let_2926_ _let_2927_
     _let_2928_ _let_2929_ _let_2930_ _let_2931_ NoKey _let_2932_ _let_2933_)))
  (let ((_let_2935_ (_field__rec_value _let_2934_))) (let
  ((_let_2936_ (_field__rec_vtype _let_2934_))) (let
  ((_let_2937_ (_field__rec_h_base _let_2934_))) (let
  ((_let_2938_ (_field__rec_h_offset _let_2934_))) (let
  ((_let_2939_ (_field__rec_h_length _let_2934_))) (let
  ((_let_2940_ (_field__rec_enc_state_p _let_2934_))) (let
  ((_let_2941_ (_field__rec_key_p _let_2934_))) (let
  ((_let_2942_ (_field__rec_enc_state_d _let_2934_))) (let
  ((_let_2943_ (_field__rec_key_d _let_2934_))) (let
  ((_let_2944_ (_field__rec_ca_nonce_used _let_2934_))) (let
  ((_let_2945_
    (_make__type_record_2_ _let_2935_ _let_2936_ _let_2937_ _let_2938_
     _let_2939_ _let_2940_ _let_2941_ _let_2942_ _let_2943_ _let_2944_
     _let_2808_)))
  (let ((_let_2946_ (_field__rec_value _let_2945_))) (let
  ((_let_2947_ (_field__rec_vtype _let_2945_))) (let
  ((_let_2948_ (_field__rec_h_base _let_2945_))) (let
  ((_let_2949_ (_field__rec_h_offset _let_2945_))) (let
  ((_let_2950_ (_field__rec_h_length _let_2945_))) (let
  ((_let_2951_ (_field__rec_enc_state_p _let_2945_))) (let
  ((_let_2952_ (_field__rec_key_p _let_2945_))) (let
  ((_let_2953_ (_field__rec_enc_state_d _let_2945_))) (let
  ((_let_2954_ (_field__rec_key_d _let_2945_))) (let
  ((_let_2955_ (_field__rec_ca_Boolrue _let_2945_))) (let
  ((_let_2956_
    (_make__type_record_2_ _let_2946_ _let_2947_ _let_2948_ _let_2949_
     _let_2950_ _let_2951_ _let_2952_ _let_2953_ _let_2954_ _let_2807_
     _let_2955_)))
  (let ((_let_2957_ (const___ucld_151_ghost_to_addr_value_c3 _let_2956_)))
  (let
  ((_let_2958_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_2959_
    (ite _let_2958_ _let_2957_ initial_55___ucld_176_addr_probe_true_var)))
  (let
  ((_let_2960_
    (ite initial_50_v _let_2959_ initial_55___ucld_176_addr_probe_true_var)))
  (let ((_let_2961_ (= state_1___ucld_176_addr_probe_true_var _let_2960_)))
  _let_2961_)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun state_1___ucld_162_l2_var () (_ BitVec 3))
(declare-fun havoc_98___ucld_115_l2_havoc () (_ BitVec 3))
(assert
 (let
  ((_let_2962_
    (ite initial_50_v havoc_98___ucld_115_l2_havoc
     initial_57___ucld_162_l2_var)))
  (let ((_let_2963_ (= state_1___ucld_162_l2_var _let_2962_))) _let_2963_)))
(declare-fun initial_67___ucld_160_observable_var () (_ BitVec 22))
(assert
 (let
  ((_let_2964_ (_field__rec_data_g initial_67___ucld_160_observable_var)))
  (let ((_let_2965_ (_field__rec_enc_state_d _let_2964_))) (let
  ((_let_2966_ (= _let_2965_ GAR))) (let ((_let_2967_ (= _let_2965_ ENC)))
  (let ((_let_2968_ (or _let_2967_ _let_2966_))) (let
  ((_let_2969_ (_field__rec_valid initial_67___ucld_160_observable_var)))
  (let ((_let_2970_ (not _let_2969_))) (let
  ((_let_2971_ (or _let_2970_ _let_2968_))) (let
  ((_let_2972_ (=> initial_59___ucld_174_msv_curr_var _let_2971_)))
  _let_2972_))))))))))
(declare-fun state_1___ucld_160_observable_var () (_ BitVec 22))
(assert
 (let
  ((_let_2973_ (_field__rec_data_g initial_67___ucld_160_observable_var)))
  (let ((_let_2974_ (_make__type_record_6_ false _let_2973_))) (let
  ((_let_2975_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_2976_
    (ite _let_2975_ _let_2974_ initial_67___ucld_160_observable_var)))
  (let
  ((_let_2977_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2978_ (_field__rec_ca_nonce_used _let_2977_))) (let
  ((_let_2979_ (_field__rec_ca_Boolrue _let_2977_))) (let
  ((_let_2980_ (_field__rec_enc_state_d _let_2977_))) (let
  ((_let_2981_ (_field__rec_h_length _let_2977_))) (let
  ((_let_2982_ (_field__rec_h_offset _let_2977_))) (let
  ((_let_2983_ (_field__rec_h_base _let_2977_))) (let
  ((_let_2984_ (_field__rec_vtype _let_2977_))) (let
  ((_let_2985_ (_field__rec_value _let_2977_))) (let
  ((_let_2986_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2987_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2988_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2989_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2990_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2991_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2992_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2993_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2994_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2995_
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_2996_
    (_make__type_record_2_ _let_2985_ _let_2986_ _let_2987_ _let_2988_
     _let_2989_ _let_2990_ _let_2991_ _let_2992_ _let_2993_ _let_2994_
     _let_2995_)))
  (let ((_let_2997_ (_field__rec_value _let_2996_))) (let
  ((_let_2998_ (_field__rec_h_base _let_2996_))) (let
  ((_let_2999_ (_field__rec_h_offset _let_2996_))) (let
  ((_let_3000_ (_field__rec_h_length _let_2996_))) (let
  ((_let_3001_ (_field__rec_enc_state_p _let_2996_))) (let
  ((_let_3002_ (_field__rec_key_p _let_2996_))) (let
  ((_let_3003_ (_field__rec_enc_state_d _let_2996_))) (let
  ((_let_3004_ (_field__rec_key_d _let_2996_))) (let
  ((_let_3005_ (_field__rec_ca_nonce_used _let_2996_))) (let
  ((_let_3006_ (_field__rec_ca_Boolrue _let_2996_))) (let
  ((_let_3007_
    (_make__type_record_2_ _let_2997_ _let_2984_ _let_2998_ _let_2999_
     _let_3000_ _let_3001_ _let_3002_ _let_3003_ _let_3004_ _let_3005_
     _let_3006_)))
  (let ((_let_3008_ (_field__rec_value _let_3007_))) (let
  ((_let_3009_ (_field__rec_vtype _let_3007_))) (let
  ((_let_3010_ (_field__rec_h_offset _let_3007_))) (let
  ((_let_3011_ (_field__rec_h_length _let_3007_))) (let
  ((_let_3012_ (_field__rec_enc_state_p _let_3007_))) (let
  ((_let_3013_ (_field__rec_key_p _let_3007_))) (let
  ((_let_3014_ (_field__rec_enc_state_d _let_3007_))) (let
  ((_let_3015_ (_field__rec_key_d _let_3007_))) (let
  ((_let_3016_ (_field__rec_ca_nonce_used _let_3007_))) (let
  ((_let_3017_ (_field__rec_ca_Boolrue _let_3007_))) (let
  ((_let_3018_
    (_make__type_record_2_ _let_3008_ _let_3009_ _let_2983_ _let_3010_
     _let_3011_ _let_3012_ _let_3013_ _let_3014_ _let_3015_ _let_3016_
     _let_3017_)))
  (let ((_let_3019_ (_field__rec_value _let_3018_))) (let
  ((_let_3020_ (_field__rec_vtype _let_3018_))) (let
  ((_let_3021_ (_field__rec_h_base _let_3018_))) (let
  ((_let_3022_ (_field__rec_h_length _let_3018_))) (let
  ((_let_3023_ (_field__rec_enc_state_p _let_3018_))) (let
  ((_let_3024_ (_field__rec_key_p _let_3018_))) (let
  ((_let_3025_ (_field__rec_enc_state_d _let_3018_))) (let
  ((_let_3026_ (_field__rec_key_d _let_3018_))) (let
  ((_let_3027_ (_field__rec_ca_nonce_used _let_3018_))) (let
  ((_let_3028_ (_field__rec_ca_Boolrue _let_3018_))) (let
  ((_let_3029_
    (_make__type_record_2_ _let_3019_ _let_3020_ _let_3021_ _let_2982_
     _let_3022_ _let_3023_ _let_3024_ _let_3025_ _let_3026_ _let_3027_
     _let_3028_)))
  (let ((_let_3030_ (_field__rec_value _let_3029_))) (let
  ((_let_3031_ (_field__rec_vtype _let_3029_))) (let
  ((_let_3032_ (_field__rec_h_base _let_3029_))) (let
  ((_let_3033_ (_field__rec_h_offset _let_3029_))) (let
  ((_let_3034_ (_field__rec_enc_state_p _let_3029_))) (let
  ((_let_3035_ (_field__rec_key_p _let_3029_))) (let
  ((_let_3036_ (_field__rec_enc_state_d _let_3029_))) (let
  ((_let_3037_ (_field__rec_key_d _let_3029_))) (let
  ((_let_3038_ (_field__rec_ca_nonce_used _let_3029_))) (let
  ((_let_3039_ (_field__rec_ca_Boolrue _let_3029_))) (let
  ((_let_3040_
    (_make__type_record_2_ _let_3030_ _let_3031_ _let_3032_ _let_3033_
     _let_2981_ _let_3034_ _let_3035_ _let_3036_ _let_3037_ _let_3038_
     _let_3039_)))
  (let ((_let_3041_ (_field__rec_value _let_3040_))) (let
  ((_let_3042_ (_field__rec_vtype _let_3040_))) (let
  ((_let_3043_ (_field__rec_h_base _let_3040_))) (let
  ((_let_3044_ (_field__rec_h_offset _let_3040_))) (let
  ((_let_3045_ (_field__rec_h_length _let_3040_))) (let
  ((_let_3046_ (_field__rec_enc_state_p _let_3040_))) (let
  ((_let_3047_ (_field__rec_key_p _let_3040_))) (let
  ((_let_3048_ (_field__rec_key_d _let_3040_))) (let
  ((_let_3049_ (_field__rec_ca_nonce_used _let_3040_))) (let
  ((_let_3050_ (_field__rec_ca_Boolrue _let_3040_))) (let
  ((_let_3051_
    (_make__type_record_2_ _let_3041_ _let_3042_ _let_3043_ _let_3044_
     _let_3045_ _let_3046_ _let_3047_ _let_2980_ _let_3048_ _let_3049_
     _let_3050_)))
  (let ((_let_3052_ (_field__rec_value _let_3051_))) (let
  ((_let_3053_ (_field__rec_vtype _let_3051_))) (let
  ((_let_3054_ (_field__rec_h_base _let_3051_))) (let
  ((_let_3055_ (_field__rec_h_offset _let_3051_))) (let
  ((_let_3056_ (_field__rec_h_length _let_3051_))) (let
  ((_let_3057_ (_field__rec_key_p _let_3051_))) (let
  ((_let_3058_ (_field__rec_enc_state_d _let_3051_))) (let
  ((_let_3059_ (_field__rec_key_d _let_3051_))) (let
  ((_let_3060_ (_field__rec_ca_nonce_used _let_3051_))) (let
  ((_let_3061_ (_field__rec_ca_Boolrue _let_3051_))) (let
  ((_let_3062_
    (_make__type_record_2_ _let_3052_ _let_3053_ _let_3054_ _let_3055_
     _let_3056_ GAR _let_3057_ _let_3058_ _let_3059_ _let_3060_ _let_3061_)))
  (let
  ((_let_3063_
    (_make__type_record_2_ _let_3052_ _let_3053_ _let_3054_ _let_3055_
     _let_3056_ PLN _let_3057_ _let_3058_ _let_3059_ _let_3060_ _let_3061_)))
  (let ((_let_3064_ (_field__rec_key_p _let_2977_))) (let
  ((_let_3065_ (= _let_3064_ ViKey))) (let
  ((_let_3066_ (ite _let_3065_ _let_3063_ _let_3062_))) (let
  ((_let_3067_ (_field__rec_enc_state_p _let_2977_))) (let
  ((_let_3068_ (not (= _let_3067_ ENC)))) (let
  ((_let_3069_ (ite _let_3068_ _let_3062_ _let_3066_))) (let
  ((_let_3070_
    (_make__type_record_2_ _let_3041_ _let_3042_ _let_3043_ _let_3044_
     _let_3045_ _let_3046_ _let_3047_ GAR _let_3048_ _let_3049_ _let_3050_)))
  (let ((_let_3071_ (_field__rec_value _let_3070_))) (let
  ((_let_3072_ (_field__rec_vtype _let_3070_))) (let
  ((_let_3073_ (_field__rec_h_base _let_3070_))) (let
  ((_let_3074_ (_field__rec_h_offset _let_3070_))) (let
  ((_let_3075_ (_field__rec_h_length _let_3070_))) (let
  ((_let_3076_ (_field__rec_key_p _let_3070_))) (let
  ((_let_3077_ (_field__rec_enc_state_d _let_3070_))) (let
  ((_let_3078_ (_field__rec_key_d _let_3070_))) (let
  ((_let_3079_ (_field__rec_ca_nonce_used _let_3070_))) (let
  ((_let_3080_ (_field__rec_ca_Boolrue _let_3070_))) (let
  ((_let_3081_
    (_make__type_record_2_ _let_3071_ _let_3072_ _let_3073_ _let_3074_
     _let_3075_ GAR _let_3076_ _let_3077_ _let_3078_ _let_3079_ _let_3080_)))
  (let ((_let_3082_ (not (= _let_2980_ PLN)))) (let
  ((_let_3083_ (ite _let_3082_ _let_3081_ _let_3069_))) (let
  ((_let_3084_ (_field__rec_value _let_3083_))) (let
  ((_let_3085_ (_field__rec_vtype _let_3083_))) (let
  ((_let_3086_ (_field__rec_h_base _let_3083_))) (let
  ((_let_3087_ (_field__rec_h_offset _let_3083_))) (let
  ((_let_3088_ (_field__rec_h_length _let_3083_))) (let
  ((_let_3089_ (_field__rec_enc_state_p _let_3083_))) (let
  ((_let_3090_ (_field__rec_enc_state_d _let_3083_))) (let
  ((_let_3091_ (_field__rec_key_d _let_3083_))) (let
  ((_let_3092_ (_field__rec_ca_nonce_used _let_3083_))) (let
  ((_let_3093_ (_field__rec_ca_Boolrue _let_3083_))) (let
  ((_let_3094_
    (_make__type_record_2_ _let_3084_ _let_3085_ _let_3086_ _let_3087_
     _let_3088_ _let_3089_ NoKey _let_3090_ _let_3091_ _let_3092_ _let_3093_)))
  (let ((_let_3095_ (_field__rec_value _let_3094_))) (let
  ((_let_3096_ (_field__rec_vtype _let_3094_))) (let
  ((_let_3097_ (_field__rec_h_base _let_3094_))) (let
  ((_let_3098_ (_field__rec_h_offset _let_3094_))) (let
  ((_let_3099_ (_field__rec_h_length _let_3094_))) (let
  ((_let_3100_ (_field__rec_enc_state_p _let_3094_))) (let
  ((_let_3101_ (_field__rec_key_p _let_3094_))) (let
  ((_let_3102_ (_field__rec_enc_state_d _let_3094_))) (let
  ((_let_3103_ (_field__rec_ca_nonce_used _let_3094_))) (let
  ((_let_3104_ (_field__rec_ca_Boolrue _let_3094_))) (let
  ((_let_3105_
    (_make__type_record_2_ _let_3095_ _let_3096_ _let_3097_ _let_3098_
     _let_3099_ _let_3100_ _let_3101_ _let_3102_ NoKey _let_3103_ _let_3104_)))
  (let ((_let_3106_ (_field__rec_value _let_3105_))) (let
  ((_let_3107_ (_field__rec_vtype _let_3105_))) (let
  ((_let_3108_ (_field__rec_h_base _let_3105_))) (let
  ((_let_3109_ (_field__rec_h_offset _let_3105_))) (let
  ((_let_3110_ (_field__rec_h_length _let_3105_))) (let
  ((_let_3111_ (_field__rec_enc_state_p _let_3105_))) (let
  ((_let_3112_ (_field__rec_key_p _let_3105_))) (let
  ((_let_3113_ (_field__rec_enc_state_d _let_3105_))) (let
  ((_let_3114_ (_field__rec_key_d _let_3105_))) (let
  ((_let_3115_ (_field__rec_ca_nonce_used _let_3105_))) (let
  ((_let_3116_
    (_make__type_record_2_ _let_3106_ _let_3107_ _let_3108_ _let_3109_
     _let_3110_ _let_3111_ _let_3112_ _let_3113_ _let_3114_ _let_3115_
     _let_2979_)))
  (let ((_let_3117_ (_field__rec_value _let_3116_))) (let
  ((_let_3118_ (_field__rec_vtype _let_3116_))) (let
  ((_let_3119_ (_field__rec_h_base _let_3116_))) (let
  ((_let_3120_ (_field__rec_h_offset _let_3116_))) (let
  ((_let_3121_ (_field__rec_h_length _let_3116_))) (let
  ((_let_3122_ (_field__rec_enc_state_p _let_3116_))) (let
  ((_let_3123_ (_field__rec_key_p _let_3116_))) (let
  ((_let_3124_ (_field__rec_enc_state_d _let_3116_))) (let
  ((_let_3125_ (_field__rec_key_d _let_3116_))) (let
  ((_let_3126_ (_field__rec_ca_Boolrue _let_3116_))) (let
  ((_let_3127_
    (_make__type_record_2_ _let_3117_ _let_3118_ _let_3119_ _let_3120_
     _let_3121_ _let_3122_ _let_3123_ _let_3124_ _let_3125_ _let_2978_
     _let_3126_)))
  (let ((_let_3128_ (const___ucld_151_ghost_to_addr_value_c3 _let_3127_)))
  (let
  ((_let_3129_
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var
      (bvmul
       ((_ zero_extend 78) _let_3128_)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3130_ (_field__rec_ca_Boolrue _let_3129_))) (let
  ((_let_3131_ (_field__rec_ca_nonce_used _let_3129_))) (let
  ((_let_3132_ (_field__rec_key_p _let_3129_))) (let
  ((_let_3133_ (_field__rec_enc_state_p _let_3129_))) (let
  ((_let_3134_ (_field__rec_h_length _let_3129_))) (let
  ((_let_3135_ (_field__rec_h_offset _let_3129_))) (let
  ((_let_3136_ (_field__rec_h_base _let_3129_))) (let
  ((_let_3137_ (_field__rec_vtype _let_3129_))) (let
  ((_let_3138_ (_field__rec_value _let_3129_))) (let
  ((_let_3139_ (_field__rec_vtype havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3140_ (_field__rec_h_base havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3141_ (_field__rec_h_offset havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3142_ (_field__rec_h_length havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3143_
    (_field__rec_enc_state_p havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3144_ (_field__rec_key_p havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3145_
    (_field__rec_enc_state_d havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3146_ (_field__rec_key_d havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3147_
    (_field__rec_ca_nonce_used havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3148_
    (_field__rec_ca_Boolrue havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3149_
    (_make__type_record_2_ _let_3138_ _let_3139_ _let_3140_ _let_3141_
     _let_3142_ _let_3143_ _let_3144_ _let_3145_ _let_3146_ _let_3147_
     _let_3148_)))
  (let ((_let_3150_ (_field__rec_value _let_3149_))) (let
  ((_let_3151_ (_field__rec_h_base _let_3149_))) (let
  ((_let_3152_ (_field__rec_h_offset _let_3149_))) (let
  ((_let_3153_ (_field__rec_h_length _let_3149_))) (let
  ((_let_3154_ (_field__rec_enc_state_p _let_3149_))) (let
  ((_let_3155_ (_field__rec_key_p _let_3149_))) (let
  ((_let_3156_ (_field__rec_enc_state_d _let_3149_))) (let
  ((_let_3157_ (_field__rec_key_d _let_3149_))) (let
  ((_let_3158_ (_field__rec_ca_nonce_used _let_3149_))) (let
  ((_let_3159_ (_field__rec_ca_Boolrue _let_3149_))) (let
  ((_let_3160_
    (_make__type_record_2_ _let_3150_ _let_3137_ _let_3151_ _let_3152_
     _let_3153_ _let_3154_ _let_3155_ _let_3156_ _let_3157_ _let_3158_
     _let_3159_)))
  (let ((_let_3161_ (_field__rec_value _let_3160_))) (let
  ((_let_3162_ (_field__rec_vtype _let_3160_))) (let
  ((_let_3163_ (_field__rec_h_offset _let_3160_))) (let
  ((_let_3164_ (_field__rec_h_length _let_3160_))) (let
  ((_let_3165_ (_field__rec_enc_state_p _let_3160_))) (let
  ((_let_3166_ (_field__rec_key_p _let_3160_))) (let
  ((_let_3167_ (_field__rec_enc_state_d _let_3160_))) (let
  ((_let_3168_ (_field__rec_key_d _let_3160_))) (let
  ((_let_3169_ (_field__rec_ca_nonce_used _let_3160_))) (let
  ((_let_3170_ (_field__rec_ca_Boolrue _let_3160_))) (let
  ((_let_3171_
    (_make__type_record_2_ _let_3161_ _let_3162_ _let_3136_ _let_3163_
     _let_3164_ _let_3165_ _let_3166_ _let_3167_ _let_3168_ _let_3169_
     _let_3170_)))
  (let ((_let_3172_ (_field__rec_value _let_3171_))) (let
  ((_let_3173_ (_field__rec_vtype _let_3171_))) (let
  ((_let_3174_ (_field__rec_h_base _let_3171_))) (let
  ((_let_3175_ (_field__rec_h_length _let_3171_))) (let
  ((_let_3176_ (_field__rec_enc_state_p _let_3171_))) (let
  ((_let_3177_ (_field__rec_key_p _let_3171_))) (let
  ((_let_3178_ (_field__rec_enc_state_d _let_3171_))) (let
  ((_let_3179_ (_field__rec_key_d _let_3171_))) (let
  ((_let_3180_ (_field__rec_ca_nonce_used _let_3171_))) (let
  ((_let_3181_ (_field__rec_ca_Boolrue _let_3171_))) (let
  ((_let_3182_
    (_make__type_record_2_ _let_3172_ _let_3173_ _let_3174_ _let_3135_
     _let_3175_ _let_3176_ _let_3177_ _let_3178_ _let_3179_ _let_3180_
     _let_3181_)))
  (let ((_let_3183_ (_field__rec_value _let_3182_))) (let
  ((_let_3184_ (_field__rec_vtype _let_3182_))) (let
  ((_let_3185_ (_field__rec_h_base _let_3182_))) (let
  ((_let_3186_ (_field__rec_h_offset _let_3182_))) (let
  ((_let_3187_ (_field__rec_enc_state_p _let_3182_))) (let
  ((_let_3188_ (_field__rec_key_p _let_3182_))) (let
  ((_let_3189_ (_field__rec_enc_state_d _let_3182_))) (let
  ((_let_3190_ (_field__rec_key_d _let_3182_))) (let
  ((_let_3191_ (_field__rec_ca_nonce_used _let_3182_))) (let
  ((_let_3192_ (_field__rec_ca_Boolrue _let_3182_))) (let
  ((_let_3193_
    (_make__type_record_2_ _let_3183_ _let_3184_ _let_3185_ _let_3186_
     _let_3134_ _let_3187_ _let_3188_ _let_3189_ _let_3190_ _let_3191_
     _let_3192_)))
  (let ((_let_3194_ (_field__rec_value _let_3193_))) (let
  ((_let_3195_ (_field__rec_vtype _let_3193_))) (let
  ((_let_3196_ (_field__rec_h_base _let_3193_))) (let
  ((_let_3197_ (_field__rec_h_offset _let_3193_))) (let
  ((_let_3198_ (_field__rec_h_length _let_3193_))) (let
  ((_let_3199_ (_field__rec_enc_state_p _let_3193_))) (let
  ((_let_3200_ (_field__rec_key_p _let_3193_))) (let
  ((_let_3201_ (_field__rec_key_d _let_3193_))) (let
  ((_let_3202_ (_field__rec_ca_nonce_used _let_3193_))) (let
  ((_let_3203_ (_field__rec_ca_Boolrue _let_3193_))) (let
  ((_let_3204_
    (_make__type_record_2_ _let_3194_ _let_3195_ _let_3196_ _let_3197_
     _let_3198_ _let_3199_ _let_3200_ GAR _let_3201_ _let_3202_ _let_3203_)))
  (let ((_let_3205_ (_field__rec_value _let_3204_))) (let
  ((_let_3206_ (_field__rec_vtype _let_3204_))) (let
  ((_let_3207_ (_field__rec_h_base _let_3204_))) (let
  ((_let_3208_ (_field__rec_h_offset _let_3204_))) (let
  ((_let_3209_ (_field__rec_h_length _let_3204_))) (let
  ((_let_3210_ (_field__rec_enc_state_p _let_3204_))) (let
  ((_let_3211_ (_field__rec_key_p _let_3204_))) (let
  ((_let_3212_ (_field__rec_enc_state_d _let_3204_))) (let
  ((_let_3213_ (_field__rec_ca_nonce_used _let_3204_))) (let
  ((_let_3214_ (_field__rec_ca_Boolrue _let_3204_))) (let
  ((_let_3215_
    (_make__type_record_2_ _let_3205_ _let_3206_ _let_3207_ _let_3208_
     _let_3209_ _let_3210_ _let_3211_ _let_3212_ NoKey _let_3213_ _let_3214_)))
  (let
  ((_let_3216_
    (_make__type_record_2_ _let_3194_ _let_3195_ _let_3196_ _let_3197_
     _let_3198_ _let_3199_ _let_3200_ PLN _let_3201_ _let_3202_ _let_3203_)))
  (let ((_let_3217_ (_field__rec_value _let_3216_))) (let
  ((_let_3218_ (_field__rec_vtype _let_3216_))) (let
  ((_let_3219_ (_field__rec_h_base _let_3216_))) (let
  ((_let_3220_ (_field__rec_h_offset _let_3216_))) (let
  ((_let_3221_ (_field__rec_h_length _let_3216_))) (let
  ((_let_3222_ (_field__rec_enc_state_p _let_3216_))) (let
  ((_let_3223_ (_field__rec_key_p _let_3216_))) (let
  ((_let_3224_ (_field__rec_enc_state_d _let_3216_))) (let
  ((_let_3225_ (_field__rec_ca_nonce_used _let_3216_))) (let
  ((_let_3226_ (_field__rec_ca_Boolrue _let_3216_))) (let
  ((_let_3227_
    (_make__type_record_2_ _let_3217_ _let_3218_ _let_3219_ _let_3220_
     _let_3221_ _let_3222_ _let_3223_ _let_3224_ NoKey _let_3225_ _let_3226_)))
  (let ((_let_3228_ (const___ucld_147_ghost_to_nonce_c3 _let_3127_))) (let
  ((_let_3229_ (= _let_3131_ _let_3228_))) (let
  ((_let_3230_ (_field__rec_key_d _let_3129_))) (let
  ((_let_3231_ (= _let_3230_ ViKey))) (let
  ((_let_3232_ (and _let_3231_ _let_3229_))) (let
  ((_let_3233_ (ite _let_3232_ _let_3227_ _let_3215_))) (let
  ((_let_3234_ (_field__rec_enc_state_d _let_3129_))) (let
  ((_let_3235_ (not (= _let_3234_ ENC)))) (let
  ((_let_3236_ (ite _let_3235_ _let_3215_ _let_3233_))) (let
  ((_let_3237_ (_field__rec_value _let_3236_))) (let
  ((_let_3238_ (_field__rec_vtype _let_3236_))) (let
  ((_let_3239_ (_field__rec_h_base _let_3236_))) (let
  ((_let_3240_ (_field__rec_h_offset _let_3236_))) (let
  ((_let_3241_ (_field__rec_h_length _let_3236_))) (let
  ((_let_3242_ (_field__rec_key_p _let_3236_))) (let
  ((_let_3243_ (_field__rec_enc_state_d _let_3236_))) (let
  ((_let_3244_ (_field__rec_key_d _let_3236_))) (let
  ((_let_3245_ (_field__rec_ca_nonce_used _let_3236_))) (let
  ((_let_3246_ (_field__rec_ca_Boolrue _let_3236_))) (let
  ((_let_3247_
    (_make__type_record_2_ _let_3237_ _let_3238_ _let_3239_ _let_3240_
     _let_3241_ _let_3133_ _let_3242_ _let_3243_ _let_3244_ _let_3245_
     _let_3246_)))
  (let ((_let_3248_ (_field__rec_value _let_3247_))) (let
  ((_let_3249_ (_field__rec_vtype _let_3247_))) (let
  ((_let_3250_ (_field__rec_h_base _let_3247_))) (let
  ((_let_3251_ (_field__rec_h_offset _let_3247_))) (let
  ((_let_3252_ (_field__rec_h_length _let_3247_))) (let
  ((_let_3253_ (_field__rec_enc_state_p _let_3247_))) (let
  ((_let_3254_ (_field__rec_enc_state_d _let_3247_))) (let
  ((_let_3255_ (_field__rec_key_d _let_3247_))) (let
  ((_let_3256_ (_field__rec_ca_nonce_used _let_3247_))) (let
  ((_let_3257_ (_field__rec_ca_Boolrue _let_3247_))) (let
  ((_let_3258_
    (_make__type_record_2_ _let_3248_ _let_3249_ _let_3250_ _let_3251_
     _let_3252_ _let_3253_ _let_3132_ _let_3254_ _let_3255_ _let_3256_
     _let_3257_)))
  (let ((_let_3259_ (_field__rec_value _let_3258_))) (let
  ((_let_3260_ (_field__rec_vtype _let_3258_))) (let
  ((_let_3261_ (_field__rec_h_base _let_3258_))) (let
  ((_let_3262_ (_field__rec_h_offset _let_3258_))) (let
  ((_let_3263_ (_field__rec_h_length _let_3258_))) (let
  ((_let_3264_ (_field__rec_enc_state_p _let_3258_))) (let
  ((_let_3265_ (_field__rec_key_p _let_3258_))) (let
  ((_let_3266_ (_field__rec_enc_state_d _let_3258_))) (let
  ((_let_3267_ (_field__rec_key_d _let_3258_))) (let
  ((_let_3268_ (_field__rec_ca_Boolrue _let_3258_))) (let
  ((_let_3269_
    (_make__type_record_2_ _let_3259_ _let_3260_ _let_3261_ _let_3262_
     _let_3263_ _let_3264_ _let_3265_ _let_3266_ _let_3267_ _let_3131_
     _let_3268_)))
  (let ((_let_3270_ (_field__rec_value _let_3269_))) (let
  ((_let_3271_ (_field__rec_vtype _let_3269_))) (let
  ((_let_3272_ (_field__rec_h_base _let_3269_))) (let
  ((_let_3273_ (_field__rec_h_offset _let_3269_))) (let
  ((_let_3274_ (_field__rec_h_length _let_3269_))) (let
  ((_let_3275_ (_field__rec_enc_state_p _let_3269_))) (let
  ((_let_3276_ (_field__rec_key_p _let_3269_))) (let
  ((_let_3277_ (_field__rec_enc_state_d _let_3269_))) (let
  ((_let_3278_ (_field__rec_key_d _let_3269_))) (let
  ((_let_3279_ (_field__rec_ca_nonce_used _let_3269_))) (let
  ((_let_3280_
    (_make__type_record_2_ _let_3270_ _let_3271_ _let_3272_ _let_3273_
     _let_3274_ _let_3275_ _let_3276_ _let_3277_ _let_3278_ _let_3279_
     _let_3130_)))
  (let ((_let_3281_ (_make__type_record_6_ true _let_2973_))) (let
  ((_let_3282_ (_field__rec_valid _let_3281_))) (let
  ((_let_3283_ (_make__type_record_6_ _let_3282_ _let_3280_))) (let
  ((_let_3284_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_3128_) #b0001)))))
  (let ((_let_3285_ (not _let_3284_))) (let
  ((_let_3286_ (ite _let_3285_ _let_2974_ _let_3283_))) (let
  ((_let_3287_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3288_ (ite _let_3287_ _let_3286_ _let_2976_))) (let
  ((_let_3289_
    (ite initial_50_v _let_3288_ initial_67___ucld_160_observable_var)))
  (let
  ((_let_3290_
    (and
     (or
      (and
       (= ((_ extract 21 21) state_1___ucld_160_observable_var)
        ((_ extract 21 21) _let_3289_))
       (and (and
       (or
        (and
         (= ((_ extract 20 20) state_1___ucld_160_observable_var)
          ((_ extract 20 20) _let_3289_))
         (and (and
         (or
          (and
           (= ((_ extract 14 13) state_1___ucld_160_observable_var)
            ((_ extract 14 13) _let_3289_)))
          (and
           (= ((_ extract 14 13) state_1___ucld_160_observable_var)
            ((_ extract 14 13) _let_3289_)))
          (and
           (= ((_ extract 14 13) state_1___ucld_160_observable_var)
            ((_ extract 14 13) _let_3289_))))
         (not (= ((_ extract 14 13) state_1___ucld_160_observable_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 10 9) state_1___ucld_160_observable_var)
            ((_ extract 10 9) _let_3289_)))
          (and
           (= ((_ extract 10 9) state_1___ucld_160_observable_var)
            ((_ extract 10 9) _let_3289_)))
          (and
           (= ((_ extract 10 9) state_1___ucld_160_observable_var)
            ((_ extract 10 9) _let_3289_))))
         (not (= ((_ extract 10 9) state_1___ucld_160_observable_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 12 11) state_1___ucld_160_observable_var)
            ((_ extract 12 11) _let_3289_)))
          (and
           (= ((_ extract 12 11) state_1___ucld_160_observable_var)
            ((_ extract 12 11) _let_3289_)))
          (and
           (= ((_ extract 12 11) state_1___ucld_160_observable_var)
            ((_ extract 12 11) _let_3289_))))
         (not (= ((_ extract 12 11) state_1___ucld_160_observable_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 16 15) state_1___ucld_160_observable_var)
            ((_ extract 16 15) _let_3289_)))
          (and
           (= ((_ extract 16 15) state_1___ucld_160_observable_var)
            ((_ extract 16 15) _let_3289_)))
          (and
           (= ((_ extract 16 15) state_1___ucld_160_observable_var)
            ((_ extract 16 15) _let_3289_))))
         (not (= ((_ extract 16 15) state_1___ucld_160_observable_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 2 2) state_1___ucld_160_observable_var)
            ((_ extract 2 2) _let_3289_)))
          (and
           (= ((_ extract 2 2) state_1___ucld_160_observable_var)
            ((_ extract 2 2) _let_3289_))))))))
       (not (= ((_ extract 20 20) state_1___ucld_160_observable_var) #b1))))))
     (not (= ((_ extract 21 21) state_1___ucld_160_observable_var) #b1)))))
  _let_3290_)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((_let_3291_ (_field__rec_vtype havoc_237_newdata_g))) (let
  ((_let_3292_ (= _let_3291_ RAW))) (let
  ((_let_3293_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3294_ (not _let_3293_))) (let
  ((_let_3295_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3296_ (not _let_3295_))) (let
  ((_let_3297_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3298_ (not _let_3297_))) (let
  ((_let_3299_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3300_ (not _let_3299_))) (let
  ((_let_3301_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3302_ (and true _let_3301_))) (let
  ((_let_3303_ (and _let_3302_ _let_3300_))) (let
  ((_let_3304_ (and _let_3303_ _let_3298_))) (let
  ((_let_3305_ (and _let_3304_ _let_3296_))) (let
  ((_let_3306_ (and _let_3305_ _let_3294_))) (let
  ((_let_3307_ (and _let_3306_ initial_50_v))) (let
  ((_let_3308_ (=> _let_3307_ _let_3292_))) _let_3308_)))))))))))))))))))
(declare-fun state_1___ucld_158_opcode_var () Bool)
(declare-fun havoc_100___ucld_117_opcode_havoc () Bool)
(declare-fun initial_61___ucld_158_opcode_var () Bool)
(assert
 (let
  ((_let_3309_
    (ite initial_50_v havoc_100___ucld_117_opcode_havoc
     initial_61___ucld_158_opcode_var)))
  (let ((_let_3310_ (= state_1___ucld_158_opcode_var _let_3309_)))
  _let_3310_)))
(declare-fun state_1___ucld_170_src2_probe_g_var () (_ BitVec 20))
(declare-fun initial_58___ucld_170_src2_probe_g_var () (_ BitVec 20))
(assert
 (let
  ((_let_3311_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_3312_
    (ite _let_3311_ initial_58___ucld_170_src2_probe_g_var
     initial_58___ucld_170_src2_probe_g_var)))
  (let
  ((_let_3313_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_3314_
    (ite _let_3313_ initial_58___ucld_170_src2_probe_g_var _let_3312_)))
  (let
  ((_let_3315_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_3316_
    (ite _let_3315_ initial_58___ucld_170_src2_probe_g_var _let_3314_)))
  (let
  ((_let_3317_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_3318_
    (ite _let_3317_ initial_58___ucld_170_src2_probe_g_var _let_3316_)))
  (let
  ((_let_3319_
    (ite initial_50_v _let_3318_ initial_58___ucld_170_src2_probe_g_var)))
  (let
  ((_let_3320_
    (and
     (or
      (and
       (= ((_ extract 19 19) state_1___ucld_170_src2_probe_g_var)
        ((_ extract 19 19) _let_3319_))
       (and (and
       (or
        (and
         (= ((_ extract 14 13) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 14 13) _let_3319_)))
        (and
         (= ((_ extract 14 13) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 14 13) _let_3319_)))
        (and
         (= ((_ extract 14 13) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 14 13) _let_3319_))))
       (not (= ((_ extract 14 13) state_1___ucld_170_src2_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 10 9) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 10 9) _let_3319_)))
        (and
         (= ((_ extract 10 9) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 10 9) _let_3319_)))
        (and
         (= ((_ extract 10 9) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 10 9) _let_3319_))))
       (not (= ((_ extract 10 9) state_1___ucld_170_src2_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 12 11) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 12 11) _let_3319_)))
        (and
         (= ((_ extract 12 11) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 12 11) _let_3319_)))
        (and
         (= ((_ extract 12 11) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 12 11) _let_3319_))))
       (not (= ((_ extract 12 11) state_1___ucld_170_src2_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 16 15) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 16 15) _let_3319_)))
        (and
         (= ((_ extract 16 15) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 16 15) _let_3319_)))
        (and
         (= ((_ extract 16 15) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 16 15) _let_3319_))))
       (not (= ((_ extract 16 15) state_1___ucld_170_src2_probe_g_var) #b11)))
       (and
       (or
        (and
         (= ((_ extract 2 2) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 2 2) _let_3319_)))
        (and
         (= ((_ extract 2 2) state_1___ucld_170_src2_probe_g_var)
          ((_ extract 2 2) _let_3319_))))))))
     (not (= ((_ extract 19 19) state_1___ucld_170_src2_probe_g_var) #b1)))))
  _let_3320_)))))))))))
(declare-fun initial_71___ucld_156_data_probe_pre_var () (_ BitVec 2))
(declare-fun havoc_124_cell_data () (_ BitVec 2))
(declare-fun state_1___ucld_156_data_probe_pre_var () (_ BitVec 2))
(assert
 (let
  ((_let_3321_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3322_ (_field__rec_ca_nonce_used _let_3321_))) (let
  ((_let_3323_ (_field__rec_ca_Boolrue _let_3321_))) (let
  ((_let_3324_ (_field__rec_enc_state_d _let_3321_))) (let
  ((_let_3325_ (_field__rec_h_length _let_3321_))) (let
  ((_let_3326_ (_field__rec_h_offset _let_3321_))) (let
  ((_let_3327_ (_field__rec_h_base _let_3321_))) (let
  ((_let_3328_ (_field__rec_vtype _let_3321_))) (let
  ((_let_3329_ (_field__rec_value _let_3321_))) (let
  ((_let_3330_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3331_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3332_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3333_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3334_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3335_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3336_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3337_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3338_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3339_
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3340_
    (_make__type_record_2_ _let_3329_ _let_3330_ _let_3331_ _let_3332_
     _let_3333_ _let_3334_ _let_3335_ _let_3336_ _let_3337_ _let_3338_
     _let_3339_)))
  (let ((_let_3341_ (_field__rec_value _let_3340_))) (let
  ((_let_3342_ (_field__rec_h_base _let_3340_))) (let
  ((_let_3343_ (_field__rec_h_offset _let_3340_))) (let
  ((_let_3344_ (_field__rec_h_length _let_3340_))) (let
  ((_let_3345_ (_field__rec_enc_state_p _let_3340_))) (let
  ((_let_3346_ (_field__rec_key_p _let_3340_))) (let
  ((_let_3347_ (_field__rec_enc_state_d _let_3340_))) (let
  ((_let_3348_ (_field__rec_key_d _let_3340_))) (let
  ((_let_3349_ (_field__rec_ca_nonce_used _let_3340_))) (let
  ((_let_3350_ (_field__rec_ca_Boolrue _let_3340_))) (let
  ((_let_3351_
    (_make__type_record_2_ _let_3341_ _let_3328_ _let_3342_ _let_3343_
     _let_3344_ _let_3345_ _let_3346_ _let_3347_ _let_3348_ _let_3349_
     _let_3350_)))
  (let ((_let_3352_ (_field__rec_value _let_3351_))) (let
  ((_let_3353_ (_field__rec_vtype _let_3351_))) (let
  ((_let_3354_ (_field__rec_h_offset _let_3351_))) (let
  ((_let_3355_ (_field__rec_h_length _let_3351_))) (let
  ((_let_3356_ (_field__rec_enc_state_p _let_3351_))) (let
  ((_let_3357_ (_field__rec_key_p _let_3351_))) (let
  ((_let_3358_ (_field__rec_enc_state_d _let_3351_))) (let
  ((_let_3359_ (_field__rec_key_d _let_3351_))) (let
  ((_let_3360_ (_field__rec_ca_nonce_used _let_3351_))) (let
  ((_let_3361_ (_field__rec_ca_Boolrue _let_3351_))) (let
  ((_let_3362_
    (_make__type_record_2_ _let_3352_ _let_3353_ _let_3327_ _let_3354_
     _let_3355_ _let_3356_ _let_3357_ _let_3358_ _let_3359_ _let_3360_
     _let_3361_)))
  (let ((_let_3363_ (_field__rec_value _let_3362_))) (let
  ((_let_3364_ (_field__rec_vtype _let_3362_))) (let
  ((_let_3365_ (_field__rec_h_base _let_3362_))) (let
  ((_let_3366_ (_field__rec_h_length _let_3362_))) (let
  ((_let_3367_ (_field__rec_enc_state_p _let_3362_))) (let
  ((_let_3368_ (_field__rec_key_p _let_3362_))) (let
  ((_let_3369_ (_field__rec_enc_state_d _let_3362_))) (let
  ((_let_3370_ (_field__rec_key_d _let_3362_))) (let
  ((_let_3371_ (_field__rec_ca_nonce_used _let_3362_))) (let
  ((_let_3372_ (_field__rec_ca_Boolrue _let_3362_))) (let
  ((_let_3373_
    (_make__type_record_2_ _let_3363_ _let_3364_ _let_3365_ _let_3326_
     _let_3366_ _let_3367_ _let_3368_ _let_3369_ _let_3370_ _let_3371_
     _let_3372_)))
  (let ((_let_3374_ (_field__rec_value _let_3373_))) (let
  ((_let_3375_ (_field__rec_vtype _let_3373_))) (let
  ((_let_3376_ (_field__rec_h_base _let_3373_))) (let
  ((_let_3377_ (_field__rec_h_offset _let_3373_))) (let
  ((_let_3378_ (_field__rec_enc_state_p _let_3373_))) (let
  ((_let_3379_ (_field__rec_key_p _let_3373_))) (let
  ((_let_3380_ (_field__rec_enc_state_d _let_3373_))) (let
  ((_let_3381_ (_field__rec_key_d _let_3373_))) (let
  ((_let_3382_ (_field__rec_ca_nonce_used _let_3373_))) (let
  ((_let_3383_ (_field__rec_ca_Boolrue _let_3373_))) (let
  ((_let_3384_
    (_make__type_record_2_ _let_3374_ _let_3375_ _let_3376_ _let_3377_
     _let_3325_ _let_3378_ _let_3379_ _let_3380_ _let_3381_ _let_3382_
     _let_3383_)))
  (let ((_let_3385_ (_field__rec_value _let_3384_))) (let
  ((_let_3386_ (_field__rec_vtype _let_3384_))) (let
  ((_let_3387_ (_field__rec_h_base _let_3384_))) (let
  ((_let_3388_ (_field__rec_h_offset _let_3384_))) (let
  ((_let_3389_ (_field__rec_h_length _let_3384_))) (let
  ((_let_3390_ (_field__rec_enc_state_p _let_3384_))) (let
  ((_let_3391_ (_field__rec_key_p _let_3384_))) (let
  ((_let_3392_ (_field__rec_key_d _let_3384_))) (let
  ((_let_3393_ (_field__rec_ca_nonce_used _let_3384_))) (let
  ((_let_3394_ (_field__rec_ca_Boolrue _let_3384_))) (let
  ((_let_3395_
    (_make__type_record_2_ _let_3385_ _let_3386_ _let_3387_ _let_3388_
     _let_3389_ _let_3390_ _let_3391_ _let_3324_ _let_3392_ _let_3393_
     _let_3394_)))
  (let ((_let_3396_ (_field__rec_value _let_3395_))) (let
  ((_let_3397_ (_field__rec_vtype _let_3395_))) (let
  ((_let_3398_ (_field__rec_h_base _let_3395_))) (let
  ((_let_3399_ (_field__rec_h_offset _let_3395_))) (let
  ((_let_3400_ (_field__rec_h_length _let_3395_))) (let
  ((_let_3401_ (_field__rec_key_p _let_3395_))) (let
  ((_let_3402_ (_field__rec_enc_state_d _let_3395_))) (let
  ((_let_3403_ (_field__rec_key_d _let_3395_))) (let
  ((_let_3404_ (_field__rec_ca_nonce_used _let_3395_))) (let
  ((_let_3405_ (_field__rec_ca_Boolrue _let_3395_))) (let
  ((_let_3406_
    (_make__type_record_2_ _let_3396_ _let_3397_ _let_3398_ _let_3399_
     _let_3400_ GAR _let_3401_ _let_3402_ _let_3403_ _let_3404_ _let_3405_)))
  (let
  ((_let_3407_
    (_make__type_record_2_ _let_3396_ _let_3397_ _let_3398_ _let_3399_
     _let_3400_ PLN _let_3401_ _let_3402_ _let_3403_ _let_3404_ _let_3405_)))
  (let ((_let_3408_ (_field__rec_key_p _let_3321_))) (let
  ((_let_3409_ (= _let_3408_ ViKey))) (let
  ((_let_3410_ (ite _let_3409_ _let_3407_ _let_3406_))) (let
  ((_let_3411_ (_field__rec_enc_state_p _let_3321_))) (let
  ((_let_3412_ (not (= _let_3411_ ENC)))) (let
  ((_let_3413_ (ite _let_3412_ _let_3406_ _let_3410_))) (let
  ((_let_3414_
    (_make__type_record_2_ _let_3385_ _let_3386_ _let_3387_ _let_3388_
     _let_3389_ _let_3390_ _let_3391_ GAR _let_3392_ _let_3393_ _let_3394_)))
  (let ((_let_3415_ (_field__rec_value _let_3414_))) (let
  ((_let_3416_ (_field__rec_vtype _let_3414_))) (let
  ((_let_3417_ (_field__rec_h_base _let_3414_))) (let
  ((_let_3418_ (_field__rec_h_offset _let_3414_))) (let
  ((_let_3419_ (_field__rec_h_length _let_3414_))) (let
  ((_let_3420_ (_field__rec_key_p _let_3414_))) (let
  ((_let_3421_ (_field__rec_enc_state_d _let_3414_))) (let
  ((_let_3422_ (_field__rec_key_d _let_3414_))) (let
  ((_let_3423_ (_field__rec_ca_nonce_used _let_3414_))) (let
  ((_let_3424_ (_field__rec_ca_Boolrue _let_3414_))) (let
  ((_let_3425_
    (_make__type_record_2_ _let_3415_ _let_3416_ _let_3417_ _let_3418_
     _let_3419_ GAR _let_3420_ _let_3421_ _let_3422_ _let_3423_ _let_3424_)))
  (let ((_let_3426_ (not (= _let_3324_ PLN)))) (let
  ((_let_3427_ (ite _let_3426_ _let_3425_ _let_3413_))) (let
  ((_let_3428_ (_field__rec_value _let_3427_))) (let
  ((_let_3429_ (_field__rec_vtype _let_3427_))) (let
  ((_let_3430_ (_field__rec_h_base _let_3427_))) (let
  ((_let_3431_ (_field__rec_h_offset _let_3427_))) (let
  ((_let_3432_ (_field__rec_h_length _let_3427_))) (let
  ((_let_3433_ (_field__rec_enc_state_p _let_3427_))) (let
  ((_let_3434_ (_field__rec_enc_state_d _let_3427_))) (let
  ((_let_3435_ (_field__rec_key_d _let_3427_))) (let
  ((_let_3436_ (_field__rec_ca_nonce_used _let_3427_))) (let
  ((_let_3437_ (_field__rec_ca_Boolrue _let_3427_))) (let
  ((_let_3438_
    (_make__type_record_2_ _let_3428_ _let_3429_ _let_3430_ _let_3431_
     _let_3432_ _let_3433_ NoKey _let_3434_ _let_3435_ _let_3436_ _let_3437_)))
  (let ((_let_3439_ (_field__rec_value _let_3438_))) (let
  ((_let_3440_ (_field__rec_vtype _let_3438_))) (let
  ((_let_3441_ (_field__rec_h_base _let_3438_))) (let
  ((_let_3442_ (_field__rec_h_offset _let_3438_))) (let
  ((_let_3443_ (_field__rec_h_length _let_3438_))) (let
  ((_let_3444_ (_field__rec_enc_state_p _let_3438_))) (let
  ((_let_3445_ (_field__rec_key_p _let_3438_))) (let
  ((_let_3446_ (_field__rec_enc_state_d _let_3438_))) (let
  ((_let_3447_ (_field__rec_ca_nonce_used _let_3438_))) (let
  ((_let_3448_ (_field__rec_ca_Boolrue _let_3438_))) (let
  ((_let_3449_
    (_make__type_record_2_ _let_3439_ _let_3440_ _let_3441_ _let_3442_
     _let_3443_ _let_3444_ _let_3445_ _let_3446_ NoKey _let_3447_ _let_3448_)))
  (let ((_let_3450_ (_field__rec_value _let_3449_))) (let
  ((_let_3451_ (_field__rec_vtype _let_3449_))) (let
  ((_let_3452_ (_field__rec_h_base _let_3449_))) (let
  ((_let_3453_ (_field__rec_h_offset _let_3449_))) (let
  ((_let_3454_ (_field__rec_h_length _let_3449_))) (let
  ((_let_3455_ (_field__rec_enc_state_p _let_3449_))) (let
  ((_let_3456_ (_field__rec_key_p _let_3449_))) (let
  ((_let_3457_ (_field__rec_enc_state_d _let_3449_))) (let
  ((_let_3458_ (_field__rec_key_d _let_3449_))) (let
  ((_let_3459_ (_field__rec_ca_nonce_used _let_3449_))) (let
  ((_let_3460_
    (_make__type_record_2_ _let_3450_ _let_3451_ _let_3452_ _let_3453_
     _let_3454_ _let_3455_ _let_3456_ _let_3457_ _let_3458_ _let_3459_
     _let_3323_)))
  (let ((_let_3461_ (_field__rec_value _let_3460_))) (let
  ((_let_3462_ (_field__rec_vtype _let_3460_))) (let
  ((_let_3463_ (_field__rec_h_base _let_3460_))) (let
  ((_let_3464_ (_field__rec_h_offset _let_3460_))) (let
  ((_let_3465_ (_field__rec_h_length _let_3460_))) (let
  ((_let_3466_ (_field__rec_enc_state_p _let_3460_))) (let
  ((_let_3467_ (_field__rec_key_p _let_3460_))) (let
  ((_let_3468_ (_field__rec_enc_state_d _let_3460_))) (let
  ((_let_3469_ (_field__rec_key_d _let_3460_))) (let
  ((_let_3470_ (_field__rec_ca_Boolrue _let_3460_))) (let
  ((_let_3471_
    (_make__type_record_2_ _let_3461_ _let_3462_ _let_3463_ _let_3464_
     _let_3465_ _let_3466_ _let_3467_ _let_3468_ _let_3469_ _let_3322_
     _let_3470_)))
  (let ((_let_3472_ (const___ucld_151_ghost_to_addr_value_c3 _let_3471_)))
  (let
  ((_let_3473_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_3472_) #b0001)))))
  (let ((_let_3474_ (not _let_3473_))) (let
  ((_let_3475_
    (ite _let_3474_ initial_71___ucld_156_data_probe_pre_var
     havoc_124_cell_data)))
  (let
  ((_let_3476_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_3477_
    (ite _let_3476_ _let_3475_ initial_71___ucld_156_data_probe_pre_var)))
  (let
  ((_let_3478_
    (ite initial_50_v _let_3477_ initial_71___ucld_156_data_probe_pre_var)))
  (let ((_let_3479_ (= state_1___ucld_156_data_probe_pre_var _let_3478_)))
  _let_3479_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun state_1___ucld_173_ghost_lmap_var () (_ BitVec 160))
(assert
 (let
  ((_let_3480_
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) havoc_237_newdata_g)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var)))))
  (let
  ((_let_3481_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_3482_
    (ite _let_3481_ _let_3480_ initial_69___ucld_173_ghost_lmap_var)))
  (let
  ((_let_3483_
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) havoc_227_newdata)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var)))))
  (let
  ((_let_3484_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3485_ (_field__rec_h_offset _let_3484_))) (let
  ((_let_3486_ (bvadd _let_3485_ havoc_225_nondet_arg))) (let
  ((_let_3487_ (_field__rec_value _let_3484_))) (let
  ((_let_3488_ (_field__rec_vtype _let_3484_))) (let
  ((_let_3489_ (_field__rec_h_base _let_3484_))) (let
  ((_let_3490_ (_field__rec_h_length _let_3484_))) (let
  ((_let_3491_ (_field__rec_enc_state_p _let_3484_))) (let
  ((_let_3492_ (_field__rec_key_p _let_3484_))) (let
  ((_let_3493_ (_field__rec_enc_state_d _let_3484_))) (let
  ((_let_3494_ (_field__rec_key_d _let_3484_))) (let
  ((_let_3495_ (_field__rec_ca_nonce_used _let_3484_))) (let
  ((_let_3496_ (_field__rec_ca_Boolrue _let_3484_))) (let
  ((_let_3497_
    (_make__type_record_2_ _let_3487_ _let_3488_ _let_3489_ _let_3486_
     _let_3490_ _let_3491_ _let_3492_ _let_3493_ _let_3494_ _let_3495_
     _let_3496_)))
  (let ((_let_3498_ (_field__rec_value _let_3497_))) (let
  ((_let_3499_ (bvadd _let_3498_ havoc_225_nondet_arg))) (let
  ((_let_3500_ (_field__rec_vtype _let_3497_))) (let
  ((_let_3501_ (_field__rec_h_base _let_3497_))) (let
  ((_let_3502_ (_field__rec_h_offset _let_3497_))) (let
  ((_let_3503_ (_field__rec_h_length _let_3497_))) (let
  ((_let_3504_ (_field__rec_enc_state_p _let_3497_))) (let
  ((_let_3505_ (_field__rec_key_p _let_3497_))) (let
  ((_let_3506_ (_field__rec_enc_state_d _let_3497_))) (let
  ((_let_3507_ (_field__rec_key_d _let_3497_))) (let
  ((_let_3508_ (_field__rec_ca_nonce_used _let_3497_))) (let
  ((_let_3509_ (_field__rec_ca_Boolrue _let_3497_))) (let
  ((_let_3510_
    (_make__type_record_2_ _let_3499_ _let_3500_ _let_3501_ _let_3502_
     _let_3503_ _let_3504_ _let_3505_ _let_3506_ _let_3507_ _let_3508_
     _let_3509_)))
  (let
  ((_let_3511_
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) _let_3510_)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var)))))
  (let ((_let_3512_ (= _let_3488_ HAN))) (let
  ((_let_3513_ (ite _let_3512_ _let_3511_ _let_3483_))) (let
  ((_let_3514_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3515_ (ite _let_3514_ _let_3513_ _let_3482_))) (let
  ((_let_3516_ (_field__rec_allocg havoc_193___ucld_34_ret_as))) (let
  ((_let_3517_
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) _let_3516_)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var)))))
  (let ((_let_3518_ (_field__rec_valid havoc_193___ucld_34_ret_as))) (let
  ((_let_3519_
    (ite _let_3518_ _let_3517_ initial_69___ucld_173_ghost_lmap_var)))
  (let
  ((_let_3520_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3521_ (ite _let_3520_ _let_3519_ _let_3515_))) (let
  ((_let_3522_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_3523_
    (ite _let_3522_ initial_69___ucld_173_ghost_lmap_var _let_3521_)))
  (let
  ((_let_3524_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3525_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3526_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3527_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3528_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3529_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3530_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3531_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3532_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3533_
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_3534_
    (_make__type_record_2_ _let_3487_ _let_3524_ _let_3525_ _let_3526_
     _let_3527_ _let_3528_ _let_3529_ _let_3530_ _let_3531_ _let_3532_
     _let_3533_)))
  (let ((_let_3535_ (_field__rec_value _let_3534_))) (let
  ((_let_3536_ (_field__rec_h_base _let_3534_))) (let
  ((_let_3537_ (_field__rec_h_offset _let_3534_))) (let
  ((_let_3538_ (_field__rec_h_length _let_3534_))) (let
  ((_let_3539_ (_field__rec_enc_state_p _let_3534_))) (let
  ((_let_3540_ (_field__rec_key_p _let_3534_))) (let
  ((_let_3541_ (_field__rec_enc_state_d _let_3534_))) (let
  ((_let_3542_ (_field__rec_key_d _let_3534_))) (let
  ((_let_3543_ (_field__rec_ca_nonce_used _let_3534_))) (let
  ((_let_3544_ (_field__rec_ca_Boolrue _let_3534_))) (let
  ((_let_3545_
    (_make__type_record_2_ _let_3535_ _let_3488_ _let_3536_ _let_3537_
     _let_3538_ _let_3539_ _let_3540_ _let_3541_ _let_3542_ _let_3543_
     _let_3544_)))
  (let ((_let_3546_ (_field__rec_value _let_3545_))) (let
  ((_let_3547_ (_field__rec_vtype _let_3545_))) (let
  ((_let_3548_ (_field__rec_h_offset _let_3545_))) (let
  ((_let_3549_ (_field__rec_h_length _let_3545_))) (let
  ((_let_3550_ (_field__rec_enc_state_p _let_3545_))) (let
  ((_let_3551_ (_field__rec_key_p _let_3545_))) (let
  ((_let_3552_ (_field__rec_enc_state_d _let_3545_))) (let
  ((_let_3553_ (_field__rec_key_d _let_3545_))) (let
  ((_let_3554_ (_field__rec_ca_nonce_used _let_3545_))) (let
  ((_let_3555_ (_field__rec_ca_Boolrue _let_3545_))) (let
  ((_let_3556_
    (_make__type_record_2_ _let_3546_ _let_3547_ _let_3489_ _let_3548_
     _let_3549_ _let_3550_ _let_3551_ _let_3552_ _let_3553_ _let_3554_
     _let_3555_)))
  (let ((_let_3557_ (_field__rec_value _let_3556_))) (let
  ((_let_3558_ (_field__rec_vtype _let_3556_))) (let
  ((_let_3559_ (_field__rec_h_base _let_3556_))) (let
  ((_let_3560_ (_field__rec_h_length _let_3556_))) (let
  ((_let_3561_ (_field__rec_enc_state_p _let_3556_))) (let
  ((_let_3562_ (_field__rec_key_p _let_3556_))) (let
  ((_let_3563_ (_field__rec_enc_state_d _let_3556_))) (let
  ((_let_3564_ (_field__rec_key_d _let_3556_))) (let
  ((_let_3565_ (_field__rec_ca_nonce_used _let_3556_))) (let
  ((_let_3566_ (_field__rec_ca_Boolrue _let_3556_))) (let
  ((_let_3567_
    (_make__type_record_2_ _let_3557_ _let_3558_ _let_3559_ _let_3485_
     _let_3560_ _let_3561_ _let_3562_ _let_3563_ _let_3564_ _let_3565_
     _let_3566_)))
  (let ((_let_3568_ (_field__rec_value _let_3567_))) (let
  ((_let_3569_ (_field__rec_vtype _let_3567_))) (let
  ((_let_3570_ (_field__rec_h_base _let_3567_))) (let
  ((_let_3571_ (_field__rec_h_offset _let_3567_))) (let
  ((_let_3572_ (_field__rec_enc_state_p _let_3567_))) (let
  ((_let_3573_ (_field__rec_key_p _let_3567_))) (let
  ((_let_3574_ (_field__rec_enc_state_d _let_3567_))) (let
  ((_let_3575_ (_field__rec_key_d _let_3567_))) (let
  ((_let_3576_ (_field__rec_ca_nonce_used _let_3567_))) (let
  ((_let_3577_ (_field__rec_ca_Boolrue _let_3567_))) (let
  ((_let_3578_
    (_make__type_record_2_ _let_3568_ _let_3569_ _let_3570_ _let_3571_
     _let_3490_ _let_3572_ _let_3573_ _let_3574_ _let_3575_ _let_3576_
     _let_3577_)))
  (let ((_let_3579_ (_field__rec_value _let_3578_))) (let
  ((_let_3580_ (_field__rec_vtype _let_3578_))) (let
  ((_let_3581_ (_field__rec_h_base _let_3578_))) (let
  ((_let_3582_ (_field__rec_h_offset _let_3578_))) (let
  ((_let_3583_ (_field__rec_h_length _let_3578_))) (let
  ((_let_3584_ (_field__rec_enc_state_p _let_3578_))) (let
  ((_let_3585_ (_field__rec_key_p _let_3578_))) (let
  ((_let_3586_ (_field__rec_key_d _let_3578_))) (let
  ((_let_3587_ (_field__rec_ca_nonce_used _let_3578_))) (let
  ((_let_3588_ (_field__rec_ca_Boolrue _let_3578_))) (let
  ((_let_3589_
    (_make__type_record_2_ _let_3579_ _let_3580_ _let_3581_ _let_3582_
     _let_3583_ _let_3584_ _let_3585_ _let_3493_ _let_3586_ _let_3587_
     _let_3588_)))
  (let ((_let_3590_ (_field__rec_value _let_3589_))) (let
  ((_let_3591_ (_field__rec_vtype _let_3589_))) (let
  ((_let_3592_ (_field__rec_h_base _let_3589_))) (let
  ((_let_3593_ (_field__rec_h_offset _let_3589_))) (let
  ((_let_3594_ (_field__rec_h_length _let_3589_))) (let
  ((_let_3595_ (_field__rec_key_p _let_3589_))) (let
  ((_let_3596_ (_field__rec_enc_state_d _let_3589_))) (let
  ((_let_3597_ (_field__rec_key_d _let_3589_))) (let
  ((_let_3598_ (_field__rec_ca_nonce_used _let_3589_))) (let
  ((_let_3599_ (_field__rec_ca_Boolrue _let_3589_))) (let
  ((_let_3600_
    (_make__type_record_2_ _let_3590_ _let_3591_ _let_3592_ _let_3593_
     _let_3594_ GAR _let_3595_ _let_3596_ _let_3597_ _let_3598_ _let_3599_)))
  (let
  ((_let_3601_
    (_make__type_record_2_ _let_3590_ _let_3591_ _let_3592_ _let_3593_
     _let_3594_ PLN _let_3595_ _let_3596_ _let_3597_ _let_3598_ _let_3599_)))
  (let ((_let_3602_ (= _let_3492_ ViKey))) (let
  ((_let_3603_ (ite _let_3602_ _let_3601_ _let_3600_))) (let
  ((_let_3604_ (not (= _let_3491_ ENC)))) (let
  ((_let_3605_ (ite _let_3604_ _let_3600_ _let_3603_))) (let
  ((_let_3606_
    (_make__type_record_2_ _let_3579_ _let_3580_ _let_3581_ _let_3582_
     _let_3583_ _let_3584_ _let_3585_ GAR _let_3586_ _let_3587_ _let_3588_)))
  (let ((_let_3607_ (_field__rec_value _let_3606_))) (let
  ((_let_3608_ (_field__rec_vtype _let_3606_))) (let
  ((_let_3609_ (_field__rec_h_base _let_3606_))) (let
  ((_let_3610_ (_field__rec_h_offset _let_3606_))) (let
  ((_let_3611_ (_field__rec_h_length _let_3606_))) (let
  ((_let_3612_ (_field__rec_key_p _let_3606_))) (let
  ((_let_3613_ (_field__rec_enc_state_d _let_3606_))) (let
  ((_let_3614_ (_field__rec_key_d _let_3606_))) (let
  ((_let_3615_ (_field__rec_ca_nonce_used _let_3606_))) (let
  ((_let_3616_ (_field__rec_ca_Boolrue _let_3606_))) (let
  ((_let_3617_
    (_make__type_record_2_ _let_3607_ _let_3608_ _let_3609_ _let_3610_
     _let_3611_ GAR _let_3612_ _let_3613_ _let_3614_ _let_3615_ _let_3616_)))
  (let ((_let_3618_ (not (= _let_3493_ PLN)))) (let
  ((_let_3619_ (ite _let_3618_ _let_3617_ _let_3605_))) (let
  ((_let_3620_ (_field__rec_value _let_3619_))) (let
  ((_let_3621_ (_field__rec_vtype _let_3619_))) (let
  ((_let_3622_ (_field__rec_h_base _let_3619_))) (let
  ((_let_3623_ (_field__rec_h_offset _let_3619_))) (let
  ((_let_3624_ (_field__rec_h_length _let_3619_))) (let
  ((_let_3625_ (_field__rec_enc_state_p _let_3619_))) (let
  ((_let_3626_ (_field__rec_enc_state_d _let_3619_))) (let
  ((_let_3627_ (_field__rec_key_d _let_3619_))) (let
  ((_let_3628_ (_field__rec_ca_nonce_used _let_3619_))) (let
  ((_let_3629_ (_field__rec_ca_Boolrue _let_3619_))) (let
  ((_let_3630_
    (_make__type_record_2_ _let_3620_ _let_3621_ _let_3622_ _let_3623_
     _let_3624_ _let_3625_ NoKey _let_3626_ _let_3627_ _let_3628_ _let_3629_)))
  (let ((_let_3631_ (_field__rec_value _let_3630_))) (let
  ((_let_3632_ (_field__rec_vtype _let_3630_))) (let
  ((_let_3633_ (_field__rec_h_base _let_3630_))) (let
  ((_let_3634_ (_field__rec_h_offset _let_3630_))) (let
  ((_let_3635_ (_field__rec_h_length _let_3630_))) (let
  ((_let_3636_ (_field__rec_enc_state_p _let_3630_))) (let
  ((_let_3637_ (_field__rec_key_p _let_3630_))) (let
  ((_let_3638_ (_field__rec_enc_state_d _let_3630_))) (let
  ((_let_3639_ (_field__rec_ca_nonce_used _let_3630_))) (let
  ((_let_3640_ (_field__rec_ca_Boolrue _let_3630_))) (let
  ((_let_3641_
    (_make__type_record_2_ _let_3631_ _let_3632_ _let_3633_ _let_3634_
     _let_3635_ _let_3636_ _let_3637_ _let_3638_ NoKey _let_3639_ _let_3640_)))
  (let ((_let_3642_ (_field__rec_value _let_3641_))) (let
  ((_let_3643_ (_field__rec_vtype _let_3641_))) (let
  ((_let_3644_ (_field__rec_h_base _let_3641_))) (let
  ((_let_3645_ (_field__rec_h_offset _let_3641_))) (let
  ((_let_3646_ (_field__rec_h_length _let_3641_))) (let
  ((_let_3647_ (_field__rec_enc_state_p _let_3641_))) (let
  ((_let_3648_ (_field__rec_key_p _let_3641_))) (let
  ((_let_3649_ (_field__rec_enc_state_d _let_3641_))) (let
  ((_let_3650_ (_field__rec_key_d _let_3641_))) (let
  ((_let_3651_ (_field__rec_ca_nonce_used _let_3641_))) (let
  ((_let_3652_
    (_make__type_record_2_ _let_3642_ _let_3643_ _let_3644_ _let_3645_
     _let_3646_ _let_3647_ _let_3648_ _let_3649_ _let_3650_ _let_3651_
     _let_3496_)))
  (let ((_let_3653_ (_field__rec_value _let_3652_))) (let
  ((_let_3654_ (_field__rec_vtype _let_3652_))) (let
  ((_let_3655_ (_field__rec_h_base _let_3652_))) (let
  ((_let_3656_ (_field__rec_h_offset _let_3652_))) (let
  ((_let_3657_ (_field__rec_h_length _let_3652_))) (let
  ((_let_3658_ (_field__rec_enc_state_p _let_3652_))) (let
  ((_let_3659_ (_field__rec_key_p _let_3652_))) (let
  ((_let_3660_ (_field__rec_enc_state_d _let_3652_))) (let
  ((_let_3661_ (_field__rec_key_d _let_3652_))) (let
  ((_let_3662_ (_field__rec_ca_Boolrue _let_3652_))) (let
  ((_let_3663_
    (_make__type_record_2_ _let_3653_ _let_3654_ _let_3655_ _let_3656_
     _let_3657_ _let_3658_ _let_3659_ _let_3660_ _let_3661_ _let_3495_
     _let_3662_)))
  (let ((_let_3664_ (const___ucld_151_ghost_to_addr_value_c3 _let_3663_)))
  (let
  ((_let_3665_
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var
      (bvmul
       ((_ zero_extend 78) _let_3664_)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3666_ (_field__rec_ca_Boolrue _let_3665_))) (let
  ((_let_3667_ (_field__rec_ca_nonce_used _let_3665_))) (let
  ((_let_3668_ (_field__rec_key_p _let_3665_))) (let
  ((_let_3669_ (_field__rec_enc_state_p _let_3665_))) (let
  ((_let_3670_ (_field__rec_h_length _let_3665_))) (let
  ((_let_3671_ (_field__rec_h_offset _let_3665_))) (let
  ((_let_3672_ (_field__rec_h_base _let_3665_))) (let
  ((_let_3673_ (_field__rec_vtype _let_3665_))) (let
  ((_let_3674_ (_field__rec_value _let_3665_))) (let
  ((_let_3675_ (_field__rec_vtype havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3676_ (_field__rec_h_base havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3677_ (_field__rec_h_offset havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3678_ (_field__rec_h_length havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3679_
    (_field__rec_enc_state_p havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3680_ (_field__rec_key_p havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3681_
    (_field__rec_enc_state_d havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3682_ (_field__rec_key_d havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3683_
    (_field__rec_ca_nonce_used havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3684_
    (_field__rec_ca_Boolrue havoc_143___ucld_41_ret_ghost_data_out)))
  (let
  ((_let_3685_
    (_make__type_record_2_ _let_3674_ _let_3675_ _let_3676_ _let_3677_
     _let_3678_ _let_3679_ _let_3680_ _let_3681_ _let_3682_ _let_3683_
     _let_3684_)))
  (let ((_let_3686_ (_field__rec_value _let_3685_))) (let
  ((_let_3687_ (_field__rec_h_base _let_3685_))) (let
  ((_let_3688_ (_field__rec_h_offset _let_3685_))) (let
  ((_let_3689_ (_field__rec_h_length _let_3685_))) (let
  ((_let_3690_ (_field__rec_enc_state_p _let_3685_))) (let
  ((_let_3691_ (_field__rec_key_p _let_3685_))) (let
  ((_let_3692_ (_field__rec_enc_state_d _let_3685_))) (let
  ((_let_3693_ (_field__rec_key_d _let_3685_))) (let
  ((_let_3694_ (_field__rec_ca_nonce_used _let_3685_))) (let
  ((_let_3695_ (_field__rec_ca_Boolrue _let_3685_))) (let
  ((_let_3696_
    (_make__type_record_2_ _let_3686_ _let_3673_ _let_3687_ _let_3688_
     _let_3689_ _let_3690_ _let_3691_ _let_3692_ _let_3693_ _let_3694_
     _let_3695_)))
  (let ((_let_3697_ (_field__rec_value _let_3696_))) (let
  ((_let_3698_ (_field__rec_vtype _let_3696_))) (let
  ((_let_3699_ (_field__rec_h_offset _let_3696_))) (let
  ((_let_3700_ (_field__rec_h_length _let_3696_))) (let
  ((_let_3701_ (_field__rec_enc_state_p _let_3696_))) (let
  ((_let_3702_ (_field__rec_key_p _let_3696_))) (let
  ((_let_3703_ (_field__rec_enc_state_d _let_3696_))) (let
  ((_let_3704_ (_field__rec_key_d _let_3696_))) (let
  ((_let_3705_ (_field__rec_ca_nonce_used _let_3696_))) (let
  ((_let_3706_ (_field__rec_ca_Boolrue _let_3696_))) (let
  ((_let_3707_
    (_make__type_record_2_ _let_3697_ _let_3698_ _let_3672_ _let_3699_
     _let_3700_ _let_3701_ _let_3702_ _let_3703_ _let_3704_ _let_3705_
     _let_3706_)))
  (let ((_let_3708_ (_field__rec_value _let_3707_))) (let
  ((_let_3709_ (_field__rec_vtype _let_3707_))) (let
  ((_let_3710_ (_field__rec_h_base _let_3707_))) (let
  ((_let_3711_ (_field__rec_h_length _let_3707_))) (let
  ((_let_3712_ (_field__rec_enc_state_p _let_3707_))) (let
  ((_let_3713_ (_field__rec_key_p _let_3707_))) (let
  ((_let_3714_ (_field__rec_enc_state_d _let_3707_))) (let
  ((_let_3715_ (_field__rec_key_d _let_3707_))) (let
  ((_let_3716_ (_field__rec_ca_nonce_used _let_3707_))) (let
  ((_let_3717_ (_field__rec_ca_Boolrue _let_3707_))) (let
  ((_let_3718_
    (_make__type_record_2_ _let_3708_ _let_3709_ _let_3710_ _let_3671_
     _let_3711_ _let_3712_ _let_3713_ _let_3714_ _let_3715_ _let_3716_
     _let_3717_)))
  (let ((_let_3719_ (_field__rec_value _let_3718_))) (let
  ((_let_3720_ (_field__rec_vtype _let_3718_))) (let
  ((_let_3721_ (_field__rec_h_base _let_3718_))) (let
  ((_let_3722_ (_field__rec_h_offset _let_3718_))) (let
  ((_let_3723_ (_field__rec_enc_state_p _let_3718_))) (let
  ((_let_3724_ (_field__rec_key_p _let_3718_))) (let
  ((_let_3725_ (_field__rec_enc_state_d _let_3718_))) (let
  ((_let_3726_ (_field__rec_key_d _let_3718_))) (let
  ((_let_3727_ (_field__rec_ca_nonce_used _let_3718_))) (let
  ((_let_3728_ (_field__rec_ca_Boolrue _let_3718_))) (let
  ((_let_3729_
    (_make__type_record_2_ _let_3719_ _let_3720_ _let_3721_ _let_3722_
     _let_3670_ _let_3723_ _let_3724_ _let_3725_ _let_3726_ _let_3727_
     _let_3728_)))
  (let ((_let_3730_ (_field__rec_value _let_3729_))) (let
  ((_let_3731_ (_field__rec_vtype _let_3729_))) (let
  ((_let_3732_ (_field__rec_h_base _let_3729_))) (let
  ((_let_3733_ (_field__rec_h_offset _let_3729_))) (let
  ((_let_3734_ (_field__rec_h_length _let_3729_))) (let
  ((_let_3735_ (_field__rec_enc_state_p _let_3729_))) (let
  ((_let_3736_ (_field__rec_key_p _let_3729_))) (let
  ((_let_3737_ (_field__rec_key_d _let_3729_))) (let
  ((_let_3738_ (_field__rec_ca_nonce_used _let_3729_))) (let
  ((_let_3739_ (_field__rec_ca_Boolrue _let_3729_))) (let
  ((_let_3740_
    (_make__type_record_2_ _let_3730_ _let_3731_ _let_3732_ _let_3733_
     _let_3734_ _let_3735_ _let_3736_ GAR _let_3737_ _let_3738_ _let_3739_)))
  (let ((_let_3741_ (_field__rec_value _let_3740_))) (let
  ((_let_3742_ (_field__rec_vtype _let_3740_))) (let
  ((_let_3743_ (_field__rec_h_base _let_3740_))) (let
  ((_let_3744_ (_field__rec_h_offset _let_3740_))) (let
  ((_let_3745_ (_field__rec_h_length _let_3740_))) (let
  ((_let_3746_ (_field__rec_enc_state_p _let_3740_))) (let
  ((_let_3747_ (_field__rec_key_p _let_3740_))) (let
  ((_let_3748_ (_field__rec_enc_state_d _let_3740_))) (let
  ((_let_3749_ (_field__rec_ca_nonce_used _let_3740_))) (let
  ((_let_3750_ (_field__rec_ca_Boolrue _let_3740_))) (let
  ((_let_3751_
    (_make__type_record_2_ _let_3741_ _let_3742_ _let_3743_ _let_3744_
     _let_3745_ _let_3746_ _let_3747_ _let_3748_ NoKey _let_3749_ _let_3750_)))
  (let
  ((_let_3752_
    (_make__type_record_2_ _let_3730_ _let_3731_ _let_3732_ _let_3733_
     _let_3734_ _let_3735_ _let_3736_ PLN _let_3737_ _let_3738_ _let_3739_)))
  (let ((_let_3753_ (_field__rec_value _let_3752_))) (let
  ((_let_3754_ (_field__rec_vtype _let_3752_))) (let
  ((_let_3755_ (_field__rec_h_base _let_3752_))) (let
  ((_let_3756_ (_field__rec_h_offset _let_3752_))) (let
  ((_let_3757_ (_field__rec_h_length _let_3752_))) (let
  ((_let_3758_ (_field__rec_enc_state_p _let_3752_))) (let
  ((_let_3759_ (_field__rec_key_p _let_3752_))) (let
  ((_let_3760_ (_field__rec_enc_state_d _let_3752_))) (let
  ((_let_3761_ (_field__rec_ca_nonce_used _let_3752_))) (let
  ((_let_3762_ (_field__rec_ca_Boolrue _let_3752_))) (let
  ((_let_3763_
    (_make__type_record_2_ _let_3753_ _let_3754_ _let_3755_ _let_3756_
     _let_3757_ _let_3758_ _let_3759_ _let_3760_ NoKey _let_3761_ _let_3762_)))
  (let ((_let_3764_ (const___ucld_147_ghost_to_nonce_c3 _let_3663_))) (let
  ((_let_3765_ (= _let_3667_ _let_3764_))) (let
  ((_let_3766_ (_field__rec_key_d _let_3665_))) (let
  ((_let_3767_ (= _let_3766_ ViKey))) (let
  ((_let_3768_ (and _let_3767_ _let_3765_))) (let
  ((_let_3769_ (ite _let_3768_ _let_3763_ _let_3751_))) (let
  ((_let_3770_ (_field__rec_enc_state_d _let_3665_))) (let
  ((_let_3771_ (not (= _let_3770_ ENC)))) (let
  ((_let_3772_ (ite _let_3771_ _let_3751_ _let_3769_))) (let
  ((_let_3773_ (_field__rec_value _let_3772_))) (let
  ((_let_3774_ (_field__rec_vtype _let_3772_))) (let
  ((_let_3775_ (_field__rec_h_base _let_3772_))) (let
  ((_let_3776_ (_field__rec_h_offset _let_3772_))) (let
  ((_let_3777_ (_field__rec_h_length _let_3772_))) (let
  ((_let_3778_ (_field__rec_key_p _let_3772_))) (let
  ((_let_3779_ (_field__rec_enc_state_d _let_3772_))) (let
  ((_let_3780_ (_field__rec_key_d _let_3772_))) (let
  ((_let_3781_ (_field__rec_ca_nonce_used _let_3772_))) (let
  ((_let_3782_ (_field__rec_ca_Boolrue _let_3772_))) (let
  ((_let_3783_
    (_make__type_record_2_ _let_3773_ _let_3774_ _let_3775_ _let_3776_
     _let_3777_ _let_3669_ _let_3778_ _let_3779_ _let_3780_ _let_3781_
     _let_3782_)))
  (let ((_let_3784_ (_field__rec_value _let_3783_))) (let
  ((_let_3785_ (_field__rec_vtype _let_3783_))) (let
  ((_let_3786_ (_field__rec_h_base _let_3783_))) (let
  ((_let_3787_ (_field__rec_h_offset _let_3783_))) (let
  ((_let_3788_ (_field__rec_h_length _let_3783_))) (let
  ((_let_3789_ (_field__rec_enc_state_p _let_3783_))) (let
  ((_let_3790_ (_field__rec_enc_state_d _let_3783_))) (let
  ((_let_3791_ (_field__rec_key_d _let_3783_))) (let
  ((_let_3792_ (_field__rec_ca_nonce_used _let_3783_))) (let
  ((_let_3793_ (_field__rec_ca_Boolrue _let_3783_))) (let
  ((_let_3794_
    (_make__type_record_2_ _let_3784_ _let_3785_ _let_3786_ _let_3787_
     _let_3788_ _let_3789_ _let_3668_ _let_3790_ _let_3791_ _let_3792_
     _let_3793_)))
  (let ((_let_3795_ (_field__rec_value _let_3794_))) (let
  ((_let_3796_ (_field__rec_vtype _let_3794_))) (let
  ((_let_3797_ (_field__rec_h_base _let_3794_))) (let
  ((_let_3798_ (_field__rec_h_offset _let_3794_))) (let
  ((_let_3799_ (_field__rec_h_length _let_3794_))) (let
  ((_let_3800_ (_field__rec_enc_state_p _let_3794_))) (let
  ((_let_3801_ (_field__rec_key_p _let_3794_))) (let
  ((_let_3802_ (_field__rec_enc_state_d _let_3794_))) (let
  ((_let_3803_ (_field__rec_key_d _let_3794_))) (let
  ((_let_3804_ (_field__rec_ca_Boolrue _let_3794_))) (let
  ((_let_3805_
    (_make__type_record_2_ _let_3795_ _let_3796_ _let_3797_ _let_3798_
     _let_3799_ _let_3800_ _let_3801_ _let_3802_ _let_3803_ _let_3667_
     _let_3804_)))
  (let ((_let_3806_ (_field__rec_value _let_3805_))) (let
  ((_let_3807_ (_field__rec_vtype _let_3805_))) (let
  ((_let_3808_ (_field__rec_h_base _let_3805_))) (let
  ((_let_3809_ (_field__rec_h_offset _let_3805_))) (let
  ((_let_3810_ (_field__rec_h_length _let_3805_))) (let
  ((_let_3811_ (_field__rec_enc_state_p _let_3805_))) (let
  ((_let_3812_ (_field__rec_key_p _let_3805_))) (let
  ((_let_3813_ (_field__rec_enc_state_d _let_3805_))) (let
  ((_let_3814_ (_field__rec_key_d _let_3805_))) (let
  ((_let_3815_ (_field__rec_ca_nonce_used _let_3805_))) (let
  ((_let_3816_
    (_make__type_record_2_ _let_3806_ _let_3807_ _let_3808_ _let_3809_
     _let_3810_ _let_3811_ _let_3812_ _let_3813_ _let_3814_ _let_3815_
     _let_3666_)))
  (let
  ((_let_3817_
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) _let_3816_)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var)))))
  (let
  ((_let_3818_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_3664_) #b0001)))))
  (let ((_let_3819_ (not _let_3818_))) (let
  ((_let_3820_
    (ite _let_3819_ initial_69___ucld_173_ghost_lmap_var _let_3817_)))
  (let
  ((_let_3821_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3822_ (ite _let_3821_ _let_3820_ _let_3523_))) (let
  ((_let_3823_
    (ite initial_50_v _let_3822_ initial_69___ucld_173_ghost_lmap_var)))
  (let ((_let_3824_ (= state_1___ucld_173_ghost_lmap_var _let_3823_)))
  _let_3824_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let
  ((_let_3825_
    (forall ((a1 (_ BitVec 2))) (forall ((a2 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
      (or
      (and
       (bvult
        (_field__rec_lowend
        (select initial_60___ucld_164_shadow_mem_var a1))
        (_field__rec_highend
        (select initial_60___ucld_164_shadow_mem_var a1)))
       (and
       (bvult
        (_field__rec_lowend
        (select initial_60___ucld_164_shadow_mem_var a2))
        (_field__rec_highend
        (select initial_60___ucld_164_shadow_mem_var a2)))
       (and
       (not
        (and
         (bvule (_field__rec_lowend
          (select initial_60___ucld_164_shadow_mem_var a2))
          (_field__rec_lowend
          (select initial_60___ucld_164_shadow_mem_var a1)))
         (bvult
          (_field__rec_lowend
          (select initial_60___ucld_164_shadow_mem_var a1))
          (_field__rec_highend
          (select initial_60___ucld_164_shadow_mem_var a2)))))
       (not
        (and
         (bvule (_field__rec_lowend
          (select initial_60___ucld_164_shadow_mem_var a1))
          (_field__rec_lowend
          (select initial_60___ucld_164_shadow_mem_var a2)))
         (bvult
          (_field__rec_lowend
          (select initial_60___ucld_164_shadow_mem_var a2))
          (_field__rec_highend
          (select initial_60___ucld_164_shadow_mem_var a1))))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111))))))))))))
  _let_3825_))
(assert
 (let
  ((_let_3826_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3827_ (_field__rec_h_offset _let_3826_))) (let
  ((_let_3828_ (bvadd _let_3827_ havoc_225_nondet_arg))) (let
  ((_let_3829_ (bvsub ((_ bv3 2) ) _let_3828_))) (let
  ((_let_3830_ (_field__rec_h_base _let_3826_))) (let
  ((_let_3831_ (bvule _let_3830_ _let_3829_))) (let
  ((_let_3832_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3833_ (not _let_3832_))) (let
  ((_let_3834_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3835_ (not _let_3834_))) (let
  ((_let_3836_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3837_ (not _let_3836_))) (let
  ((_let_3838_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3839_ (_field__rec_vtype _let_3826_))) (let
  ((_let_3840_ (= _let_3839_ HAN))) (let ((_let_3841_ (and true _let_3840_)))
  (let ((_let_3842_ (and _let_3841_ _let_3838_))) (let
  ((_let_3843_ (and _let_3842_ _let_3837_))) (let
  ((_let_3844_ (and _let_3843_ _let_3835_))) (let
  ((_let_3845_ (and _let_3844_ _let_3833_))) (let
  ((_let_3846_ (and _let_3845_ initial_50_v))) (let
  ((_let_3847_ (=> _let_3846_ _let_3831_))) _let_3847_)))))))))))))))))))))))
(declare-fun state_1_v () Bool)
(assert (let ((_let_3848_ (= state_1_v true))) _let_3848_))
(assert
 (let
  ((_let_3849_
    (forall ((a (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111)))))
      (=
       (const___ucld_153_slot_to_nonce_c3 (_field__rec_lowend
        (select initial_60___ucld_164_shadow_mem_var a)) (_field__rec_highend
        (select initial_60___ucld_164_shadow_mem_var a)))
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          initial_56___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  _let_3849_))
(assert
 (let ((_let_3850_ (_field__rec_vtype havoc_227_newdata))) (let
  ((_let_3851_ (= _let_3850_ RAW))) (let
  ((_let_3852_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3853_ (not _let_3852_))) (let
  ((_let_3854_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3855_ (not _let_3854_))) (let
  ((_let_3856_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3857_ (not _let_3856_))) (let
  ((_let_3858_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_3859_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3860_ (_field__rec_vtype _let_3859_))) (let
  ((_let_3861_ (= _let_3860_ HAN))) (let ((_let_3862_ (not _let_3861_))) (let
  ((_let_3863_ (and true _let_3862_))) (let
  ((_let_3864_ (and _let_3863_ _let_3858_))) (let
  ((_let_3865_ (and _let_3864_ _let_3857_))) (let
  ((_let_3866_ (and _let_3865_ _let_3855_))) (let
  ((_let_3867_ (and _let_3866_ _let_3853_))) (let
  ((_let_3868_ (and _let_3867_ initial_50_v))) (let
  ((_let_3869_ (=> _let_3868_ _let_3851_))) _let_3869_)))))))))))))))))))))
(declare-fun state_1___ucld_167_action_var () (_ BitVec 3))
(declare-fun havoc_101___ucld_118_action_havoc () (_ BitVec 3))
(assert
 (let
  ((_let_3870_
    (ite initial_50_v havoc_101___ucld_118_action_havoc
     initial_54___ucld_167_action_var)))
  (let
  ((_let_3871_
    (and
     (or
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var)
        ((_ extract 2 0) _let_3870_)))
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var)
        ((_ extract 2 0) _let_3870_)))
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var)
        ((_ extract 2 0) _let_3870_)))
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var)
        ((_ extract 2 0) _let_3870_)))
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var)
        ((_ extract 2 0) _let_3870_)))
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var)
        ((_ extract 2 0) _let_3870_))))
     (not (= ((_ extract 2 0) state_1___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) state_1___ucld_167_action_var) #b111)))))
  _let_3871_)))
(assert
 (let
  ((_let_3872_
    (forall ((a (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111)))))
      (and
       (bvule (_field__rec_lowend
        (select initial_60___ucld_164_shadow_mem_var a)) a)
       (bvult
        a
        (_field__rec_highend
        (select initial_60___ucld_164_shadow_mem_var a))))))))
  _let_3872_))
(assert
 (let
  ((_let_3873_
    (forall ((a (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) a)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) a)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          initial_69___ucld_173_ghost_lmap_var
          (bvmul
           ((_ zero_extend 157) a)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        (select initial_69___ucld_173_ghost_lmap_var a))
        (_field__rec_h_offset
        (select initial_69___ucld_173_ghost_lmap_var a))))))))
  _let_3873_))
(push 1)
(assert
 (let
  ((_let_3874_
    (forall ((l (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               state_1___ucld_173_ghost_lmap_var
               (bvmul
                ((_ zero_extend 157) l)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           state_1___ucld_173_ghost_lmap_var
           (bvmul
            ((_ zero_extend 157) l)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               state_1___ucld_173_ghost_lmap_var
               (bvmul
                ((_ zero_extend 157) l)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         (select state_1___ucld_173_ghost_lmap_var l))
         (_field__rec_h_length
         (select state_1___ucld_173_ghost_lmap_var l))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              state_1___ucld_173_ghost_lmap_var
              (bvmul
               ((_ zero_extend 157) l)
               #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  (let ((_let_3875_ (not _let_3874_))) _let_3875_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3876_
    (forall ((a (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) a)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) a)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_173_ghost_lmap_var
          (bvmul
           ((_ zero_extend 157) a)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        (select state_1___ucld_173_ghost_lmap_var a))
        (_field__rec_h_offset
        (select state_1___ucld_173_ghost_lmap_var a))))))))
  (let ((_let_3877_ (not _let_3876_))) _let_3877_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3878_
    (forall ((a (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111)))))
      (and
       (bvule (_field__rec_lowend
        (select state_1___ucld_164_shadow_mem_var a)) a)
       (bvult
        a
        (_field__rec_highend
        (select state_1___ucld_164_shadow_mem_var a))))))))
  (let ((_let_3879_ (not _let_3878_))) _let_3879_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let ((_let_3880_ (_field__rec_data_g state_1___ucld_160_observable_var)))
  (let ((_let_3881_ (_field__rec_enc_state_d _let_3880_))) (let
  ((_let_3882_ (= _let_3881_ GAR))) (let ((_let_3883_ (= _let_3881_ ENC)))
  (let ((_let_3884_ (or _let_3883_ _let_3882_))) (let
  ((_let_3885_ (_field__rec_valid state_1___ucld_160_observable_var))) (let
  ((_let_3886_ (not _let_3885_))) (let
  ((_let_3887_ (or _let_3886_ _let_3884_))) (let
  ((_let_3888_ (=> state_1___ucld_174_msv_curr_var _let_3887_))) (let
  ((_let_3889_ (not _let_3888_))) _let_3889_)))))))))))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3890_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       ((_ extract 0 0)
        (bvlshr
         state_1___ucld_157_alloc_map_var
         (bvmul ((_ zero_extend 2) a) #b0001)))
       (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               state_1___ucld_171_ghost_mem_var
               (bvmul
                ((_ zero_extend 78) a)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           state_1___ucld_171_ghost_mem_var
           (bvmul
            ((_ zero_extend 78) a)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               state_1___ucld_171_ghost_mem_var
               (bvmul
                ((_ zero_extend 78) a)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         (select state_1___ucld_171_ghost_mem_var a))
         (_field__rec_h_length
         (select state_1___ucld_171_ghost_mem_var a))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              state_1___ucld_171_ghost_mem_var
              (bvmul
               ((_ zero_extend 78) a)
               #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  (let ((_let_3891_ (not _let_3890_))) _let_3891_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3892_
    (forall ((a1 (_ BitVec 2))) (forall ((a2 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
       (and
       (bvule (_field__rec_lowend
        (select state_1___ucld_164_shadow_mem_var a1)) a2)
       (bvult
        a2
        (_field__rec_highend
        (select state_1___ucld_164_shadow_mem_var a1)))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))))))))
  (let ((_let_3893_ (not _let_3892_))) _let_3893_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3894_
    (forall ((l (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var
             (bvmul
              ((_ zero_extend 157) l)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       ((_ bv0 2) )
       (_field__rec_h_length
       (select state_1___ucld_173_ghost_lmap_var l)))))))
  (let
  ((_let_3895_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       ((_ bv0 2) )
       (_field__rec_h_length
       (select state_1___ucld_171_ghost_mem_var a)))))))
  (let ((_let_3896_ (and _let_3895_ _let_3894_))) (let
  ((_let_3897_ (not _let_3896_))) _let_3897_)))))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3898_
    (forall ((a (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        (select state_1___ucld_171_ghost_mem_var a))
        (_field__rec_h_offset
        (select state_1___ucld_171_ghost_mem_var a))))))))
  (let ((_let_3899_ (not _let_3898_))) _let_3899_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3900_
    (forall ((a (_ BitVec 2)))
     (=
      ((_ extract 0 0)
       (bvlshr
        state_1___ucld_157_alloc_map_var
        (bvmul ((_ zero_extend 2) a) #b0001)))
      (_field__rec_alloc
       ((_ extract 6 0)
        (bvlshr
         state_1___ucld_164_shadow_mem_var
         (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111))))))))
  (let ((_let_3901_ (not _let_3900_))) _let_3901_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3902_
    (forall ((a1 (_ BitVec 2))) (forall ((a2 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
      (or
      (and
       (bvult
        (_field__rec_lowend
        (select state_1___ucld_164_shadow_mem_var a1))
        (_field__rec_highend
        (select state_1___ucld_164_shadow_mem_var a1)))
       (and
       (bvult
        (_field__rec_lowend
        (select state_1___ucld_164_shadow_mem_var a2))
        (_field__rec_highend
        (select state_1___ucld_164_shadow_mem_var a2)))
       (and
       (not
        (and
         (bvule (_field__rec_lowend
          (select state_1___ucld_164_shadow_mem_var a2)) (_field__rec_lowend
          (select state_1___ucld_164_shadow_mem_var a1)))
         (bvult
          (_field__rec_lowend
          (select state_1___ucld_164_shadow_mem_var a1))
          (_field__rec_highend
          (select state_1___ucld_164_shadow_mem_var a2)))))
       (not
        (and
         (bvule (_field__rec_lowend
          (select state_1___ucld_164_shadow_mem_var a1)) (_field__rec_lowend
          (select state_1___ucld_164_shadow_mem_var a2)))
         (bvult
          (_field__rec_lowend
          (select state_1___ucld_164_shadow_mem_var a2))
          (_field__rec_highend
          (select state_1___ucld_164_shadow_mem_var a1))))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111)))))
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a1) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var
           (bvmul ((_ zero_extend 26) a2) #b0000000000000000000000000111))))))))))))
  (let ((_let_3903_ (not _let_3902_))) _let_3903_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3904_
    (forall ((a (_ BitVec 2)))
     (or
      (not
       ((_ extract 0 0)
        (bvlshr
         state_1___ucld_157_alloc_map_var
         (bvmul ((_ zero_extend 2) a) #b0001))))
      (or
      (=
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (_field__rec_ca_nonce_used
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
      (and
       (or
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var
             (bvmul
              ((_ zero_extend 78) a)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR))))
       (not
        (=
         ((_ extract 1 0)
          (_field__rec_enc_state_d
          ((_ extract 19 0)
           (bvlshr
            state_1___ucld_171_ghost_mem_var
            (bvmul
             ((_ zero_extend 78) a)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         #b11))))))))
  (let ((_let_3905_ (not _let_3904_))) _let_3905_)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3906_
    (forall ((a (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111)))))
      (=
       (const___ucld_153_slot_to_nonce_c3 (_field__rec_lowend
        (select state_1___ucld_164_shadow_mem_var a)) (_field__rec_highend
        (select state_1___ucld_164_shadow_mem_var a)))
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_171_ghost_mem_var
          (bvmul
           ((_ zero_extend 78) a)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  (let ((_let_3907_ (not _let_3906_))) _let_3907_)))
(check-sat)
(pop 1)
(pop 1)