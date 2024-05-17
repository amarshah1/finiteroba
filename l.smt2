(set-logic ALL)
(define-fun
   _make__type_record_1_
     ((_field__rec_alloc_var Bool) (_field__rec_lowend_var (_ BitVec 2))
      (_field__rec_highend_var (_ BitVec 2)) (_field__rec_Boolrue_var Bool))
     (_ BitVec 7)
     (concat
      (concat
       (concat
        (concat #b0 (ite _field__rec_Boolrue_var #b1 #b0))
        _field__rec_highend_var)
       _field__rec_lowend_var)
      (ite _field__rec_alloc_var
      #b1
      #b0)))
(declare-fun _field__rec_alloc_non_bv ((_ BitVec 7)) (_ BitVec 1))
(declare-fun _field__rec_lowend_non_bv ((_ BitVec 7)) (_ BitVec 2))
(declare-fun _field__rec_highend_non_bv ((_ BitVec 7)) (_ BitVec 2))
(declare-fun _field__rec_Boolrue_non_bv ((_ BitVec 7)) (_ BitVec 1))
(define-fun
   _field__rec_alloc ((_type_record_1__var (_ BitVec 7))) Bool
     (= #b1
      (ite (= ((_ extract 6 6) _type_record_1__var) #b0)
       ((_ extract 0 0) _type_record_1__var) (_field__rec_alloc_non_bv
       _type_record_1__var))))
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
   _field__rec_Boolrue ((_type_record_1__var (_ BitVec 7))) Bool
     (= #b1
      (ite (= ((_ extract 6 6) _type_record_1__var) #b0)
       ((_ extract 5 5) _type_record_1__var) (_field__rec_Boolrue_non_bv
       _type_record_1__var))))
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
      (_field__rec_ca_nonce_used_var Bool) (_field__rec_ca_Boolrue_var Bool))
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
               (concat #b0 (ite _field__rec_ca_Boolrue_var #b1 #b0))
               (ite _field__rec_ca_nonce_used_var
               #b1
               #b0))
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
   _field__rec_ca_nonce_used ((_type_record_2__var (_ BitVec 20))) Bool
     (= #b1
      (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
       ((_ extract 17 17) _type_record_2__var)
       (_field__rec_ca_nonce_used_non_bv _type_record_2__var))))
(define-fun
   _field__rec_ca_Boolrue ((_type_record_2__var (_ BitVec 20))) Bool
     (= #b1
      (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
       ((_ extract 18 18) _type_record_2__var) (_field__rec_ca_Boolrue_non_bv
       _type_record_2__var))))
(define-fun
   is-_make__type_record_2_ ((_type_record_2__var (_ BitVec 20))) Bool
     (= ((_ extract 19 19) _type_record_2__var) #b0))
(define-fun
   _make__type_record_6_
     ((_field__rec_valid_var Bool) (_field__rec_data_g_var (_ BitVec 20)))
     (_ BitVec 22)
     (concat
      (concat #b0 _field__rec_data_g_var)
      (ite _field__rec_valid_var
      #b1
      #b0)))
(declare-fun _field__rec_valid_non_bv ((_ BitVec 22)) (_ BitVec 1))
(declare-fun _field__rec_data_g_non_bv ((_ BitVec 22)) (_ BitVec 20))
(define-fun
   _field__rec_valid ((_type_record_6__var (_ BitVec 22))) Bool
     (= #b1
      (ite (= ((_ extract 21 21) _type_record_6__var) #b0)
       ((_ extract 0 0) _type_record_6__var) (_field__rec_valid_non_bv
       _type_record_6__var))))
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
     ((_field__rec_valid_var Bool) (_field__rec_allocg_var (_ BitVec 20))
      (_field__rec_newgmem_var (_ BitVec 80))
      (_field__rec_newamap_var (_ BitVec 4)))
     (_ BitVec 106)
     (concat
      (concat
       (concat (concat #b0 _field__rec_newamap_var) _field__rec_newgmem_var)
       _field__rec_allocg_var)
      (ite _field__rec_valid_var
      #b1
      #b0)))
(declare-fun _field__rec_valid_non_bv ((_ BitVec 106)) (_ BitVec 1))
(declare-fun _field__rec_allocg_non_bv ((_ BitVec 106)) (_ BitVec 20))
(declare-fun _field__rec_newgmem_non_bv ((_ BitVec 106)) (_ BitVec 80))
(declare-fun _field__rec_newamap_non_bv ((_ BitVec 106)) (_ BitVec 4))
(define-fun
   _field__rec_valid ((_type_record_8__var (_ BitVec 106))) Bool
     (= #b1
      (ite (= ((_ extract 105 105) _type_record_8__var) #b0)
       ((_ extract 0 0) _type_record_8__var) (_field__rec_valid_non_bv
       _type_record_8__var))))
(define-fun
   _field__rec_allocg ((_type_record_8__var (_ BitVec 106))) (_ BitVec 20)
     (ite (= ((_ extract 105 105) _type_record_8__var) #b0)
      ((_ extract 20 1) _type_record_8__var) (_field__rec_allocg_non_bv
      _type_record_8__var)))
(define-fun
   _field__rec_newgmem ((_type_record_8__var (_ BitVec 106))) (_ BitVec 80)
     (ite (= ((_ extract 105 105) _type_record_8__var) #b0)
      ((_ extract 100 21) _type_record_8__var) (_field__rec_newgmem_non_bv
      _type_record_8__var)))
(define-fun
   _field__rec_newamap ((_type_record_8__var (_ BitVec 106))) (_ BitVec 4)
     (ite (= ((_ extract 105 105) _type_record_8__var) #b0)
      ((_ extract 104 101) _type_record_8__var) (_field__rec_newamap_non_bv
      _type_record_8__var)))
(define-fun
   is-_make__type_record_8_ ((_type_record_8__var (_ BitVec 106))) Bool
     (= ((_ extract 105 105) _type_record_8__var) #b0))
(push 1)
(declare-fun i30 () (_ BitVec 2))
(declare-fun const___ucld_153_slot_to_nonce_c31 ((_ BitVec 2) (_ BitVec 2))
 Bool)
(declare-fun i22 () (_ BitVec 2))
(declare-fun i13 () (_ BitVec 2))
(declare-fun i44 () (_ BitVec 2))
(assert
 (let
  ((_let_9_5
    (forall
     ((i16 (_ BitVec 2)) (i27 (_ BitVec 2)) (i38 (_ BitVec 2))
      (i49 (_ BitVec 2)))
     (=>
      (and (bvult i16 i27) (and (bvult i38 i49) (and
       (not (and (bvule i38 i16) (bvult i16 i49)))
       (not (and (bvule i16 i38) (bvult i38 i27))))))
      (= (const___ucld_153_slot_to_nonce_c31 i16 i27)
       (const___ucld_153_slot_to_nonce_c31 i38 i49))))))
  _let_9_5))
(declare-fun initial_3___ucld_157_alloc_map_var10 () (_ BitVec 4))
(declare-fun a11 () (_ BitVec 2))
(declare-fun initial_12___ucld_164_shadow_mem_var12 () (_ BitVec 28))
(assert
 (let
  ((_let_10_13
    (forall ((a14 (_ BitVec 2)))
     (and
      (not
       (=
        ((_ extract 0 0)
         (bvlshr
          initial_3___ucld_157_alloc_map_var10
          (bvmul ((_ zero_extend 2) a14) #b0001)))
        #b1))
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a14) #b0000000000000000000000000111)))))))))
  _let_10_13))
(declare-fun initial_21___ucld_173_ghost_lmap_var15 () (_ BitVec 160))
(declare-fun a16 () (_ BitVec 3))
(assert
 (let
  ((_let_11_17
    (forall ((a18 (_ BitVec 3)))
     (and
      (or
       (and
        (=
         ((_ extract 0 0)
          (_field__rec_vtype
          ((_ extract 19 0)
           (bvlshr
            initial_21___ucld_173_ghost_lmap_var15
            (bvmul
             ((_ zero_extend 157) a18)
             #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         ((_ extract 0 0) RAW)))
       (and
        (=
         ((_ extract 0 0)
          (_field__rec_vtype
          ((_ extract 19 0)
           (bvlshr
            initial_21___ucld_173_ghost_lmap_var15
            (bvmul
             ((_ zero_extend 157) a18)
             #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         ((_ extract 0 0) RAW))))))))
  _let_11_17))
(declare-fun initial_8___ucld_171_ghost_mem_var19 () (_ BitVec 80))
(assert
 (let
  ((_let_12_20
    (forall ((a21 (_ BitVec 2)))
     (and
      (or
       (and
        (=
         ((_ extract 0 0)
          (_field__rec_vtype
          ((_ extract 19 0)
           (bvlshr
            initial_8___ucld_171_ghost_mem_var19
            (bvmul
             ((_ zero_extend 78) a21)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         ((_ extract 0 0) RAW)))
       (and
        (=
         ((_ extract 0 0)
          (_field__rec_vtype
          ((_ extract 19 0)
           (bvlshr
            initial_8___ucld_171_ghost_mem_var19
            (bvmul
             ((_ zero_extend 78) a21)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         ((_ extract 0 0) RAW))))))))
  _let_12_20))
(push 1)
(declare-fun l22 () (_ BitVec 3))
(assert
 (let
  ((_let_13_23
    (forall ((l24 (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var15
             (bvmul
              ((_ zero_extend 157) l24)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var15
             (bvmul
              ((_ zero_extend 157) l24)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_21___ucld_173_ghost_lmap_var15
               (bvmul
                ((_ zero_extend 157) l24)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_21___ucld_173_ghost_lmap_var15
           (bvmul
            ((_ zero_extend 157) l24)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_21___ucld_173_ghost_lmap_var15
               (bvmul
                ((_ zero_extend 157) l24)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_21___ucld_173_ghost_lmap_var15
           (bvmul
            ((_ zero_extend 157) l24)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
         (_field__rec_h_length
         ((_ extract 19 0)
          (bvlshr
           initial_21___ucld_173_ghost_lmap_var15
           (bvmul
            ((_ zero_extend 157) l24)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              initial_21___ucld_173_ghost_lmap_var15
              (bvmul
               ((_ zero_extend 157) l24)
               #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  (let ((_let_14_25 (not _let_13_23))) _let_14_25)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_15_26
    (forall ((a27 (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var15
             (bvmul
              ((_ zero_extend 157) a27)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var15
             (bvmul
              ((_ zero_extend 157) a27)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          initial_21___ucld_173_ghost_lmap_var15
          (bvmul
           ((_ zero_extend 157) a27)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        ((_ extract 19 0)
         (bvlshr
          initial_21___ucld_173_ghost_lmap_var15
          (bvmul
           ((_ zero_extend 157) a27)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
        (_field__rec_h_offset
        ((_ extract 19 0)
         (bvlshr
          initial_21___ucld_173_ghost_lmap_var15
          (bvmul
           ((_ zero_extend 157) a27)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))))))))
  (let ((_let_16_28 (not _let_15_26))) _let_16_28)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_17_29
    (forall ((a30 (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a30) #b0000000000000000000000000111)))))
      (and
       (bvule (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a30) #b0000000000000000000000000111))))
        a30)
       (bvult
        a30
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a30) #b0000000000000000000000000111))))))))))
  (let ((_let_18_31 (not _let_17_29))) _let_18_31)))
(check-sat)
(pop 1)
(push 1)
(declare-fun initial_19___ucld_160_observable_var32 () (_ BitVec 22))
(assert
 (let
  ((_let_19_33 (_field__rec_data_g initial_19___ucld_160_observable_var32)))
  (let ((_let_20_34 (_make__type_record_6_ false _let_19_33))) (let
  ((_let_21_35 (_field__rec_data_g _let_20_34))) (let
  ((_let_22_36 (_field__rec_enc_state_d _let_21_35))) (let
  ((_let_23_37 (= _let_22_36 GAR))) (let ((_let_24_38 (= _let_22_36 ENC)))
  (let ((_let_25_39 (or _let_24_38 _let_23_37))) (let
  ((_let_26_40 (_field__rec_valid _let_20_34))) (let
  ((_let_27_41 (not _let_26_40))) (let
  ((_let_28_42 (or _let_27_41 _let_25_39))) (let
  ((_let_29_43 (=> false _let_28_42))) (let ((_let_30_44 (not _let_29_43)))
  _let_30_44)))))))))))))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_31_45
    (forall ((a46 (_ BitVec 2)))
     (=>
      (and
       (=
        ((_ extract 0 0)
         (bvlshr
          initial_3___ucld_157_alloc_map_var10
          (bvmul ((_ zero_extend 2) a46) #b0001)))
        #b1)
       (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var19
             (bvmul
              ((_ zero_extend 78) a46)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var19
             (bvmul
              ((_ zero_extend 78) a46)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_8___ucld_171_ghost_mem_var19
               (bvmul
                ((_ zero_extend 78) a46)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_8___ucld_171_ghost_mem_var19
           (bvmul
            ((_ zero_extend 78) a46)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_8___ucld_171_ghost_mem_var19
               (bvmul
                ((_ zero_extend 78) a46)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_8___ucld_171_ghost_mem_var19
           (bvmul
            ((_ zero_extend 78) a46)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
         (_field__rec_h_length
         ((_ extract 19 0)
          (bvlshr
           initial_8___ucld_171_ghost_mem_var19
           (bvmul
            ((_ zero_extend 78) a46)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              initial_8___ucld_171_ghost_mem_var19
              (bvmul
               ((_ zero_extend 78) a46)
               #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  (let ((_let_32_47 (not _let_31_45))) _let_32_47)))
(check-sat)
(pop 1)
(push 1)
(declare-fun a148 () (_ BitVec 2))
(declare-fun a249 () (_ BitVec 2))
(assert
 (let
  ((_let_33_50
    (forall ((a151 (_ BitVec 2))) (forall ((a252 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a151) #b0000000000000000000000000111))))
       (and
       (bvule (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a151) #b0000000000000000000000000111))))
        a252)
       (bvult
        a252
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a151) #b0000000000000000000000000111)))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul ((_ zero_extend 26) a151) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul ((_ zero_extend 26) a252) #b0000000000000000000000000111)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul ((_ zero_extend 26) a151) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul ((_ zero_extend 26) a252) #b0000000000000000000000000111)))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a252) #b0000000000000000000000000111)))))))))))
  (let ((_let_34_53 (not _let_33_50))) _let_34_53)))
(check-sat)
(pop 1)
(push 1)
(declare-fun l54 () (_ BitVec 3))
(assert
 (let
  ((_let_35_55
    (forall ((l56 (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var15
             (bvmul
              ((_ zero_extend 157) l56)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_21___ucld_173_ghost_lmap_var15
             (bvmul
              ((_ zero_extend 157) l56)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       (_ bv0 2 )
       (_field__rec_h_length
       ((_ extract 19 0)
        (bvlshr
         initial_21___ucld_173_ghost_lmap_var15
         (bvmul
          ((_ zero_extend 157) l56)
          #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  (let
  ((_let_36_57
    (forall ((a58 (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var19
             (bvmul
              ((_ zero_extend 78) a58)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var19
             (bvmul
              ((_ zero_extend 78) a58)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       (_ bv0 2 )
       (_field__rec_h_length
       ((_ extract 19 0)
        (bvlshr
         initial_8___ucld_171_ghost_mem_var19
         (bvmul
          ((_ zero_extend 78) a58)
          #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  (let ((_let_37_59 (and _let_36_57 _let_35_55))) (let
  ((_let_38_60 (not _let_37_59))) _let_38_60)))))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_39_61
    (forall ((a62 (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var19
             (bvmul
              ((_ zero_extend 78) a62)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var19
             (bvmul
              ((_ zero_extend 78) a62)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          initial_8___ucld_171_ghost_mem_var19
          (bvmul
           ((_ zero_extend 78) a62)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        ((_ extract 19 0)
         (bvlshr
          initial_8___ucld_171_ghost_mem_var19
          (bvmul
           ((_ zero_extend 78) a62)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
        (_field__rec_h_offset
        ((_ extract 19 0)
         (bvlshr
          initial_8___ucld_171_ghost_mem_var19
          (bvmul
           ((_ zero_extend 78) a62)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))))))))
  (let ((_let_40_63 (not _let_39_61))) _let_40_63)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_41_64
    (forall ((a65 (_ BitVec 2)))
     (=
      (=
       ((_ extract 0 0)
        (bvlshr
         initial_3___ucld_157_alloc_map_var10
         (bvmul ((_ zero_extend 2) a65) #b0001)))
       #b1)
      (_field__rec_alloc
       ((_ extract 6 0)
        (bvlshr
         initial_12___ucld_164_shadow_mem_var12
         (bvmul ((_ zero_extend 26) a65) #b0000000000000000000000000111))))))))
  (let ((_let_42_66 (not _let_41_64))) _let_42_66)))
(check-sat)
(pop 1)
(push 1)
(declare-fun a167 () (_ BitVec 2))
(declare-fun a268 () (_ BitVec 2))
(assert
 (let
  ((_let_43_69
    (forall ((a170 (_ BitVec 2))) (forall ((a271 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a170) #b0000000000000000000000000111))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a271) #b0000000000000000000000000111)))))
      (or
      (and
       (bvult
        (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a170) #b0000000000000000000000000111))))
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a170) #b0000000000000000000000000111)))))
       (and
       (bvult
        (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a271) #b0000000000000000000000000111))))
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a271) #b0000000000000000000000000111)))))
       (and
       (not
        (and
         (bvule (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_12___ucld_164_shadow_mem_var12
            (bvmul ((_ zero_extend 26) a271) #b0000000000000000000000000111))))
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_12___ucld_164_shadow_mem_var12
            (bvmul ((_ zero_extend 26) a170) #b0000000000000000000000000111)))))
         (bvult
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_12___ucld_164_shadow_mem_var12
            (bvmul ((_ zero_extend 26) a170) #b0000000000000000000000000111))))
          (_field__rec_highend
          ((_ extract 6 0)
           (bvlshr
            initial_12___ucld_164_shadow_mem_var12
            (bvmul ((_ zero_extend 26) a271) #b0000000000000000000000000111)))))))
       (not
        (and
         (bvule (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_12___ucld_164_shadow_mem_var12
            (bvmul ((_ zero_extend 26) a170) #b0000000000000000000000000111))))
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_12___ucld_164_shadow_mem_var12
            (bvmul ((_ zero_extend 26) a271) #b0000000000000000000000000111)))))
         (bvult
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_12___ucld_164_shadow_mem_var12
            (bvmul ((_ zero_extend 26) a271) #b0000000000000000000000000111))))
          (_field__rec_highend
          ((_ extract 6 0)
           (bvlshr
            initial_12___ucld_164_shadow_mem_var12
            (bvmul ((_ zero_extend 26) a170) #b0000000000000000000000000111))))))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul ((_ zero_extend 26) a170) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul ((_ zero_extend 26) a271) #b0000000000000000000000000111)))))
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul ((_ zero_extend 26) a170) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_12___ucld_164_shadow_mem_var12
           (bvmul ((_ zero_extend 26) a271) #b0000000000000000000000000111))))))))))))
  (let ((_let_44_72 (not _let_43_69))) _let_44_72)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_45_73
    (forall ((a74 (_ BitVec 2)))
     (or
      (not
       (=
        ((_ extract 0 0)
         (bvlshr
          initial_3___ucld_157_alloc_map_var10
          (bvmul ((_ zero_extend 2) a74) #b0001)))
        #b1))
      (or
      (=
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          initial_8___ucld_171_ghost_mem_var19
          (bvmul
           ((_ zero_extend 78) a74)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (_field__rec_ca_nonce_used
        ((_ extract 19 0)
         (bvlshr
          initial_8___ucld_171_ghost_mem_var19
          (bvmul
           ((_ zero_extend 78) a74)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
      (and
       (or
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var19
             (bvmul
              ((_ zero_extend 78) a74)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var19
             (bvmul
              ((_ zero_extend 78) a74)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_8___ucld_171_ghost_mem_var19
             (bvmul
              ((_ zero_extend 78) a74)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR))))
       (not
        (=
         ((_ extract 1 0)
          (_field__rec_enc_state_d
          ((_ extract 19 0)
           (bvlshr
            initial_8___ucld_171_ghost_mem_var19
            (bvmul
             ((_ zero_extend 78) a74)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         #b11))))))))
  (let ((_let_46_75 (not _let_45_73))) _let_46_75)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_47_76
    (forall ((a77 (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a77) #b0000000000000000000000000111)))))
      (=
       (const___ucld_153_slot_to_nonce_c31 (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a77) #b0000000000000000000000000111))))
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var12
          (bvmul ((_ zero_extend 26) a77) #b0000000000000000000000000111)))))
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          initial_8___ucld_171_ghost_mem_var19
          (bvmul
           ((_ zero_extend 78) a77)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  (let ((_let_48_78 (not _let_47_76))) _let_48_78)))
(check-sat)
(pop 1)
(push 1)
(pop 1)
(push 1)
(declare-fun const___ucld_147_ghost_to_nonce_c379 ((_ BitVec 20)) Bool)
(declare-fun a280 () (_ BitVec 2))
(declare-fun const___ucld_151_ghost_to_addr_value_c381 ((_ BitVec 20))
 (_ BitVec 2))
(declare-fun initial_50_v82 () Bool)
(declare-fun initial_57___ucld_162_l2_var83 () (_ BitVec 3))
(declare-fun havoc_136___ucld_37_ret_ghost_addr_out84 () (_ BitVec 20))
(declare-fun initial_51___ucld_157_alloc_map_var85 () (_ BitVec 4))
(declare-fun a186 () (_ BitVec 2))
(declare-fun initial_69___ucld_173_ghost_lmap_var87 () (_ BitVec 160))
(declare-fun initial_54___ucld_167_action_var88 () (_ BitVec 3))
(assert
 (let
  ((_let_49_89
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_50_90 (_field__rec_ca_nonce_used _let_49_89))) (let
  ((_let_51_91 (_field__rec_ca_Boolrue _let_49_89))) (let
  ((_let_52_92 (_field__rec_enc_state_d _let_49_89))) (let
  ((_let_53_93 (_field__rec_h_length _let_49_89))) (let
  ((_let_54_94 (_field__rec_h_offset _let_49_89))) (let
  ((_let_55_95 (_field__rec_h_base _let_49_89))) (let
  ((_let_56_96 (_field__rec_vtype _let_49_89))) (let
  ((_let_57_97 (_field__rec_value _let_49_89))) (let
  ((_let_58_98 (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_59_99 (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_60_100
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_61_101
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_62_102
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_63_103 (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_64_104
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_65_105 (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_66_106
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_67_107
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_68_108
    (_make__type_record_2_ _let_57_97 _let_58_98 _let_59_99 _let_60_100
     _let_61_101 _let_62_102 _let_63_103 _let_64_104 _let_65_105 _let_66_106
     _let_67_107)))
  (let ((_let_69_109 (_field__rec_value _let_68_108))) (let
  ((_let_70_110 (_field__rec_h_base _let_68_108))) (let
  ((_let_71_111 (_field__rec_h_offset _let_68_108))) (let
  ((_let_72_112 (_field__rec_h_length _let_68_108))) (let
  ((_let_73_113 (_field__rec_enc_state_p _let_68_108))) (let
  ((_let_74_114 (_field__rec_key_p _let_68_108))) (let
  ((_let_75_115 (_field__rec_enc_state_d _let_68_108))) (let
  ((_let_76_116 (_field__rec_key_d _let_68_108))) (let
  ((_let_77_117 (_field__rec_ca_nonce_used _let_68_108))) (let
  ((_let_78_118 (_field__rec_ca_Boolrue _let_68_108))) (let
  ((_let_79_119
    (_make__type_record_2_ _let_69_109 _let_56_96 _let_70_110 _let_71_111
     _let_72_112 _let_73_113 _let_74_114 _let_75_115 _let_76_116 _let_77_117
     _let_78_118)))
  (let ((_let_80_120 (_field__rec_value _let_79_119))) (let
  ((_let_81_121 (_field__rec_vtype _let_79_119))) (let
  ((_let_82_122 (_field__rec_h_offset _let_79_119))) (let
  ((_let_83_123 (_field__rec_h_length _let_79_119))) (let
  ((_let_84_124 (_field__rec_enc_state_p _let_79_119))) (let
  ((_let_85_125 (_field__rec_key_p _let_79_119))) (let
  ((_let_86_126 (_field__rec_enc_state_d _let_79_119))) (let
  ((_let_87_127 (_field__rec_key_d _let_79_119))) (let
  ((_let_88_128 (_field__rec_ca_nonce_used _let_79_119))) (let
  ((_let_89_129 (_field__rec_ca_Boolrue _let_79_119))) (let
  ((_let_90_130
    (_make__type_record_2_ _let_80_120 _let_81_121 _let_55_95 _let_82_122
     _let_83_123 _let_84_124 _let_85_125 _let_86_126 _let_87_127 _let_88_128
     _let_89_129)))
  (let ((_let_91_131 (_field__rec_value _let_90_130))) (let
  ((_let_92_132 (_field__rec_vtype _let_90_130))) (let
  ((_let_93_133 (_field__rec_h_base _let_90_130))) (let
  ((_let_94_134 (_field__rec_h_length _let_90_130))) (let
  ((_let_95_135 (_field__rec_enc_state_p _let_90_130))) (let
  ((_let_96_136 (_field__rec_key_p _let_90_130))) (let
  ((_let_97_137 (_field__rec_enc_state_d _let_90_130))) (let
  ((_let_98_138 (_field__rec_key_d _let_90_130))) (let
  ((_let_99_139 (_field__rec_ca_nonce_used _let_90_130))) (let
  ((_let_100_140 (_field__rec_ca_Boolrue _let_90_130))) (let
  ((_let_101_141
    (_make__type_record_2_ _let_91_131 _let_92_132 _let_93_133 _let_54_94
     _let_94_134 _let_95_135 _let_96_136 _let_97_137 _let_98_138 _let_99_139
     _let_100_140)))
  (let ((_let_102_142 (_field__rec_value _let_101_141))) (let
  ((_let_103_143 (_field__rec_vtype _let_101_141))) (let
  ((_let_104_144 (_field__rec_h_base _let_101_141))) (let
  ((_let_105_145 (_field__rec_h_offset _let_101_141))) (let
  ((_let_106_146 (_field__rec_enc_state_p _let_101_141))) (let
  ((_let_107_147 (_field__rec_key_p _let_101_141))) (let
  ((_let_108_148 (_field__rec_enc_state_d _let_101_141))) (let
  ((_let_109_149 (_field__rec_key_d _let_101_141))) (let
  ((_let_110_150 (_field__rec_ca_nonce_used _let_101_141))) (let
  ((_let_111_151 (_field__rec_ca_Boolrue _let_101_141))) (let
  ((_let_112_152
    (_make__type_record_2_ _let_102_142 _let_103_143 _let_104_144
     _let_105_145 _let_53_93 _let_106_146 _let_107_147 _let_108_148
     _let_109_149 _let_110_150 _let_111_151)))
  (let ((_let_113_153 (_field__rec_value _let_112_152))) (let
  ((_let_114_154 (_field__rec_vtype _let_112_152))) (let
  ((_let_115_155 (_field__rec_h_base _let_112_152))) (let
  ((_let_116_156 (_field__rec_h_offset _let_112_152))) (let
  ((_let_117_157 (_field__rec_h_length _let_112_152))) (let
  ((_let_118_158 (_field__rec_enc_state_p _let_112_152))) (let
  ((_let_119_159 (_field__rec_key_p _let_112_152))) (let
  ((_let_120_160 (_field__rec_key_d _let_112_152))) (let
  ((_let_121_161 (_field__rec_ca_nonce_used _let_112_152))) (let
  ((_let_122_162 (_field__rec_ca_Boolrue _let_112_152))) (let
  ((_let_123_163
    (_make__type_record_2_ _let_113_153 _let_114_154 _let_115_155
     _let_116_156 _let_117_157 _let_118_158 _let_119_159 _let_52_92
     _let_120_160 _let_121_161 _let_122_162)))
  (let ((_let_124_164 (_field__rec_value _let_123_163))) (let
  ((_let_125_165 (_field__rec_vtype _let_123_163))) (let
  ((_let_126_166 (_field__rec_h_base _let_123_163))) (let
  ((_let_127_167 (_field__rec_h_offset _let_123_163))) (let
  ((_let_128_168 (_field__rec_h_length _let_123_163))) (let
  ((_let_129_169 (_field__rec_key_p _let_123_163))) (let
  ((_let_130_170 (_field__rec_enc_state_d _let_123_163))) (let
  ((_let_131_171 (_field__rec_key_d _let_123_163))) (let
  ((_let_132_172 (_field__rec_ca_nonce_used _let_123_163))) (let
  ((_let_133_173 (_field__rec_ca_Boolrue _let_123_163))) (let
  ((_let_134_174
    (_make__type_record_2_ _let_124_164 _let_125_165 _let_126_166
     _let_127_167 _let_128_168 GAR _let_129_169 _let_130_170 _let_131_171
     _let_132_172 _let_133_173)))
  (let
  ((_let_135_175
    (_make__type_record_2_ _let_124_164 _let_125_165 _let_126_166
     _let_127_167 _let_128_168 PLN _let_129_169 _let_130_170 _let_131_171
     _let_132_172 _let_133_173)))
  (let ((_let_136_176 (_field__rec_key_p _let_49_89))) (let
  ((_let_137_177 (= _let_136_176 ViKey))) (let
  ((_let_138_178 (ite _let_137_177 _let_135_175 _let_134_174))) (let
  ((_let_139_179 (_field__rec_enc_state_p _let_49_89))) (let
  ((_let_140_180 (= _let_139_179 ENC))) (let
  ((_let_141_181 (ite _let_140_180 _let_134_174 _let_138_178))) (let
  ((_let_142_182
    (_make__type_record_2_ _let_113_153 _let_114_154 _let_115_155
     _let_116_156 _let_117_157 _let_118_158 _let_119_159 GAR _let_120_160
     _let_121_161 _let_122_162)))
  (let ((_let_143_183 (_field__rec_value _let_142_182))) (let
  ((_let_144_184 (_field__rec_vtype _let_142_182))) (let
  ((_let_145_185 (_field__rec_h_base _let_142_182))) (let
  ((_let_146_186 (_field__rec_h_offset _let_142_182))) (let
  ((_let_147_187 (_field__rec_h_length _let_142_182))) (let
  ((_let_148_188 (_field__rec_key_p _let_142_182))) (let
  ((_let_149_189 (_field__rec_enc_state_d _let_142_182))) (let
  ((_let_150_190 (_field__rec_key_d _let_142_182))) (let
  ((_let_151_191 (_field__rec_ca_nonce_used _let_142_182))) (let
  ((_let_152_192 (_field__rec_ca_Boolrue _let_142_182))) (let
  ((_let_153_193
    (_make__type_record_2_ _let_143_183 _let_144_184 _let_145_185
     _let_146_186 _let_147_187 GAR _let_148_188 _let_149_189 _let_150_190
     _let_151_191 _let_152_192)))
  (let ((_let_154_194 (= _let_52_92 PLN))) (let
  ((_let_155_195 (ite _let_154_194 _let_153_193 _let_141_181))) (let
  ((_let_156_196 (_field__rec_value _let_155_195))) (let
  ((_let_157_197 (_field__rec_vtype _let_155_195))) (let
  ((_let_158_198 (_field__rec_h_base _let_155_195))) (let
  ((_let_159_199 (_field__rec_h_offset _let_155_195))) (let
  ((_let_160_200 (_field__rec_h_length _let_155_195))) (let
  ((_let_161_201 (_field__rec_enc_state_p _let_155_195))) (let
  ((_let_162_202 (_field__rec_enc_state_d _let_155_195))) (let
  ((_let_163_203 (_field__rec_key_d _let_155_195))) (let
  ((_let_164_204 (_field__rec_ca_nonce_used _let_155_195))) (let
  ((_let_165_205 (_field__rec_ca_Boolrue _let_155_195))) (let
  ((_let_166_206
    (_make__type_record_2_ _let_156_196 _let_157_197 _let_158_198
     _let_159_199 _let_160_200 _let_161_201 NoKey _let_162_202 _let_163_203
     _let_164_204 _let_165_205)))
  (let ((_let_167_207 (_field__rec_value _let_166_206))) (let
  ((_let_168_208 (_field__rec_vtype _let_166_206))) (let
  ((_let_169_209 (_field__rec_h_base _let_166_206))) (let
  ((_let_170_210 (_field__rec_h_offset _let_166_206))) (let
  ((_let_171_211 (_field__rec_h_length _let_166_206))) (let
  ((_let_172_212 (_field__rec_enc_state_p _let_166_206))) (let
  ((_let_173_213 (_field__rec_key_p _let_166_206))) (let
  ((_let_174_214 (_field__rec_enc_state_d _let_166_206))) (let
  ((_let_175_215 (_field__rec_ca_nonce_used _let_166_206))) (let
  ((_let_176_216 (_field__rec_ca_Boolrue _let_166_206))) (let
  ((_let_177_217
    (_make__type_record_2_ _let_167_207 _let_168_208 _let_169_209
     _let_170_210 _let_171_211 _let_172_212 _let_173_213 _let_174_214 NoKey
     _let_175_215 _let_176_216)))
  (let ((_let_178_218 (_field__rec_value _let_177_217))) (let
  ((_let_179_219 (_field__rec_vtype _let_177_217))) (let
  ((_let_180_220 (_field__rec_h_base _let_177_217))) (let
  ((_let_181_221 (_field__rec_h_offset _let_177_217))) (let
  ((_let_182_222 (_field__rec_h_length _let_177_217))) (let
  ((_let_183_223 (_field__rec_enc_state_p _let_177_217))) (let
  ((_let_184_224 (_field__rec_key_p _let_177_217))) (let
  ((_let_185_225 (_field__rec_enc_state_d _let_177_217))) (let
  ((_let_186_226 (_field__rec_key_d _let_177_217))) (let
  ((_let_187_227 (_field__rec_ca_nonce_used _let_177_217))) (let
  ((_let_188_228
    (_make__type_record_2_ _let_178_218 _let_179_219 _let_180_220
     _let_181_221 _let_182_222 _let_183_223 _let_184_224 _let_185_225
     _let_186_226 _let_187_227 _let_51_91)))
  (let ((_let_189_229 (_field__rec_value _let_188_228))) (let
  ((_let_190_230 (_field__rec_vtype _let_188_228))) (let
  ((_let_191_231 (_field__rec_h_base _let_188_228))) (let
  ((_let_192_232 (_field__rec_h_offset _let_188_228))) (let
  ((_let_193_233 (_field__rec_h_length _let_188_228))) (let
  ((_let_194_234 (_field__rec_enc_state_p _let_188_228))) (let
  ((_let_195_235 (_field__rec_key_p _let_188_228))) (let
  ((_let_196_236 (_field__rec_enc_state_d _let_188_228))) (let
  ((_let_197_237 (_field__rec_key_d _let_188_228))) (let
  ((_let_198_238 (_field__rec_ca_Boolrue _let_188_228))) (let
  ((_let_199_239
    (_make__type_record_2_ _let_189_229 _let_190_230 _let_191_231
     _let_192_232 _let_193_233 _let_194_234 _let_195_235 _let_196_236
     _let_197_237 _let_50_90 _let_198_238)))
  (let
  ((_let_200_240 (const___ucld_151_ghost_to_addr_value_c381 _let_199_239)))
  (let ((_let_201_241 (_field__rec_value _let_199_239))) (let
  ((_let_202_242 (= _let_201_241 _let_200_240))) (let
  ((_let_203_243 (_field__rec_h_length _let_199_239))) (let
  ((_let_204_244 (_field__rec_h_base _let_199_239))) (let
  ((_let_205_245 (bvadd _let_204_244 _let_203_243))) (let
  ((_let_206_246
    (const___ucld_153_slot_to_nonce_c31 _let_204_244 _let_205_245)))
  (let ((_let_207_247 (const___ucld_147_ghost_to_nonce_c379 _let_199_239)))
  (let ((_let_208_248 (= _let_207_247 _let_206_246))) (let
  ((_let_209_249 (and _let_208_248 _let_202_242))) (let
  ((_let_210_250 (_field__rec_enc_state_d _let_199_239))) (let
  ((_let_211_251 (= _let_210_250 PLN))) (let
  ((_let_212_252 (_field__rec_vtype _let_199_239))) (let
  ((_let_213_253 (= _let_212_252 HAN))) (let
  ((_let_214_254 (and _let_213_253 _let_211_251))) (let
  ((_let_215_255 (=> _let_214_254 _let_209_249))) (let
  ((_let_216_256
    (forall ((a1257 (_ BitVec 2))) (forall ((a2258 (_ BitVec 2)))
     (=> (bvult a1257 a2258)
      (= _let_207_247 (const___ucld_153_slot_to_nonce_c31 a1257 a2258)))))))
  (let ((_let_217_259 (= _let_210_250 PLN))) (let
  ((_let_218_260 (= _let_212_252 HAN))) (let
  ((_let_219_261 (or _let_218_260 _let_217_259))) (let
  ((_let_220_262 (=> _let_219_261 _let_216_256))) (let
  ((_let_221_263 (and _let_220_262 _let_215_255))) (let
  ((_let_222_264
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_223_265
    (=
     ((_ extract 0 0)
      (bvlshr
       initial_51___ucld_157_alloc_map_var85
       (bvmul ((_ zero_extend 2) _let_200_240) #b0001)))
     #b1)))
  (let ((_let_224_266 (not _let_223_265))) (let
  ((_let_225_267 (not _let_224_266))) (let
  ((_let_226_268 (and true _let_225_267))) (let
  ((_let_227_269 (and _let_226_268 _let_222_264))) (let
  ((_let_228_270 (and _let_227_269 initial_50_v82))) (let
  ((_let_229_271 (=> _let_228_270 _let_221_263)))
  _let_229_271))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun state_1___ucld_175_alloc_probe_var272 () (_ BitVec 106))
(declare-fun havoc_193___ucld_34_ret_as273 () (_ BitVec 106))
(declare-fun initial_70___ucld_175_alloc_probe_var274 () (_ BitVec 106))
(assert
 (let
  ((_let_230_275
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_231_276
    (ite _let_230_275 havoc_193___ucld_34_ret_as273
     initial_70___ucld_175_alloc_probe_var274)))
  (let
  ((_let_232_277
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_233_278
    (ite _let_232_277 initial_70___ucld_175_alloc_probe_var274 _let_231_276)))
  (let
  ((_let_234_279
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_235_280
    (ite _let_234_279 initial_70___ucld_175_alloc_probe_var274 _let_233_278)))
  (let
  ((_let_236_281
    (ite initial_50_v82 _let_235_280 initial_70___ucld_175_alloc_probe_var274)))
  (let
  ((_let_237_282
    (and
     (or
      (and
       (= ((_ extract 105 105) state_1___ucld_175_alloc_probe_var272)
        ((_ extract 105 105) _let_236_281))
       (and (and
       (or
        (and
         (= ((_ extract 20 20) state_1___ucld_175_alloc_probe_var272)
          ((_ extract 20 20) _let_236_281))
         (and (and
         (or
          (and
           (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 14 13) _let_236_281)))
          (and
           (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 14 13) _let_236_281)))
          (and
           (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 14 13) _let_236_281))))
         (not
          (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var272) #b11)))
         (and
         (or
          (and
           (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 10 9) _let_236_281)))
          (and
           (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 10 9) _let_236_281)))
          (and
           (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 10 9) _let_236_281))))
         (not
          (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var272) #b11)))
         (and
         (or
          (and
           (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 12 11) _let_236_281)))
          (and
           (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 12 11) _let_236_281)))
          (and
           (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 12 11) _let_236_281))))
         (not
          (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var272) #b11)))
         (and
         (or
          (and
           (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 16 15) _let_236_281)))
          (and
           (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 16 15) _let_236_281)))
          (and
           (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 16 15) _let_236_281))))
         (not
          (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var272) #b11)))
         (and
         (or
          (and
           (= ((_ extract 2 2) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 2 2) _let_236_281)))
          (and
           (= ((_ extract 2 2) state_1___ucld_175_alloc_probe_var272)
            ((_ extract 2 2) _let_236_281))))))))
       (not (= ((_ extract 20 20) state_1___ucld_175_alloc_probe_var272) #b1))))))
     (not (= ((_ extract 105 105) state_1___ucld_175_alloc_probe_var272) #b1)))))
  _let_237_282)))))))))
(declare-fun state_1___ucld_159_src1_probe_var283 () (_ BitVec 2))
(declare-fun initial_53___ucld_159_src1_probe_var284 () (_ BitVec 2))
(assert
 (let
  ((_let_238_285
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_239_286
    (ite _let_238_285 initial_53___ucld_159_src1_probe_var284
     initial_53___ucld_159_src1_probe_var284)))
  (let
  ((_let_240_287
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_241_288
    (ite _let_240_287 initial_53___ucld_159_src1_probe_var284 _let_239_286)))
  (let
  ((_let_242_289
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_243_290
    (ite _let_242_289 initial_53___ucld_159_src1_probe_var284 _let_241_288)))
  (let
  ((_let_244_291
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_245_292
    (ite _let_244_291 initial_53___ucld_159_src1_probe_var284 _let_243_290)))
  (let
  ((_let_246_293
    (ite initial_50_v82 _let_245_292 initial_53___ucld_159_src1_probe_var284)))
  (let ((_let_247_294 (= state_1___ucld_159_src1_probe_var283 _let_246_293)))
  _let_247_294)))))))))))
(declare-fun initial_65___ucld_154_data_probe_var295 () (_ BitVec 2))
(declare-fun initial_63___ucld_161_l1_var296 () (_ BitVec 3))
(declare-fun havoc_177_enc_cell_data297 () (_ BitVec 2))
(declare-fun state_1___ucld_154_data_probe_var298 () (_ BitVec 2))
(declare-fun havoc_243_newdata299 () (_ BitVec 2))
(declare-fun havoc_127_dec_cell_data300 () (_ BitVec 2))
(declare-fun havoc_175___ucld_44_ret_ghost_addr_out301 () (_ BitVec 20))
(assert
 (let
  ((_let_248_302
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_249_303
    (ite _let_248_302 havoc_243_newdata299
     initial_65___ucld_154_data_probe_var295)))
  (let
  ((_let_250_304
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_251_305
    (ite _let_250_304 initial_65___ucld_154_data_probe_var295 _let_249_303)))
  (let
  ((_let_252_306
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_253_307
    (ite _let_252_306 initial_65___ucld_154_data_probe_var295 _let_251_305)))
  (let
  ((_let_254_308
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var296)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_255_309 (_field__rec_ca_nonce_used _let_254_308))) (let
  ((_let_256_310 (_field__rec_ca_Boolrue _let_254_308))) (let
  ((_let_257_311 (_field__rec_enc_state_d _let_254_308))) (let
  ((_let_258_312 (_field__rec_h_length _let_254_308))) (let
  ((_let_259_313 (_field__rec_h_offset _let_254_308))) (let
  ((_let_260_314 (_field__rec_h_base _let_254_308))) (let
  ((_let_261_315 (_field__rec_vtype _let_254_308))) (let
  ((_let_262_316 (_field__rec_value _let_254_308))) (let
  ((_let_263_317
    (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_264_318
    (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_265_319
    (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_266_320
    (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_267_321
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_268_322
    (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_269_323
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_270_324
    (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_271_325
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_272_326
    (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_273_327
    (_make__type_record_2_ _let_262_316 _let_263_317 _let_264_318
     _let_265_319 _let_266_320 _let_267_321 _let_268_322 _let_269_323
     _let_270_324 _let_271_325 _let_272_326)))
  (let ((_let_274_328 (_field__rec_value _let_273_327))) (let
  ((_let_275_329 (_field__rec_h_base _let_273_327))) (let
  ((_let_276_330 (_field__rec_h_offset _let_273_327))) (let
  ((_let_277_331 (_field__rec_h_length _let_273_327))) (let
  ((_let_278_332 (_field__rec_enc_state_p _let_273_327))) (let
  ((_let_279_333 (_field__rec_key_p _let_273_327))) (let
  ((_let_280_334 (_field__rec_enc_state_d _let_273_327))) (let
  ((_let_281_335 (_field__rec_key_d _let_273_327))) (let
  ((_let_282_336 (_field__rec_ca_nonce_used _let_273_327))) (let
  ((_let_283_337 (_field__rec_ca_Boolrue _let_273_327))) (let
  ((_let_284_338
    (_make__type_record_2_ _let_274_328 _let_261_315 _let_275_329
     _let_276_330 _let_277_331 _let_278_332 _let_279_333 _let_280_334
     _let_281_335 _let_282_336 _let_283_337)))
  (let ((_let_285_339 (_field__rec_value _let_284_338))) (let
  ((_let_286_340 (_field__rec_vtype _let_284_338))) (let
  ((_let_287_341 (_field__rec_h_offset _let_284_338))) (let
  ((_let_288_342 (_field__rec_h_length _let_284_338))) (let
  ((_let_289_343 (_field__rec_enc_state_p _let_284_338))) (let
  ((_let_290_344 (_field__rec_key_p _let_284_338))) (let
  ((_let_291_345 (_field__rec_enc_state_d _let_284_338))) (let
  ((_let_292_346 (_field__rec_key_d _let_284_338))) (let
  ((_let_293_347 (_field__rec_ca_nonce_used _let_284_338))) (let
  ((_let_294_348 (_field__rec_ca_Boolrue _let_284_338))) (let
  ((_let_295_349
    (_make__type_record_2_ _let_285_339 _let_286_340 _let_260_314
     _let_287_341 _let_288_342 _let_289_343 _let_290_344 _let_291_345
     _let_292_346 _let_293_347 _let_294_348)))
  (let ((_let_296_350 (_field__rec_value _let_295_349))) (let
  ((_let_297_351 (_field__rec_vtype _let_295_349))) (let
  ((_let_298_352 (_field__rec_h_base _let_295_349))) (let
  ((_let_299_353 (_field__rec_h_length _let_295_349))) (let
  ((_let_300_354 (_field__rec_enc_state_p _let_295_349))) (let
  ((_let_301_355 (_field__rec_key_p _let_295_349))) (let
  ((_let_302_356 (_field__rec_enc_state_d _let_295_349))) (let
  ((_let_303_357 (_field__rec_key_d _let_295_349))) (let
  ((_let_304_358 (_field__rec_ca_nonce_used _let_295_349))) (let
  ((_let_305_359 (_field__rec_ca_Boolrue _let_295_349))) (let
  ((_let_306_360
    (_make__type_record_2_ _let_296_350 _let_297_351 _let_298_352
     _let_259_313 _let_299_353 _let_300_354 _let_301_355 _let_302_356
     _let_303_357 _let_304_358 _let_305_359)))
  (let ((_let_307_361 (_field__rec_value _let_306_360))) (let
  ((_let_308_362 (_field__rec_vtype _let_306_360))) (let
  ((_let_309_363 (_field__rec_h_base _let_306_360))) (let
  ((_let_310_364 (_field__rec_h_offset _let_306_360))) (let
  ((_let_311_365 (_field__rec_enc_state_p _let_306_360))) (let
  ((_let_312_366 (_field__rec_key_p _let_306_360))) (let
  ((_let_313_367 (_field__rec_enc_state_d _let_306_360))) (let
  ((_let_314_368 (_field__rec_key_d _let_306_360))) (let
  ((_let_315_369 (_field__rec_ca_nonce_used _let_306_360))) (let
  ((_let_316_370 (_field__rec_ca_Boolrue _let_306_360))) (let
  ((_let_317_371
    (_make__type_record_2_ _let_307_361 _let_308_362 _let_309_363
     _let_310_364 _let_258_312 _let_311_365 _let_312_366 _let_313_367
     _let_314_368 _let_315_369 _let_316_370)))
  (let ((_let_318_372 (_field__rec_value _let_317_371))) (let
  ((_let_319_373 (_field__rec_vtype _let_317_371))) (let
  ((_let_320_374 (_field__rec_h_base _let_317_371))) (let
  ((_let_321_375 (_field__rec_h_offset _let_317_371))) (let
  ((_let_322_376 (_field__rec_h_length _let_317_371))) (let
  ((_let_323_377 (_field__rec_enc_state_p _let_317_371))) (let
  ((_let_324_378 (_field__rec_key_p _let_317_371))) (let
  ((_let_325_379 (_field__rec_key_d _let_317_371))) (let
  ((_let_326_380 (_field__rec_ca_nonce_used _let_317_371))) (let
  ((_let_327_381 (_field__rec_ca_Boolrue _let_317_371))) (let
  ((_let_328_382
    (_make__type_record_2_ _let_318_372 _let_319_373 _let_320_374
     _let_321_375 _let_322_376 _let_323_377 _let_324_378 _let_257_311
     _let_325_379 _let_326_380 _let_327_381)))
  (let ((_let_329_383 (_field__rec_value _let_328_382))) (let
  ((_let_330_384 (_field__rec_vtype _let_328_382))) (let
  ((_let_331_385 (_field__rec_h_base _let_328_382))) (let
  ((_let_332_386 (_field__rec_h_offset _let_328_382))) (let
  ((_let_333_387 (_field__rec_h_length _let_328_382))) (let
  ((_let_334_388 (_field__rec_key_p _let_328_382))) (let
  ((_let_335_389 (_field__rec_enc_state_d _let_328_382))) (let
  ((_let_336_390 (_field__rec_key_d _let_328_382))) (let
  ((_let_337_391 (_field__rec_ca_nonce_used _let_328_382))) (let
  ((_let_338_392 (_field__rec_ca_Boolrue _let_328_382))) (let
  ((_let_339_393
    (_make__type_record_2_ _let_329_383 _let_330_384 _let_331_385
     _let_332_386 _let_333_387 GAR _let_334_388 _let_335_389 _let_336_390
     _let_337_391 _let_338_392)))
  (let
  ((_let_340_394
    (_make__type_record_2_ _let_329_383 _let_330_384 _let_331_385
     _let_332_386 _let_333_387 PLN _let_334_388 _let_335_389 _let_336_390
     _let_337_391 _let_338_392)))
  (let ((_let_341_395 (_field__rec_key_p _let_254_308))) (let
  ((_let_342_396 (= _let_341_395 ViKey))) (let
  ((_let_343_397 (ite _let_342_396 _let_340_394 _let_339_393))) (let
  ((_let_344_398 (_field__rec_enc_state_p _let_254_308))) (let
  ((_let_345_399 (= _let_344_398 ENC))) (let
  ((_let_346_400 (ite _let_345_399 _let_339_393 _let_343_397))) (let
  ((_let_347_401
    (_make__type_record_2_ _let_318_372 _let_319_373 _let_320_374
     _let_321_375 _let_322_376 _let_323_377 _let_324_378 GAR _let_325_379
     _let_326_380 _let_327_381)))
  (let ((_let_348_402 (_field__rec_value _let_347_401))) (let
  ((_let_349_403 (_field__rec_vtype _let_347_401))) (let
  ((_let_350_404 (_field__rec_h_base _let_347_401))) (let
  ((_let_351_405 (_field__rec_h_offset _let_347_401))) (let
  ((_let_352_406 (_field__rec_h_length _let_347_401))) (let
  ((_let_353_407 (_field__rec_key_p _let_347_401))) (let
  ((_let_354_408 (_field__rec_enc_state_d _let_347_401))) (let
  ((_let_355_409 (_field__rec_key_d _let_347_401))) (let
  ((_let_356_410 (_field__rec_ca_nonce_used _let_347_401))) (let
  ((_let_357_411 (_field__rec_ca_Boolrue _let_347_401))) (let
  ((_let_358_412
    (_make__type_record_2_ _let_348_402 _let_349_403 _let_350_404
     _let_351_405 _let_352_406 GAR _let_353_407 _let_354_408 _let_355_409
     _let_356_410 _let_357_411)))
  (let ((_let_359_413 (= _let_257_311 PLN))) (let
  ((_let_360_414 (ite _let_359_413 _let_358_412 _let_346_400))) (let
  ((_let_361_415 (_field__rec_value _let_360_414))) (let
  ((_let_362_416 (_field__rec_vtype _let_360_414))) (let
  ((_let_363_417 (_field__rec_h_base _let_360_414))) (let
  ((_let_364_418 (_field__rec_h_offset _let_360_414))) (let
  ((_let_365_419 (_field__rec_h_length _let_360_414))) (let
  ((_let_366_420 (_field__rec_enc_state_p _let_360_414))) (let
  ((_let_367_421 (_field__rec_enc_state_d _let_360_414))) (let
  ((_let_368_422 (_field__rec_key_d _let_360_414))) (let
  ((_let_369_423 (_field__rec_ca_nonce_used _let_360_414))) (let
  ((_let_370_424 (_field__rec_ca_Boolrue _let_360_414))) (let
  ((_let_371_425
    (_make__type_record_2_ _let_361_415 _let_362_416 _let_363_417
     _let_364_418 _let_365_419 _let_366_420 NoKey _let_367_421 _let_368_422
     _let_369_423 _let_370_424)))
  (let ((_let_372_426 (_field__rec_value _let_371_425))) (let
  ((_let_373_427 (_field__rec_vtype _let_371_425))) (let
  ((_let_374_428 (_field__rec_h_base _let_371_425))) (let
  ((_let_375_429 (_field__rec_h_offset _let_371_425))) (let
  ((_let_376_430 (_field__rec_h_length _let_371_425))) (let
  ((_let_377_431 (_field__rec_enc_state_p _let_371_425))) (let
  ((_let_378_432 (_field__rec_key_p _let_371_425))) (let
  ((_let_379_433 (_field__rec_enc_state_d _let_371_425))) (let
  ((_let_380_434 (_field__rec_ca_nonce_used _let_371_425))) (let
  ((_let_381_435 (_field__rec_ca_Boolrue _let_371_425))) (let
  ((_let_382_436
    (_make__type_record_2_ _let_372_426 _let_373_427 _let_374_428
     _let_375_429 _let_376_430 _let_377_431 _let_378_432 _let_379_433 NoKey
     _let_380_434 _let_381_435)))
  (let ((_let_383_437 (_field__rec_value _let_382_436))) (let
  ((_let_384_438 (_field__rec_vtype _let_382_436))) (let
  ((_let_385_439 (_field__rec_h_base _let_382_436))) (let
  ((_let_386_440 (_field__rec_h_offset _let_382_436))) (let
  ((_let_387_441 (_field__rec_h_length _let_382_436))) (let
  ((_let_388_442 (_field__rec_enc_state_p _let_382_436))) (let
  ((_let_389_443 (_field__rec_key_p _let_382_436))) (let
  ((_let_390_444 (_field__rec_enc_state_d _let_382_436))) (let
  ((_let_391_445 (_field__rec_key_d _let_382_436))) (let
  ((_let_392_446 (_field__rec_ca_nonce_used _let_382_436))) (let
  ((_let_393_447
    (_make__type_record_2_ _let_383_437 _let_384_438 _let_385_439
     _let_386_440 _let_387_441 _let_388_442 _let_389_443 _let_390_444
     _let_391_445 _let_392_446 _let_256_310)))
  (let ((_let_394_448 (_field__rec_value _let_393_447))) (let
  ((_let_395_449 (_field__rec_vtype _let_393_447))) (let
  ((_let_396_450 (_field__rec_h_base _let_393_447))) (let
  ((_let_397_451 (_field__rec_h_offset _let_393_447))) (let
  ((_let_398_452 (_field__rec_h_length _let_393_447))) (let
  ((_let_399_453 (_field__rec_enc_state_p _let_393_447))) (let
  ((_let_400_454 (_field__rec_key_p _let_393_447))) (let
  ((_let_401_455 (_field__rec_enc_state_d _let_393_447))) (let
  ((_let_402_456 (_field__rec_key_d _let_393_447))) (let
  ((_let_403_457 (_field__rec_ca_Boolrue _let_393_447))) (let
  ((_let_404_458
    (_make__type_record_2_ _let_394_448 _let_395_449 _let_396_450
     _let_397_451 _let_398_452 _let_399_453 _let_400_454 _let_401_455
     _let_402_456 _let_255_309 _let_403_457)))
  (let
  ((_let_405_459 (const___ucld_151_ghost_to_addr_value_c381 _let_404_458)))
  (let
  ((_let_406_460
    (=
     ((_ extract 0 0)
      (bvlshr
       initial_51___ucld_157_alloc_map_var85
       (bvmul ((_ zero_extend 2) _let_405_459) #b0001)))
     #b1)))
  (let
  ((_let_407_461
    (ite _let_406_460 initial_65___ucld_154_data_probe_var295
     havoc_177_enc_cell_data297)))
  (let
  ((_let_408_462
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_409_463 (ite _let_408_462 _let_407_461 _let_253_307))) (let
  ((_let_410_464
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_411_465 (_field__rec_ca_nonce_used _let_410_464))) (let
  ((_let_412_466 (_field__rec_ca_Boolrue _let_410_464))) (let
  ((_let_413_467 (_field__rec_enc_state_d _let_410_464))) (let
  ((_let_414_468 (_field__rec_h_length _let_410_464))) (let
  ((_let_415_469 (_field__rec_h_offset _let_410_464))) (let
  ((_let_416_470 (_field__rec_h_base _let_410_464))) (let
  ((_let_417_471 (_field__rec_vtype _let_410_464))) (let
  ((_let_418_472 (_field__rec_value _let_410_464))) (let
  ((_let_419_473 (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_420_474
    (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_421_475
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_422_476
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_423_477
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_424_478 (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_425_479
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_426_480 (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_427_481
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_428_482
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_429_483
    (_make__type_record_2_ _let_418_472 _let_419_473 _let_420_474
     _let_421_475 _let_422_476 _let_423_477 _let_424_478 _let_425_479
     _let_426_480 _let_427_481 _let_428_482)))
  (let ((_let_430_484 (_field__rec_value _let_429_483))) (let
  ((_let_431_485 (_field__rec_h_base _let_429_483))) (let
  ((_let_432_486 (_field__rec_h_offset _let_429_483))) (let
  ((_let_433_487 (_field__rec_h_length _let_429_483))) (let
  ((_let_434_488 (_field__rec_enc_state_p _let_429_483))) (let
  ((_let_435_489 (_field__rec_key_p _let_429_483))) (let
  ((_let_436_490 (_field__rec_enc_state_d _let_429_483))) (let
  ((_let_437_491 (_field__rec_key_d _let_429_483))) (let
  ((_let_438_492 (_field__rec_ca_nonce_used _let_429_483))) (let
  ((_let_439_493 (_field__rec_ca_Boolrue _let_429_483))) (let
  ((_let_440_494
    (_make__type_record_2_ _let_430_484 _let_417_471 _let_431_485
     _let_432_486 _let_433_487 _let_434_488 _let_435_489 _let_436_490
     _let_437_491 _let_438_492 _let_439_493)))
  (let ((_let_441_495 (_field__rec_value _let_440_494))) (let
  ((_let_442_496 (_field__rec_vtype _let_440_494))) (let
  ((_let_443_497 (_field__rec_h_offset _let_440_494))) (let
  ((_let_444_498 (_field__rec_h_length _let_440_494))) (let
  ((_let_445_499 (_field__rec_enc_state_p _let_440_494))) (let
  ((_let_446_500 (_field__rec_key_p _let_440_494))) (let
  ((_let_447_501 (_field__rec_enc_state_d _let_440_494))) (let
  ((_let_448_502 (_field__rec_key_d _let_440_494))) (let
  ((_let_449_503 (_field__rec_ca_nonce_used _let_440_494))) (let
  ((_let_450_504 (_field__rec_ca_Boolrue _let_440_494))) (let
  ((_let_451_505
    (_make__type_record_2_ _let_441_495 _let_442_496 _let_416_470
     _let_443_497 _let_444_498 _let_445_499 _let_446_500 _let_447_501
     _let_448_502 _let_449_503 _let_450_504)))
  (let ((_let_452_506 (_field__rec_value _let_451_505))) (let
  ((_let_453_507 (_field__rec_vtype _let_451_505))) (let
  ((_let_454_508 (_field__rec_h_base _let_451_505))) (let
  ((_let_455_509 (_field__rec_h_length _let_451_505))) (let
  ((_let_456_510 (_field__rec_enc_state_p _let_451_505))) (let
  ((_let_457_511 (_field__rec_key_p _let_451_505))) (let
  ((_let_458_512 (_field__rec_enc_state_d _let_451_505))) (let
  ((_let_459_513 (_field__rec_key_d _let_451_505))) (let
  ((_let_460_514 (_field__rec_ca_nonce_used _let_451_505))) (let
  ((_let_461_515 (_field__rec_ca_Boolrue _let_451_505))) (let
  ((_let_462_516
    (_make__type_record_2_ _let_452_506 _let_453_507 _let_454_508
     _let_415_469 _let_455_509 _let_456_510 _let_457_511 _let_458_512
     _let_459_513 _let_460_514 _let_461_515)))
  (let ((_let_463_517 (_field__rec_value _let_462_516))) (let
  ((_let_464_518 (_field__rec_vtype _let_462_516))) (let
  ((_let_465_519 (_field__rec_h_base _let_462_516))) (let
  ((_let_466_520 (_field__rec_h_offset _let_462_516))) (let
  ((_let_467_521 (_field__rec_enc_state_p _let_462_516))) (let
  ((_let_468_522 (_field__rec_key_p _let_462_516))) (let
  ((_let_469_523 (_field__rec_enc_state_d _let_462_516))) (let
  ((_let_470_524 (_field__rec_key_d _let_462_516))) (let
  ((_let_471_525 (_field__rec_ca_nonce_used _let_462_516))) (let
  ((_let_472_526 (_field__rec_ca_Boolrue _let_462_516))) (let
  ((_let_473_527
    (_make__type_record_2_ _let_463_517 _let_464_518 _let_465_519
     _let_466_520 _let_414_468 _let_467_521 _let_468_522 _let_469_523
     _let_470_524 _let_471_525 _let_472_526)))
  (let ((_let_474_528 (_field__rec_value _let_473_527))) (let
  ((_let_475_529 (_field__rec_vtype _let_473_527))) (let
  ((_let_476_530 (_field__rec_h_base _let_473_527))) (let
  ((_let_477_531 (_field__rec_h_offset _let_473_527))) (let
  ((_let_478_532 (_field__rec_h_length _let_473_527))) (let
  ((_let_479_533 (_field__rec_enc_state_p _let_473_527))) (let
  ((_let_480_534 (_field__rec_key_p _let_473_527))) (let
  ((_let_481_535 (_field__rec_key_d _let_473_527))) (let
  ((_let_482_536 (_field__rec_ca_nonce_used _let_473_527))) (let
  ((_let_483_537 (_field__rec_ca_Boolrue _let_473_527))) (let
  ((_let_484_538
    (_make__type_record_2_ _let_474_528 _let_475_529 _let_476_530
     _let_477_531 _let_478_532 _let_479_533 _let_480_534 _let_413_467
     _let_481_535 _let_482_536 _let_483_537)))
  (let ((_let_485_539 (_field__rec_value _let_484_538))) (let
  ((_let_486_540 (_field__rec_vtype _let_484_538))) (let
  ((_let_487_541 (_field__rec_h_base _let_484_538))) (let
  ((_let_488_542 (_field__rec_h_offset _let_484_538))) (let
  ((_let_489_543 (_field__rec_h_length _let_484_538))) (let
  ((_let_490_544 (_field__rec_key_p _let_484_538))) (let
  ((_let_491_545 (_field__rec_enc_state_d _let_484_538))) (let
  ((_let_492_546 (_field__rec_key_d _let_484_538))) (let
  ((_let_493_547 (_field__rec_ca_nonce_used _let_484_538))) (let
  ((_let_494_548 (_field__rec_ca_Boolrue _let_484_538))) (let
  ((_let_495_549
    (_make__type_record_2_ _let_485_539 _let_486_540 _let_487_541
     _let_488_542 _let_489_543 GAR _let_490_544 _let_491_545 _let_492_546
     _let_493_547 _let_494_548)))
  (let
  ((_let_496_550
    (_make__type_record_2_ _let_485_539 _let_486_540 _let_487_541
     _let_488_542 _let_489_543 PLN _let_490_544 _let_491_545 _let_492_546
     _let_493_547 _let_494_548)))
  (let ((_let_497_551 (_field__rec_key_p _let_410_464))) (let
  ((_let_498_552 (= _let_497_551 ViKey))) (let
  ((_let_499_553 (ite _let_498_552 _let_496_550 _let_495_549))) (let
  ((_let_500_554 (_field__rec_enc_state_p _let_410_464))) (let
  ((_let_501_555 (= _let_500_554 ENC))) (let
  ((_let_502_556 (ite _let_501_555 _let_495_549 _let_499_553))) (let
  ((_let_503_557
    (_make__type_record_2_ _let_474_528 _let_475_529 _let_476_530
     _let_477_531 _let_478_532 _let_479_533 _let_480_534 GAR _let_481_535
     _let_482_536 _let_483_537)))
  (let ((_let_504_558 (_field__rec_value _let_503_557))) (let
  ((_let_505_559 (_field__rec_vtype _let_503_557))) (let
  ((_let_506_560 (_field__rec_h_base _let_503_557))) (let
  ((_let_507_561 (_field__rec_h_offset _let_503_557))) (let
  ((_let_508_562 (_field__rec_h_length _let_503_557))) (let
  ((_let_509_563 (_field__rec_key_p _let_503_557))) (let
  ((_let_510_564 (_field__rec_enc_state_d _let_503_557))) (let
  ((_let_511_565 (_field__rec_key_d _let_503_557))) (let
  ((_let_512_566 (_field__rec_ca_nonce_used _let_503_557))) (let
  ((_let_513_567 (_field__rec_ca_Boolrue _let_503_557))) (let
  ((_let_514_568
    (_make__type_record_2_ _let_504_558 _let_505_559 _let_506_560
     _let_507_561 _let_508_562 GAR _let_509_563 _let_510_564 _let_511_565
     _let_512_566 _let_513_567)))
  (let ((_let_515_569 (= _let_413_467 PLN))) (let
  ((_let_516_570 (ite _let_515_569 _let_514_568 _let_502_556))) (let
  ((_let_517_571 (_field__rec_value _let_516_570))) (let
  ((_let_518_572 (_field__rec_vtype _let_516_570))) (let
  ((_let_519_573 (_field__rec_h_base _let_516_570))) (let
  ((_let_520_574 (_field__rec_h_offset _let_516_570))) (let
  ((_let_521_575 (_field__rec_h_length _let_516_570))) (let
  ((_let_522_576 (_field__rec_enc_state_p _let_516_570))) (let
  ((_let_523_577 (_field__rec_enc_state_d _let_516_570))) (let
  ((_let_524_578 (_field__rec_key_d _let_516_570))) (let
  ((_let_525_579 (_field__rec_ca_nonce_used _let_516_570))) (let
  ((_let_526_580 (_field__rec_ca_Boolrue _let_516_570))) (let
  ((_let_527_581
    (_make__type_record_2_ _let_517_571 _let_518_572 _let_519_573
     _let_520_574 _let_521_575 _let_522_576 NoKey _let_523_577 _let_524_578
     _let_525_579 _let_526_580)))
  (let ((_let_528_582 (_field__rec_value _let_527_581))) (let
  ((_let_529_583 (_field__rec_vtype _let_527_581))) (let
  ((_let_530_584 (_field__rec_h_base _let_527_581))) (let
  ((_let_531_585 (_field__rec_h_offset _let_527_581))) (let
  ((_let_532_586 (_field__rec_h_length _let_527_581))) (let
  ((_let_533_587 (_field__rec_enc_state_p _let_527_581))) (let
  ((_let_534_588 (_field__rec_key_p _let_527_581))) (let
  ((_let_535_589 (_field__rec_enc_state_d _let_527_581))) (let
  ((_let_536_590 (_field__rec_ca_nonce_used _let_527_581))) (let
  ((_let_537_591 (_field__rec_ca_Boolrue _let_527_581))) (let
  ((_let_538_592
    (_make__type_record_2_ _let_528_582 _let_529_583 _let_530_584
     _let_531_585 _let_532_586 _let_533_587 _let_534_588 _let_535_589 NoKey
     _let_536_590 _let_537_591)))
  (let ((_let_539_593 (_field__rec_value _let_538_592))) (let
  ((_let_540_594 (_field__rec_vtype _let_538_592))) (let
  ((_let_541_595 (_field__rec_h_base _let_538_592))) (let
  ((_let_542_596 (_field__rec_h_offset _let_538_592))) (let
  ((_let_543_597 (_field__rec_h_length _let_538_592))) (let
  ((_let_544_598 (_field__rec_enc_state_p _let_538_592))) (let
  ((_let_545_599 (_field__rec_key_p _let_538_592))) (let
  ((_let_546_600 (_field__rec_enc_state_d _let_538_592))) (let
  ((_let_547_601 (_field__rec_key_d _let_538_592))) (let
  ((_let_548_602 (_field__rec_ca_nonce_used _let_538_592))) (let
  ((_let_549_603
    (_make__type_record_2_ _let_539_593 _let_540_594 _let_541_595
     _let_542_596 _let_543_597 _let_544_598 _let_545_599 _let_546_600
     _let_547_601 _let_548_602 _let_412_466)))
  (let ((_let_550_604 (_field__rec_value _let_549_603))) (let
  ((_let_551_605 (_field__rec_vtype _let_549_603))) (let
  ((_let_552_606 (_field__rec_h_base _let_549_603))) (let
  ((_let_553_607 (_field__rec_h_offset _let_549_603))) (let
  ((_let_554_608 (_field__rec_h_length _let_549_603))) (let
  ((_let_555_609 (_field__rec_enc_state_p _let_549_603))) (let
  ((_let_556_610 (_field__rec_key_p _let_549_603))) (let
  ((_let_557_611 (_field__rec_enc_state_d _let_549_603))) (let
  ((_let_558_612 (_field__rec_key_d _let_549_603))) (let
  ((_let_559_613 (_field__rec_ca_Boolrue _let_549_603))) (let
  ((_let_560_614
    (_make__type_record_2_ _let_550_604 _let_551_605 _let_552_606
     _let_553_607 _let_554_608 _let_555_609 _let_556_610 _let_557_611
     _let_558_612 _let_411_465 _let_559_613)))
  (let
  ((_let_561_615 (const___ucld_151_ghost_to_addr_value_c381 _let_560_614)))
  (let
  ((_let_562_616
    (=
     ((_ extract 0 0)
      (bvlshr
       initial_51___ucld_157_alloc_map_var85
       (bvmul ((_ zero_extend 2) _let_561_615) #b0001)))
     #b1)))
  (let ((_let_563_617 (not _let_562_616))) (let
  ((_let_564_618
    (ite _let_563_617 initial_65___ucld_154_data_probe_var295
     havoc_127_dec_cell_data300)))
  (let
  ((_let_565_619
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_566_620 (ite _let_565_619 _let_564_618 _let_409_463))) (let
  ((_let_567_621
    (ite initial_50_v82 _let_566_620 initial_65___ucld_154_data_probe_var295)))
  (let ((_let_568_622 (= state_1___ucld_154_data_probe_var298 _let_567_621)))
  _let_568_622))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun initial_56___ucld_171_ghost_mem_var623 () (_ BitVec 80))
(declare-fun state_1___ucld_171_ghost_mem_var624 () (_ BitVec 80))
(declare-fun havoc_180___ucld_49_ret_ghost_data_out625 () (_ BitVec 20))
(assert
 (let ((_let_569_626 (_field__rec_newgmem havoc_193___ucld_34_ret_as273)))
  (let ((_let_570_627 (_field__rec_valid havoc_193___ucld_34_ret_as273)))
  (let
  ((_let_571_628
    (ite _let_570_627 _let_569_626 initial_56___ucld_171_ghost_mem_var623)))
  (let
  ((_let_572_629
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_573_630
    (ite _let_572_629 _let_571_628 initial_56___ucld_171_ghost_mem_var623)))
  (let
  ((_let_574_631
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var296)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_575_632 (_field__rec_ca_nonce_used _let_574_631))) (let
  ((_let_576_633 (_field__rec_ca_Boolrue _let_574_631))) (let
  ((_let_577_634 (_field__rec_enc_state_d _let_574_631))) (let
  ((_let_578_635 (_field__rec_h_length _let_574_631))) (let
  ((_let_579_636 (_field__rec_h_offset _let_574_631))) (let
  ((_let_580_637 (_field__rec_h_base _let_574_631))) (let
  ((_let_581_638 (_field__rec_vtype _let_574_631))) (let
  ((_let_582_639 (_field__rec_value _let_574_631))) (let
  ((_let_583_640
    (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_584_641
    (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_585_642
    (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_586_643
    (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_587_644
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_588_645
    (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_589_646
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_590_647
    (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_591_648
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_592_649
    (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_593_650
    (_make__type_record_2_ _let_582_639 _let_583_640 _let_584_641
     _let_585_642 _let_586_643 _let_587_644 _let_588_645 _let_589_646
     _let_590_647 _let_591_648 _let_592_649)))
  (let ((_let_594_651 (_field__rec_value _let_593_650))) (let
  ((_let_595_652 (_field__rec_h_base _let_593_650))) (let
  ((_let_596_653 (_field__rec_h_offset _let_593_650))) (let
  ((_let_597_654 (_field__rec_h_length _let_593_650))) (let
  ((_let_598_655 (_field__rec_enc_state_p _let_593_650))) (let
  ((_let_599_656 (_field__rec_key_p _let_593_650))) (let
  ((_let_600_657 (_field__rec_enc_state_d _let_593_650))) (let
  ((_let_601_658 (_field__rec_key_d _let_593_650))) (let
  ((_let_602_659 (_field__rec_ca_nonce_used _let_593_650))) (let
  ((_let_603_660 (_field__rec_ca_Boolrue _let_593_650))) (let
  ((_let_604_661
    (_make__type_record_2_ _let_594_651 _let_581_638 _let_595_652
     _let_596_653 _let_597_654 _let_598_655 _let_599_656 _let_600_657
     _let_601_658 _let_602_659 _let_603_660)))
  (let ((_let_605_662 (_field__rec_value _let_604_661))) (let
  ((_let_606_663 (_field__rec_vtype _let_604_661))) (let
  ((_let_607_664 (_field__rec_h_offset _let_604_661))) (let
  ((_let_608_665 (_field__rec_h_length _let_604_661))) (let
  ((_let_609_666 (_field__rec_enc_state_p _let_604_661))) (let
  ((_let_610_667 (_field__rec_key_p _let_604_661))) (let
  ((_let_611_668 (_field__rec_enc_state_d _let_604_661))) (let
  ((_let_612_669 (_field__rec_key_d _let_604_661))) (let
  ((_let_613_670 (_field__rec_ca_nonce_used _let_604_661))) (let
  ((_let_614_671 (_field__rec_ca_Boolrue _let_604_661))) (let
  ((_let_615_672
    (_make__type_record_2_ _let_605_662 _let_606_663 _let_580_637
     _let_607_664 _let_608_665 _let_609_666 _let_610_667 _let_611_668
     _let_612_669 _let_613_670 _let_614_671)))
  (let ((_let_616_673 (_field__rec_value _let_615_672))) (let
  ((_let_617_674 (_field__rec_vtype _let_615_672))) (let
  ((_let_618_675 (_field__rec_h_base _let_615_672))) (let
  ((_let_619_676 (_field__rec_h_length _let_615_672))) (let
  ((_let_620_677 (_field__rec_enc_state_p _let_615_672))) (let
  ((_let_621_678 (_field__rec_key_p _let_615_672))) (let
  ((_let_622_679 (_field__rec_enc_state_d _let_615_672))) (let
  ((_let_623_680 (_field__rec_key_d _let_615_672))) (let
  ((_let_624_681 (_field__rec_ca_nonce_used _let_615_672))) (let
  ((_let_625_682 (_field__rec_ca_Boolrue _let_615_672))) (let
  ((_let_626_683
    (_make__type_record_2_ _let_616_673 _let_617_674 _let_618_675
     _let_579_636 _let_619_676 _let_620_677 _let_621_678 _let_622_679
     _let_623_680 _let_624_681 _let_625_682)))
  (let ((_let_627_684 (_field__rec_value _let_626_683))) (let
  ((_let_628_685 (_field__rec_vtype _let_626_683))) (let
  ((_let_629_686 (_field__rec_h_base _let_626_683))) (let
  ((_let_630_687 (_field__rec_h_offset _let_626_683))) (let
  ((_let_631_688 (_field__rec_enc_state_p _let_626_683))) (let
  ((_let_632_689 (_field__rec_key_p _let_626_683))) (let
  ((_let_633_690 (_field__rec_enc_state_d _let_626_683))) (let
  ((_let_634_691 (_field__rec_key_d _let_626_683))) (let
  ((_let_635_692 (_field__rec_ca_nonce_used _let_626_683))) (let
  ((_let_636_693 (_field__rec_ca_Boolrue _let_626_683))) (let
  ((_let_637_694
    (_make__type_record_2_ _let_627_684 _let_628_685 _let_629_686
     _let_630_687 _let_578_635 _let_631_688 _let_632_689 _let_633_690
     _let_634_691 _let_635_692 _let_636_693)))
  (let ((_let_638_695 (_field__rec_value _let_637_694))) (let
  ((_let_639_696 (_field__rec_vtype _let_637_694))) (let
  ((_let_640_697 (_field__rec_h_base _let_637_694))) (let
  ((_let_641_698 (_field__rec_h_offset _let_637_694))) (let
  ((_let_642_699 (_field__rec_h_length _let_637_694))) (let
  ((_let_643_700 (_field__rec_enc_state_p _let_637_694))) (let
  ((_let_644_701 (_field__rec_key_p _let_637_694))) (let
  ((_let_645_702 (_field__rec_key_d _let_637_694))) (let
  ((_let_646_703 (_field__rec_ca_nonce_used _let_637_694))) (let
  ((_let_647_704 (_field__rec_ca_Boolrue _let_637_694))) (let
  ((_let_648_705
    (_make__type_record_2_ _let_638_695 _let_639_696 _let_640_697
     _let_641_698 _let_642_699 _let_643_700 _let_644_701 _let_577_634
     _let_645_702 _let_646_703 _let_647_704)))
  (let ((_let_649_706 (_field__rec_value _let_648_705))) (let
  ((_let_650_707 (_field__rec_vtype _let_648_705))) (let
  ((_let_651_708 (_field__rec_h_base _let_648_705))) (let
  ((_let_652_709 (_field__rec_h_offset _let_648_705))) (let
  ((_let_653_710 (_field__rec_h_length _let_648_705))) (let
  ((_let_654_711 (_field__rec_key_p _let_648_705))) (let
  ((_let_655_712 (_field__rec_enc_state_d _let_648_705))) (let
  ((_let_656_713 (_field__rec_key_d _let_648_705))) (let
  ((_let_657_714 (_field__rec_ca_nonce_used _let_648_705))) (let
  ((_let_658_715 (_field__rec_ca_Boolrue _let_648_705))) (let
  ((_let_659_716
    (_make__type_record_2_ _let_649_706 _let_650_707 _let_651_708
     _let_652_709 _let_653_710 GAR _let_654_711 _let_655_712 _let_656_713
     _let_657_714 _let_658_715)))
  (let
  ((_let_660_717
    (_make__type_record_2_ _let_649_706 _let_650_707 _let_651_708
     _let_652_709 _let_653_710 PLN _let_654_711 _let_655_712 _let_656_713
     _let_657_714 _let_658_715)))
  (let ((_let_661_718 (_field__rec_key_p _let_574_631))) (let
  ((_let_662_719 (= _let_661_718 ViKey))) (let
  ((_let_663_720 (ite _let_662_719 _let_660_717 _let_659_716))) (let
  ((_let_664_721 (_field__rec_enc_state_p _let_574_631))) (let
  ((_let_665_722 (= _let_664_721 ENC))) (let
  ((_let_666_723 (ite _let_665_722 _let_659_716 _let_663_720))) (let
  ((_let_667_724
    (_make__type_record_2_ _let_638_695 _let_639_696 _let_640_697
     _let_641_698 _let_642_699 _let_643_700 _let_644_701 GAR _let_645_702
     _let_646_703 _let_647_704)))
  (let ((_let_668_725 (_field__rec_value _let_667_724))) (let
  ((_let_669_726 (_field__rec_vtype _let_667_724))) (let
  ((_let_670_727 (_field__rec_h_base _let_667_724))) (let
  ((_let_671_728 (_field__rec_h_offset _let_667_724))) (let
  ((_let_672_729 (_field__rec_h_length _let_667_724))) (let
  ((_let_673_730 (_field__rec_key_p _let_667_724))) (let
  ((_let_674_731 (_field__rec_enc_state_d _let_667_724))) (let
  ((_let_675_732 (_field__rec_key_d _let_667_724))) (let
  ((_let_676_733 (_field__rec_ca_nonce_used _let_667_724))) (let
  ((_let_677_734 (_field__rec_ca_Boolrue _let_667_724))) (let
  ((_let_678_735
    (_make__type_record_2_ _let_668_725 _let_669_726 _let_670_727
     _let_671_728 _let_672_729 GAR _let_673_730 _let_674_731 _let_675_732
     _let_676_733 _let_677_734)))
  (let ((_let_679_736 (= _let_577_634 PLN))) (let
  ((_let_680_737 (ite _let_679_736 _let_678_735 _let_666_723))) (let
  ((_let_681_738 (_field__rec_value _let_680_737))) (let
  ((_let_682_739 (_field__rec_vtype _let_680_737))) (let
  ((_let_683_740 (_field__rec_h_base _let_680_737))) (let
  ((_let_684_741 (_field__rec_h_offset _let_680_737))) (let
  ((_let_685_742 (_field__rec_h_length _let_680_737))) (let
  ((_let_686_743 (_field__rec_enc_state_p _let_680_737))) (let
  ((_let_687_744 (_field__rec_enc_state_d _let_680_737))) (let
  ((_let_688_745 (_field__rec_key_d _let_680_737))) (let
  ((_let_689_746 (_field__rec_ca_nonce_used _let_680_737))) (let
  ((_let_690_747 (_field__rec_ca_Boolrue _let_680_737))) (let
  ((_let_691_748
    (_make__type_record_2_ _let_681_738 _let_682_739 _let_683_740
     _let_684_741 _let_685_742 _let_686_743 NoKey _let_687_744 _let_688_745
     _let_689_746 _let_690_747)))
  (let ((_let_692_749 (_field__rec_value _let_691_748))) (let
  ((_let_693_750 (_field__rec_vtype _let_691_748))) (let
  ((_let_694_751 (_field__rec_h_base _let_691_748))) (let
  ((_let_695_752 (_field__rec_h_offset _let_691_748))) (let
  ((_let_696_753 (_field__rec_h_length _let_691_748))) (let
  ((_let_697_754 (_field__rec_enc_state_p _let_691_748))) (let
  ((_let_698_755 (_field__rec_key_p _let_691_748))) (let
  ((_let_699_756 (_field__rec_enc_state_d _let_691_748))) (let
  ((_let_700_757 (_field__rec_ca_nonce_used _let_691_748))) (let
  ((_let_701_758 (_field__rec_ca_Boolrue _let_691_748))) (let
  ((_let_702_759
    (_make__type_record_2_ _let_692_749 _let_693_750 _let_694_751
     _let_695_752 _let_696_753 _let_697_754 _let_698_755 _let_699_756 NoKey
     _let_700_757 _let_701_758)))
  (let ((_let_703_760 (_field__rec_value _let_702_759))) (let
  ((_let_704_761 (_field__rec_vtype _let_702_759))) (let
  ((_let_705_762 (_field__rec_h_base _let_702_759))) (let
  ((_let_706_763 (_field__rec_h_offset _let_702_759))) (let
  ((_let_707_764 (_field__rec_h_length _let_702_759))) (let
  ((_let_708_765 (_field__rec_enc_state_p _let_702_759))) (let
  ((_let_709_766 (_field__rec_key_p _let_702_759))) (let
  ((_let_710_767 (_field__rec_enc_state_d _let_702_759))) (let
  ((_let_711_768 (_field__rec_key_d _let_702_759))) (let
  ((_let_712_769 (_field__rec_ca_nonce_used _let_702_759))) (let
  ((_let_713_770
    (_make__type_record_2_ _let_703_760 _let_704_761 _let_705_762
     _let_706_763 _let_707_764 _let_708_765 _let_709_766 _let_710_767
     _let_711_768 _let_712_769 _let_576_633)))
  (let ((_let_714_771 (_field__rec_value _let_713_770))) (let
  ((_let_715_772 (_field__rec_vtype _let_713_770))) (let
  ((_let_716_773 (_field__rec_h_base _let_713_770))) (let
  ((_let_717_774 (_field__rec_h_offset _let_713_770))) (let
  ((_let_718_775 (_field__rec_h_length _let_713_770))) (let
  ((_let_719_776 (_field__rec_enc_state_p _let_713_770))) (let
  ((_let_720_777 (_field__rec_key_p _let_713_770))) (let
  ((_let_721_778 (_field__rec_enc_state_d _let_713_770))) (let
  ((_let_722_779 (_field__rec_key_d _let_713_770))) (let
  ((_let_723_780 (_field__rec_ca_Boolrue _let_713_770))) (let
  ((_let_724_781
    (_make__type_record_2_ _let_714_771 _let_715_772 _let_716_773
     _let_717_774 _let_718_775 _let_719_776 _let_720_777 _let_721_778
     _let_722_779 _let_575_632 _let_723_780)))
  (let
  ((_let_725_782 (const___ucld_151_ghost_to_addr_value_c381 _let_724_781)))
  (let
  ((_let_726_783
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var623
      (bvmul
       ((_ zero_extend 78) _let_725_782)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_727_784 (_field__rec_ca_Boolrue _let_726_783))) (let
  ((_let_728_785 (const___ucld_147_ghost_to_nonce_c379 _let_724_781))) (let
  ((_let_729_786
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_730_787 (_field__rec_key_p _let_729_786))) (let
  ((_let_731_788 (_field__rec_enc_state_p _let_729_786))) (let
  ((_let_732_789 (_field__rec_h_length _let_729_786))) (let
  ((_let_733_790 (_field__rec_h_offset _let_729_786))) (let
  ((_let_734_791 (_field__rec_h_base _let_729_786))) (let
  ((_let_735_792 (_field__rec_vtype _let_729_786))) (let
  ((_let_736_793 (_field__rec_value _let_729_786))) (let
  ((_let_737_794
    (_field__rec_vtype havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_738_795
    (_field__rec_h_base havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_739_796
    (_field__rec_h_offset havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_740_797
    (_field__rec_h_length havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_741_798
    (_field__rec_enc_state_p havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_742_799
    (_field__rec_key_p havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_743_800
    (_field__rec_enc_state_d havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_744_801
    (_field__rec_key_d havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_745_802
    (_field__rec_ca_nonce_used havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_746_803
    (_field__rec_ca_Boolrue havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_747_804
    (_make__type_record_2_ _let_736_793 _let_737_794 _let_738_795
     _let_739_796 _let_740_797 _let_741_798 _let_742_799 _let_743_800
     _let_744_801 _let_745_802 _let_746_803)))
  (let ((_let_748_805 (_field__rec_value _let_747_804))) (let
  ((_let_749_806 (_field__rec_h_base _let_747_804))) (let
  ((_let_750_807 (_field__rec_h_offset _let_747_804))) (let
  ((_let_751_808 (_field__rec_h_length _let_747_804))) (let
  ((_let_752_809 (_field__rec_enc_state_p _let_747_804))) (let
  ((_let_753_810 (_field__rec_key_p _let_747_804))) (let
  ((_let_754_811 (_field__rec_enc_state_d _let_747_804))) (let
  ((_let_755_812 (_field__rec_key_d _let_747_804))) (let
  ((_let_756_813 (_field__rec_ca_nonce_used _let_747_804))) (let
  ((_let_757_814 (_field__rec_ca_Boolrue _let_747_804))) (let
  ((_let_758_815
    (_make__type_record_2_ _let_748_805 _let_735_792 _let_749_806
     _let_750_807 _let_751_808 _let_752_809 _let_753_810 _let_754_811
     _let_755_812 _let_756_813 _let_757_814)))
  (let ((_let_759_816 (_field__rec_value _let_758_815))) (let
  ((_let_760_817 (_field__rec_vtype _let_758_815))) (let
  ((_let_761_818 (_field__rec_h_offset _let_758_815))) (let
  ((_let_762_819 (_field__rec_h_length _let_758_815))) (let
  ((_let_763_820 (_field__rec_enc_state_p _let_758_815))) (let
  ((_let_764_821 (_field__rec_key_p _let_758_815))) (let
  ((_let_765_822 (_field__rec_enc_state_d _let_758_815))) (let
  ((_let_766_823 (_field__rec_key_d _let_758_815))) (let
  ((_let_767_824 (_field__rec_ca_nonce_used _let_758_815))) (let
  ((_let_768_825 (_field__rec_ca_Boolrue _let_758_815))) (let
  ((_let_769_826
    (_make__type_record_2_ _let_759_816 _let_760_817 _let_734_791
     _let_761_818 _let_762_819 _let_763_820 _let_764_821 _let_765_822
     _let_766_823 _let_767_824 _let_768_825)))
  (let ((_let_770_827 (_field__rec_value _let_769_826))) (let
  ((_let_771_828 (_field__rec_vtype _let_769_826))) (let
  ((_let_772_829 (_field__rec_h_base _let_769_826))) (let
  ((_let_773_830 (_field__rec_h_length _let_769_826))) (let
  ((_let_774_831 (_field__rec_enc_state_p _let_769_826))) (let
  ((_let_775_832 (_field__rec_key_p _let_769_826))) (let
  ((_let_776_833 (_field__rec_enc_state_d _let_769_826))) (let
  ((_let_777_834 (_field__rec_key_d _let_769_826))) (let
  ((_let_778_835 (_field__rec_ca_nonce_used _let_769_826))) (let
  ((_let_779_836 (_field__rec_ca_Boolrue _let_769_826))) (let
  ((_let_780_837
    (_make__type_record_2_ _let_770_827 _let_771_828 _let_772_829
     _let_733_790 _let_773_830 _let_774_831 _let_775_832 _let_776_833
     _let_777_834 _let_778_835 _let_779_836)))
  (let ((_let_781_838 (_field__rec_value _let_780_837))) (let
  ((_let_782_839 (_field__rec_vtype _let_780_837))) (let
  ((_let_783_840 (_field__rec_h_base _let_780_837))) (let
  ((_let_784_841 (_field__rec_h_offset _let_780_837))) (let
  ((_let_785_842 (_field__rec_enc_state_p _let_780_837))) (let
  ((_let_786_843 (_field__rec_key_p _let_780_837))) (let
  ((_let_787_844 (_field__rec_enc_state_d _let_780_837))) (let
  ((_let_788_845 (_field__rec_key_d _let_780_837))) (let
  ((_let_789_846 (_field__rec_ca_nonce_used _let_780_837))) (let
  ((_let_790_847 (_field__rec_ca_Boolrue _let_780_837))) (let
  ((_let_791_848
    (_make__type_record_2_ _let_781_838 _let_782_839 _let_783_840
     _let_784_841 _let_732_789 _let_785_842 _let_786_843 _let_787_844
     _let_788_845 _let_789_846 _let_790_847)))
  (let ((_let_792_849 (_field__rec_value _let_791_848))) (let
  ((_let_793_850 (_field__rec_vtype _let_791_848))) (let
  ((_let_794_851 (_field__rec_h_base _let_791_848))) (let
  ((_let_795_852 (_field__rec_h_offset _let_791_848))) (let
  ((_let_796_853 (_field__rec_h_length _let_791_848))) (let
  ((_let_797_854 (_field__rec_enc_state_p _let_791_848))) (let
  ((_let_798_855 (_field__rec_key_p _let_791_848))) (let
  ((_let_799_856 (_field__rec_key_d _let_791_848))) (let
  ((_let_800_857 (_field__rec_ca_nonce_used _let_791_848))) (let
  ((_let_801_858 (_field__rec_ca_Boolrue _let_791_848))) (let
  ((_let_802_859
    (_make__type_record_2_ _let_792_849 _let_793_850 _let_794_851
     _let_795_852 _let_796_853 _let_797_854 _let_798_855 ENC _let_799_856
     _let_800_857 _let_801_858)))
  (let ((_let_803_860 (_field__rec_value _let_802_859))) (let
  ((_let_804_861 (_field__rec_vtype _let_802_859))) (let
  ((_let_805_862 (_field__rec_h_base _let_802_859))) (let
  ((_let_806_863 (_field__rec_h_offset _let_802_859))) (let
  ((_let_807_864 (_field__rec_h_length _let_802_859))) (let
  ((_let_808_865 (_field__rec_enc_state_p _let_802_859))) (let
  ((_let_809_866 (_field__rec_key_p _let_802_859))) (let
  ((_let_810_867 (_field__rec_enc_state_d _let_802_859))) (let
  ((_let_811_868 (_field__rec_ca_nonce_used _let_802_859))) (let
  ((_let_812_869 (_field__rec_ca_Boolrue _let_802_859))) (let
  ((_let_813_870
    (_make__type_record_2_ _let_803_860 _let_804_861 _let_805_862
     _let_806_863 _let_807_864 _let_808_865 _let_809_866 _let_810_867 ViKey
     _let_811_868 _let_812_869)))
  (let ((_let_814_871 (_field__rec_value _let_813_870))) (let
  ((_let_815_872 (_field__rec_vtype _let_813_870))) (let
  ((_let_816_873 (_field__rec_h_base _let_813_870))) (let
  ((_let_817_874 (_field__rec_h_offset _let_813_870))) (let
  ((_let_818_875 (_field__rec_h_length _let_813_870))) (let
  ((_let_819_876 (_field__rec_key_p _let_813_870))) (let
  ((_let_820_877 (_field__rec_enc_state_d _let_813_870))) (let
  ((_let_821_878 (_field__rec_key_d _let_813_870))) (let
  ((_let_822_879 (_field__rec_ca_nonce_used _let_813_870))) (let
  ((_let_823_880 (_field__rec_ca_Boolrue _let_813_870))) (let
  ((_let_824_881
    (_make__type_record_2_ _let_814_871 _let_815_872 _let_816_873
     _let_817_874 _let_818_875 _let_731_788 _let_819_876 _let_820_877
     _let_821_878 _let_822_879 _let_823_880)))
  (let ((_let_825_882 (_field__rec_value _let_824_881))) (let
  ((_let_826_883 (_field__rec_vtype _let_824_881))) (let
  ((_let_827_884 (_field__rec_h_base _let_824_881))) (let
  ((_let_828_885 (_field__rec_h_offset _let_824_881))) (let
  ((_let_829_886 (_field__rec_h_length _let_824_881))) (let
  ((_let_830_887 (_field__rec_enc_state_p _let_824_881))) (let
  ((_let_831_888 (_field__rec_enc_state_d _let_824_881))) (let
  ((_let_832_889 (_field__rec_key_d _let_824_881))) (let
  ((_let_833_890 (_field__rec_ca_nonce_used _let_824_881))) (let
  ((_let_834_891 (_field__rec_ca_Boolrue _let_824_881))) (let
  ((_let_835_892
    (_make__type_record_2_ _let_825_882 _let_826_883 _let_827_884
     _let_828_885 _let_829_886 _let_830_887 _let_730_787 _let_831_888
     _let_832_889 _let_833_890 _let_834_891)))
  (let
  ((_let_836_893
    (_make__type_record_2_ _let_792_849 _let_793_850 _let_794_851
     _let_795_852 _let_796_853 _let_797_854 _let_798_855 GAR _let_799_856
     _let_800_857 _let_801_858)))
  (let ((_let_837_894 (_field__rec_value _let_836_893))) (let
  ((_let_838_895 (_field__rec_vtype _let_836_893))) (let
  ((_let_839_896 (_field__rec_h_base _let_836_893))) (let
  ((_let_840_897 (_field__rec_h_offset _let_836_893))) (let
  ((_let_841_898 (_field__rec_h_length _let_836_893))) (let
  ((_let_842_899 (_field__rec_enc_state_p _let_836_893))) (let
  ((_let_843_900 (_field__rec_key_p _let_836_893))) (let
  ((_let_844_901 (_field__rec_enc_state_d _let_836_893))) (let
  ((_let_845_902 (_field__rec_ca_nonce_used _let_836_893))) (let
  ((_let_846_903 (_field__rec_ca_Boolrue _let_836_893))) (let
  ((_let_847_904
    (_make__type_record_2_ _let_837_894 _let_838_895 _let_839_896
     _let_840_897 _let_841_898 _let_842_899 _let_843_900 _let_844_901 NoKey
     _let_845_902 _let_846_903)))
  (let ((_let_848_905 (_field__rec_value _let_847_904))) (let
  ((_let_849_906 (_field__rec_vtype _let_847_904))) (let
  ((_let_850_907 (_field__rec_h_base _let_847_904))) (let
  ((_let_851_908 (_field__rec_h_offset _let_847_904))) (let
  ((_let_852_909 (_field__rec_h_length _let_847_904))) (let
  ((_let_853_910 (_field__rec_key_p _let_847_904))) (let
  ((_let_854_911 (_field__rec_enc_state_d _let_847_904))) (let
  ((_let_855_912 (_field__rec_key_d _let_847_904))) (let
  ((_let_856_913 (_field__rec_ca_nonce_used _let_847_904))) (let
  ((_let_857_914 (_field__rec_ca_Boolrue _let_847_904))) (let
  ((_let_858_915
    (_make__type_record_2_ _let_848_905 _let_849_906 _let_850_907
     _let_851_908 _let_852_909 _let_731_788 _let_853_910 _let_854_911
     _let_855_912 _let_856_913 _let_857_914)))
  (let ((_let_859_916 (_field__rec_value _let_858_915))) (let
  ((_let_860_917 (_field__rec_vtype _let_858_915))) (let
  ((_let_861_918 (_field__rec_h_base _let_858_915))) (let
  ((_let_862_919 (_field__rec_h_offset _let_858_915))) (let
  ((_let_863_920 (_field__rec_h_length _let_858_915))) (let
  ((_let_864_921 (_field__rec_enc_state_p _let_858_915))) (let
  ((_let_865_922 (_field__rec_enc_state_d _let_858_915))) (let
  ((_let_866_923 (_field__rec_key_d _let_858_915))) (let
  ((_let_867_924 (_field__rec_ca_nonce_used _let_858_915))) (let
  ((_let_868_925 (_field__rec_ca_Boolrue _let_858_915))) (let
  ((_let_869_926
    (_make__type_record_2_ _let_859_916 _let_860_917 _let_861_918
     _let_862_919 _let_863_920 _let_864_921 _let_730_787 _let_865_922
     _let_866_923 _let_867_924 _let_868_925)))
  (let ((_let_870_927 (= _let_727_784 _let_728_785))) (let
  ((_let_871_928 (ite _let_870_927 _let_869_926 _let_835_892))) (let
  ((_let_872_929 (_field__rec_enc_state_d _let_729_786))) (let
  ((_let_873_930 (= _let_872_929 PLN))) (let
  ((_let_874_931 (ite _let_873_930 _let_869_926 _let_871_928))) (let
  ((_let_875_932 (_field__rec_value _let_874_931))) (let
  ((_let_876_933 (_field__rec_vtype _let_874_931))) (let
  ((_let_877_934 (_field__rec_h_base _let_874_931))) (let
  ((_let_878_935 (_field__rec_h_offset _let_874_931))) (let
  ((_let_879_936 (_field__rec_h_length _let_874_931))) (let
  ((_let_880_937 (_field__rec_enc_state_p _let_874_931))) (let
  ((_let_881_938 (_field__rec_key_p _let_874_931))) (let
  ((_let_882_939 (_field__rec_enc_state_d _let_874_931))) (let
  ((_let_883_940 (_field__rec_key_d _let_874_931))) (let
  ((_let_884_941 (_field__rec_ca_Boolrue _let_874_931))) (let
  ((_let_885_942
    (_make__type_record_2_ _let_875_932 _let_876_933 _let_877_934
     _let_878_935 _let_879_936 _let_880_937 _let_881_938 _let_882_939
     _let_883_940 _let_728_785 _let_884_941)))
  (let ((_let_886_943 (_field__rec_value _let_885_942))) (let
  ((_let_887_944 (_field__rec_vtype _let_885_942))) (let
  ((_let_888_945 (_field__rec_h_base _let_885_942))) (let
  ((_let_889_946 (_field__rec_h_offset _let_885_942))) (let
  ((_let_890_947 (_field__rec_h_length _let_885_942))) (let
  ((_let_891_948 (_field__rec_enc_state_p _let_885_942))) (let
  ((_let_892_949 (_field__rec_key_p _let_885_942))) (let
  ((_let_893_950 (_field__rec_enc_state_d _let_885_942))) (let
  ((_let_894_951 (_field__rec_key_d _let_885_942))) (let
  ((_let_895_952 (_field__rec_ca_nonce_used _let_885_942))) (let
  ((_let_896_953
    (_make__type_record_2_ _let_886_943 _let_887_944 _let_888_945
     _let_889_946 _let_890_947 _let_891_948 _let_892_949 _let_893_950
     _let_894_951 _let_895_952 _let_727_784)))
  (let
  ((_let_897_954
    (bvor
     (bvand
      initial_56___ucld_171_ghost_mem_var623
      (bvxor
       (bvshl
        #b00000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 78) _let_725_782))
       #b11111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 60) _let_896_953)
      ((_ zero_extend 78) _let_725_782)))))
  (let
  ((_let_898_955
    (=
     ((_ extract 0 0)
      (bvlshr
       initial_51___ucld_157_alloc_map_var85
       (bvmul ((_ zero_extend 2) _let_725_782) #b0001)))
     #b1)))
  (let
  ((_let_899_956
    (ite _let_898_955 initial_56___ucld_171_ghost_mem_var623 _let_897_954)))
  (let
  ((_let_900_957
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_901_958 (ite _let_900_957 _let_899_956 _let_573_630))) (let
  ((_let_902_959
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_903_960
    (ite _let_902_959 initial_56___ucld_171_ghost_mem_var623 _let_901_958)))
  (let
  ((_let_904_961
    (ite initial_50_v82 _let_903_960 initial_56___ucld_171_ghost_mem_var623)))
  (let ((_let_905_962 (= state_1___ucld_171_ghost_mem_var624 _let_904_961)))
  _let_905_962))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun initial_60___ucld_164_shadow_mem_var963 () (_ BitVec 28))
(assert
 (let
  ((_let_906_964
    (forall ((a1965 (_ BitVec 2))) (forall ((a2966 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a1965) #b0000000000000000000000000111))))
       (and
       (bvule (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a1965) #b0000000000000000000000000111))))
        a2966)
       (bvult
        a2966
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a1965) #b0000000000000000000000000111)))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul ((_ zero_extend 26) a1965) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul ((_ zero_extend 26) a2966) #b0000000000000000000000000111)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul ((_ zero_extend 26) a1965) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul ((_ zero_extend 26) a2966) #b0000000000000000000000000111)))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a2966) #b0000000000000000000000000111)))))))))))
  _let_906_964))
(declare-fun state_1___ucld_155_src1_probe_g_var967 () (_ BitVec 20))
(declare-fun initial_49___ucld_155_src1_probe_g_var968 () (_ BitVec 20))
(assert
 (let
  ((_let_907_969
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let
  ((_let_908_970
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_909_971
    (ite _let_908_970 _let_907_969 initial_49___ucld_155_src1_probe_g_var968)))
  (let
  ((_let_910_972
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_911_973
    (ite _let_910_972 initial_49___ucld_155_src1_probe_g_var968 _let_909_971)))
  (let
  ((_let_912_974
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_913_975
    (ite _let_912_974 initial_49___ucld_155_src1_probe_g_var968 _let_911_973)))
  (let
  ((_let_914_976
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_915_977
    (ite _let_914_976 initial_49___ucld_155_src1_probe_g_var968 _let_913_975)))
  (let
  ((_let_916_978
    (ite initial_50_v82 _let_915_977
     initial_49___ucld_155_src1_probe_g_var968)))
  (let
  ((_let_917_979
    (and
     (or
      (and
       (= ((_ extract 19 19) state_1___ucld_155_src1_probe_g_var967)
        ((_ extract 19 19) _let_916_978))
       (and (and
       (or
        (and
         (= ((_ extract 14 13) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 14 13) _let_916_978)))
        (and
         (= ((_ extract 14 13) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 14 13) _let_916_978)))
        (and
         (= ((_ extract 14 13) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 14 13) _let_916_978))))
       (not
        (= ((_ extract 14 13) state_1___ucld_155_src1_probe_g_var967) #b11)))
       (and
       (or
        (and
         (= ((_ extract 10 9) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 10 9) _let_916_978)))
        (and
         (= ((_ extract 10 9) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 10 9) _let_916_978)))
        (and
         (= ((_ extract 10 9) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 10 9) _let_916_978))))
       (not
        (= ((_ extract 10 9) state_1___ucld_155_src1_probe_g_var967) #b11)))
       (and
       (or
        (and
         (= ((_ extract 12 11) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 12 11) _let_916_978)))
        (and
         (= ((_ extract 12 11) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 12 11) _let_916_978)))
        (and
         (= ((_ extract 12 11) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 12 11) _let_916_978))))
       (not
        (= ((_ extract 12 11) state_1___ucld_155_src1_probe_g_var967) #b11)))
       (and
       (or
        (and
         (= ((_ extract 16 15) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 16 15) _let_916_978)))
        (and
         (= ((_ extract 16 15) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 16 15) _let_916_978)))
        (and
         (= ((_ extract 16 15) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 16 15) _let_916_978))))
       (not
        (= ((_ extract 16 15) state_1___ucld_155_src1_probe_g_var967) #b11)))
       (and
       (or
        (and
         (= ((_ extract 2 2) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 2 2) _let_916_978)))
        (and
         (= ((_ extract 2 2) state_1___ucld_155_src1_probe_g_var967)
          ((_ extract 2 2) _let_916_978))))))))
     (not (= ((_ extract 19 19) state_1___ucld_155_src1_probe_g_var967) #b1)))))
  _let_917_979))))))))))))
(declare-fun state_1___ucld_157_alloc_map_var980 () (_ BitVec 4))
(assert
 (let ((_let_918_981 (_field__rec_newamap havoc_193___ucld_34_ret_as273)))
  (let ((_let_919_982 (_field__rec_valid havoc_193___ucld_34_ret_as273)))
  (let
  ((_let_920_983
    (ite _let_919_982 _let_918_981 initial_51___ucld_157_alloc_map_var85)))
  (let
  ((_let_921_984
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_922_985
    (ite _let_921_984 _let_920_983 initial_51___ucld_157_alloc_map_var85)))
  (let
  ((_let_923_986
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_924_987
    (ite _let_923_986 initial_51___ucld_157_alloc_map_var85 _let_922_985)))
  (let
  ((_let_925_988
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_926_989
    (ite _let_925_988 initial_51___ucld_157_alloc_map_var85 _let_924_987)))
  (let
  ((_let_927_990
    (ite initial_50_v82 _let_926_989 initial_51___ucld_157_alloc_map_var85)))
  (let ((_let_928_991 (= state_1___ucld_157_alloc_map_var980 _let_927_990)))
  _let_928_991))))))))))))
(declare-fun havoc_237_newdata_g992 () (_ BitVec 20))
(declare-fun havoc_227_newdata993 () (_ BitVec 20))
(declare-fun havoc_225_nondet_arg994 () (_ BitVec 2))
(declare-fun havoc_143___ucld_41_ret_ghost_data_out995 () (_ BitVec 20))
(declare-fun state_1___ucld_169_data_probe_g_var996 () (_ BitVec 20))
(declare-fun initial_64___ucld_169_data_probe_g_var997 () (_ BitVec 20))
(assert
 (let
  ((_let_929_998
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_930_999
    (ite _let_929_998 havoc_237_newdata_g992
     initial_64___ucld_169_data_probe_g_var997)))
  (let
  ((_let_931_1000
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_932_1001 (_field__rec_h_offset _let_931_1000))) (let
  ((_let_933_1002 (bvadd _let_932_1001 havoc_225_nondet_arg994))) (let
  ((_let_934_1003 (_field__rec_value _let_931_1000))) (let
  ((_let_935_1004 (_field__rec_vtype _let_931_1000))) (let
  ((_let_936_1005 (_field__rec_h_base _let_931_1000))) (let
  ((_let_937_1006 (_field__rec_h_length _let_931_1000))) (let
  ((_let_938_1007 (_field__rec_enc_state_p _let_931_1000))) (let
  ((_let_939_1008 (_field__rec_key_p _let_931_1000))) (let
  ((_let_940_1009 (_field__rec_enc_state_d _let_931_1000))) (let
  ((_let_941_1010 (_field__rec_key_d _let_931_1000))) (let
  ((_let_942_1011 (_field__rec_ca_nonce_used _let_931_1000))) (let
  ((_let_943_1012 (_field__rec_ca_Boolrue _let_931_1000))) (let
  ((_let_944_1013
    (_make__type_record_2_ _let_934_1003 _let_935_1004 _let_936_1005
     _let_933_1002 _let_937_1006 _let_938_1007 _let_939_1008 _let_940_1009
     _let_941_1010 _let_942_1011 _let_943_1012)))
  (let ((_let_945_1014 (_field__rec_value _let_944_1013))) (let
  ((_let_946_1015 (bvadd _let_945_1014 havoc_225_nondet_arg994))) (let
  ((_let_947_1016 (_field__rec_vtype _let_944_1013))) (let
  ((_let_948_1017 (_field__rec_h_base _let_944_1013))) (let
  ((_let_949_1018 (_field__rec_h_offset _let_944_1013))) (let
  ((_let_950_1019 (_field__rec_h_length _let_944_1013))) (let
  ((_let_951_1020 (_field__rec_enc_state_p _let_944_1013))) (let
  ((_let_952_1021 (_field__rec_key_p _let_944_1013))) (let
  ((_let_953_1022 (_field__rec_enc_state_d _let_944_1013))) (let
  ((_let_954_1023 (_field__rec_key_d _let_944_1013))) (let
  ((_let_955_1024 (_field__rec_ca_nonce_used _let_944_1013))) (let
  ((_let_956_1025 (_field__rec_ca_Boolrue _let_944_1013))) (let
  ((_let_957_1026
    (_make__type_record_2_ _let_946_1015 _let_947_1016 _let_948_1017
     _let_949_1018 _let_950_1019 _let_951_1020 _let_952_1021 _let_953_1022
     _let_954_1023 _let_955_1024 _let_956_1025)))
  (let ((_let_958_1027 (= _let_935_1004 HAN))) (let
  ((_let_959_1028 (ite _let_958_1027 _let_957_1026 havoc_227_newdata993)))
  (let
  ((_let_960_1029
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_961_1030 (ite _let_960_1029 _let_959_1028 _let_930_999))) (let
  ((_let_962_1031 (_field__rec_allocg havoc_193___ucld_34_ret_as273))) (let
  ((_let_963_1032
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var87
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var296))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) _let_962_1031)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var296)))))
  (let ((_let_964_1033 (_field__rec_valid havoc_193___ucld_34_ret_as273)))
  (let
  ((_let_965_1034
    (ite _let_964_1033 _let_963_1032 initial_69___ucld_173_ghost_lmap_var87)))
  (let
  ((_let_966_1035
    ((_ extract 19 0)
     (bvlshr
      _let_965_1034
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var296)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let
  ((_let_967_1036
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_968_1037 (ite _let_967_1036 _let_966_1035 _let_961_1030))) (let
  ((_let_969_1038
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var296)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_970_1039 (_field__rec_ca_nonce_used _let_969_1038))) (let
  ((_let_971_1040 (_field__rec_ca_Boolrue _let_969_1038))) (let
  ((_let_972_1041 (_field__rec_enc_state_d _let_969_1038))) (let
  ((_let_973_1042 (_field__rec_h_length _let_969_1038))) (let
  ((_let_974_1043 (_field__rec_h_offset _let_969_1038))) (let
  ((_let_975_1044 (_field__rec_h_base _let_969_1038))) (let
  ((_let_976_1045 (_field__rec_vtype _let_969_1038))) (let
  ((_let_977_1046 (_field__rec_value _let_969_1038))) (let
  ((_let_978_1047
    (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_979_1048
    (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_980_1049
    (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_981_1050
    (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_982_1051
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_983_1052
    (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_984_1053
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_985_1054
    (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_986_1055
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_987_1056
    (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_988_1057
    (_make__type_record_2_ _let_977_1046 _let_978_1047 _let_979_1048
     _let_980_1049 _let_981_1050 _let_982_1051 _let_983_1052 _let_984_1053
     _let_985_1054 _let_986_1055 _let_987_1056)))
  (let ((_let_989_1058 (_field__rec_value _let_988_1057))) (let
  ((_let_990_1059 (_field__rec_h_base _let_988_1057))) (let
  ((_let_991_1060 (_field__rec_h_offset _let_988_1057))) (let
  ((_let_992_1061 (_field__rec_h_length _let_988_1057))) (let
  ((_let_993_1062 (_field__rec_enc_state_p _let_988_1057))) (let
  ((_let_994_1063 (_field__rec_key_p _let_988_1057))) (let
  ((_let_995_1064 (_field__rec_enc_state_d _let_988_1057))) (let
  ((_let_996_1065 (_field__rec_key_d _let_988_1057))) (let
  ((_let_997_1066 (_field__rec_ca_nonce_used _let_988_1057))) (let
  ((_let_998_1067 (_field__rec_ca_Boolrue _let_988_1057))) (let
  ((_let_999_1068
    (_make__type_record_2_ _let_989_1058 _let_976_1045 _let_990_1059
     _let_991_1060 _let_992_1061 _let_993_1062 _let_994_1063 _let_995_1064
     _let_996_1065 _let_997_1066 _let_998_1067)))
  (let ((_let_1000_1069 (_field__rec_value _let_999_1068))) (let
  ((_let_1001_1070 (_field__rec_vtype _let_999_1068))) (let
  ((_let_1002_1071 (_field__rec_h_offset _let_999_1068))) (let
  ((_let_1003_1072 (_field__rec_h_length _let_999_1068))) (let
  ((_let_1004_1073 (_field__rec_enc_state_p _let_999_1068))) (let
  ((_let_1005_1074 (_field__rec_key_p _let_999_1068))) (let
  ((_let_1006_1075 (_field__rec_enc_state_d _let_999_1068))) (let
  ((_let_1007_1076 (_field__rec_key_d _let_999_1068))) (let
  ((_let_1008_1077 (_field__rec_ca_nonce_used _let_999_1068))) (let
  ((_let_1009_1078 (_field__rec_ca_Boolrue _let_999_1068))) (let
  ((_let_1010_1079
    (_make__type_record_2_ _let_1000_1069 _let_1001_1070 _let_975_1044
     _let_1002_1071 _let_1003_1072 _let_1004_1073 _let_1005_1074
     _let_1006_1075 _let_1007_1076 _let_1008_1077 _let_1009_1078)))
  (let ((_let_1011_1080 (_field__rec_value _let_1010_1079))) (let
  ((_let_1012_1081 (_field__rec_vtype _let_1010_1079))) (let
  ((_let_1013_1082 (_field__rec_h_base _let_1010_1079))) (let
  ((_let_1014_1083 (_field__rec_h_length _let_1010_1079))) (let
  ((_let_1015_1084 (_field__rec_enc_state_p _let_1010_1079))) (let
  ((_let_1016_1085 (_field__rec_key_p _let_1010_1079))) (let
  ((_let_1017_1086 (_field__rec_enc_state_d _let_1010_1079))) (let
  ((_let_1018_1087 (_field__rec_key_d _let_1010_1079))) (let
  ((_let_1019_1088 (_field__rec_ca_nonce_used _let_1010_1079))) (let
  ((_let_1020_1089 (_field__rec_ca_Boolrue _let_1010_1079))) (let
  ((_let_1021_1090
    (_make__type_record_2_ _let_1011_1080 _let_1012_1081 _let_1013_1082
     _let_974_1043 _let_1014_1083 _let_1015_1084 _let_1016_1085
     _let_1017_1086 _let_1018_1087 _let_1019_1088 _let_1020_1089)))
  (let ((_let_1022_1091 (_field__rec_value _let_1021_1090))) (let
  ((_let_1023_1092 (_field__rec_vtype _let_1021_1090))) (let
  ((_let_1024_1093 (_field__rec_h_base _let_1021_1090))) (let
  ((_let_1025_1094 (_field__rec_h_offset _let_1021_1090))) (let
  ((_let_1026_1095 (_field__rec_enc_state_p _let_1021_1090))) (let
  ((_let_1027_1096 (_field__rec_key_p _let_1021_1090))) (let
  ((_let_1028_1097 (_field__rec_enc_state_d _let_1021_1090))) (let
  ((_let_1029_1098 (_field__rec_key_d _let_1021_1090))) (let
  ((_let_1030_1099 (_field__rec_ca_nonce_used _let_1021_1090))) (let
  ((_let_1031_1100 (_field__rec_ca_Boolrue _let_1021_1090))) (let
  ((_let_1032_1101
    (_make__type_record_2_ _let_1022_1091 _let_1023_1092 _let_1024_1093
     _let_1025_1094 _let_973_1042 _let_1026_1095 _let_1027_1096
     _let_1028_1097 _let_1029_1098 _let_1030_1099 _let_1031_1100)))
  (let ((_let_1033_1102 (_field__rec_value _let_1032_1101))) (let
  ((_let_1034_1103 (_field__rec_vtype _let_1032_1101))) (let
  ((_let_1035_1104 (_field__rec_h_base _let_1032_1101))) (let
  ((_let_1036_1105 (_field__rec_h_offset _let_1032_1101))) (let
  ((_let_1037_1106 (_field__rec_h_length _let_1032_1101))) (let
  ((_let_1038_1107 (_field__rec_enc_state_p _let_1032_1101))) (let
  ((_let_1039_1108 (_field__rec_key_p _let_1032_1101))) (let
  ((_let_1040_1109 (_field__rec_key_d _let_1032_1101))) (let
  ((_let_1041_1110 (_field__rec_ca_nonce_used _let_1032_1101))) (let
  ((_let_1042_1111 (_field__rec_ca_Boolrue _let_1032_1101))) (let
  ((_let_1043_1112
    (_make__type_record_2_ _let_1033_1102 _let_1034_1103 _let_1035_1104
     _let_1036_1105 _let_1037_1106 _let_1038_1107 _let_1039_1108
     _let_972_1041 _let_1040_1109 _let_1041_1110 _let_1042_1111)))
  (let ((_let_1044_1113 (_field__rec_value _let_1043_1112))) (let
  ((_let_1045_1114 (_field__rec_vtype _let_1043_1112))) (let
  ((_let_1046_1115 (_field__rec_h_base _let_1043_1112))) (let
  ((_let_1047_1116 (_field__rec_h_offset _let_1043_1112))) (let
  ((_let_1048_1117 (_field__rec_h_length _let_1043_1112))) (let
  ((_let_1049_1118 (_field__rec_key_p _let_1043_1112))) (let
  ((_let_1050_1119 (_field__rec_enc_state_d _let_1043_1112))) (let
  ((_let_1051_1120 (_field__rec_key_d _let_1043_1112))) (let
  ((_let_1052_1121 (_field__rec_ca_nonce_used _let_1043_1112))) (let
  ((_let_1053_1122 (_field__rec_ca_Boolrue _let_1043_1112))) (let
  ((_let_1054_1123
    (_make__type_record_2_ _let_1044_1113 _let_1045_1114 _let_1046_1115
     _let_1047_1116 _let_1048_1117 GAR _let_1049_1118 _let_1050_1119
     _let_1051_1120 _let_1052_1121 _let_1053_1122)))
  (let
  ((_let_1055_1124
    (_make__type_record_2_ _let_1044_1113 _let_1045_1114 _let_1046_1115
     _let_1047_1116 _let_1048_1117 PLN _let_1049_1118 _let_1050_1119
     _let_1051_1120 _let_1052_1121 _let_1053_1122)))
  (let ((_let_1056_1125 (_field__rec_key_p _let_969_1038))) (let
  ((_let_1057_1126 (= _let_1056_1125 ViKey))) (let
  ((_let_1058_1127 (ite _let_1057_1126 _let_1055_1124 _let_1054_1123))) (let
  ((_let_1059_1128 (_field__rec_enc_state_p _let_969_1038))) (let
  ((_let_1060_1129 (= _let_1059_1128 ENC))) (let
  ((_let_1061_1130 (ite _let_1060_1129 _let_1054_1123 _let_1058_1127))) (let
  ((_let_1062_1131
    (_make__type_record_2_ _let_1033_1102 _let_1034_1103 _let_1035_1104
     _let_1036_1105 _let_1037_1106 _let_1038_1107 _let_1039_1108 GAR
     _let_1040_1109 _let_1041_1110 _let_1042_1111)))
  (let ((_let_1063_1132 (_field__rec_value _let_1062_1131))) (let
  ((_let_1064_1133 (_field__rec_vtype _let_1062_1131))) (let
  ((_let_1065_1134 (_field__rec_h_base _let_1062_1131))) (let
  ((_let_1066_1135 (_field__rec_h_offset _let_1062_1131))) (let
  ((_let_1067_1136 (_field__rec_h_length _let_1062_1131))) (let
  ((_let_1068_1137 (_field__rec_key_p _let_1062_1131))) (let
  ((_let_1069_1138 (_field__rec_enc_state_d _let_1062_1131))) (let
  ((_let_1070_1139 (_field__rec_key_d _let_1062_1131))) (let
  ((_let_1071_1140 (_field__rec_ca_nonce_used _let_1062_1131))) (let
  ((_let_1072_1141 (_field__rec_ca_Boolrue _let_1062_1131))) (let
  ((_let_1073_1142
    (_make__type_record_2_ _let_1063_1132 _let_1064_1133 _let_1065_1134
     _let_1066_1135 _let_1067_1136 GAR _let_1068_1137 _let_1069_1138
     _let_1070_1139 _let_1071_1140 _let_1072_1141)))
  (let ((_let_1074_1143 (= _let_972_1041 PLN))) (let
  ((_let_1075_1144 (ite _let_1074_1143 _let_1073_1142 _let_1061_1130))) (let
  ((_let_1076_1145 (_field__rec_value _let_1075_1144))) (let
  ((_let_1077_1146 (_field__rec_vtype _let_1075_1144))) (let
  ((_let_1078_1147 (_field__rec_h_base _let_1075_1144))) (let
  ((_let_1079_1148 (_field__rec_h_offset _let_1075_1144))) (let
  ((_let_1080_1149 (_field__rec_h_length _let_1075_1144))) (let
  ((_let_1081_1150 (_field__rec_enc_state_p _let_1075_1144))) (let
  ((_let_1082_1151 (_field__rec_enc_state_d _let_1075_1144))) (let
  ((_let_1083_1152 (_field__rec_key_d _let_1075_1144))) (let
  ((_let_1084_1153 (_field__rec_ca_nonce_used _let_1075_1144))) (let
  ((_let_1085_1154 (_field__rec_ca_Boolrue _let_1075_1144))) (let
  ((_let_1086_1155
    (_make__type_record_2_ _let_1076_1145 _let_1077_1146 _let_1078_1147
     _let_1079_1148 _let_1080_1149 _let_1081_1150 NoKey _let_1082_1151
     _let_1083_1152 _let_1084_1153 _let_1085_1154)))
  (let ((_let_1087_1156 (_field__rec_value _let_1086_1155))) (let
  ((_let_1088_1157 (_field__rec_vtype _let_1086_1155))) (let
  ((_let_1089_1158 (_field__rec_h_base _let_1086_1155))) (let
  ((_let_1090_1159 (_field__rec_h_offset _let_1086_1155))) (let
  ((_let_1091_1160 (_field__rec_h_length _let_1086_1155))) (let
  ((_let_1092_1161 (_field__rec_enc_state_p _let_1086_1155))) (let
  ((_let_1093_1162 (_field__rec_key_p _let_1086_1155))) (let
  ((_let_1094_1163 (_field__rec_enc_state_d _let_1086_1155))) (let
  ((_let_1095_1164 (_field__rec_ca_nonce_used _let_1086_1155))) (let
  ((_let_1096_1165 (_field__rec_ca_Boolrue _let_1086_1155))) (let
  ((_let_1097_1166
    (_make__type_record_2_ _let_1087_1156 _let_1088_1157 _let_1089_1158
     _let_1090_1159 _let_1091_1160 _let_1092_1161 _let_1093_1162
     _let_1094_1163 NoKey _let_1095_1164 _let_1096_1165)))
  (let ((_let_1098_1167 (_field__rec_value _let_1097_1166))) (let
  ((_let_1099_1168 (_field__rec_vtype _let_1097_1166))) (let
  ((_let_1100_1169 (_field__rec_h_base _let_1097_1166))) (let
  ((_let_1101_1170 (_field__rec_h_offset _let_1097_1166))) (let
  ((_let_1102_1171 (_field__rec_h_length _let_1097_1166))) (let
  ((_let_1103_1172 (_field__rec_enc_state_p _let_1097_1166))) (let
  ((_let_1104_1173 (_field__rec_key_p _let_1097_1166))) (let
  ((_let_1105_1174 (_field__rec_enc_state_d _let_1097_1166))) (let
  ((_let_1106_1175 (_field__rec_key_d _let_1097_1166))) (let
  ((_let_1107_1176 (_field__rec_ca_nonce_used _let_1097_1166))) (let
  ((_let_1108_1177
    (_make__type_record_2_ _let_1098_1167 _let_1099_1168 _let_1100_1169
     _let_1101_1170 _let_1102_1171 _let_1103_1172 _let_1104_1173
     _let_1105_1174 _let_1106_1175 _let_1107_1176 _let_971_1040)))
  (let ((_let_1109_1178 (_field__rec_value _let_1108_1177))) (let
  ((_let_1110_1179 (_field__rec_vtype _let_1108_1177))) (let
  ((_let_1111_1180 (_field__rec_h_base _let_1108_1177))) (let
  ((_let_1112_1181 (_field__rec_h_offset _let_1108_1177))) (let
  ((_let_1113_1182 (_field__rec_h_length _let_1108_1177))) (let
  ((_let_1114_1183 (_field__rec_enc_state_p _let_1108_1177))) (let
  ((_let_1115_1184 (_field__rec_key_p _let_1108_1177))) (let
  ((_let_1116_1185 (_field__rec_enc_state_d _let_1108_1177))) (let
  ((_let_1117_1186 (_field__rec_key_d _let_1108_1177))) (let
  ((_let_1118_1187 (_field__rec_ca_Boolrue _let_1108_1177))) (let
  ((_let_1119_1188
    (_make__type_record_2_ _let_1109_1178 _let_1110_1179 _let_1111_1180
     _let_1112_1181 _let_1113_1182 _let_1114_1183 _let_1115_1184
     _let_1116_1185 _let_1117_1186 _let_970_1039 _let_1118_1187)))
  (let
  ((_let_1120_1189 (const___ucld_151_ghost_to_addr_value_c381 _let_1119_1188)))
  (let
  ((_let_1121_1190
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var623
      (bvmul
       ((_ zero_extend 78) _let_1120_1189)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_1122_1191 (_field__rec_ca_Boolrue _let_1121_1190))) (let
  ((_let_1123_1192 (const___ucld_147_ghost_to_nonce_c379 _let_1119_1188)))
  (let
  ((_let_1124_1193
    (_field__rec_vtype havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_1125_1194
    (_field__rec_h_base havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_1126_1195
    (_field__rec_h_offset havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_1127_1196
    (_field__rec_h_length havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_1128_1197
    (_field__rec_enc_state_p havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_1129_1198
    (_field__rec_key_p havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_1130_1199
    (_field__rec_enc_state_d havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_1131_1200
    (_field__rec_key_d havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_1132_1201
    (_field__rec_ca_nonce_used havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_1133_1202
    (_field__rec_ca_Boolrue havoc_180___ucld_49_ret_ghost_data_out625)))
  (let
  ((_let_1134_1203
    (_make__type_record_2_ _let_934_1003 _let_1124_1193 _let_1125_1194
     _let_1126_1195 _let_1127_1196 _let_1128_1197 _let_1129_1198
     _let_1130_1199 _let_1131_1200 _let_1132_1201 _let_1133_1202)))
  (let ((_let_1135_1204 (_field__rec_value _let_1134_1203))) (let
  ((_let_1136_1205 (_field__rec_h_base _let_1134_1203))) (let
  ((_let_1137_1206 (_field__rec_h_offset _let_1134_1203))) (let
  ((_let_1138_1207 (_field__rec_h_length _let_1134_1203))) (let
  ((_let_1139_1208 (_field__rec_enc_state_p _let_1134_1203))) (let
  ((_let_1140_1209 (_field__rec_key_p _let_1134_1203))) (let
  ((_let_1141_1210 (_field__rec_enc_state_d _let_1134_1203))) (let
  ((_let_1142_1211 (_field__rec_key_d _let_1134_1203))) (let
  ((_let_1143_1212 (_field__rec_ca_nonce_used _let_1134_1203))) (let
  ((_let_1144_1213 (_field__rec_ca_Boolrue _let_1134_1203))) (let
  ((_let_1145_1214
    (_make__type_record_2_ _let_1135_1204 _let_935_1004 _let_1136_1205
     _let_1137_1206 _let_1138_1207 _let_1139_1208 _let_1140_1209
     _let_1141_1210 _let_1142_1211 _let_1143_1212 _let_1144_1213)))
  (let ((_let_1146_1215 (_field__rec_value _let_1145_1214))) (let
  ((_let_1147_1216 (_field__rec_vtype _let_1145_1214))) (let
  ((_let_1148_1217 (_field__rec_h_offset _let_1145_1214))) (let
  ((_let_1149_1218 (_field__rec_h_length _let_1145_1214))) (let
  ((_let_1150_1219 (_field__rec_enc_state_p _let_1145_1214))) (let
  ((_let_1151_1220 (_field__rec_key_p _let_1145_1214))) (let
  ((_let_1152_1221 (_field__rec_enc_state_d _let_1145_1214))) (let
  ((_let_1153_1222 (_field__rec_key_d _let_1145_1214))) (let
  ((_let_1154_1223 (_field__rec_ca_nonce_used _let_1145_1214))) (let
  ((_let_1155_1224 (_field__rec_ca_Boolrue _let_1145_1214))) (let
  ((_let_1156_1225
    (_make__type_record_2_ _let_1146_1215 _let_1147_1216 _let_936_1005
     _let_1148_1217 _let_1149_1218 _let_1150_1219 _let_1151_1220
     _let_1152_1221 _let_1153_1222 _let_1154_1223 _let_1155_1224)))
  (let ((_let_1157_1226 (_field__rec_value _let_1156_1225))) (let
  ((_let_1158_1227 (_field__rec_vtype _let_1156_1225))) (let
  ((_let_1159_1228 (_field__rec_h_base _let_1156_1225))) (let
  ((_let_1160_1229 (_field__rec_h_length _let_1156_1225))) (let
  ((_let_1161_1230 (_field__rec_enc_state_p _let_1156_1225))) (let
  ((_let_1162_1231 (_field__rec_key_p _let_1156_1225))) (let
  ((_let_1163_1232 (_field__rec_enc_state_d _let_1156_1225))) (let
  ((_let_1164_1233 (_field__rec_key_d _let_1156_1225))) (let
  ((_let_1165_1234 (_field__rec_ca_nonce_used _let_1156_1225))) (let
  ((_let_1166_1235 (_field__rec_ca_Boolrue _let_1156_1225))) (let
  ((_let_1167_1236
    (_make__type_record_2_ _let_1157_1226 _let_1158_1227 _let_1159_1228
     _let_932_1001 _let_1160_1229 _let_1161_1230 _let_1162_1231
     _let_1163_1232 _let_1164_1233 _let_1165_1234 _let_1166_1235)))
  (let ((_let_1168_1237 (_field__rec_value _let_1167_1236))) (let
  ((_let_1169_1238 (_field__rec_vtype _let_1167_1236))) (let
  ((_let_1170_1239 (_field__rec_h_base _let_1167_1236))) (let
  ((_let_1171_1240 (_field__rec_h_offset _let_1167_1236))) (let
  ((_let_1172_1241 (_field__rec_enc_state_p _let_1167_1236))) (let
  ((_let_1173_1242 (_field__rec_key_p _let_1167_1236))) (let
  ((_let_1174_1243 (_field__rec_enc_state_d _let_1167_1236))) (let
  ((_let_1175_1244 (_field__rec_key_d _let_1167_1236))) (let
  ((_let_1176_1245 (_field__rec_ca_nonce_used _let_1167_1236))) (let
  ((_let_1177_1246 (_field__rec_ca_Boolrue _let_1167_1236))) (let
  ((_let_1178_1247
    (_make__type_record_2_ _let_1168_1237 _let_1169_1238 _let_1170_1239
     _let_1171_1240 _let_937_1006 _let_1172_1241 _let_1173_1242
     _let_1174_1243 _let_1175_1244 _let_1176_1245 _let_1177_1246)))
  (let ((_let_1179_1248 (_field__rec_value _let_1178_1247))) (let
  ((_let_1180_1249 (_field__rec_vtype _let_1178_1247))) (let
  ((_let_1181_1250 (_field__rec_h_base _let_1178_1247))) (let
  ((_let_1182_1251 (_field__rec_h_offset _let_1178_1247))) (let
  ((_let_1183_1252 (_field__rec_h_length _let_1178_1247))) (let
  ((_let_1184_1253 (_field__rec_enc_state_p _let_1178_1247))) (let
  ((_let_1185_1254 (_field__rec_key_p _let_1178_1247))) (let
  ((_let_1186_1255 (_field__rec_key_d _let_1178_1247))) (let
  ((_let_1187_1256 (_field__rec_ca_nonce_used _let_1178_1247))) (let
  ((_let_1188_1257 (_field__rec_ca_Boolrue _let_1178_1247))) (let
  ((_let_1189_1258
    (_make__type_record_2_ _let_1179_1248 _let_1180_1249 _let_1181_1250
     _let_1182_1251 _let_1183_1252 _let_1184_1253 _let_1185_1254 ENC
     _let_1186_1255 _let_1187_1256 _let_1188_1257)))
  (let ((_let_1190_1259 (_field__rec_value _let_1189_1258))) (let
  ((_let_1191_1260 (_field__rec_vtype _let_1189_1258))) (let
  ((_let_1192_1261 (_field__rec_h_base _let_1189_1258))) (let
  ((_let_1193_1262 (_field__rec_h_offset _let_1189_1258))) (let
  ((_let_1194_1263 (_field__rec_h_length _let_1189_1258))) (let
  ((_let_1195_1264 (_field__rec_enc_state_p _let_1189_1258))) (let
  ((_let_1196_1265 (_field__rec_key_p _let_1189_1258))) (let
  ((_let_1197_1266 (_field__rec_enc_state_d _let_1189_1258))) (let
  ((_let_1198_1267 (_field__rec_ca_nonce_used _let_1189_1258))) (let
  ((_let_1199_1268 (_field__rec_ca_Boolrue _let_1189_1258))) (let
  ((_let_1200_1269
    (_make__type_record_2_ _let_1190_1259 _let_1191_1260 _let_1192_1261
     _let_1193_1262 _let_1194_1263 _let_1195_1264 _let_1196_1265
     _let_1197_1266 ViKey _let_1198_1267 _let_1199_1268)))
  (let ((_let_1201_1270 (_field__rec_value _let_1200_1269))) (let
  ((_let_1202_1271 (_field__rec_vtype _let_1200_1269))) (let
  ((_let_1203_1272 (_field__rec_h_base _let_1200_1269))) (let
  ((_let_1204_1273 (_field__rec_h_offset _let_1200_1269))) (let
  ((_let_1205_1274 (_field__rec_h_length _let_1200_1269))) (let
  ((_let_1206_1275 (_field__rec_key_p _let_1200_1269))) (let
  ((_let_1207_1276 (_field__rec_enc_state_d _let_1200_1269))) (let
  ((_let_1208_1277 (_field__rec_key_d _let_1200_1269))) (let
  ((_let_1209_1278 (_field__rec_ca_nonce_used _let_1200_1269))) (let
  ((_let_1210_1279 (_field__rec_ca_Boolrue _let_1200_1269))) (let
  ((_let_1211_1280
    (_make__type_record_2_ _let_1201_1270 _let_1202_1271 _let_1203_1272
     _let_1204_1273 _let_1205_1274 _let_938_1007 _let_1206_1275
     _let_1207_1276 _let_1208_1277 _let_1209_1278 _let_1210_1279)))
  (let ((_let_1212_1281 (_field__rec_value _let_1211_1280))) (let
  ((_let_1213_1282 (_field__rec_vtype _let_1211_1280))) (let
  ((_let_1214_1283 (_field__rec_h_base _let_1211_1280))) (let
  ((_let_1215_1284 (_field__rec_h_offset _let_1211_1280))) (let
  ((_let_1216_1285 (_field__rec_h_length _let_1211_1280))) (let
  ((_let_1217_1286 (_field__rec_enc_state_p _let_1211_1280))) (let
  ((_let_1218_1287 (_field__rec_enc_state_d _let_1211_1280))) (let
  ((_let_1219_1288 (_field__rec_key_d _let_1211_1280))) (let
  ((_let_1220_1289 (_field__rec_ca_nonce_used _let_1211_1280))) (let
  ((_let_1221_1290 (_field__rec_ca_Boolrue _let_1211_1280))) (let
  ((_let_1222_1291
    (_make__type_record_2_ _let_1212_1281 _let_1213_1282 _let_1214_1283
     _let_1215_1284 _let_1216_1285 _let_1217_1286 _let_939_1008
     _let_1218_1287 _let_1219_1288 _let_1220_1289 _let_1221_1290)))
  (let
  ((_let_1223_1292
    (_make__type_record_2_ _let_1179_1248 _let_1180_1249 _let_1181_1250
     _let_1182_1251 _let_1183_1252 _let_1184_1253 _let_1185_1254 GAR
     _let_1186_1255 _let_1187_1256 _let_1188_1257)))
  (let ((_let_1224_1293 (_field__rec_value _let_1223_1292))) (let
  ((_let_1225_1294 (_field__rec_vtype _let_1223_1292))) (let
  ((_let_1226_1295 (_field__rec_h_base _let_1223_1292))) (let
  ((_let_1227_1296 (_field__rec_h_offset _let_1223_1292))) (let
  ((_let_1228_1297 (_field__rec_h_length _let_1223_1292))) (let
  ((_let_1229_1298 (_field__rec_enc_state_p _let_1223_1292))) (let
  ((_let_1230_1299 (_field__rec_key_p _let_1223_1292))) (let
  ((_let_1231_1300 (_field__rec_enc_state_d _let_1223_1292))) (let
  ((_let_1232_1301 (_field__rec_ca_nonce_used _let_1223_1292))) (let
  ((_let_1233_1302 (_field__rec_ca_Boolrue _let_1223_1292))) (let
  ((_let_1234_1303
    (_make__type_record_2_ _let_1224_1293 _let_1225_1294 _let_1226_1295
     _let_1227_1296 _let_1228_1297 _let_1229_1298 _let_1230_1299
     _let_1231_1300 NoKey _let_1232_1301 _let_1233_1302)))
  (let ((_let_1235_1304 (_field__rec_value _let_1234_1303))) (let
  ((_let_1236_1305 (_field__rec_vtype _let_1234_1303))) (let
  ((_let_1237_1306 (_field__rec_h_base _let_1234_1303))) (let
  ((_let_1238_1307 (_field__rec_h_offset _let_1234_1303))) (let
  ((_let_1239_1308 (_field__rec_h_length _let_1234_1303))) (let
  ((_let_1240_1309 (_field__rec_key_p _let_1234_1303))) (let
  ((_let_1241_1310 (_field__rec_enc_state_d _let_1234_1303))) (let
  ((_let_1242_1311 (_field__rec_key_d _let_1234_1303))) (let
  ((_let_1243_1312 (_field__rec_ca_nonce_used _let_1234_1303))) (let
  ((_let_1244_1313 (_field__rec_ca_Boolrue _let_1234_1303))) (let
  ((_let_1245_1314
    (_make__type_record_2_ _let_1235_1304 _let_1236_1305 _let_1237_1306
     _let_1238_1307 _let_1239_1308 _let_938_1007 _let_1240_1309
     _let_1241_1310 _let_1242_1311 _let_1243_1312 _let_1244_1313)))
  (let ((_let_1246_1315 (_field__rec_value _let_1245_1314))) (let
  ((_let_1247_1316 (_field__rec_vtype _let_1245_1314))) (let
  ((_let_1248_1317 (_field__rec_h_base _let_1245_1314))) (let
  ((_let_1249_1318 (_field__rec_h_offset _let_1245_1314))) (let
  ((_let_1250_1319 (_field__rec_h_length _let_1245_1314))) (let
  ((_let_1251_1320 (_field__rec_enc_state_p _let_1245_1314))) (let
  ((_let_1252_1321 (_field__rec_enc_state_d _let_1245_1314))) (let
  ((_let_1253_1322 (_field__rec_key_d _let_1245_1314))) (let
  ((_let_1254_1323 (_field__rec_ca_nonce_used _let_1245_1314))) (let
  ((_let_1255_1324 (_field__rec_ca_Boolrue _let_1245_1314))) (let
  ((_let_1256_1325
    (_make__type_record_2_ _let_1246_1315 _let_1247_1316 _let_1248_1317
     _let_1249_1318 _let_1250_1319 _let_1251_1320 _let_939_1008
     _let_1252_1321 _let_1253_1322 _let_1254_1323 _let_1255_1324)))
  (let ((_let_1257_1326 (= _let_1122_1191 _let_1123_1192))) (let
  ((_let_1258_1327 (ite _let_1257_1326 _let_1256_1325 _let_1222_1291))) (let
  ((_let_1259_1328 (= _let_940_1009 PLN))) (let
  ((_let_1260_1329 (ite _let_1259_1328 _let_1256_1325 _let_1258_1327))) (let
  ((_let_1261_1330 (_field__rec_value _let_1260_1329))) (let
  ((_let_1262_1331 (_field__rec_vtype _let_1260_1329))) (let
  ((_let_1263_1332 (_field__rec_h_base _let_1260_1329))) (let
  ((_let_1264_1333 (_field__rec_h_offset _let_1260_1329))) (let
  ((_let_1265_1334 (_field__rec_h_length _let_1260_1329))) (let
  ((_let_1266_1335 (_field__rec_enc_state_p _let_1260_1329))) (let
  ((_let_1267_1336 (_field__rec_key_p _let_1260_1329))) (let
  ((_let_1268_1337 (_field__rec_enc_state_d _let_1260_1329))) (let
  ((_let_1269_1338 (_field__rec_key_d _let_1260_1329))) (let
  ((_let_1270_1339 (_field__rec_ca_Boolrue _let_1260_1329))) (let
  ((_let_1271_1340
    (_make__type_record_2_ _let_1261_1330 _let_1262_1331 _let_1263_1332
     _let_1264_1333 _let_1265_1334 _let_1266_1335 _let_1267_1336
     _let_1268_1337 _let_1269_1338 _let_1123_1192 _let_1270_1339)))
  (let ((_let_1272_1341 (_field__rec_value _let_1271_1340))) (let
  ((_let_1273_1342 (_field__rec_vtype _let_1271_1340))) (let
  ((_let_1274_1343 (_field__rec_h_base _let_1271_1340))) (let
  ((_let_1275_1344 (_field__rec_h_offset _let_1271_1340))) (let
  ((_let_1276_1345 (_field__rec_h_length _let_1271_1340))) (let
  ((_let_1277_1346 (_field__rec_enc_state_p _let_1271_1340))) (let
  ((_let_1278_1347 (_field__rec_key_p _let_1271_1340))) (let
  ((_let_1279_1348 (_field__rec_enc_state_d _let_1271_1340))) (let
  ((_let_1280_1349 (_field__rec_key_d _let_1271_1340))) (let
  ((_let_1281_1350 (_field__rec_ca_nonce_used _let_1271_1340))) (let
  ((_let_1282_1351
    (_make__type_record_2_ _let_1272_1341 _let_1273_1342 _let_1274_1343
     _let_1275_1344 _let_1276_1345 _let_1277_1346 _let_1278_1347
     _let_1279_1348 _let_1280_1349 _let_1281_1350 _let_1122_1191)))
  (let
  ((_let_1283_1352
    (=
     ((_ extract 0 0)
      (bvlshr
       initial_51___ucld_157_alloc_map_var85
       (bvmul ((_ zero_extend 2) _let_1120_1189) #b0001)))
     #b1)))
  (let
  ((_let_1284_1353
    (ite _let_1283_1352 initial_64___ucld_169_data_probe_g_var997
     _let_1282_1351)))
  (let
  ((_let_1285_1354
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_1286_1355 (ite _let_1285_1354 _let_1284_1353 _let_968_1037)))
  (let
  ((_let_1287_1356
    (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1288_1357
    (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1289_1358
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1290_1359
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1291_1360
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1292_1361
    (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1293_1362
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1294_1363
    (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1295_1364
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1296_1365
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1297_1366
    (_make__type_record_2_ _let_934_1003 _let_1287_1356 _let_1288_1357
     _let_1289_1358 _let_1290_1359 _let_1291_1360 _let_1292_1361
     _let_1293_1362 _let_1294_1363 _let_1295_1364 _let_1296_1365)))
  (let ((_let_1298_1367 (_field__rec_value _let_1297_1366))) (let
  ((_let_1299_1368 (_field__rec_h_base _let_1297_1366))) (let
  ((_let_1300_1369 (_field__rec_h_offset _let_1297_1366))) (let
  ((_let_1301_1370 (_field__rec_h_length _let_1297_1366))) (let
  ((_let_1302_1371 (_field__rec_enc_state_p _let_1297_1366))) (let
  ((_let_1303_1372 (_field__rec_key_p _let_1297_1366))) (let
  ((_let_1304_1373 (_field__rec_enc_state_d _let_1297_1366))) (let
  ((_let_1305_1374 (_field__rec_key_d _let_1297_1366))) (let
  ((_let_1306_1375 (_field__rec_ca_nonce_used _let_1297_1366))) (let
  ((_let_1307_1376 (_field__rec_ca_Boolrue _let_1297_1366))) (let
  ((_let_1308_1377
    (_make__type_record_2_ _let_1298_1367 _let_935_1004 _let_1299_1368
     _let_1300_1369 _let_1301_1370 _let_1302_1371 _let_1303_1372
     _let_1304_1373 _let_1305_1374 _let_1306_1375 _let_1307_1376)))
  (let ((_let_1309_1378 (_field__rec_value _let_1308_1377))) (let
  ((_let_1310_1379 (_field__rec_vtype _let_1308_1377))) (let
  ((_let_1311_1380 (_field__rec_h_offset _let_1308_1377))) (let
  ((_let_1312_1381 (_field__rec_h_length _let_1308_1377))) (let
  ((_let_1313_1382 (_field__rec_enc_state_p _let_1308_1377))) (let
  ((_let_1314_1383 (_field__rec_key_p _let_1308_1377))) (let
  ((_let_1315_1384 (_field__rec_enc_state_d _let_1308_1377))) (let
  ((_let_1316_1385 (_field__rec_key_d _let_1308_1377))) (let
  ((_let_1317_1386 (_field__rec_ca_nonce_used _let_1308_1377))) (let
  ((_let_1318_1387 (_field__rec_ca_Boolrue _let_1308_1377))) (let
  ((_let_1319_1388
    (_make__type_record_2_ _let_1309_1378 _let_1310_1379 _let_936_1005
     _let_1311_1380 _let_1312_1381 _let_1313_1382 _let_1314_1383
     _let_1315_1384 _let_1316_1385 _let_1317_1386 _let_1318_1387)))
  (let ((_let_1320_1389 (_field__rec_value _let_1319_1388))) (let
  ((_let_1321_1390 (_field__rec_vtype _let_1319_1388))) (let
  ((_let_1322_1391 (_field__rec_h_base _let_1319_1388))) (let
  ((_let_1323_1392 (_field__rec_h_length _let_1319_1388))) (let
  ((_let_1324_1393 (_field__rec_enc_state_p _let_1319_1388))) (let
  ((_let_1325_1394 (_field__rec_key_p _let_1319_1388))) (let
  ((_let_1326_1395 (_field__rec_enc_state_d _let_1319_1388))) (let
  ((_let_1327_1396 (_field__rec_key_d _let_1319_1388))) (let
  ((_let_1328_1397 (_field__rec_ca_nonce_used _let_1319_1388))) (let
  ((_let_1329_1398 (_field__rec_ca_Boolrue _let_1319_1388))) (let
  ((_let_1330_1399
    (_make__type_record_2_ _let_1320_1389 _let_1321_1390 _let_1322_1391
     _let_932_1001 _let_1323_1392 _let_1324_1393 _let_1325_1394
     _let_1326_1395 _let_1327_1396 _let_1328_1397 _let_1329_1398)))
  (let ((_let_1331_1400 (_field__rec_value _let_1330_1399))) (let
  ((_let_1332_1401 (_field__rec_vtype _let_1330_1399))) (let
  ((_let_1333_1402 (_field__rec_h_base _let_1330_1399))) (let
  ((_let_1334_1403 (_field__rec_h_offset _let_1330_1399))) (let
  ((_let_1335_1404 (_field__rec_enc_state_p _let_1330_1399))) (let
  ((_let_1336_1405 (_field__rec_key_p _let_1330_1399))) (let
  ((_let_1337_1406 (_field__rec_enc_state_d _let_1330_1399))) (let
  ((_let_1338_1407 (_field__rec_key_d _let_1330_1399))) (let
  ((_let_1339_1408 (_field__rec_ca_nonce_used _let_1330_1399))) (let
  ((_let_1340_1409 (_field__rec_ca_Boolrue _let_1330_1399))) (let
  ((_let_1341_1410
    (_make__type_record_2_ _let_1331_1400 _let_1332_1401 _let_1333_1402
     _let_1334_1403 _let_937_1006 _let_1335_1404 _let_1336_1405
     _let_1337_1406 _let_1338_1407 _let_1339_1408 _let_1340_1409)))
  (let ((_let_1342_1411 (_field__rec_value _let_1341_1410))) (let
  ((_let_1343_1412 (_field__rec_vtype _let_1341_1410))) (let
  ((_let_1344_1413 (_field__rec_h_base _let_1341_1410))) (let
  ((_let_1345_1414 (_field__rec_h_offset _let_1341_1410))) (let
  ((_let_1346_1415 (_field__rec_h_length _let_1341_1410))) (let
  ((_let_1347_1416 (_field__rec_enc_state_p _let_1341_1410))) (let
  ((_let_1348_1417 (_field__rec_key_p _let_1341_1410))) (let
  ((_let_1349_1418 (_field__rec_key_d _let_1341_1410))) (let
  ((_let_1350_1419 (_field__rec_ca_nonce_used _let_1341_1410))) (let
  ((_let_1351_1420 (_field__rec_ca_Boolrue _let_1341_1410))) (let
  ((_let_1352_1421
    (_make__type_record_2_ _let_1342_1411 _let_1343_1412 _let_1344_1413
     _let_1345_1414 _let_1346_1415 _let_1347_1416 _let_1348_1417
     _let_940_1009 _let_1349_1418 _let_1350_1419 _let_1351_1420)))
  (let ((_let_1353_1422 (_field__rec_value _let_1352_1421))) (let
  ((_let_1354_1423 (_field__rec_vtype _let_1352_1421))) (let
  ((_let_1355_1424 (_field__rec_h_base _let_1352_1421))) (let
  ((_let_1356_1425 (_field__rec_h_offset _let_1352_1421))) (let
  ((_let_1357_1426 (_field__rec_h_length _let_1352_1421))) (let
  ((_let_1358_1427 (_field__rec_key_p _let_1352_1421))) (let
  ((_let_1359_1428 (_field__rec_enc_state_d _let_1352_1421))) (let
  ((_let_1360_1429 (_field__rec_key_d _let_1352_1421))) (let
  ((_let_1361_1430 (_field__rec_ca_nonce_used _let_1352_1421))) (let
  ((_let_1362_1431 (_field__rec_ca_Boolrue _let_1352_1421))) (let
  ((_let_1363_1432
    (_make__type_record_2_ _let_1353_1422 _let_1354_1423 _let_1355_1424
     _let_1356_1425 _let_1357_1426 GAR _let_1358_1427 _let_1359_1428
     _let_1360_1429 _let_1361_1430 _let_1362_1431)))
  (let
  ((_let_1364_1433
    (_make__type_record_2_ _let_1353_1422 _let_1354_1423 _let_1355_1424
     _let_1356_1425 _let_1357_1426 PLN _let_1358_1427 _let_1359_1428
     _let_1360_1429 _let_1361_1430 _let_1362_1431)))
  (let ((_let_1365_1434 (= _let_939_1008 ViKey))) (let
  ((_let_1366_1435 (ite _let_1365_1434 _let_1364_1433 _let_1363_1432))) (let
  ((_let_1367_1436 (= _let_938_1007 ENC))) (let
  ((_let_1368_1437 (ite _let_1367_1436 _let_1363_1432 _let_1366_1435))) (let
  ((_let_1369_1438
    (_make__type_record_2_ _let_1342_1411 _let_1343_1412 _let_1344_1413
     _let_1345_1414 _let_1346_1415 _let_1347_1416 _let_1348_1417 GAR
     _let_1349_1418 _let_1350_1419 _let_1351_1420)))
  (let ((_let_1370_1439 (_field__rec_value _let_1369_1438))) (let
  ((_let_1371_1440 (_field__rec_vtype _let_1369_1438))) (let
  ((_let_1372_1441 (_field__rec_h_base _let_1369_1438))) (let
  ((_let_1373_1442 (_field__rec_h_offset _let_1369_1438))) (let
  ((_let_1374_1443 (_field__rec_h_length _let_1369_1438))) (let
  ((_let_1375_1444 (_field__rec_key_p _let_1369_1438))) (let
  ((_let_1376_1445 (_field__rec_enc_state_d _let_1369_1438))) (let
  ((_let_1377_1446 (_field__rec_key_d _let_1369_1438))) (let
  ((_let_1378_1447 (_field__rec_ca_nonce_used _let_1369_1438))) (let
  ((_let_1379_1448 (_field__rec_ca_Boolrue _let_1369_1438))) (let
  ((_let_1380_1449
    (_make__type_record_2_ _let_1370_1439 _let_1371_1440 _let_1372_1441
     _let_1373_1442 _let_1374_1443 GAR _let_1375_1444 _let_1376_1445
     _let_1377_1446 _let_1378_1447 _let_1379_1448)))
  (let ((_let_1381_1450 (ite _let_1259_1328 _let_1380_1449 _let_1368_1437)))
  (let ((_let_1382_1451 (_field__rec_value _let_1381_1450))) (let
  ((_let_1383_1452 (_field__rec_vtype _let_1381_1450))) (let
  ((_let_1384_1453 (_field__rec_h_base _let_1381_1450))) (let
  ((_let_1385_1454 (_field__rec_h_offset _let_1381_1450))) (let
  ((_let_1386_1455 (_field__rec_h_length _let_1381_1450))) (let
  ((_let_1387_1456 (_field__rec_enc_state_p _let_1381_1450))) (let
  ((_let_1388_1457 (_field__rec_enc_state_d _let_1381_1450))) (let
  ((_let_1389_1458 (_field__rec_key_d _let_1381_1450))) (let
  ((_let_1390_1459 (_field__rec_ca_nonce_used _let_1381_1450))) (let
  ((_let_1391_1460 (_field__rec_ca_Boolrue _let_1381_1450))) (let
  ((_let_1392_1461
    (_make__type_record_2_ _let_1382_1451 _let_1383_1452 _let_1384_1453
     _let_1385_1454 _let_1386_1455 _let_1387_1456 NoKey _let_1388_1457
     _let_1389_1458 _let_1390_1459 _let_1391_1460)))
  (let ((_let_1393_1462 (_field__rec_value _let_1392_1461))) (let
  ((_let_1394_1463 (_field__rec_vtype _let_1392_1461))) (let
  ((_let_1395_1464 (_field__rec_h_base _let_1392_1461))) (let
  ((_let_1396_1465 (_field__rec_h_offset _let_1392_1461))) (let
  ((_let_1397_1466 (_field__rec_h_length _let_1392_1461))) (let
  ((_let_1398_1467 (_field__rec_enc_state_p _let_1392_1461))) (let
  ((_let_1399_1468 (_field__rec_key_p _let_1392_1461))) (let
  ((_let_1400_1469 (_field__rec_enc_state_d _let_1392_1461))) (let
  ((_let_1401_1470 (_field__rec_ca_nonce_used _let_1392_1461))) (let
  ((_let_1402_1471 (_field__rec_ca_Boolrue _let_1392_1461))) (let
  ((_let_1403_1472
    (_make__type_record_2_ _let_1393_1462 _let_1394_1463 _let_1395_1464
     _let_1396_1465 _let_1397_1466 _let_1398_1467 _let_1399_1468
     _let_1400_1469 NoKey _let_1401_1470 _let_1402_1471)))
  (let ((_let_1404_1473 (_field__rec_value _let_1403_1472))) (let
  ((_let_1405_1474 (_field__rec_vtype _let_1403_1472))) (let
  ((_let_1406_1475 (_field__rec_h_base _let_1403_1472))) (let
  ((_let_1407_1476 (_field__rec_h_offset _let_1403_1472))) (let
  ((_let_1408_1477 (_field__rec_h_length _let_1403_1472))) (let
  ((_let_1409_1478 (_field__rec_enc_state_p _let_1403_1472))) (let
  ((_let_1410_1479 (_field__rec_key_p _let_1403_1472))) (let
  ((_let_1411_1480 (_field__rec_enc_state_d _let_1403_1472))) (let
  ((_let_1412_1481 (_field__rec_key_d _let_1403_1472))) (let
  ((_let_1413_1482 (_field__rec_ca_nonce_used _let_1403_1472))) (let
  ((_let_1414_1483
    (_make__type_record_2_ _let_1404_1473 _let_1405_1474 _let_1406_1475
     _let_1407_1476 _let_1408_1477 _let_1409_1478 _let_1410_1479
     _let_1411_1480 _let_1412_1481 _let_1413_1482 _let_943_1012)))
  (let ((_let_1415_1484 (_field__rec_value _let_1414_1483))) (let
  ((_let_1416_1485 (_field__rec_vtype _let_1414_1483))) (let
  ((_let_1417_1486 (_field__rec_h_base _let_1414_1483))) (let
  ((_let_1418_1487 (_field__rec_h_offset _let_1414_1483))) (let
  ((_let_1419_1488 (_field__rec_h_length _let_1414_1483))) (let
  ((_let_1420_1489 (_field__rec_enc_state_p _let_1414_1483))) (let
  ((_let_1421_1490 (_field__rec_key_p _let_1414_1483))) (let
  ((_let_1422_1491 (_field__rec_enc_state_d _let_1414_1483))) (let
  ((_let_1423_1492 (_field__rec_key_d _let_1414_1483))) (let
  ((_let_1424_1493 (_field__rec_ca_Boolrue _let_1414_1483))) (let
  ((_let_1425_1494
    (_make__type_record_2_ _let_1415_1484 _let_1416_1485 _let_1417_1486
     _let_1418_1487 _let_1419_1488 _let_1420_1489 _let_1421_1490
     _let_1422_1491 _let_1423_1492 _let_942_1011 _let_1424_1493)))
  (let
  ((_let_1426_1495 (const___ucld_151_ghost_to_addr_value_c381 _let_1425_1494)))
  (let
  ((_let_1427_1496
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var623
      (bvmul
       ((_ zero_extend 78) _let_1426_1495)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_1428_1497 (_field__rec_ca_Boolrue _let_1427_1496))) (let
  ((_let_1429_1498 (_field__rec_ca_nonce_used _let_1427_1496))) (let
  ((_let_1430_1499 (_field__rec_key_p _let_1427_1496))) (let
  ((_let_1431_1500 (_field__rec_enc_state_p _let_1427_1496))) (let
  ((_let_1432_1501 (_field__rec_h_length _let_1427_1496))) (let
  ((_let_1433_1502 (_field__rec_h_offset _let_1427_1496))) (let
  ((_let_1434_1503 (_field__rec_h_base _let_1427_1496))) (let
  ((_let_1435_1504 (_field__rec_vtype _let_1427_1496))) (let
  ((_let_1436_1505 (_field__rec_value _let_1427_1496))) (let
  ((_let_1437_1506
    (_field__rec_vtype havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_1438_1507
    (_field__rec_h_base havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_1439_1508
    (_field__rec_h_offset havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_1440_1509
    (_field__rec_h_length havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_1441_1510
    (_field__rec_enc_state_p havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_1442_1511
    (_field__rec_key_p havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_1443_1512
    (_field__rec_enc_state_d havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_1444_1513
    (_field__rec_key_d havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_1445_1514
    (_field__rec_ca_nonce_used havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_1446_1515
    (_field__rec_ca_Boolrue havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_1447_1516
    (_make__type_record_2_ _let_1436_1505 _let_1437_1506 _let_1438_1507
     _let_1439_1508 _let_1440_1509 _let_1441_1510 _let_1442_1511
     _let_1443_1512 _let_1444_1513 _let_1445_1514 _let_1446_1515)))
  (let ((_let_1448_1517 (_field__rec_value _let_1447_1516))) (let
  ((_let_1449_1518 (_field__rec_h_base _let_1447_1516))) (let
  ((_let_1450_1519 (_field__rec_h_offset _let_1447_1516))) (let
  ((_let_1451_1520 (_field__rec_h_length _let_1447_1516))) (let
  ((_let_1452_1521 (_field__rec_enc_state_p _let_1447_1516))) (let
  ((_let_1453_1522 (_field__rec_key_p _let_1447_1516))) (let
  ((_let_1454_1523 (_field__rec_enc_state_d _let_1447_1516))) (let
  ((_let_1455_1524 (_field__rec_key_d _let_1447_1516))) (let
  ((_let_1456_1525 (_field__rec_ca_nonce_used _let_1447_1516))) (let
  ((_let_1457_1526 (_field__rec_ca_Boolrue _let_1447_1516))) (let
  ((_let_1458_1527
    (_make__type_record_2_ _let_1448_1517 _let_1435_1504 _let_1449_1518
     _let_1450_1519 _let_1451_1520 _let_1452_1521 _let_1453_1522
     _let_1454_1523 _let_1455_1524 _let_1456_1525 _let_1457_1526)))
  (let ((_let_1459_1528 (_field__rec_value _let_1458_1527))) (let
  ((_let_1460_1529 (_field__rec_vtype _let_1458_1527))) (let
  ((_let_1461_1530 (_field__rec_h_offset _let_1458_1527))) (let
  ((_let_1462_1531 (_field__rec_h_length _let_1458_1527))) (let
  ((_let_1463_1532 (_field__rec_enc_state_p _let_1458_1527))) (let
  ((_let_1464_1533 (_field__rec_key_p _let_1458_1527))) (let
  ((_let_1465_1534 (_field__rec_enc_state_d _let_1458_1527))) (let
  ((_let_1466_1535 (_field__rec_key_d _let_1458_1527))) (let
  ((_let_1467_1536 (_field__rec_ca_nonce_used _let_1458_1527))) (let
  ((_let_1468_1537 (_field__rec_ca_Boolrue _let_1458_1527))) (let
  ((_let_1469_1538
    (_make__type_record_2_ _let_1459_1528 _let_1460_1529 _let_1434_1503
     _let_1461_1530 _let_1462_1531 _let_1463_1532 _let_1464_1533
     _let_1465_1534 _let_1466_1535 _let_1467_1536 _let_1468_1537)))
  (let ((_let_1470_1539 (_field__rec_value _let_1469_1538))) (let
  ((_let_1471_1540 (_field__rec_vtype _let_1469_1538))) (let
  ((_let_1472_1541 (_field__rec_h_base _let_1469_1538))) (let
  ((_let_1473_1542 (_field__rec_h_length _let_1469_1538))) (let
  ((_let_1474_1543 (_field__rec_enc_state_p _let_1469_1538))) (let
  ((_let_1475_1544 (_field__rec_key_p _let_1469_1538))) (let
  ((_let_1476_1545 (_field__rec_enc_state_d _let_1469_1538))) (let
  ((_let_1477_1546 (_field__rec_key_d _let_1469_1538))) (let
  ((_let_1478_1547 (_field__rec_ca_nonce_used _let_1469_1538))) (let
  ((_let_1479_1548 (_field__rec_ca_Boolrue _let_1469_1538))) (let
  ((_let_1480_1549
    (_make__type_record_2_ _let_1470_1539 _let_1471_1540 _let_1472_1541
     _let_1433_1502 _let_1473_1542 _let_1474_1543 _let_1475_1544
     _let_1476_1545 _let_1477_1546 _let_1478_1547 _let_1479_1548)))
  (let ((_let_1481_1550 (_field__rec_value _let_1480_1549))) (let
  ((_let_1482_1551 (_field__rec_vtype _let_1480_1549))) (let
  ((_let_1483_1552 (_field__rec_h_base _let_1480_1549))) (let
  ((_let_1484_1553 (_field__rec_h_offset _let_1480_1549))) (let
  ((_let_1485_1554 (_field__rec_enc_state_p _let_1480_1549))) (let
  ((_let_1486_1555 (_field__rec_key_p _let_1480_1549))) (let
  ((_let_1487_1556 (_field__rec_enc_state_d _let_1480_1549))) (let
  ((_let_1488_1557 (_field__rec_key_d _let_1480_1549))) (let
  ((_let_1489_1558 (_field__rec_ca_nonce_used _let_1480_1549))) (let
  ((_let_1490_1559 (_field__rec_ca_Boolrue _let_1480_1549))) (let
  ((_let_1491_1560
    (_make__type_record_2_ _let_1481_1550 _let_1482_1551 _let_1483_1552
     _let_1484_1553 _let_1432_1501 _let_1485_1554 _let_1486_1555
     _let_1487_1556 _let_1488_1557 _let_1489_1558 _let_1490_1559)))
  (let ((_let_1492_1561 (_field__rec_value _let_1491_1560))) (let
  ((_let_1493_1562 (_field__rec_vtype _let_1491_1560))) (let
  ((_let_1494_1563 (_field__rec_h_base _let_1491_1560))) (let
  ((_let_1495_1564 (_field__rec_h_offset _let_1491_1560))) (let
  ((_let_1496_1565 (_field__rec_h_length _let_1491_1560))) (let
  ((_let_1497_1566 (_field__rec_enc_state_p _let_1491_1560))) (let
  ((_let_1498_1567 (_field__rec_key_p _let_1491_1560))) (let
  ((_let_1499_1568 (_field__rec_key_d _let_1491_1560))) (let
  ((_let_1500_1569 (_field__rec_ca_nonce_used _let_1491_1560))) (let
  ((_let_1501_1570 (_field__rec_ca_Boolrue _let_1491_1560))) (let
  ((_let_1502_1571
    (_make__type_record_2_ _let_1492_1561 _let_1493_1562 _let_1494_1563
     _let_1495_1564 _let_1496_1565 _let_1497_1566 _let_1498_1567 GAR
     _let_1499_1568 _let_1500_1569 _let_1501_1570)))
  (let ((_let_1503_1572 (_field__rec_value _let_1502_1571))) (let
  ((_let_1504_1573 (_field__rec_vtype _let_1502_1571))) (let
  ((_let_1505_1574 (_field__rec_h_base _let_1502_1571))) (let
  ((_let_1506_1575 (_field__rec_h_offset _let_1502_1571))) (let
  ((_let_1507_1576 (_field__rec_h_length _let_1502_1571))) (let
  ((_let_1508_1577 (_field__rec_enc_state_p _let_1502_1571))) (let
  ((_let_1509_1578 (_field__rec_key_p _let_1502_1571))) (let
  ((_let_1510_1579 (_field__rec_enc_state_d _let_1502_1571))) (let
  ((_let_1511_1580 (_field__rec_ca_nonce_used _let_1502_1571))) (let
  ((_let_1512_1581 (_field__rec_ca_Boolrue _let_1502_1571))) (let
  ((_let_1513_1582
    (_make__type_record_2_ _let_1503_1572 _let_1504_1573 _let_1505_1574
     _let_1506_1575 _let_1507_1576 _let_1508_1577 _let_1509_1578
     _let_1510_1579 NoKey _let_1511_1580 _let_1512_1581)))
  (let
  ((_let_1514_1583
    (_make__type_record_2_ _let_1492_1561 _let_1493_1562 _let_1494_1563
     _let_1495_1564 _let_1496_1565 _let_1497_1566 _let_1498_1567 PLN
     _let_1499_1568 _let_1500_1569 _let_1501_1570)))
  (let ((_let_1515_1584 (_field__rec_value _let_1514_1583))) (let
  ((_let_1516_1585 (_field__rec_vtype _let_1514_1583))) (let
  ((_let_1517_1586 (_field__rec_h_base _let_1514_1583))) (let
  ((_let_1518_1587 (_field__rec_h_offset _let_1514_1583))) (let
  ((_let_1519_1588 (_field__rec_h_length _let_1514_1583))) (let
  ((_let_1520_1589 (_field__rec_enc_state_p _let_1514_1583))) (let
  ((_let_1521_1590 (_field__rec_key_p _let_1514_1583))) (let
  ((_let_1522_1591 (_field__rec_enc_state_d _let_1514_1583))) (let
  ((_let_1523_1592 (_field__rec_ca_nonce_used _let_1514_1583))) (let
  ((_let_1524_1593 (_field__rec_ca_Boolrue _let_1514_1583))) (let
  ((_let_1525_1594
    (_make__type_record_2_ _let_1515_1584 _let_1516_1585 _let_1517_1586
     _let_1518_1587 _let_1519_1588 _let_1520_1589 _let_1521_1590
     _let_1522_1591 NoKey _let_1523_1592 _let_1524_1593)))
  (let
  ((_let_1526_1595 (const___ucld_147_ghost_to_nonce_c379 _let_1425_1494)))
  (let ((_let_1527_1596 (= _let_1429_1498 _let_1526_1595))) (let
  ((_let_1528_1597 (_field__rec_key_d _let_1427_1496))) (let
  ((_let_1529_1598 (= _let_1528_1597 ViKey))) (let
  ((_let_1530_1599 (and _let_1529_1598 _let_1527_1596))) (let
  ((_let_1531_1600 (ite _let_1530_1599 _let_1525_1594 _let_1513_1582))) (let
  ((_let_1532_1601 (_field__rec_enc_state_d _let_1427_1496))) (let
  ((_let_1533_1602 (= _let_1532_1601 ENC))) (let
  ((_let_1534_1603 (ite _let_1533_1602 _let_1513_1582 _let_1531_1600))) (let
  ((_let_1535_1604 (_field__rec_value _let_1534_1603))) (let
  ((_let_1536_1605 (_field__rec_vtype _let_1534_1603))) (let
  ((_let_1537_1606 (_field__rec_h_base _let_1534_1603))) (let
  ((_let_1538_1607 (_field__rec_h_offset _let_1534_1603))) (let
  ((_let_1539_1608 (_field__rec_h_length _let_1534_1603))) (let
  ((_let_1540_1609 (_field__rec_key_p _let_1534_1603))) (let
  ((_let_1541_1610 (_field__rec_enc_state_d _let_1534_1603))) (let
  ((_let_1542_1611 (_field__rec_key_d _let_1534_1603))) (let
  ((_let_1543_1612 (_field__rec_ca_nonce_used _let_1534_1603))) (let
  ((_let_1544_1613 (_field__rec_ca_Boolrue _let_1534_1603))) (let
  ((_let_1545_1614
    (_make__type_record_2_ _let_1535_1604 _let_1536_1605 _let_1537_1606
     _let_1538_1607 _let_1539_1608 _let_1431_1500 _let_1540_1609
     _let_1541_1610 _let_1542_1611 _let_1543_1612 _let_1544_1613)))
  (let ((_let_1546_1615 (_field__rec_value _let_1545_1614))) (let
  ((_let_1547_1616 (_field__rec_vtype _let_1545_1614))) (let
  ((_let_1548_1617 (_field__rec_h_base _let_1545_1614))) (let
  ((_let_1549_1618 (_field__rec_h_offset _let_1545_1614))) (let
  ((_let_1550_1619 (_field__rec_h_length _let_1545_1614))) (let
  ((_let_1551_1620 (_field__rec_enc_state_p _let_1545_1614))) (let
  ((_let_1552_1621 (_field__rec_enc_state_d _let_1545_1614))) (let
  ((_let_1553_1622 (_field__rec_key_d _let_1545_1614))) (let
  ((_let_1554_1623 (_field__rec_ca_nonce_used _let_1545_1614))) (let
  ((_let_1555_1624 (_field__rec_ca_Boolrue _let_1545_1614))) (let
  ((_let_1556_1625
    (_make__type_record_2_ _let_1546_1615 _let_1547_1616 _let_1548_1617
     _let_1549_1618 _let_1550_1619 _let_1551_1620 _let_1430_1499
     _let_1552_1621 _let_1553_1622 _let_1554_1623 _let_1555_1624)))
  (let ((_let_1557_1626 (_field__rec_value _let_1556_1625))) (let
  ((_let_1558_1627 (_field__rec_vtype _let_1556_1625))) (let
  ((_let_1559_1628 (_field__rec_h_base _let_1556_1625))) (let
  ((_let_1560_1629 (_field__rec_h_offset _let_1556_1625))) (let
  ((_let_1561_1630 (_field__rec_h_length _let_1556_1625))) (let
  ((_let_1562_1631 (_field__rec_enc_state_p _let_1556_1625))) (let
  ((_let_1563_1632 (_field__rec_key_p _let_1556_1625))) (let
  ((_let_1564_1633 (_field__rec_enc_state_d _let_1556_1625))) (let
  ((_let_1565_1634 (_field__rec_key_d _let_1556_1625))) (let
  ((_let_1566_1635 (_field__rec_ca_Boolrue _let_1556_1625))) (let
  ((_let_1567_1636
    (_make__type_record_2_ _let_1557_1626 _let_1558_1627 _let_1559_1628
     _let_1560_1629 _let_1561_1630 _let_1562_1631 _let_1563_1632
     _let_1564_1633 _let_1565_1634 _let_1429_1498 _let_1566_1635)))
  (let ((_let_1568_1637 (_field__rec_value _let_1567_1636))) (let
  ((_let_1569_1638 (_field__rec_vtype _let_1567_1636))) (let
  ((_let_1570_1639 (_field__rec_h_base _let_1567_1636))) (let
  ((_let_1571_1640 (_field__rec_h_offset _let_1567_1636))) (let
  ((_let_1572_1641 (_field__rec_h_length _let_1567_1636))) (let
  ((_let_1573_1642 (_field__rec_enc_state_p _let_1567_1636))) (let
  ((_let_1574_1643 (_field__rec_key_p _let_1567_1636))) (let
  ((_let_1575_1644 (_field__rec_enc_state_d _let_1567_1636))) (let
  ((_let_1576_1645 (_field__rec_key_d _let_1567_1636))) (let
  ((_let_1577_1646 (_field__rec_ca_nonce_used _let_1567_1636))) (let
  ((_let_1578_1647
    (_make__type_record_2_ _let_1568_1637 _let_1569_1638 _let_1570_1639
     _let_1571_1640 _let_1572_1641 _let_1573_1642 _let_1574_1643
     _let_1575_1644 _let_1576_1645 _let_1577_1646 _let_1428_1497)))
  (let
  ((_let_1579_1648
    (=
     ((_ extract 0 0)
      (bvlshr
       initial_51___ucld_157_alloc_map_var85
       (bvmul ((_ zero_extend 2) _let_1426_1495) #b0001)))
     #b1)))
  (let ((_let_1580_1649 (not _let_1579_1648))) (let
  ((_let_1581_1650
    (ite _let_1580_1649 initial_64___ucld_169_data_probe_g_var997
     _let_1578_1647)))
  (let
  ((_let_1582_1651
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_1583_1652 (ite _let_1582_1651 _let_1581_1650 _let_1286_1355)))
  (let
  ((_let_1584_1653
    (ite initial_50_v82 _let_1583_1652
     initial_64___ucld_169_data_probe_g_var997)))
  (let
  ((_let_1585_1654
    (and
     (or
      (and
       (= ((_ extract 19 19) state_1___ucld_169_data_probe_g_var996)
        ((_ extract 19 19) _let_1584_1653))
       (and (and
       (or
        (and
         (= ((_ extract 14 13) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 14 13) _let_1584_1653)))
        (and
         (= ((_ extract 14 13) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 14 13) _let_1584_1653)))
        (and
         (= ((_ extract 14 13) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 14 13) _let_1584_1653))))
       (not
        (= ((_ extract 14 13) state_1___ucld_169_data_probe_g_var996) #b11)))
       (and
       (or
        (and
         (= ((_ extract 10 9) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 10 9) _let_1584_1653)))
        (and
         (= ((_ extract 10 9) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 10 9) _let_1584_1653)))
        (and
         (= ((_ extract 10 9) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 10 9) _let_1584_1653))))
       (not
        (= ((_ extract 10 9) state_1___ucld_169_data_probe_g_var996) #b11)))
       (and
       (or
        (and
         (= ((_ extract 12 11) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 12 11) _let_1584_1653)))
        (and
         (= ((_ extract 12 11) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 12 11) _let_1584_1653)))
        (and
         (= ((_ extract 12 11) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 12 11) _let_1584_1653))))
       (not
        (= ((_ extract 12 11) state_1___ucld_169_data_probe_g_var996) #b11)))
       (and
       (or
        (and
         (= ((_ extract 16 15) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 16 15) _let_1584_1653)))
        (and
         (= ((_ extract 16 15) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 16 15) _let_1584_1653)))
        (and
         (= ((_ extract 16 15) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 16 15) _let_1584_1653))))
       (not
        (= ((_ extract 16 15) state_1___ucld_169_data_probe_g_var996) #b11)))
       (and
       (or
        (and
         (= ((_ extract 2 2) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 2 2) _let_1584_1653)))
        (and
         (= ((_ extract 2 2) state_1___ucld_169_data_probe_g_var996)
          ((_ extract 2 2) _let_1584_1653))))))))
     (not (= ((_ extract 19 19) state_1___ucld_169_data_probe_g_var996) #b1)))))
  _let_1585_1654))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let
  ((_let_1586_1655
    (forall ((a1656 (_ BitVec 2)))
     (or
      (not
       (=
        ((_ extract 0 0)
         (bvlshr
          initial_51___ucld_157_alloc_map_var85
          (bvmul ((_ zero_extend 2) a1656) #b0001)))
        #b1))
      (or
      (=
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          initial_56___ucld_171_ghost_mem_var623
          (bvmul
           ((_ zero_extend 78) a1656)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (_field__rec_ca_nonce_used
        ((_ extract 19 0)
         (bvlshr
          initial_56___ucld_171_ghost_mem_var623
          (bvmul
           ((_ zero_extend 78) a1656)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
      (and
       (or
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var623
             (bvmul
              ((_ zero_extend 78) a1656)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var623
             (bvmul
              ((_ zero_extend 78) a1656)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var623
             (bvmul
              ((_ zero_extend 78) a1656)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR))))
       (not
        (=
         ((_ extract 1 0)
          (_field__rec_enc_state_d
          ((_ extract 19 0)
           (bvlshr
            initial_56___ucld_171_ghost_mem_var623
            (bvmul
             ((_ zero_extend 78) a1656)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         #b11))))))))
  _let_1586_1655))
(declare-fun l1657 () (_ BitVec 3))
(assert
 (let
  ((_let_1587_1658
    (forall ((l1659 (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var87
             (bvmul
              ((_ zero_extend 157) l1659)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var87
             (bvmul
              ((_ zero_extend 157) l1659)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_69___ucld_173_ghost_lmap_var87
               (bvmul
                ((_ zero_extend 157) l1659)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_69___ucld_173_ghost_lmap_var87
           (bvmul
            ((_ zero_extend 157) l1659)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_69___ucld_173_ghost_lmap_var87
               (bvmul
                ((_ zero_extend 157) l1659)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_69___ucld_173_ghost_lmap_var87
           (bvmul
            ((_ zero_extend 157) l1659)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
         (_field__rec_h_length
         ((_ extract 19 0)
          (bvlshr
           initial_69___ucld_173_ghost_lmap_var87
           (bvmul
            ((_ zero_extend 157) l1659)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              initial_69___ucld_173_ghost_lmap_var87
              (bvmul
               ((_ zero_extend 157) l1659)
               #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  _let_1587_1658))
(declare-fun initial_66___ucld_166_addr_probe_g_var1660 () (_ BitVec 20))
(declare-fun state_1___ucld_166_addr_probe_g_var1661 () (_ BitVec 20))
(assert
 (let
  ((_let_1588_1662
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var296)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_1589_1663 (_field__rec_ca_nonce_used _let_1588_1662))) (let
  ((_let_1590_1664 (_field__rec_ca_Boolrue _let_1588_1662))) (let
  ((_let_1591_1665 (_field__rec_enc_state_d _let_1588_1662))) (let
  ((_let_1592_1666 (_field__rec_h_length _let_1588_1662))) (let
  ((_let_1593_1667 (_field__rec_h_offset _let_1588_1662))) (let
  ((_let_1594_1668 (_field__rec_h_base _let_1588_1662))) (let
  ((_let_1595_1669 (_field__rec_vtype _let_1588_1662))) (let
  ((_let_1596_1670 (_field__rec_value _let_1588_1662))) (let
  ((_let_1597_1671
    (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_1598_1672
    (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_1599_1673
    (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_1600_1674
    (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_1601_1675
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_1602_1676
    (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_1603_1677
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_1604_1678
    (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_1605_1679
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_1606_1680
    (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_1607_1681
    (_make__type_record_2_ _let_1596_1670 _let_1597_1671 _let_1598_1672
     _let_1599_1673 _let_1600_1674 _let_1601_1675 _let_1602_1676
     _let_1603_1677 _let_1604_1678 _let_1605_1679 _let_1606_1680)))
  (let ((_let_1608_1682 (_field__rec_value _let_1607_1681))) (let
  ((_let_1609_1683 (_field__rec_h_base _let_1607_1681))) (let
  ((_let_1610_1684 (_field__rec_h_offset _let_1607_1681))) (let
  ((_let_1611_1685 (_field__rec_h_length _let_1607_1681))) (let
  ((_let_1612_1686 (_field__rec_enc_state_p _let_1607_1681))) (let
  ((_let_1613_1687 (_field__rec_key_p _let_1607_1681))) (let
  ((_let_1614_1688 (_field__rec_enc_state_d _let_1607_1681))) (let
  ((_let_1615_1689 (_field__rec_key_d _let_1607_1681))) (let
  ((_let_1616_1690 (_field__rec_ca_nonce_used _let_1607_1681))) (let
  ((_let_1617_1691 (_field__rec_ca_Boolrue _let_1607_1681))) (let
  ((_let_1618_1692
    (_make__type_record_2_ _let_1608_1682 _let_1595_1669 _let_1609_1683
     _let_1610_1684 _let_1611_1685 _let_1612_1686 _let_1613_1687
     _let_1614_1688 _let_1615_1689 _let_1616_1690 _let_1617_1691)))
  (let ((_let_1619_1693 (_field__rec_value _let_1618_1692))) (let
  ((_let_1620_1694 (_field__rec_vtype _let_1618_1692))) (let
  ((_let_1621_1695 (_field__rec_h_offset _let_1618_1692))) (let
  ((_let_1622_1696 (_field__rec_h_length _let_1618_1692))) (let
  ((_let_1623_1697 (_field__rec_enc_state_p _let_1618_1692))) (let
  ((_let_1624_1698 (_field__rec_key_p _let_1618_1692))) (let
  ((_let_1625_1699 (_field__rec_enc_state_d _let_1618_1692))) (let
  ((_let_1626_1700 (_field__rec_key_d _let_1618_1692))) (let
  ((_let_1627_1701 (_field__rec_ca_nonce_used _let_1618_1692))) (let
  ((_let_1628_1702 (_field__rec_ca_Boolrue _let_1618_1692))) (let
  ((_let_1629_1703
    (_make__type_record_2_ _let_1619_1693 _let_1620_1694 _let_1594_1668
     _let_1621_1695 _let_1622_1696 _let_1623_1697 _let_1624_1698
     _let_1625_1699 _let_1626_1700 _let_1627_1701 _let_1628_1702)))
  (let ((_let_1630_1704 (_field__rec_value _let_1629_1703))) (let
  ((_let_1631_1705 (_field__rec_vtype _let_1629_1703))) (let
  ((_let_1632_1706 (_field__rec_h_base _let_1629_1703))) (let
  ((_let_1633_1707 (_field__rec_h_length _let_1629_1703))) (let
  ((_let_1634_1708 (_field__rec_enc_state_p _let_1629_1703))) (let
  ((_let_1635_1709 (_field__rec_key_p _let_1629_1703))) (let
  ((_let_1636_1710 (_field__rec_enc_state_d _let_1629_1703))) (let
  ((_let_1637_1711 (_field__rec_key_d _let_1629_1703))) (let
  ((_let_1638_1712 (_field__rec_ca_nonce_used _let_1629_1703))) (let
  ((_let_1639_1713 (_field__rec_ca_Boolrue _let_1629_1703))) (let
  ((_let_1640_1714
    (_make__type_record_2_ _let_1630_1704 _let_1631_1705 _let_1632_1706
     _let_1593_1667 _let_1633_1707 _let_1634_1708 _let_1635_1709
     _let_1636_1710 _let_1637_1711 _let_1638_1712 _let_1639_1713)))
  (let ((_let_1641_1715 (_field__rec_value _let_1640_1714))) (let
  ((_let_1642_1716 (_field__rec_vtype _let_1640_1714))) (let
  ((_let_1643_1717 (_field__rec_h_base _let_1640_1714))) (let
  ((_let_1644_1718 (_field__rec_h_offset _let_1640_1714))) (let
  ((_let_1645_1719 (_field__rec_enc_state_p _let_1640_1714))) (let
  ((_let_1646_1720 (_field__rec_key_p _let_1640_1714))) (let
  ((_let_1647_1721 (_field__rec_enc_state_d _let_1640_1714))) (let
  ((_let_1648_1722 (_field__rec_key_d _let_1640_1714))) (let
  ((_let_1649_1723 (_field__rec_ca_nonce_used _let_1640_1714))) (let
  ((_let_1650_1724 (_field__rec_ca_Boolrue _let_1640_1714))) (let
  ((_let_1651_1725
    (_make__type_record_2_ _let_1641_1715 _let_1642_1716 _let_1643_1717
     _let_1644_1718 _let_1592_1666 _let_1645_1719 _let_1646_1720
     _let_1647_1721 _let_1648_1722 _let_1649_1723 _let_1650_1724)))
  (let ((_let_1652_1726 (_field__rec_value _let_1651_1725))) (let
  ((_let_1653_1727 (_field__rec_vtype _let_1651_1725))) (let
  ((_let_1654_1728 (_field__rec_h_base _let_1651_1725))) (let
  ((_let_1655_1729 (_field__rec_h_offset _let_1651_1725))) (let
  ((_let_1656_1730 (_field__rec_h_length _let_1651_1725))) (let
  ((_let_1657_1731 (_field__rec_enc_state_p _let_1651_1725))) (let
  ((_let_1658_1732 (_field__rec_key_p _let_1651_1725))) (let
  ((_let_1659_1733 (_field__rec_key_d _let_1651_1725))) (let
  ((_let_1660_1734 (_field__rec_ca_nonce_used _let_1651_1725))) (let
  ((_let_1661_1735 (_field__rec_ca_Boolrue _let_1651_1725))) (let
  ((_let_1662_1736
    (_make__type_record_2_ _let_1652_1726 _let_1653_1727 _let_1654_1728
     _let_1655_1729 _let_1656_1730 _let_1657_1731 _let_1658_1732
     _let_1591_1665 _let_1659_1733 _let_1660_1734 _let_1661_1735)))
  (let ((_let_1663_1737 (_field__rec_value _let_1662_1736))) (let
  ((_let_1664_1738 (_field__rec_vtype _let_1662_1736))) (let
  ((_let_1665_1739 (_field__rec_h_base _let_1662_1736))) (let
  ((_let_1666_1740 (_field__rec_h_offset _let_1662_1736))) (let
  ((_let_1667_1741 (_field__rec_h_length _let_1662_1736))) (let
  ((_let_1668_1742 (_field__rec_key_p _let_1662_1736))) (let
  ((_let_1669_1743 (_field__rec_enc_state_d _let_1662_1736))) (let
  ((_let_1670_1744 (_field__rec_key_d _let_1662_1736))) (let
  ((_let_1671_1745 (_field__rec_ca_nonce_used _let_1662_1736))) (let
  ((_let_1672_1746 (_field__rec_ca_Boolrue _let_1662_1736))) (let
  ((_let_1673_1747
    (_make__type_record_2_ _let_1663_1737 _let_1664_1738 _let_1665_1739
     _let_1666_1740 _let_1667_1741 GAR _let_1668_1742 _let_1669_1743
     _let_1670_1744 _let_1671_1745 _let_1672_1746)))
  (let
  ((_let_1674_1748
    (_make__type_record_2_ _let_1663_1737 _let_1664_1738 _let_1665_1739
     _let_1666_1740 _let_1667_1741 PLN _let_1668_1742 _let_1669_1743
     _let_1670_1744 _let_1671_1745 _let_1672_1746)))
  (let ((_let_1675_1749 (_field__rec_key_p _let_1588_1662))) (let
  ((_let_1676_1750 (= _let_1675_1749 ViKey))) (let
  ((_let_1677_1751 (ite _let_1676_1750 _let_1674_1748 _let_1673_1747))) (let
  ((_let_1678_1752 (_field__rec_enc_state_p _let_1588_1662))) (let
  ((_let_1679_1753 (= _let_1678_1752 ENC))) (let
  ((_let_1680_1754 (ite _let_1679_1753 _let_1673_1747 _let_1677_1751))) (let
  ((_let_1681_1755
    (_make__type_record_2_ _let_1652_1726 _let_1653_1727 _let_1654_1728
     _let_1655_1729 _let_1656_1730 _let_1657_1731 _let_1658_1732 GAR
     _let_1659_1733 _let_1660_1734 _let_1661_1735)))
  (let ((_let_1682_1756 (_field__rec_value _let_1681_1755))) (let
  ((_let_1683_1757 (_field__rec_vtype _let_1681_1755))) (let
  ((_let_1684_1758 (_field__rec_h_base _let_1681_1755))) (let
  ((_let_1685_1759 (_field__rec_h_offset _let_1681_1755))) (let
  ((_let_1686_1760 (_field__rec_h_length _let_1681_1755))) (let
  ((_let_1687_1761 (_field__rec_key_p _let_1681_1755))) (let
  ((_let_1688_1762 (_field__rec_enc_state_d _let_1681_1755))) (let
  ((_let_1689_1763 (_field__rec_key_d _let_1681_1755))) (let
  ((_let_1690_1764 (_field__rec_ca_nonce_used _let_1681_1755))) (let
  ((_let_1691_1765 (_field__rec_ca_Boolrue _let_1681_1755))) (let
  ((_let_1692_1766
    (_make__type_record_2_ _let_1682_1756 _let_1683_1757 _let_1684_1758
     _let_1685_1759 _let_1686_1760 GAR _let_1687_1761 _let_1688_1762
     _let_1689_1763 _let_1690_1764 _let_1691_1765)))
  (let ((_let_1693_1767 (= _let_1591_1665 PLN))) (let
  ((_let_1694_1768 (ite _let_1693_1767 _let_1692_1766 _let_1680_1754))) (let
  ((_let_1695_1769 (_field__rec_value _let_1694_1768))) (let
  ((_let_1696_1770 (_field__rec_vtype _let_1694_1768))) (let
  ((_let_1697_1771 (_field__rec_h_base _let_1694_1768))) (let
  ((_let_1698_1772 (_field__rec_h_offset _let_1694_1768))) (let
  ((_let_1699_1773 (_field__rec_h_length _let_1694_1768))) (let
  ((_let_1700_1774 (_field__rec_enc_state_p _let_1694_1768))) (let
  ((_let_1701_1775 (_field__rec_enc_state_d _let_1694_1768))) (let
  ((_let_1702_1776 (_field__rec_key_d _let_1694_1768))) (let
  ((_let_1703_1777 (_field__rec_ca_nonce_used _let_1694_1768))) (let
  ((_let_1704_1778 (_field__rec_ca_Boolrue _let_1694_1768))) (let
  ((_let_1705_1779
    (_make__type_record_2_ _let_1695_1769 _let_1696_1770 _let_1697_1771
     _let_1698_1772 _let_1699_1773 _let_1700_1774 NoKey _let_1701_1775
     _let_1702_1776 _let_1703_1777 _let_1704_1778)))
  (let ((_let_1706_1780 (_field__rec_value _let_1705_1779))) (let
  ((_let_1707_1781 (_field__rec_vtype _let_1705_1779))) (let
  ((_let_1708_1782 (_field__rec_h_base _let_1705_1779))) (let
  ((_let_1709_1783 (_field__rec_h_offset _let_1705_1779))) (let
  ((_let_1710_1784 (_field__rec_h_length _let_1705_1779))) (let
  ((_let_1711_1785 (_field__rec_enc_state_p _let_1705_1779))) (let
  ((_let_1712_1786 (_field__rec_key_p _let_1705_1779))) (let
  ((_let_1713_1787 (_field__rec_enc_state_d _let_1705_1779))) (let
  ((_let_1714_1788 (_field__rec_ca_nonce_used _let_1705_1779))) (let
  ((_let_1715_1789 (_field__rec_ca_Boolrue _let_1705_1779))) (let
  ((_let_1716_1790
    (_make__type_record_2_ _let_1706_1780 _let_1707_1781 _let_1708_1782
     _let_1709_1783 _let_1710_1784 _let_1711_1785 _let_1712_1786
     _let_1713_1787 NoKey _let_1714_1788 _let_1715_1789)))
  (let ((_let_1717_1791 (_field__rec_value _let_1716_1790))) (let
  ((_let_1718_1792 (_field__rec_vtype _let_1716_1790))) (let
  ((_let_1719_1793 (_field__rec_h_base _let_1716_1790))) (let
  ((_let_1720_1794 (_field__rec_h_offset _let_1716_1790))) (let
  ((_let_1721_1795 (_field__rec_h_length _let_1716_1790))) (let
  ((_let_1722_1796 (_field__rec_enc_state_p _let_1716_1790))) (let
  ((_let_1723_1797 (_field__rec_key_p _let_1716_1790))) (let
  ((_let_1724_1798 (_field__rec_enc_state_d _let_1716_1790))) (let
  ((_let_1725_1799 (_field__rec_key_d _let_1716_1790))) (let
  ((_let_1726_1800 (_field__rec_ca_nonce_used _let_1716_1790))) (let
  ((_let_1727_1801
    (_make__type_record_2_ _let_1717_1791 _let_1718_1792 _let_1719_1793
     _let_1720_1794 _let_1721_1795 _let_1722_1796 _let_1723_1797
     _let_1724_1798 _let_1725_1799 _let_1726_1800 _let_1590_1664)))
  (let ((_let_1728_1802 (_field__rec_value _let_1727_1801))) (let
  ((_let_1729_1803 (_field__rec_vtype _let_1727_1801))) (let
  ((_let_1730_1804 (_field__rec_h_base _let_1727_1801))) (let
  ((_let_1731_1805 (_field__rec_h_offset _let_1727_1801))) (let
  ((_let_1732_1806 (_field__rec_h_length _let_1727_1801))) (let
  ((_let_1733_1807 (_field__rec_enc_state_p _let_1727_1801))) (let
  ((_let_1734_1808 (_field__rec_key_p _let_1727_1801))) (let
  ((_let_1735_1809 (_field__rec_enc_state_d _let_1727_1801))) (let
  ((_let_1736_1810 (_field__rec_key_d _let_1727_1801))) (let
  ((_let_1737_1811 (_field__rec_ca_Boolrue _let_1727_1801))) (let
  ((_let_1738_1812
    (_make__type_record_2_ _let_1728_1802 _let_1729_1803 _let_1730_1804
     _let_1731_1805 _let_1732_1806 _let_1733_1807 _let_1734_1808
     _let_1735_1809 _let_1736_1810 _let_1589_1663 _let_1737_1811)))
  (let
  ((_let_1739_1813
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_1740_1814
    (ite _let_1739_1813 _let_1738_1812
     initial_66___ucld_166_addr_probe_g_var1660)))
  (let
  ((_let_1741_1815
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_1742_1816 (_field__rec_ca_nonce_used _let_1741_1815))) (let
  ((_let_1743_1817 (_field__rec_ca_Boolrue _let_1741_1815))) (let
  ((_let_1744_1818 (_field__rec_enc_state_d _let_1741_1815))) (let
  ((_let_1745_1819 (_field__rec_h_length _let_1741_1815))) (let
  ((_let_1746_1820 (_field__rec_h_offset _let_1741_1815))) (let
  ((_let_1747_1821 (_field__rec_h_base _let_1741_1815))) (let
  ((_let_1748_1822 (_field__rec_vtype _let_1741_1815))) (let
  ((_let_1749_1823 (_field__rec_value _let_1741_1815))) (let
  ((_let_1750_1824
    (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1751_1825
    (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1752_1826
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1753_1827
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1754_1828
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1755_1829
    (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1756_1830
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1757_1831
    (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1758_1832
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1759_1833
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1760_1834
    (_make__type_record_2_ _let_1749_1823 _let_1750_1824 _let_1751_1825
     _let_1752_1826 _let_1753_1827 _let_1754_1828 _let_1755_1829
     _let_1756_1830 _let_1757_1831 _let_1758_1832 _let_1759_1833)))
  (let ((_let_1761_1835 (_field__rec_value _let_1760_1834))) (let
  ((_let_1762_1836 (_field__rec_h_base _let_1760_1834))) (let
  ((_let_1763_1837 (_field__rec_h_offset _let_1760_1834))) (let
  ((_let_1764_1838 (_field__rec_h_length _let_1760_1834))) (let
  ((_let_1765_1839 (_field__rec_enc_state_p _let_1760_1834))) (let
  ((_let_1766_1840 (_field__rec_key_p _let_1760_1834))) (let
  ((_let_1767_1841 (_field__rec_enc_state_d _let_1760_1834))) (let
  ((_let_1768_1842 (_field__rec_key_d _let_1760_1834))) (let
  ((_let_1769_1843 (_field__rec_ca_nonce_used _let_1760_1834))) (let
  ((_let_1770_1844 (_field__rec_ca_Boolrue _let_1760_1834))) (let
  ((_let_1771_1845
    (_make__type_record_2_ _let_1761_1835 _let_1748_1822 _let_1762_1836
     _let_1763_1837 _let_1764_1838 _let_1765_1839 _let_1766_1840
     _let_1767_1841 _let_1768_1842 _let_1769_1843 _let_1770_1844)))
  (let ((_let_1772_1846 (_field__rec_value _let_1771_1845))) (let
  ((_let_1773_1847 (_field__rec_vtype _let_1771_1845))) (let
  ((_let_1774_1848 (_field__rec_h_offset _let_1771_1845))) (let
  ((_let_1775_1849 (_field__rec_h_length _let_1771_1845))) (let
  ((_let_1776_1850 (_field__rec_enc_state_p _let_1771_1845))) (let
  ((_let_1777_1851 (_field__rec_key_p _let_1771_1845))) (let
  ((_let_1778_1852 (_field__rec_enc_state_d _let_1771_1845))) (let
  ((_let_1779_1853 (_field__rec_key_d _let_1771_1845))) (let
  ((_let_1780_1854 (_field__rec_ca_nonce_used _let_1771_1845))) (let
  ((_let_1781_1855 (_field__rec_ca_Boolrue _let_1771_1845))) (let
  ((_let_1782_1856
    (_make__type_record_2_ _let_1772_1846 _let_1773_1847 _let_1747_1821
     _let_1774_1848 _let_1775_1849 _let_1776_1850 _let_1777_1851
     _let_1778_1852 _let_1779_1853 _let_1780_1854 _let_1781_1855)))
  (let ((_let_1783_1857 (_field__rec_value _let_1782_1856))) (let
  ((_let_1784_1858 (_field__rec_vtype _let_1782_1856))) (let
  ((_let_1785_1859 (_field__rec_h_base _let_1782_1856))) (let
  ((_let_1786_1860 (_field__rec_h_length _let_1782_1856))) (let
  ((_let_1787_1861 (_field__rec_enc_state_p _let_1782_1856))) (let
  ((_let_1788_1862 (_field__rec_key_p _let_1782_1856))) (let
  ((_let_1789_1863 (_field__rec_enc_state_d _let_1782_1856))) (let
  ((_let_1790_1864 (_field__rec_key_d _let_1782_1856))) (let
  ((_let_1791_1865 (_field__rec_ca_nonce_used _let_1782_1856))) (let
  ((_let_1792_1866 (_field__rec_ca_Boolrue _let_1782_1856))) (let
  ((_let_1793_1867
    (_make__type_record_2_ _let_1783_1857 _let_1784_1858 _let_1785_1859
     _let_1746_1820 _let_1786_1860 _let_1787_1861 _let_1788_1862
     _let_1789_1863 _let_1790_1864 _let_1791_1865 _let_1792_1866)))
  (let ((_let_1794_1868 (_field__rec_value _let_1793_1867))) (let
  ((_let_1795_1869 (_field__rec_vtype _let_1793_1867))) (let
  ((_let_1796_1870 (_field__rec_h_base _let_1793_1867))) (let
  ((_let_1797_1871 (_field__rec_h_offset _let_1793_1867))) (let
  ((_let_1798_1872 (_field__rec_enc_state_p _let_1793_1867))) (let
  ((_let_1799_1873 (_field__rec_key_p _let_1793_1867))) (let
  ((_let_1800_1874 (_field__rec_enc_state_d _let_1793_1867))) (let
  ((_let_1801_1875 (_field__rec_key_d _let_1793_1867))) (let
  ((_let_1802_1876 (_field__rec_ca_nonce_used _let_1793_1867))) (let
  ((_let_1803_1877 (_field__rec_ca_Boolrue _let_1793_1867))) (let
  ((_let_1804_1878
    (_make__type_record_2_ _let_1794_1868 _let_1795_1869 _let_1796_1870
     _let_1797_1871 _let_1745_1819 _let_1798_1872 _let_1799_1873
     _let_1800_1874 _let_1801_1875 _let_1802_1876 _let_1803_1877)))
  (let ((_let_1805_1879 (_field__rec_value _let_1804_1878))) (let
  ((_let_1806_1880 (_field__rec_vtype _let_1804_1878))) (let
  ((_let_1807_1881 (_field__rec_h_base _let_1804_1878))) (let
  ((_let_1808_1882 (_field__rec_h_offset _let_1804_1878))) (let
  ((_let_1809_1883 (_field__rec_h_length _let_1804_1878))) (let
  ((_let_1810_1884 (_field__rec_enc_state_p _let_1804_1878))) (let
  ((_let_1811_1885 (_field__rec_key_p _let_1804_1878))) (let
  ((_let_1812_1886 (_field__rec_key_d _let_1804_1878))) (let
  ((_let_1813_1887 (_field__rec_ca_nonce_used _let_1804_1878))) (let
  ((_let_1814_1888 (_field__rec_ca_Boolrue _let_1804_1878))) (let
  ((_let_1815_1889
    (_make__type_record_2_ _let_1805_1879 _let_1806_1880 _let_1807_1881
     _let_1808_1882 _let_1809_1883 _let_1810_1884 _let_1811_1885
     _let_1744_1818 _let_1812_1886 _let_1813_1887 _let_1814_1888)))
  (let ((_let_1816_1890 (_field__rec_value _let_1815_1889))) (let
  ((_let_1817_1891 (_field__rec_vtype _let_1815_1889))) (let
  ((_let_1818_1892 (_field__rec_h_base _let_1815_1889))) (let
  ((_let_1819_1893 (_field__rec_h_offset _let_1815_1889))) (let
  ((_let_1820_1894 (_field__rec_h_length _let_1815_1889))) (let
  ((_let_1821_1895 (_field__rec_key_p _let_1815_1889))) (let
  ((_let_1822_1896 (_field__rec_enc_state_d _let_1815_1889))) (let
  ((_let_1823_1897 (_field__rec_key_d _let_1815_1889))) (let
  ((_let_1824_1898 (_field__rec_ca_nonce_used _let_1815_1889))) (let
  ((_let_1825_1899 (_field__rec_ca_Boolrue _let_1815_1889))) (let
  ((_let_1826_1900
    (_make__type_record_2_ _let_1816_1890 _let_1817_1891 _let_1818_1892
     _let_1819_1893 _let_1820_1894 GAR _let_1821_1895 _let_1822_1896
     _let_1823_1897 _let_1824_1898 _let_1825_1899)))
  (let
  ((_let_1827_1901
    (_make__type_record_2_ _let_1816_1890 _let_1817_1891 _let_1818_1892
     _let_1819_1893 _let_1820_1894 PLN _let_1821_1895 _let_1822_1896
     _let_1823_1897 _let_1824_1898 _let_1825_1899)))
  (let ((_let_1828_1902 (_field__rec_key_p _let_1741_1815))) (let
  ((_let_1829_1903 (= _let_1828_1902 ViKey))) (let
  ((_let_1830_1904 (ite _let_1829_1903 _let_1827_1901 _let_1826_1900))) (let
  ((_let_1831_1905 (_field__rec_enc_state_p _let_1741_1815))) (let
  ((_let_1832_1906 (= _let_1831_1905 ENC))) (let
  ((_let_1833_1907 (ite _let_1832_1906 _let_1826_1900 _let_1830_1904))) (let
  ((_let_1834_1908
    (_make__type_record_2_ _let_1805_1879 _let_1806_1880 _let_1807_1881
     _let_1808_1882 _let_1809_1883 _let_1810_1884 _let_1811_1885 GAR
     _let_1812_1886 _let_1813_1887 _let_1814_1888)))
  (let ((_let_1835_1909 (_field__rec_value _let_1834_1908))) (let
  ((_let_1836_1910 (_field__rec_vtype _let_1834_1908))) (let
  ((_let_1837_1911 (_field__rec_h_base _let_1834_1908))) (let
  ((_let_1838_1912 (_field__rec_h_offset _let_1834_1908))) (let
  ((_let_1839_1913 (_field__rec_h_length _let_1834_1908))) (let
  ((_let_1840_1914 (_field__rec_key_p _let_1834_1908))) (let
  ((_let_1841_1915 (_field__rec_enc_state_d _let_1834_1908))) (let
  ((_let_1842_1916 (_field__rec_key_d _let_1834_1908))) (let
  ((_let_1843_1917 (_field__rec_ca_nonce_used _let_1834_1908))) (let
  ((_let_1844_1918 (_field__rec_ca_Boolrue _let_1834_1908))) (let
  ((_let_1845_1919
    (_make__type_record_2_ _let_1835_1909 _let_1836_1910 _let_1837_1911
     _let_1838_1912 _let_1839_1913 GAR _let_1840_1914 _let_1841_1915
     _let_1842_1916 _let_1843_1917 _let_1844_1918)))
  (let ((_let_1846_1920 (= _let_1744_1818 PLN))) (let
  ((_let_1847_1921 (ite _let_1846_1920 _let_1845_1919 _let_1833_1907))) (let
  ((_let_1848_1922 (_field__rec_value _let_1847_1921))) (let
  ((_let_1849_1923 (_field__rec_vtype _let_1847_1921))) (let
  ((_let_1850_1924 (_field__rec_h_base _let_1847_1921))) (let
  ((_let_1851_1925 (_field__rec_h_offset _let_1847_1921))) (let
  ((_let_1852_1926 (_field__rec_h_length _let_1847_1921))) (let
  ((_let_1853_1927 (_field__rec_enc_state_p _let_1847_1921))) (let
  ((_let_1854_1928 (_field__rec_enc_state_d _let_1847_1921))) (let
  ((_let_1855_1929 (_field__rec_key_d _let_1847_1921))) (let
  ((_let_1856_1930 (_field__rec_ca_nonce_used _let_1847_1921))) (let
  ((_let_1857_1931 (_field__rec_ca_Boolrue _let_1847_1921))) (let
  ((_let_1858_1932
    (_make__type_record_2_ _let_1848_1922 _let_1849_1923 _let_1850_1924
     _let_1851_1925 _let_1852_1926 _let_1853_1927 NoKey _let_1854_1928
     _let_1855_1929 _let_1856_1930 _let_1857_1931)))
  (let ((_let_1859_1933 (_field__rec_value _let_1858_1932))) (let
  ((_let_1860_1934 (_field__rec_vtype _let_1858_1932))) (let
  ((_let_1861_1935 (_field__rec_h_base _let_1858_1932))) (let
  ((_let_1862_1936 (_field__rec_h_offset _let_1858_1932))) (let
  ((_let_1863_1937 (_field__rec_h_length _let_1858_1932))) (let
  ((_let_1864_1938 (_field__rec_enc_state_p _let_1858_1932))) (let
  ((_let_1865_1939 (_field__rec_key_p _let_1858_1932))) (let
  ((_let_1866_1940 (_field__rec_enc_state_d _let_1858_1932))) (let
  ((_let_1867_1941 (_field__rec_ca_nonce_used _let_1858_1932))) (let
  ((_let_1868_1942 (_field__rec_ca_Boolrue _let_1858_1932))) (let
  ((_let_1869_1943
    (_make__type_record_2_ _let_1859_1933 _let_1860_1934 _let_1861_1935
     _let_1862_1936 _let_1863_1937 _let_1864_1938 _let_1865_1939
     _let_1866_1940 NoKey _let_1867_1941 _let_1868_1942)))
  (let ((_let_1870_1944 (_field__rec_value _let_1869_1943))) (let
  ((_let_1871_1945 (_field__rec_vtype _let_1869_1943))) (let
  ((_let_1872_1946 (_field__rec_h_base _let_1869_1943))) (let
  ((_let_1873_1947 (_field__rec_h_offset _let_1869_1943))) (let
  ((_let_1874_1948 (_field__rec_h_length _let_1869_1943))) (let
  ((_let_1875_1949 (_field__rec_enc_state_p _let_1869_1943))) (let
  ((_let_1876_1950 (_field__rec_key_p _let_1869_1943))) (let
  ((_let_1877_1951 (_field__rec_enc_state_d _let_1869_1943))) (let
  ((_let_1878_1952 (_field__rec_key_d _let_1869_1943))) (let
  ((_let_1879_1953 (_field__rec_ca_nonce_used _let_1869_1943))) (let
  ((_let_1880_1954
    (_make__type_record_2_ _let_1870_1944 _let_1871_1945 _let_1872_1946
     _let_1873_1947 _let_1874_1948 _let_1875_1949 _let_1876_1950
     _let_1877_1951 _let_1878_1952 _let_1879_1953 _let_1743_1817)))
  (let ((_let_1881_1955 (_field__rec_value _let_1880_1954))) (let
  ((_let_1882_1956 (_field__rec_vtype _let_1880_1954))) (let
  ((_let_1883_1957 (_field__rec_h_base _let_1880_1954))) (let
  ((_let_1884_1958 (_field__rec_h_offset _let_1880_1954))) (let
  ((_let_1885_1959 (_field__rec_h_length _let_1880_1954))) (let
  ((_let_1886_1960 (_field__rec_enc_state_p _let_1880_1954))) (let
  ((_let_1887_1961 (_field__rec_key_p _let_1880_1954))) (let
  ((_let_1888_1962 (_field__rec_enc_state_d _let_1880_1954))) (let
  ((_let_1889_1963 (_field__rec_key_d _let_1880_1954))) (let
  ((_let_1890_1964 (_field__rec_ca_Boolrue _let_1880_1954))) (let
  ((_let_1891_1965
    (_make__type_record_2_ _let_1881_1955 _let_1882_1956 _let_1883_1957
     _let_1884_1958 _let_1885_1959 _let_1886_1960 _let_1887_1961
     _let_1888_1962 _let_1889_1963 _let_1742_1816 _let_1890_1964)))
  (let
  ((_let_1892_1966
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_1893_1967 (ite _let_1892_1966 _let_1891_1965 _let_1740_1814)))
  (let
  ((_let_1894_1968
    (ite initial_50_v82 _let_1893_1967
     initial_66___ucld_166_addr_probe_g_var1660)))
  (let
  ((_let_1895_1969
    (and
     (or
      (and
       (= ((_ extract 19 19) state_1___ucld_166_addr_probe_g_var1661)
        ((_ extract 19 19) _let_1894_1968))
       (and (and
       (or
        (and
         (= ((_ extract 14 13) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 14 13) _let_1894_1968)))
        (and
         (= ((_ extract 14 13) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 14 13) _let_1894_1968)))
        (and
         (= ((_ extract 14 13) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 14 13) _let_1894_1968))))
       (not
        (= ((_ extract 14 13) state_1___ucld_166_addr_probe_g_var1661) #b11)))
       (and
       (or
        (and
         (= ((_ extract 10 9) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 10 9) _let_1894_1968)))
        (and
         (= ((_ extract 10 9) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 10 9) _let_1894_1968)))
        (and
         (= ((_ extract 10 9) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 10 9) _let_1894_1968))))
       (not
        (= ((_ extract 10 9) state_1___ucld_166_addr_probe_g_var1661) #b11)))
       (and
       (or
        (and
         (= ((_ extract 12 11) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 12 11) _let_1894_1968)))
        (and
         (= ((_ extract 12 11) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 12 11) _let_1894_1968)))
        (and
         (= ((_ extract 12 11) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 12 11) _let_1894_1968))))
       (not
        (= ((_ extract 12 11) state_1___ucld_166_addr_probe_g_var1661) #b11)))
       (and
       (or
        (and
         (= ((_ extract 16 15) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 16 15) _let_1894_1968)))
        (and
         (= ((_ extract 16 15) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 16 15) _let_1894_1968)))
        (and
         (= ((_ extract 16 15) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 16 15) _let_1894_1968))))
       (not
        (= ((_ extract 16 15) state_1___ucld_166_addr_probe_g_var1661) #b11)))
       (and
       (or
        (and
         (= ((_ extract 2 2) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 2 2) _let_1894_1968)))
        (and
         (= ((_ extract 2 2) state_1___ucld_166_addr_probe_g_var1661)
          ((_ extract 2 2) _let_1894_1968))))))))
     (not (= ((_ extract 19 19) state_1___ucld_166_addr_probe_g_var1661) #b1)))))
  _let_1895_1969)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let
  ((_let_1896_1970
    (forall ((l1971 (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var87
             (bvmul
              ((_ zero_extend 157) l1971)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var87
             (bvmul
              ((_ zero_extend 157) l1971)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       (_ bv0 2 )
       (_field__rec_h_length
       ((_ extract 19 0)
        (bvlshr
         initial_69___ucld_173_ghost_lmap_var87
         (bvmul
          ((_ zero_extend 157) l1971)
          #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  (let
  ((_let_1897_1972
    (forall ((a1973 (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var623
             (bvmul
              ((_ zero_extend 78) a1973)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var623
             (bvmul
              ((_ zero_extend 78) a1973)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       (_ bv0 2 )
       (_field__rec_h_length
       ((_ extract 19 0)
        (bvlshr
         initial_56___ucld_171_ghost_mem_var623
         (bvmul
          ((_ zero_extend 78) a1973)
          #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  (let ((_let_1898_1974 (and _let_1897_1972 _let_1896_1970)))
  _let_1898_1974))))
(declare-fun havoc_211___ucld_51_ret_nm1975 () (_ BitVec 28))
(declare-fun state_1___ucld_164_shadow_mem_var1976 () (_ BitVec 28))
(assert
 (let ((_let_1899_1977 (_field__rec_valid havoc_193___ucld_34_ret_as273)))
  (let
  ((_let_1900_1978
    (ite _let_1899_1977 havoc_211___ucld_51_ret_nm1975
     initial_60___ucld_164_shadow_mem_var963)))
  (let
  ((_let_1901_1979
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_1902_1980
    (ite _let_1901_1979 _let_1900_1978
     initial_60___ucld_164_shadow_mem_var963)))
  (let
  ((_let_1903_1981
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_1904_1982
    (ite _let_1903_1981 initial_60___ucld_164_shadow_mem_var963
     _let_1902_1980)))
  (let
  ((_let_1905_1983
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_1906_1984
    (ite _let_1905_1983 initial_60___ucld_164_shadow_mem_var963
     _let_1904_1982)))
  (let
  ((_let_1907_1985
    (ite initial_50_v82 _let_1906_1984
     initial_60___ucld_164_shadow_mem_var963)))
  (let
  ((_let_1908_1986 (= state_1___ucld_164_shadow_mem_var1976 _let_1907_1985)))
  _let_1908_1986)))))))))))
(declare-fun state_1___ucld_163_l3_var1987 () (_ BitVec 3))
(declare-fun havoc_99___ucld_116_l3_havoc1988 () (_ BitVec 3))
(declare-fun initial_72___ucld_163_l3_var1989 () (_ BitVec 3))
(assert
 (let
  ((_let_1909_1990
    (ite initial_50_v82 havoc_99___ucld_116_l3_havoc1988
     initial_72___ucld_163_l3_var1989)))
  (let ((_let_1910_1991 (= state_1___ucld_163_l3_var1987 _let_1909_1990)))
  _let_1910_1991)))
(assert
 (let
  ((_let_1911_1992
    (forall ((a1993 (_ BitVec 2)))
     (=
      (=
       ((_ extract 0 0)
        (bvlshr
         initial_51___ucld_157_alloc_map_var85
         (bvmul ((_ zero_extend 2) a1993) #b0001)))
       #b1)
      (_field__rec_alloc
       ((_ extract 6 0)
        (bvlshr
         initial_60___ucld_164_shadow_mem_var963
         (bvmul ((_ zero_extend 26) a1993) #b0000000000000000000000000111))))))))
  _let_1911_1992))
(declare-fun state_1___ucld_172_src2_probe_var1994 () (_ BitVec 2))
(declare-fun initial_52___ucld_172_src2_probe_var1995 () (_ BitVec 2))
(assert
 (let
  ((_let_1912_1996
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_1913_1997
    (ite _let_1912_1996 initial_52___ucld_172_src2_probe_var1995
     initial_52___ucld_172_src2_probe_var1995)))
  (let
  ((_let_1914_1998
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_1915_1999
    (ite _let_1914_1998 initial_52___ucld_172_src2_probe_var1995
     _let_1913_1997)))
  (let
  ((_let_1916_2000
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_1917_2001
    (ite _let_1916_2000 initial_52___ucld_172_src2_probe_var1995
     _let_1915_1999)))
  (let
  ((_let_1918_2002
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_1919_2003
    (ite _let_1918_2002 initial_52___ucld_172_src2_probe_var1995
     _let_1917_2001)))
  (let
  ((_let_1920_2004
    (ite initial_50_v82 _let_1919_2003
     initial_52___ucld_172_src2_probe_var1995)))
  (let
  ((_let_1921_2005 (= state_1___ucld_172_src2_probe_var1994 _let_1920_2004)))
  _let_1921_2005)))))))))))
(declare-fun state_1___ucld_168_data_probe_pre_g_var2006 () (_ BitVec 20))
(declare-fun initial_68___ucld_168_data_probe_pre_g_var2007 () (_ BitVec 20))
(assert
 (let
  ((_let_1922_2008
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_1923_2009 (_field__rec_ca_nonce_used _let_1922_2008))) (let
  ((_let_1924_2010 (_field__rec_ca_Boolrue _let_1922_2008))) (let
  ((_let_1925_2011 (_field__rec_enc_state_d _let_1922_2008))) (let
  ((_let_1926_2012 (_field__rec_h_length _let_1922_2008))) (let
  ((_let_1927_2013 (_field__rec_h_offset _let_1922_2008))) (let
  ((_let_1928_2014 (_field__rec_h_base _let_1922_2008))) (let
  ((_let_1929_2015 (_field__rec_vtype _let_1922_2008))) (let
  ((_let_1930_2016 (_field__rec_value _let_1922_2008))) (let
  ((_let_1931_2017
    (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1932_2018
    (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1933_2019
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1934_2020
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1935_2021
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1936_2022
    (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1937_2023
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1938_2024
    (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1939_2025
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1940_2026
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_1941_2027
    (_make__type_record_2_ _let_1930_2016 _let_1931_2017 _let_1932_2018
     _let_1933_2019 _let_1934_2020 _let_1935_2021 _let_1936_2022
     _let_1937_2023 _let_1938_2024 _let_1939_2025 _let_1940_2026)))
  (let ((_let_1942_2028 (_field__rec_value _let_1941_2027))) (let
  ((_let_1943_2029 (_field__rec_h_base _let_1941_2027))) (let
  ((_let_1944_2030 (_field__rec_h_offset _let_1941_2027))) (let
  ((_let_1945_2031 (_field__rec_h_length _let_1941_2027))) (let
  ((_let_1946_2032 (_field__rec_enc_state_p _let_1941_2027))) (let
  ((_let_1947_2033 (_field__rec_key_p _let_1941_2027))) (let
  ((_let_1948_2034 (_field__rec_enc_state_d _let_1941_2027))) (let
  ((_let_1949_2035 (_field__rec_key_d _let_1941_2027))) (let
  ((_let_1950_2036 (_field__rec_ca_nonce_used _let_1941_2027))) (let
  ((_let_1951_2037 (_field__rec_ca_Boolrue _let_1941_2027))) (let
  ((_let_1952_2038
    (_make__type_record_2_ _let_1942_2028 _let_1929_2015 _let_1943_2029
     _let_1944_2030 _let_1945_2031 _let_1946_2032 _let_1947_2033
     _let_1948_2034 _let_1949_2035 _let_1950_2036 _let_1951_2037)))
  (let ((_let_1953_2039 (_field__rec_value _let_1952_2038))) (let
  ((_let_1954_2040 (_field__rec_vtype _let_1952_2038))) (let
  ((_let_1955_2041 (_field__rec_h_offset _let_1952_2038))) (let
  ((_let_1956_2042 (_field__rec_h_length _let_1952_2038))) (let
  ((_let_1957_2043 (_field__rec_enc_state_p _let_1952_2038))) (let
  ((_let_1958_2044 (_field__rec_key_p _let_1952_2038))) (let
  ((_let_1959_2045 (_field__rec_enc_state_d _let_1952_2038))) (let
  ((_let_1960_2046 (_field__rec_key_d _let_1952_2038))) (let
  ((_let_1961_2047 (_field__rec_ca_nonce_used _let_1952_2038))) (let
  ((_let_1962_2048 (_field__rec_ca_Boolrue _let_1952_2038))) (let
  ((_let_1963_2049
    (_make__type_record_2_ _let_1953_2039 _let_1954_2040 _let_1928_2014
     _let_1955_2041 _let_1956_2042 _let_1957_2043 _let_1958_2044
     _let_1959_2045 _let_1960_2046 _let_1961_2047 _let_1962_2048)))
  (let ((_let_1964_2050 (_field__rec_value _let_1963_2049))) (let
  ((_let_1965_2051 (_field__rec_vtype _let_1963_2049))) (let
  ((_let_1966_2052 (_field__rec_h_base _let_1963_2049))) (let
  ((_let_1967_2053 (_field__rec_h_length _let_1963_2049))) (let
  ((_let_1968_2054 (_field__rec_enc_state_p _let_1963_2049))) (let
  ((_let_1969_2055 (_field__rec_key_p _let_1963_2049))) (let
  ((_let_1970_2056 (_field__rec_enc_state_d _let_1963_2049))) (let
  ((_let_1971_2057 (_field__rec_key_d _let_1963_2049))) (let
  ((_let_1972_2058 (_field__rec_ca_nonce_used _let_1963_2049))) (let
  ((_let_1973_2059 (_field__rec_ca_Boolrue _let_1963_2049))) (let
  ((_let_1974_2060
    (_make__type_record_2_ _let_1964_2050 _let_1965_2051 _let_1966_2052
     _let_1927_2013 _let_1967_2053 _let_1968_2054 _let_1969_2055
     _let_1970_2056 _let_1971_2057 _let_1972_2058 _let_1973_2059)))
  (let ((_let_1975_2061 (_field__rec_value _let_1974_2060))) (let
  ((_let_1976_2062 (_field__rec_vtype _let_1974_2060))) (let
  ((_let_1977_2063 (_field__rec_h_base _let_1974_2060))) (let
  ((_let_1978_2064 (_field__rec_h_offset _let_1974_2060))) (let
  ((_let_1979_2065 (_field__rec_enc_state_p _let_1974_2060))) (let
  ((_let_1980_2066 (_field__rec_key_p _let_1974_2060))) (let
  ((_let_1981_2067 (_field__rec_enc_state_d _let_1974_2060))) (let
  ((_let_1982_2068 (_field__rec_key_d _let_1974_2060))) (let
  ((_let_1983_2069 (_field__rec_ca_nonce_used _let_1974_2060))) (let
  ((_let_1984_2070 (_field__rec_ca_Boolrue _let_1974_2060))) (let
  ((_let_1985_2071
    (_make__type_record_2_ _let_1975_2061 _let_1976_2062 _let_1977_2063
     _let_1978_2064 _let_1926_2012 _let_1979_2065 _let_1980_2066
     _let_1981_2067 _let_1982_2068 _let_1983_2069 _let_1984_2070)))
  (let ((_let_1986_2072 (_field__rec_value _let_1985_2071))) (let
  ((_let_1987_2073 (_field__rec_vtype _let_1985_2071))) (let
  ((_let_1988_2074 (_field__rec_h_base _let_1985_2071))) (let
  ((_let_1989_2075 (_field__rec_h_offset _let_1985_2071))) (let
  ((_let_1990_2076 (_field__rec_h_length _let_1985_2071))) (let
  ((_let_1991_2077 (_field__rec_enc_state_p _let_1985_2071))) (let
  ((_let_1992_2078 (_field__rec_key_p _let_1985_2071))) (let
  ((_let_1993_2079 (_field__rec_key_d _let_1985_2071))) (let
  ((_let_1994_2080 (_field__rec_ca_nonce_used _let_1985_2071))) (let
  ((_let_1995_2081 (_field__rec_ca_Boolrue _let_1985_2071))) (let
  ((_let_1996_2082
    (_make__type_record_2_ _let_1986_2072 _let_1987_2073 _let_1988_2074
     _let_1989_2075 _let_1990_2076 _let_1991_2077 _let_1992_2078
     _let_1925_2011 _let_1993_2079 _let_1994_2080 _let_1995_2081)))
  (let ((_let_1997_2083 (_field__rec_value _let_1996_2082))) (let
  ((_let_1998_2084 (_field__rec_vtype _let_1996_2082))) (let
  ((_let_1999_2085 (_field__rec_h_base _let_1996_2082))) (let
  ((_let_2000_2086 (_field__rec_h_offset _let_1996_2082))) (let
  ((_let_2001_2087 (_field__rec_h_length _let_1996_2082))) (let
  ((_let_2002_2088 (_field__rec_key_p _let_1996_2082))) (let
  ((_let_2003_2089 (_field__rec_enc_state_d _let_1996_2082))) (let
  ((_let_2004_2090 (_field__rec_key_d _let_1996_2082))) (let
  ((_let_2005_2091 (_field__rec_ca_nonce_used _let_1996_2082))) (let
  ((_let_2006_2092 (_field__rec_ca_Boolrue _let_1996_2082))) (let
  ((_let_2007_2093
    (_make__type_record_2_ _let_1997_2083 _let_1998_2084 _let_1999_2085
     _let_2000_2086 _let_2001_2087 GAR _let_2002_2088 _let_2003_2089
     _let_2004_2090 _let_2005_2091 _let_2006_2092)))
  (let
  ((_let_2008_2094
    (_make__type_record_2_ _let_1997_2083 _let_1998_2084 _let_1999_2085
     _let_2000_2086 _let_2001_2087 PLN _let_2002_2088 _let_2003_2089
     _let_2004_2090 _let_2005_2091 _let_2006_2092)))
  (let ((_let_2009_2095 (_field__rec_key_p _let_1922_2008))) (let
  ((_let_2010_2096 (= _let_2009_2095 ViKey))) (let
  ((_let_2011_2097 (ite _let_2010_2096 _let_2008_2094 _let_2007_2093))) (let
  ((_let_2012_2098 (_field__rec_enc_state_p _let_1922_2008))) (let
  ((_let_2013_2099 (= _let_2012_2098 ENC))) (let
  ((_let_2014_2100 (ite _let_2013_2099 _let_2007_2093 _let_2011_2097))) (let
  ((_let_2015_2101
    (_make__type_record_2_ _let_1986_2072 _let_1987_2073 _let_1988_2074
     _let_1989_2075 _let_1990_2076 _let_1991_2077 _let_1992_2078 GAR
     _let_1993_2079 _let_1994_2080 _let_1995_2081)))
  (let ((_let_2016_2102 (_field__rec_value _let_2015_2101))) (let
  ((_let_2017_2103 (_field__rec_vtype _let_2015_2101))) (let
  ((_let_2018_2104 (_field__rec_h_base _let_2015_2101))) (let
  ((_let_2019_2105 (_field__rec_h_offset _let_2015_2101))) (let
  ((_let_2020_2106 (_field__rec_h_length _let_2015_2101))) (let
  ((_let_2021_2107 (_field__rec_key_p _let_2015_2101))) (let
  ((_let_2022_2108 (_field__rec_enc_state_d _let_2015_2101))) (let
  ((_let_2023_2109 (_field__rec_key_d _let_2015_2101))) (let
  ((_let_2024_2110 (_field__rec_ca_nonce_used _let_2015_2101))) (let
  ((_let_2025_2111 (_field__rec_ca_Boolrue _let_2015_2101))) (let
  ((_let_2026_2112
    (_make__type_record_2_ _let_2016_2102 _let_2017_2103 _let_2018_2104
     _let_2019_2105 _let_2020_2106 GAR _let_2021_2107 _let_2022_2108
     _let_2023_2109 _let_2024_2110 _let_2025_2111)))
  (let ((_let_2027_2113 (= _let_1925_2011 PLN))) (let
  ((_let_2028_2114 (ite _let_2027_2113 _let_2026_2112 _let_2014_2100))) (let
  ((_let_2029_2115 (_field__rec_value _let_2028_2114))) (let
  ((_let_2030_2116 (_field__rec_vtype _let_2028_2114))) (let
  ((_let_2031_2117 (_field__rec_h_base _let_2028_2114))) (let
  ((_let_2032_2118 (_field__rec_h_offset _let_2028_2114))) (let
  ((_let_2033_2119 (_field__rec_h_length _let_2028_2114))) (let
  ((_let_2034_2120 (_field__rec_enc_state_p _let_2028_2114))) (let
  ((_let_2035_2121 (_field__rec_enc_state_d _let_2028_2114))) (let
  ((_let_2036_2122 (_field__rec_key_d _let_2028_2114))) (let
  ((_let_2037_2123 (_field__rec_ca_nonce_used _let_2028_2114))) (let
  ((_let_2038_2124 (_field__rec_ca_Boolrue _let_2028_2114))) (let
  ((_let_2039_2125
    (_make__type_record_2_ _let_2029_2115 _let_2030_2116 _let_2031_2117
     _let_2032_2118 _let_2033_2119 _let_2034_2120 NoKey _let_2035_2121
     _let_2036_2122 _let_2037_2123 _let_2038_2124)))
  (let ((_let_2040_2126 (_field__rec_value _let_2039_2125))) (let
  ((_let_2041_2127 (_field__rec_vtype _let_2039_2125))) (let
  ((_let_2042_2128 (_field__rec_h_base _let_2039_2125))) (let
  ((_let_2043_2129 (_field__rec_h_offset _let_2039_2125))) (let
  ((_let_2044_2130 (_field__rec_h_length _let_2039_2125))) (let
  ((_let_2045_2131 (_field__rec_enc_state_p _let_2039_2125))) (let
  ((_let_2046_2132 (_field__rec_key_p _let_2039_2125))) (let
  ((_let_2047_2133 (_field__rec_enc_state_d _let_2039_2125))) (let
  ((_let_2048_2134 (_field__rec_ca_nonce_used _let_2039_2125))) (let
  ((_let_2049_2135 (_field__rec_ca_Boolrue _let_2039_2125))) (let
  ((_let_2050_2136
    (_make__type_record_2_ _let_2040_2126 _let_2041_2127 _let_2042_2128
     _let_2043_2129 _let_2044_2130 _let_2045_2131 _let_2046_2132
     _let_2047_2133 NoKey _let_2048_2134 _let_2049_2135)))
  (let ((_let_2051_2137 (_field__rec_value _let_2050_2136))) (let
  ((_let_2052_2138 (_field__rec_vtype _let_2050_2136))) (let
  ((_let_2053_2139 (_field__rec_h_base _let_2050_2136))) (let
  ((_let_2054_2140 (_field__rec_h_offset _let_2050_2136))) (let
  ((_let_2055_2141 (_field__rec_h_length _let_2050_2136))) (let
  ((_let_2056_2142 (_field__rec_enc_state_p _let_2050_2136))) (let
  ((_let_2057_2143 (_field__rec_key_p _let_2050_2136))) (let
  ((_let_2058_2144 (_field__rec_enc_state_d _let_2050_2136))) (let
  ((_let_2059_2145 (_field__rec_key_d _let_2050_2136))) (let
  ((_let_2060_2146 (_field__rec_ca_nonce_used _let_2050_2136))) (let
  ((_let_2061_2147
    (_make__type_record_2_ _let_2051_2137 _let_2052_2138 _let_2053_2139
     _let_2054_2140 _let_2055_2141 _let_2056_2142 _let_2057_2143
     _let_2058_2144 _let_2059_2145 _let_2060_2146 _let_1924_2010)))
  (let ((_let_2062_2148 (_field__rec_value _let_2061_2147))) (let
  ((_let_2063_2149 (_field__rec_vtype _let_2061_2147))) (let
  ((_let_2064_2150 (_field__rec_h_base _let_2061_2147))) (let
  ((_let_2065_2151 (_field__rec_h_offset _let_2061_2147))) (let
  ((_let_2066_2152 (_field__rec_h_length _let_2061_2147))) (let
  ((_let_2067_2153 (_field__rec_enc_state_p _let_2061_2147))) (let
  ((_let_2068_2154 (_field__rec_key_p _let_2061_2147))) (let
  ((_let_2069_2155 (_field__rec_enc_state_d _let_2061_2147))) (let
  ((_let_2070_2156 (_field__rec_key_d _let_2061_2147))) (let
  ((_let_2071_2157 (_field__rec_ca_Boolrue _let_2061_2147))) (let
  ((_let_2072_2158
    (_make__type_record_2_ _let_2062_2148 _let_2063_2149 _let_2064_2150
     _let_2065_2151 _let_2066_2152 _let_2067_2153 _let_2068_2154
     _let_2069_2155 _let_2070_2156 _let_1923_2009 _let_2071_2157)))
  (let
  ((_let_2073_2159 (const___ucld_151_ghost_to_addr_value_c381 _let_2072_2158)))
  (let
  ((_let_2074_2160
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var623
      (bvmul
       ((_ zero_extend 78) _let_2073_2159)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let
  ((_let_2075_2161
    (=
     ((_ extract 0 0)
      (bvlshr
       initial_51___ucld_157_alloc_map_var85
       (bvmul ((_ zero_extend 2) _let_2073_2159) #b0001)))
     #b1)))
  (let ((_let_2076_2162 (not _let_2075_2161))) (let
  ((_let_2077_2163
    (ite _let_2076_2162 initial_68___ucld_168_data_probe_pre_g_var2007
     _let_2074_2160)))
  (let
  ((_let_2078_2164
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_2079_2165
    (ite _let_2078_2164 _let_2077_2163
     initial_68___ucld_168_data_probe_pre_g_var2007)))
  (let
  ((_let_2080_2166
    (ite initial_50_v82 _let_2079_2165
     initial_68___ucld_168_data_probe_pre_g_var2007)))
  (let
  ((_let_2081_2167
    (and
     (or
      (and
       (= ((_ extract 19 19) state_1___ucld_168_data_probe_pre_g_var2006)
        ((_ extract 19 19) _let_2080_2166))
       (and (and
       (or
        (and
         (= ((_ extract 14 13) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 14 13) _let_2080_2166)))
        (and
         (= ((_ extract 14 13) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 14 13) _let_2080_2166)))
        (and
         (= ((_ extract 14 13) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 14 13) _let_2080_2166))))
       (not
        (= ((_ extract 14 13) state_1___ucld_168_data_probe_pre_g_var2006)
         #b11)))
       (and
       (or
        (and
         (= ((_ extract 10 9) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 10 9) _let_2080_2166)))
        (and
         (= ((_ extract 10 9) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 10 9) _let_2080_2166)))
        (and
         (= ((_ extract 10 9) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 10 9) _let_2080_2166))))
       (not
        (= ((_ extract 10 9) state_1___ucld_168_data_probe_pre_g_var2006)
         #b11)))
       (and
       (or
        (and
         (= ((_ extract 12 11) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 12 11) _let_2080_2166)))
        (and
         (= ((_ extract 12 11) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 12 11) _let_2080_2166)))
        (and
         (= ((_ extract 12 11) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 12 11) _let_2080_2166))))
       (not
        (= ((_ extract 12 11) state_1___ucld_168_data_probe_pre_g_var2006)
         #b11)))
       (and
       (or
        (and
         (= ((_ extract 16 15) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 16 15) _let_2080_2166)))
        (and
         (= ((_ extract 16 15) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 16 15) _let_2080_2166)))
        (and
         (= ((_ extract 16 15) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 16 15) _let_2080_2166))))
       (not
        (= ((_ extract 16 15) state_1___ucld_168_data_probe_pre_g_var2006)
         #b11)))
       (and
       (or
        (and
         (= ((_ extract 2 2) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 2 2) _let_2080_2166)))
        (and
         (= ((_ extract 2 2) state_1___ucld_168_data_probe_pre_g_var2006)
          ((_ extract 2 2) _let_2080_2166))))))))
     (not
      (= ((_ extract 19 19) state_1___ucld_168_data_probe_pre_g_var2006) #b1)))))
  _let_2081_2167)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let
  ((_let_2082_2168
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2083_2169 (_field__rec_ca_nonce_used _let_2082_2168))) (let
  ((_let_2084_2170 (_field__rec_ca_Boolrue _let_2082_2168))) (let
  ((_let_2085_2171 (_field__rec_enc_state_d _let_2082_2168))) (let
  ((_let_2086_2172 (_field__rec_h_length _let_2082_2168))) (let
  ((_let_2087_2173 (_field__rec_h_offset _let_2082_2168))) (let
  ((_let_2088_2174 (_field__rec_h_base _let_2082_2168))) (let
  ((_let_2089_2175 (_field__rec_vtype _let_2082_2168))) (let
  ((_let_2090_2176 (_field__rec_value _let_2082_2168))) (let
  ((_let_2091_2177
    (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2092_2178
    (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2093_2179
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2094_2180
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2095_2181
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2096_2182
    (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2097_2183
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2098_2184
    (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2099_2185
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2100_2186
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2101_2187
    (_make__type_record_2_ _let_2090_2176 _let_2091_2177 _let_2092_2178
     _let_2093_2179 _let_2094_2180 _let_2095_2181 _let_2096_2182
     _let_2097_2183 _let_2098_2184 _let_2099_2185 _let_2100_2186)))
  (let ((_let_2102_2188 (_field__rec_value _let_2101_2187))) (let
  ((_let_2103_2189 (_field__rec_h_base _let_2101_2187))) (let
  ((_let_2104_2190 (_field__rec_h_offset _let_2101_2187))) (let
  ((_let_2105_2191 (_field__rec_h_length _let_2101_2187))) (let
  ((_let_2106_2192 (_field__rec_enc_state_p _let_2101_2187))) (let
  ((_let_2107_2193 (_field__rec_key_p _let_2101_2187))) (let
  ((_let_2108_2194 (_field__rec_enc_state_d _let_2101_2187))) (let
  ((_let_2109_2195 (_field__rec_key_d _let_2101_2187))) (let
  ((_let_2110_2196 (_field__rec_ca_nonce_used _let_2101_2187))) (let
  ((_let_2111_2197 (_field__rec_ca_Boolrue _let_2101_2187))) (let
  ((_let_2112_2198
    (_make__type_record_2_ _let_2102_2188 _let_2089_2175 _let_2103_2189
     _let_2104_2190 _let_2105_2191 _let_2106_2192 _let_2107_2193
     _let_2108_2194 _let_2109_2195 _let_2110_2196 _let_2111_2197)))
  (let ((_let_2113_2199 (_field__rec_value _let_2112_2198))) (let
  ((_let_2114_2200 (_field__rec_vtype _let_2112_2198))) (let
  ((_let_2115_2201 (_field__rec_h_offset _let_2112_2198))) (let
  ((_let_2116_2202 (_field__rec_h_length _let_2112_2198))) (let
  ((_let_2117_2203 (_field__rec_enc_state_p _let_2112_2198))) (let
  ((_let_2118_2204 (_field__rec_key_p _let_2112_2198))) (let
  ((_let_2119_2205 (_field__rec_enc_state_d _let_2112_2198))) (let
  ((_let_2120_2206 (_field__rec_key_d _let_2112_2198))) (let
  ((_let_2121_2207 (_field__rec_ca_nonce_used _let_2112_2198))) (let
  ((_let_2122_2208 (_field__rec_ca_Boolrue _let_2112_2198))) (let
  ((_let_2123_2209
    (_make__type_record_2_ _let_2113_2199 _let_2114_2200 _let_2088_2174
     _let_2115_2201 _let_2116_2202 _let_2117_2203 _let_2118_2204
     _let_2119_2205 _let_2120_2206 _let_2121_2207 _let_2122_2208)))
  (let ((_let_2124_2210 (_field__rec_value _let_2123_2209))) (let
  ((_let_2125_2211 (_field__rec_vtype _let_2123_2209))) (let
  ((_let_2126_2212 (_field__rec_h_base _let_2123_2209))) (let
  ((_let_2127_2213 (_field__rec_h_length _let_2123_2209))) (let
  ((_let_2128_2214 (_field__rec_enc_state_p _let_2123_2209))) (let
  ((_let_2129_2215 (_field__rec_key_p _let_2123_2209))) (let
  ((_let_2130_2216 (_field__rec_enc_state_d _let_2123_2209))) (let
  ((_let_2131_2217 (_field__rec_key_d _let_2123_2209))) (let
  ((_let_2132_2218 (_field__rec_ca_nonce_used _let_2123_2209))) (let
  ((_let_2133_2219 (_field__rec_ca_Boolrue _let_2123_2209))) (let
  ((_let_2134_2220
    (_make__type_record_2_ _let_2124_2210 _let_2125_2211 _let_2126_2212
     _let_2087_2173 _let_2127_2213 _let_2128_2214 _let_2129_2215
     _let_2130_2216 _let_2131_2217 _let_2132_2218 _let_2133_2219)))
  (let ((_let_2135_2221 (_field__rec_value _let_2134_2220))) (let
  ((_let_2136_2222 (_field__rec_vtype _let_2134_2220))) (let
  ((_let_2137_2223 (_field__rec_h_base _let_2134_2220))) (let
  ((_let_2138_2224 (_field__rec_h_offset _let_2134_2220))) (let
  ((_let_2139_2225 (_field__rec_enc_state_p _let_2134_2220))) (let
  ((_let_2140_2226 (_field__rec_key_p _let_2134_2220))) (let
  ((_let_2141_2227 (_field__rec_enc_state_d _let_2134_2220))) (let
  ((_let_2142_2228 (_field__rec_key_d _let_2134_2220))) (let
  ((_let_2143_2229 (_field__rec_ca_nonce_used _let_2134_2220))) (let
  ((_let_2144_2230 (_field__rec_ca_Boolrue _let_2134_2220))) (let
  ((_let_2145_2231
    (_make__type_record_2_ _let_2135_2221 _let_2136_2222 _let_2137_2223
     _let_2138_2224 _let_2086_2172 _let_2139_2225 _let_2140_2226
     _let_2141_2227 _let_2142_2228 _let_2143_2229 _let_2144_2230)))
  (let ((_let_2146_2232 (_field__rec_value _let_2145_2231))) (let
  ((_let_2147_2233 (_field__rec_vtype _let_2145_2231))) (let
  ((_let_2148_2234 (_field__rec_h_base _let_2145_2231))) (let
  ((_let_2149_2235 (_field__rec_h_offset _let_2145_2231))) (let
  ((_let_2150_2236 (_field__rec_h_length _let_2145_2231))) (let
  ((_let_2151_2237 (_field__rec_enc_state_p _let_2145_2231))) (let
  ((_let_2152_2238 (_field__rec_key_p _let_2145_2231))) (let
  ((_let_2153_2239 (_field__rec_key_d _let_2145_2231))) (let
  ((_let_2154_2240 (_field__rec_ca_nonce_used _let_2145_2231))) (let
  ((_let_2155_2241 (_field__rec_ca_Boolrue _let_2145_2231))) (let
  ((_let_2156_2242
    (_make__type_record_2_ _let_2146_2232 _let_2147_2233 _let_2148_2234
     _let_2149_2235 _let_2150_2236 _let_2151_2237 _let_2152_2238
     _let_2085_2171 _let_2153_2239 _let_2154_2240 _let_2155_2241)))
  (let ((_let_2157_2243 (_field__rec_value _let_2156_2242))) (let
  ((_let_2158_2244 (_field__rec_vtype _let_2156_2242))) (let
  ((_let_2159_2245 (_field__rec_h_base _let_2156_2242))) (let
  ((_let_2160_2246 (_field__rec_h_offset _let_2156_2242))) (let
  ((_let_2161_2247 (_field__rec_h_length _let_2156_2242))) (let
  ((_let_2162_2248 (_field__rec_key_p _let_2156_2242))) (let
  ((_let_2163_2249 (_field__rec_enc_state_d _let_2156_2242))) (let
  ((_let_2164_2250 (_field__rec_key_d _let_2156_2242))) (let
  ((_let_2165_2251 (_field__rec_ca_nonce_used _let_2156_2242))) (let
  ((_let_2166_2252 (_field__rec_ca_Boolrue _let_2156_2242))) (let
  ((_let_2167_2253
    (_make__type_record_2_ _let_2157_2243 _let_2158_2244 _let_2159_2245
     _let_2160_2246 _let_2161_2247 GAR _let_2162_2248 _let_2163_2249
     _let_2164_2250 _let_2165_2251 _let_2166_2252)))
  (let
  ((_let_2168_2254
    (_make__type_record_2_ _let_2157_2243 _let_2158_2244 _let_2159_2245
     _let_2160_2246 _let_2161_2247 PLN _let_2162_2248 _let_2163_2249
     _let_2164_2250 _let_2165_2251 _let_2166_2252)))
  (let ((_let_2169_2255 (_field__rec_key_p _let_2082_2168))) (let
  ((_let_2170_2256 (= _let_2169_2255 ViKey))) (let
  ((_let_2171_2257 (ite _let_2170_2256 _let_2168_2254 _let_2167_2253))) (let
  ((_let_2172_2258 (_field__rec_enc_state_p _let_2082_2168))) (let
  ((_let_2173_2259 (= _let_2172_2258 ENC))) (let
  ((_let_2174_2260 (ite _let_2173_2259 _let_2167_2253 _let_2171_2257))) (let
  ((_let_2175_2261
    (_make__type_record_2_ _let_2146_2232 _let_2147_2233 _let_2148_2234
     _let_2149_2235 _let_2150_2236 _let_2151_2237 _let_2152_2238 GAR
     _let_2153_2239 _let_2154_2240 _let_2155_2241)))
  (let ((_let_2176_2262 (_field__rec_value _let_2175_2261))) (let
  ((_let_2177_2263 (_field__rec_vtype _let_2175_2261))) (let
  ((_let_2178_2264 (_field__rec_h_base _let_2175_2261))) (let
  ((_let_2179_2265 (_field__rec_h_offset _let_2175_2261))) (let
  ((_let_2180_2266 (_field__rec_h_length _let_2175_2261))) (let
  ((_let_2181_2267 (_field__rec_key_p _let_2175_2261))) (let
  ((_let_2182_2268 (_field__rec_enc_state_d _let_2175_2261))) (let
  ((_let_2183_2269 (_field__rec_key_d _let_2175_2261))) (let
  ((_let_2184_2270 (_field__rec_ca_nonce_used _let_2175_2261))) (let
  ((_let_2185_2271 (_field__rec_ca_Boolrue _let_2175_2261))) (let
  ((_let_2186_2272
    (_make__type_record_2_ _let_2176_2262 _let_2177_2263 _let_2178_2264
     _let_2179_2265 _let_2180_2266 GAR _let_2181_2267 _let_2182_2268
     _let_2183_2269 _let_2184_2270 _let_2185_2271)))
  (let ((_let_2187_2273 (= _let_2085_2171 PLN))) (let
  ((_let_2188_2274 (ite _let_2187_2273 _let_2186_2272 _let_2174_2260))) (let
  ((_let_2189_2275 (_field__rec_value _let_2188_2274))) (let
  ((_let_2190_2276 (_field__rec_vtype _let_2188_2274))) (let
  ((_let_2191_2277 (_field__rec_h_base _let_2188_2274))) (let
  ((_let_2192_2278 (_field__rec_h_offset _let_2188_2274))) (let
  ((_let_2193_2279 (_field__rec_h_length _let_2188_2274))) (let
  ((_let_2194_2280 (_field__rec_enc_state_p _let_2188_2274))) (let
  ((_let_2195_2281 (_field__rec_enc_state_d _let_2188_2274))) (let
  ((_let_2196_2282 (_field__rec_key_d _let_2188_2274))) (let
  ((_let_2197_2283 (_field__rec_ca_nonce_used _let_2188_2274))) (let
  ((_let_2198_2284 (_field__rec_ca_Boolrue _let_2188_2274))) (let
  ((_let_2199_2285
    (_make__type_record_2_ _let_2189_2275 _let_2190_2276 _let_2191_2277
     _let_2192_2278 _let_2193_2279 _let_2194_2280 NoKey _let_2195_2281
     _let_2196_2282 _let_2197_2283 _let_2198_2284)))
  (let ((_let_2200_2286 (_field__rec_value _let_2199_2285))) (let
  ((_let_2201_2287 (_field__rec_vtype _let_2199_2285))) (let
  ((_let_2202_2288 (_field__rec_h_base _let_2199_2285))) (let
  ((_let_2203_2289 (_field__rec_h_offset _let_2199_2285))) (let
  ((_let_2204_2290 (_field__rec_h_length _let_2199_2285))) (let
  ((_let_2205_2291 (_field__rec_enc_state_p _let_2199_2285))) (let
  ((_let_2206_2292 (_field__rec_key_p _let_2199_2285))) (let
  ((_let_2207_2293 (_field__rec_enc_state_d _let_2199_2285))) (let
  ((_let_2208_2294 (_field__rec_ca_nonce_used _let_2199_2285))) (let
  ((_let_2209_2295 (_field__rec_ca_Boolrue _let_2199_2285))) (let
  ((_let_2210_2296
    (_make__type_record_2_ _let_2200_2286 _let_2201_2287 _let_2202_2288
     _let_2203_2289 _let_2204_2290 _let_2205_2291 _let_2206_2292
     _let_2207_2293 NoKey _let_2208_2294 _let_2209_2295)))
  (let ((_let_2211_2297 (_field__rec_value _let_2210_2296))) (let
  ((_let_2212_2298 (_field__rec_vtype _let_2210_2296))) (let
  ((_let_2213_2299 (_field__rec_h_base _let_2210_2296))) (let
  ((_let_2214_2300 (_field__rec_h_offset _let_2210_2296))) (let
  ((_let_2215_2301 (_field__rec_h_length _let_2210_2296))) (let
  ((_let_2216_2302 (_field__rec_enc_state_p _let_2210_2296))) (let
  ((_let_2217_2303 (_field__rec_key_p _let_2210_2296))) (let
  ((_let_2218_2304 (_field__rec_enc_state_d _let_2210_2296))) (let
  ((_let_2219_2305 (_field__rec_key_d _let_2210_2296))) (let
  ((_let_2220_2306 (_field__rec_ca_nonce_used _let_2210_2296))) (let
  ((_let_2221_2307
    (_make__type_record_2_ _let_2211_2297 _let_2212_2298 _let_2213_2299
     _let_2214_2300 _let_2215_2301 _let_2216_2302 _let_2217_2303
     _let_2218_2304 _let_2219_2305 _let_2220_2306 _let_2084_2170)))
  (let ((_let_2222_2308 (_field__rec_value _let_2221_2307))) (let
  ((_let_2223_2309 (_field__rec_vtype _let_2221_2307))) (let
  ((_let_2224_2310 (_field__rec_h_base _let_2221_2307))) (let
  ((_let_2225_2311 (_field__rec_h_offset _let_2221_2307))) (let
  ((_let_2226_2312 (_field__rec_h_length _let_2221_2307))) (let
  ((_let_2227_2313 (_field__rec_enc_state_p _let_2221_2307))) (let
  ((_let_2228_2314 (_field__rec_key_p _let_2221_2307))) (let
  ((_let_2229_2315 (_field__rec_enc_state_d _let_2221_2307))) (let
  ((_let_2230_2316 (_field__rec_key_d _let_2221_2307))) (let
  ((_let_2231_2317 (_field__rec_ca_Boolrue _let_2221_2307))) (let
  ((_let_2232_2318
    (_make__type_record_2_ _let_2222_2308 _let_2223_2309 _let_2224_2310
     _let_2225_2311 _let_2226_2312 _let_2227_2313 _let_2228_2314
     _let_2229_2315 _let_2230_2316 _let_2083_2169 _let_2231_2317)))
  (let ((_let_2233_2319 (_field__rec_h_offset _let_2232_2318))) (let
  ((_let_2234_2320 (bvsub (_ bv3 2 ) _let_2233_2319))) (let
  ((_let_2235_2321 (_field__rec_h_base _let_2232_2318))) (let
  ((_let_2236_2322 (bvule _let_2235_2321 _let_2234_2320))) (let
  ((_let_2237_2323
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_2238_2324 (and true _let_2237_2323))) (let
  ((_let_2239_2325 (and _let_2238_2324 initial_50_v82))) (let
  ((_let_2240_2326 (=> _let_2239_2325 _let_2236_2322)))
  _let_2240_2326))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun state_1___ucld_161_l1_var2327 () (_ BitVec 3))
(declare-fun havoc_97___ucld_114_l1_havoc2328 () (_ BitVec 3))
(assert
 (let
  ((_let_2241_2329
    (ite initial_50_v82 havoc_97___ucld_114_l1_havoc2328
     initial_63___ucld_161_l1_var296)))
  (let ((_let_2242_2330 (= state_1___ucld_161_l1_var2327 _let_2241_2329)))
  _let_2242_2330)))
(assert
 (let
  ((_let_2243_2331
    (forall ((a2332 (_ BitVec 2)))
     (=>
      (and
       (=
        ((_ extract 0 0)
         (bvlshr
          initial_51___ucld_157_alloc_map_var85
          (bvmul ((_ zero_extend 2) a2332) #b0001)))
        #b1)
       (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var623
             (bvmul
              ((_ zero_extend 78) a2332)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var623
             (bvmul
              ((_ zero_extend 78) a2332)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_56___ucld_171_ghost_mem_var623
               (bvmul
                ((_ zero_extend 78) a2332)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_56___ucld_171_ghost_mem_var623
           (bvmul
            ((_ zero_extend 78) a2332)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               initial_56___ucld_171_ghost_mem_var623
               (bvmul
                ((_ zero_extend 78) a2332)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           initial_56___ucld_171_ghost_mem_var623
           (bvmul
            ((_ zero_extend 78) a2332)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
         (_field__rec_h_length
         ((_ extract 19 0)
          (bvlshr
           initial_56___ucld_171_ghost_mem_var623
           (bvmul
            ((_ zero_extend 78) a2332)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              initial_56___ucld_171_ghost_mem_var623
              (bvmul
               ((_ zero_extend 78) a2332)
               #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  _let_2243_2331))
(declare-fun state_1___ucld_174_msv_curr_var2333 () Bool)
(declare-fun initial_59___ucld_174_msv_curr_var2334 () Bool)
(assert
 (let
  ((_let_2244_2335
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var296)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2245_2336 (_field__rec_ca_nonce_used _let_2244_2335))) (let
  ((_let_2246_2337 (_field__rec_ca_Boolrue _let_2244_2335))) (let
  ((_let_2247_2338 (_field__rec_enc_state_d _let_2244_2335))) (let
  ((_let_2248_2339 (_field__rec_h_length _let_2244_2335))) (let
  ((_let_2249_2340 (_field__rec_h_offset _let_2244_2335))) (let
  ((_let_2250_2341 (_field__rec_h_base _let_2244_2335))) (let
  ((_let_2251_2342 (_field__rec_vtype _let_2244_2335))) (let
  ((_let_2252_2343 (_field__rec_value _let_2244_2335))) (let
  ((_let_2253_2344
    (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2254_2345
    (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2255_2346
    (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2256_2347
    (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2257_2348
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2258_2349
    (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2259_2350
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2260_2351
    (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2261_2352
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2262_2353
    (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2263_2354
    (_make__type_record_2_ _let_2252_2343 _let_2253_2344 _let_2254_2345
     _let_2255_2346 _let_2256_2347 _let_2257_2348 _let_2258_2349
     _let_2259_2350 _let_2260_2351 _let_2261_2352 _let_2262_2353)))
  (let ((_let_2264_2355 (_field__rec_value _let_2263_2354))) (let
  ((_let_2265_2356 (_field__rec_h_base _let_2263_2354))) (let
  ((_let_2266_2357 (_field__rec_h_offset _let_2263_2354))) (let
  ((_let_2267_2358 (_field__rec_h_length _let_2263_2354))) (let
  ((_let_2268_2359 (_field__rec_enc_state_p _let_2263_2354))) (let
  ((_let_2269_2360 (_field__rec_key_p _let_2263_2354))) (let
  ((_let_2270_2361 (_field__rec_enc_state_d _let_2263_2354))) (let
  ((_let_2271_2362 (_field__rec_key_d _let_2263_2354))) (let
  ((_let_2272_2363 (_field__rec_ca_nonce_used _let_2263_2354))) (let
  ((_let_2273_2364 (_field__rec_ca_Boolrue _let_2263_2354))) (let
  ((_let_2274_2365
    (_make__type_record_2_ _let_2264_2355 _let_2251_2342 _let_2265_2356
     _let_2266_2357 _let_2267_2358 _let_2268_2359 _let_2269_2360
     _let_2270_2361 _let_2271_2362 _let_2272_2363 _let_2273_2364)))
  (let ((_let_2275_2366 (_field__rec_value _let_2274_2365))) (let
  ((_let_2276_2367 (_field__rec_vtype _let_2274_2365))) (let
  ((_let_2277_2368 (_field__rec_h_offset _let_2274_2365))) (let
  ((_let_2278_2369 (_field__rec_h_length _let_2274_2365))) (let
  ((_let_2279_2370 (_field__rec_enc_state_p _let_2274_2365))) (let
  ((_let_2280_2371 (_field__rec_key_p _let_2274_2365))) (let
  ((_let_2281_2372 (_field__rec_enc_state_d _let_2274_2365))) (let
  ((_let_2282_2373 (_field__rec_key_d _let_2274_2365))) (let
  ((_let_2283_2374 (_field__rec_ca_nonce_used _let_2274_2365))) (let
  ((_let_2284_2375 (_field__rec_ca_Boolrue _let_2274_2365))) (let
  ((_let_2285_2376
    (_make__type_record_2_ _let_2275_2366 _let_2276_2367 _let_2250_2341
     _let_2277_2368 _let_2278_2369 _let_2279_2370 _let_2280_2371
     _let_2281_2372 _let_2282_2373 _let_2283_2374 _let_2284_2375)))
  (let ((_let_2286_2377 (_field__rec_value _let_2285_2376))) (let
  ((_let_2287_2378 (_field__rec_vtype _let_2285_2376))) (let
  ((_let_2288_2379 (_field__rec_h_base _let_2285_2376))) (let
  ((_let_2289_2380 (_field__rec_h_length _let_2285_2376))) (let
  ((_let_2290_2381 (_field__rec_enc_state_p _let_2285_2376))) (let
  ((_let_2291_2382 (_field__rec_key_p _let_2285_2376))) (let
  ((_let_2292_2383 (_field__rec_enc_state_d _let_2285_2376))) (let
  ((_let_2293_2384 (_field__rec_key_d _let_2285_2376))) (let
  ((_let_2294_2385 (_field__rec_ca_nonce_used _let_2285_2376))) (let
  ((_let_2295_2386 (_field__rec_ca_Boolrue _let_2285_2376))) (let
  ((_let_2296_2387
    (_make__type_record_2_ _let_2286_2377 _let_2287_2378 _let_2288_2379
     _let_2249_2340 _let_2289_2380 _let_2290_2381 _let_2291_2382
     _let_2292_2383 _let_2293_2384 _let_2294_2385 _let_2295_2386)))
  (let ((_let_2297_2388 (_field__rec_value _let_2296_2387))) (let
  ((_let_2298_2389 (_field__rec_vtype _let_2296_2387))) (let
  ((_let_2299_2390 (_field__rec_h_base _let_2296_2387))) (let
  ((_let_2300_2391 (_field__rec_h_offset _let_2296_2387))) (let
  ((_let_2301_2392 (_field__rec_enc_state_p _let_2296_2387))) (let
  ((_let_2302_2393 (_field__rec_key_p _let_2296_2387))) (let
  ((_let_2303_2394 (_field__rec_enc_state_d _let_2296_2387))) (let
  ((_let_2304_2395 (_field__rec_key_d _let_2296_2387))) (let
  ((_let_2305_2396 (_field__rec_ca_nonce_used _let_2296_2387))) (let
  ((_let_2306_2397 (_field__rec_ca_Boolrue _let_2296_2387))) (let
  ((_let_2307_2398
    (_make__type_record_2_ _let_2297_2388 _let_2298_2389 _let_2299_2390
     _let_2300_2391 _let_2248_2339 _let_2301_2392 _let_2302_2393
     _let_2303_2394 _let_2304_2395 _let_2305_2396 _let_2306_2397)))
  (let ((_let_2308_2399 (_field__rec_value _let_2307_2398))) (let
  ((_let_2309_2400 (_field__rec_vtype _let_2307_2398))) (let
  ((_let_2310_2401 (_field__rec_h_base _let_2307_2398))) (let
  ((_let_2311_2402 (_field__rec_h_offset _let_2307_2398))) (let
  ((_let_2312_2403 (_field__rec_h_length _let_2307_2398))) (let
  ((_let_2313_2404 (_field__rec_enc_state_p _let_2307_2398))) (let
  ((_let_2314_2405 (_field__rec_key_p _let_2307_2398))) (let
  ((_let_2315_2406 (_field__rec_key_d _let_2307_2398))) (let
  ((_let_2316_2407 (_field__rec_ca_nonce_used _let_2307_2398))) (let
  ((_let_2317_2408 (_field__rec_ca_Boolrue _let_2307_2398))) (let
  ((_let_2318_2409
    (_make__type_record_2_ _let_2308_2399 _let_2309_2400 _let_2310_2401
     _let_2311_2402 _let_2312_2403 _let_2313_2404 _let_2314_2405
     _let_2247_2338 _let_2315_2406 _let_2316_2407 _let_2317_2408)))
  (let ((_let_2319_2410 (_field__rec_value _let_2318_2409))) (let
  ((_let_2320_2411 (_field__rec_vtype _let_2318_2409))) (let
  ((_let_2321_2412 (_field__rec_h_base _let_2318_2409))) (let
  ((_let_2322_2413 (_field__rec_h_offset _let_2318_2409))) (let
  ((_let_2323_2414 (_field__rec_h_length _let_2318_2409))) (let
  ((_let_2324_2415 (_field__rec_key_p _let_2318_2409))) (let
  ((_let_2325_2416 (_field__rec_enc_state_d _let_2318_2409))) (let
  ((_let_2326_2417 (_field__rec_key_d _let_2318_2409))) (let
  ((_let_2327_2418 (_field__rec_ca_nonce_used _let_2318_2409))) (let
  ((_let_2328_2419 (_field__rec_ca_Boolrue _let_2318_2409))) (let
  ((_let_2329_2420
    (_make__type_record_2_ _let_2319_2410 _let_2320_2411 _let_2321_2412
     _let_2322_2413 _let_2323_2414 GAR _let_2324_2415 _let_2325_2416
     _let_2326_2417 _let_2327_2418 _let_2328_2419)))
  (let
  ((_let_2330_2421
    (_make__type_record_2_ _let_2319_2410 _let_2320_2411 _let_2321_2412
     _let_2322_2413 _let_2323_2414 PLN _let_2324_2415 _let_2325_2416
     _let_2326_2417 _let_2327_2418 _let_2328_2419)))
  (let ((_let_2331_2422 (_field__rec_key_p _let_2244_2335))) (let
  ((_let_2332_2423 (= _let_2331_2422 ViKey))) (let
  ((_let_2333_2424 (ite _let_2332_2423 _let_2330_2421 _let_2329_2420))) (let
  ((_let_2334_2425 (_field__rec_enc_state_p _let_2244_2335))) (let
  ((_let_2335_2426 (= _let_2334_2425 ENC))) (let
  ((_let_2336_2427 (ite _let_2335_2426 _let_2329_2420 _let_2333_2424))) (let
  ((_let_2337_2428
    (_make__type_record_2_ _let_2308_2399 _let_2309_2400 _let_2310_2401
     _let_2311_2402 _let_2312_2403 _let_2313_2404 _let_2314_2405 GAR
     _let_2315_2406 _let_2316_2407 _let_2317_2408)))
  (let ((_let_2338_2429 (_field__rec_value _let_2337_2428))) (let
  ((_let_2339_2430 (_field__rec_vtype _let_2337_2428))) (let
  ((_let_2340_2431 (_field__rec_h_base _let_2337_2428))) (let
  ((_let_2341_2432 (_field__rec_h_offset _let_2337_2428))) (let
  ((_let_2342_2433 (_field__rec_h_length _let_2337_2428))) (let
  ((_let_2343_2434 (_field__rec_key_p _let_2337_2428))) (let
  ((_let_2344_2435 (_field__rec_enc_state_d _let_2337_2428))) (let
  ((_let_2345_2436 (_field__rec_key_d _let_2337_2428))) (let
  ((_let_2346_2437 (_field__rec_ca_nonce_used _let_2337_2428))) (let
  ((_let_2347_2438 (_field__rec_ca_Boolrue _let_2337_2428))) (let
  ((_let_2348_2439
    (_make__type_record_2_ _let_2338_2429 _let_2339_2430 _let_2340_2431
     _let_2341_2432 _let_2342_2433 GAR _let_2343_2434 _let_2344_2435
     _let_2345_2436 _let_2346_2437 _let_2347_2438)))
  (let ((_let_2349_2440 (= _let_2247_2338 PLN))) (let
  ((_let_2350_2441 (ite _let_2349_2440 _let_2348_2439 _let_2336_2427))) (let
  ((_let_2351_2442 (_field__rec_value _let_2350_2441))) (let
  ((_let_2352_2443 (_field__rec_vtype _let_2350_2441))) (let
  ((_let_2353_2444 (_field__rec_h_base _let_2350_2441))) (let
  ((_let_2354_2445 (_field__rec_h_offset _let_2350_2441))) (let
  ((_let_2355_2446 (_field__rec_h_length _let_2350_2441))) (let
  ((_let_2356_2447 (_field__rec_enc_state_p _let_2350_2441))) (let
  ((_let_2357_2448 (_field__rec_enc_state_d _let_2350_2441))) (let
  ((_let_2358_2449 (_field__rec_key_d _let_2350_2441))) (let
  ((_let_2359_2450 (_field__rec_ca_nonce_used _let_2350_2441))) (let
  ((_let_2360_2451 (_field__rec_ca_Boolrue _let_2350_2441))) (let
  ((_let_2361_2452
    (_make__type_record_2_ _let_2351_2442 _let_2352_2443 _let_2353_2444
     _let_2354_2445 _let_2355_2446 _let_2356_2447 NoKey _let_2357_2448
     _let_2358_2449 _let_2359_2450 _let_2360_2451)))
  (let ((_let_2362_2453 (_field__rec_value _let_2361_2452))) (let
  ((_let_2363_2454 (_field__rec_vtype _let_2361_2452))) (let
  ((_let_2364_2455 (_field__rec_h_base _let_2361_2452))) (let
  ((_let_2365_2456 (_field__rec_h_offset _let_2361_2452))) (let
  ((_let_2366_2457 (_field__rec_h_length _let_2361_2452))) (let
  ((_let_2367_2458 (_field__rec_enc_state_p _let_2361_2452))) (let
  ((_let_2368_2459 (_field__rec_key_p _let_2361_2452))) (let
  ((_let_2369_2460 (_field__rec_enc_state_d _let_2361_2452))) (let
  ((_let_2370_2461 (_field__rec_ca_nonce_used _let_2361_2452))) (let
  ((_let_2371_2462 (_field__rec_ca_Boolrue _let_2361_2452))) (let
  ((_let_2372_2463
    (_make__type_record_2_ _let_2362_2453 _let_2363_2454 _let_2364_2455
     _let_2365_2456 _let_2366_2457 _let_2367_2458 _let_2368_2459
     _let_2369_2460 NoKey _let_2370_2461 _let_2371_2462)))
  (let ((_let_2373_2464 (_field__rec_value _let_2372_2463))) (let
  ((_let_2374_2465 (_field__rec_vtype _let_2372_2463))) (let
  ((_let_2375_2466 (_field__rec_h_base _let_2372_2463))) (let
  ((_let_2376_2467 (_field__rec_h_offset _let_2372_2463))) (let
  ((_let_2377_2468 (_field__rec_h_length _let_2372_2463))) (let
  ((_let_2378_2469 (_field__rec_enc_state_p _let_2372_2463))) (let
  ((_let_2379_2470 (_field__rec_key_p _let_2372_2463))) (let
  ((_let_2380_2471 (_field__rec_enc_state_d _let_2372_2463))) (let
  ((_let_2381_2472 (_field__rec_key_d _let_2372_2463))) (let
  ((_let_2382_2473 (_field__rec_ca_nonce_used _let_2372_2463))) (let
  ((_let_2383_2474
    (_make__type_record_2_ _let_2373_2464 _let_2374_2465 _let_2375_2466
     _let_2376_2467 _let_2377_2468 _let_2378_2469 _let_2379_2470
     _let_2380_2471 _let_2381_2472 _let_2382_2473 _let_2246_2337)))
  (let ((_let_2384_2475 (_field__rec_value _let_2383_2474))) (let
  ((_let_2385_2476 (_field__rec_vtype _let_2383_2474))) (let
  ((_let_2386_2477 (_field__rec_h_base _let_2383_2474))) (let
  ((_let_2387_2478 (_field__rec_h_offset _let_2383_2474))) (let
  ((_let_2388_2479 (_field__rec_h_length _let_2383_2474))) (let
  ((_let_2389_2480 (_field__rec_enc_state_p _let_2383_2474))) (let
  ((_let_2390_2481 (_field__rec_key_p _let_2383_2474))) (let
  ((_let_2391_2482 (_field__rec_enc_state_d _let_2383_2474))) (let
  ((_let_2392_2483 (_field__rec_key_d _let_2383_2474))) (let
  ((_let_2393_2484 (_field__rec_ca_Boolrue _let_2383_2474))) (let
  ((_let_2394_2485
    (_make__type_record_2_ _let_2384_2475 _let_2385_2476 _let_2386_2477
     _let_2387_2478 _let_2388_2479 _let_2389_2480 _let_2390_2481
     _let_2391_2482 _let_2392_2483 _let_2245_2336 _let_2393_2484)))
  (let ((_let_2395_2486 (_field__rec_h_length _let_2394_2485))) (let
  ((_let_2396_2487 (_field__rec_h_offset _let_2394_2485))) (let
  ((_let_2397_2488 (bvult _let_2396_2487 _let_2395_2486))) (let
  ((_let_2398_2489 (bvule (_ bv0 2 ) _let_2396_2487))) (let
  ((_let_2399_2490 (and _let_2398_2489 _let_2397_2488))) (let
  ((_let_2400_2491 (not _let_2399_2490))) (let
  ((_let_2401_2492 (ite _let_2400_2491 true false))) (let
  ((_let_2402_2493
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_2403_2494
    (ite _let_2402_2493 _let_2401_2492 initial_59___ucld_174_msv_curr_var2334)))
  (let
  ((_let_2404_2495
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2405_2496 (_field__rec_ca_nonce_used _let_2404_2495))) (let
  ((_let_2406_2497 (_field__rec_ca_Boolrue _let_2404_2495))) (let
  ((_let_2407_2498 (_field__rec_enc_state_d _let_2404_2495))) (let
  ((_let_2408_2499 (_field__rec_h_length _let_2404_2495))) (let
  ((_let_2409_2500 (_field__rec_h_offset _let_2404_2495))) (let
  ((_let_2410_2501 (_field__rec_h_base _let_2404_2495))) (let
  ((_let_2411_2502 (_field__rec_vtype _let_2404_2495))) (let
  ((_let_2412_2503 (_field__rec_value _let_2404_2495))) (let
  ((_let_2413_2504
    (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2414_2505
    (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2415_2506
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2416_2507
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2417_2508
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2418_2509
    (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2419_2510
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2420_2511
    (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2421_2512
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2422_2513
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2423_2514
    (_make__type_record_2_ _let_2412_2503 _let_2413_2504 _let_2414_2505
     _let_2415_2506 _let_2416_2507 _let_2417_2508 _let_2418_2509
     _let_2419_2510 _let_2420_2511 _let_2421_2512 _let_2422_2513)))
  (let ((_let_2424_2515 (_field__rec_value _let_2423_2514))) (let
  ((_let_2425_2516 (_field__rec_h_base _let_2423_2514))) (let
  ((_let_2426_2517 (_field__rec_h_offset _let_2423_2514))) (let
  ((_let_2427_2518 (_field__rec_h_length _let_2423_2514))) (let
  ((_let_2428_2519 (_field__rec_enc_state_p _let_2423_2514))) (let
  ((_let_2429_2520 (_field__rec_key_p _let_2423_2514))) (let
  ((_let_2430_2521 (_field__rec_enc_state_d _let_2423_2514))) (let
  ((_let_2431_2522 (_field__rec_key_d _let_2423_2514))) (let
  ((_let_2432_2523 (_field__rec_ca_nonce_used _let_2423_2514))) (let
  ((_let_2433_2524 (_field__rec_ca_Boolrue _let_2423_2514))) (let
  ((_let_2434_2525
    (_make__type_record_2_ _let_2424_2515 _let_2411_2502 _let_2425_2516
     _let_2426_2517 _let_2427_2518 _let_2428_2519 _let_2429_2520
     _let_2430_2521 _let_2431_2522 _let_2432_2523 _let_2433_2524)))
  (let ((_let_2435_2526 (_field__rec_value _let_2434_2525))) (let
  ((_let_2436_2527 (_field__rec_vtype _let_2434_2525))) (let
  ((_let_2437_2528 (_field__rec_h_offset _let_2434_2525))) (let
  ((_let_2438_2529 (_field__rec_h_length _let_2434_2525))) (let
  ((_let_2439_2530 (_field__rec_enc_state_p _let_2434_2525))) (let
  ((_let_2440_2531 (_field__rec_key_p _let_2434_2525))) (let
  ((_let_2441_2532 (_field__rec_enc_state_d _let_2434_2525))) (let
  ((_let_2442_2533 (_field__rec_key_d _let_2434_2525))) (let
  ((_let_2443_2534 (_field__rec_ca_nonce_used _let_2434_2525))) (let
  ((_let_2444_2535 (_field__rec_ca_Boolrue _let_2434_2525))) (let
  ((_let_2445_2536
    (_make__type_record_2_ _let_2435_2526 _let_2436_2527 _let_2410_2501
     _let_2437_2528 _let_2438_2529 _let_2439_2530 _let_2440_2531
     _let_2441_2532 _let_2442_2533 _let_2443_2534 _let_2444_2535)))
  (let ((_let_2446_2537 (_field__rec_value _let_2445_2536))) (let
  ((_let_2447_2538 (_field__rec_vtype _let_2445_2536))) (let
  ((_let_2448_2539 (_field__rec_h_base _let_2445_2536))) (let
  ((_let_2449_2540 (_field__rec_h_length _let_2445_2536))) (let
  ((_let_2450_2541 (_field__rec_enc_state_p _let_2445_2536))) (let
  ((_let_2451_2542 (_field__rec_key_p _let_2445_2536))) (let
  ((_let_2452_2543 (_field__rec_enc_state_d _let_2445_2536))) (let
  ((_let_2453_2544 (_field__rec_key_d _let_2445_2536))) (let
  ((_let_2454_2545 (_field__rec_ca_nonce_used _let_2445_2536))) (let
  ((_let_2455_2546 (_field__rec_ca_Boolrue _let_2445_2536))) (let
  ((_let_2456_2547
    (_make__type_record_2_ _let_2446_2537 _let_2447_2538 _let_2448_2539
     _let_2409_2500 _let_2449_2540 _let_2450_2541 _let_2451_2542
     _let_2452_2543 _let_2453_2544 _let_2454_2545 _let_2455_2546)))
  (let ((_let_2457_2548 (_field__rec_value _let_2456_2547))) (let
  ((_let_2458_2549 (_field__rec_vtype _let_2456_2547))) (let
  ((_let_2459_2550 (_field__rec_h_base _let_2456_2547))) (let
  ((_let_2460_2551 (_field__rec_h_offset _let_2456_2547))) (let
  ((_let_2461_2552 (_field__rec_enc_state_p _let_2456_2547))) (let
  ((_let_2462_2553 (_field__rec_key_p _let_2456_2547))) (let
  ((_let_2463_2554 (_field__rec_enc_state_d _let_2456_2547))) (let
  ((_let_2464_2555 (_field__rec_key_d _let_2456_2547))) (let
  ((_let_2465_2556 (_field__rec_ca_nonce_used _let_2456_2547))) (let
  ((_let_2466_2557 (_field__rec_ca_Boolrue _let_2456_2547))) (let
  ((_let_2467_2558
    (_make__type_record_2_ _let_2457_2548 _let_2458_2549 _let_2459_2550
     _let_2460_2551 _let_2408_2499 _let_2461_2552 _let_2462_2553
     _let_2463_2554 _let_2464_2555 _let_2465_2556 _let_2466_2557)))
  (let ((_let_2468_2559 (_field__rec_value _let_2467_2558))) (let
  ((_let_2469_2560 (_field__rec_vtype _let_2467_2558))) (let
  ((_let_2470_2561 (_field__rec_h_base _let_2467_2558))) (let
  ((_let_2471_2562 (_field__rec_h_offset _let_2467_2558))) (let
  ((_let_2472_2563 (_field__rec_h_length _let_2467_2558))) (let
  ((_let_2473_2564 (_field__rec_enc_state_p _let_2467_2558))) (let
  ((_let_2474_2565 (_field__rec_key_p _let_2467_2558))) (let
  ((_let_2475_2566 (_field__rec_key_d _let_2467_2558))) (let
  ((_let_2476_2567 (_field__rec_ca_nonce_used _let_2467_2558))) (let
  ((_let_2477_2568 (_field__rec_ca_Boolrue _let_2467_2558))) (let
  ((_let_2478_2569
    (_make__type_record_2_ _let_2468_2559 _let_2469_2560 _let_2470_2561
     _let_2471_2562 _let_2472_2563 _let_2473_2564 _let_2474_2565
     _let_2407_2498 _let_2475_2566 _let_2476_2567 _let_2477_2568)))
  (let ((_let_2479_2570 (_field__rec_value _let_2478_2569))) (let
  ((_let_2480_2571 (_field__rec_vtype _let_2478_2569))) (let
  ((_let_2481_2572 (_field__rec_h_base _let_2478_2569))) (let
  ((_let_2482_2573 (_field__rec_h_offset _let_2478_2569))) (let
  ((_let_2483_2574 (_field__rec_h_length _let_2478_2569))) (let
  ((_let_2484_2575 (_field__rec_key_p _let_2478_2569))) (let
  ((_let_2485_2576 (_field__rec_enc_state_d _let_2478_2569))) (let
  ((_let_2486_2577 (_field__rec_key_d _let_2478_2569))) (let
  ((_let_2487_2578 (_field__rec_ca_nonce_used _let_2478_2569))) (let
  ((_let_2488_2579 (_field__rec_ca_Boolrue _let_2478_2569))) (let
  ((_let_2489_2580
    (_make__type_record_2_ _let_2479_2570 _let_2480_2571 _let_2481_2572
     _let_2482_2573 _let_2483_2574 GAR _let_2484_2575 _let_2485_2576
     _let_2486_2577 _let_2487_2578 _let_2488_2579)))
  (let
  ((_let_2490_2581
    (_make__type_record_2_ _let_2479_2570 _let_2480_2571 _let_2481_2572
     _let_2482_2573 _let_2483_2574 PLN _let_2484_2575 _let_2485_2576
     _let_2486_2577 _let_2487_2578 _let_2488_2579)))
  (let ((_let_2491_2582 (_field__rec_key_p _let_2404_2495))) (let
  ((_let_2492_2583 (= _let_2491_2582 ViKey))) (let
  ((_let_2493_2584 (ite _let_2492_2583 _let_2490_2581 _let_2489_2580))) (let
  ((_let_2494_2585 (_field__rec_enc_state_p _let_2404_2495))) (let
  ((_let_2495_2586 (= _let_2494_2585 ENC))) (let
  ((_let_2496_2587 (ite _let_2495_2586 _let_2489_2580 _let_2493_2584))) (let
  ((_let_2497_2588
    (_make__type_record_2_ _let_2468_2559 _let_2469_2560 _let_2470_2561
     _let_2471_2562 _let_2472_2563 _let_2473_2564 _let_2474_2565 GAR
     _let_2475_2566 _let_2476_2567 _let_2477_2568)))
  (let ((_let_2498_2589 (_field__rec_value _let_2497_2588))) (let
  ((_let_2499_2590 (_field__rec_vtype _let_2497_2588))) (let
  ((_let_2500_2591 (_field__rec_h_base _let_2497_2588))) (let
  ((_let_2501_2592 (_field__rec_h_offset _let_2497_2588))) (let
  ((_let_2502_2593 (_field__rec_h_length _let_2497_2588))) (let
  ((_let_2503_2594 (_field__rec_key_p _let_2497_2588))) (let
  ((_let_2504_2595 (_field__rec_enc_state_d _let_2497_2588))) (let
  ((_let_2505_2596 (_field__rec_key_d _let_2497_2588))) (let
  ((_let_2506_2597 (_field__rec_ca_nonce_used _let_2497_2588))) (let
  ((_let_2507_2598 (_field__rec_ca_Boolrue _let_2497_2588))) (let
  ((_let_2508_2599
    (_make__type_record_2_ _let_2498_2589 _let_2499_2590 _let_2500_2591
     _let_2501_2592 _let_2502_2593 GAR _let_2503_2594 _let_2504_2595
     _let_2505_2596 _let_2506_2597 _let_2507_2598)))
  (let ((_let_2509_2600 (= _let_2407_2498 PLN))) (let
  ((_let_2510_2601 (ite _let_2509_2600 _let_2508_2599 _let_2496_2587))) (let
  ((_let_2511_2602 (_field__rec_value _let_2510_2601))) (let
  ((_let_2512_2603 (_field__rec_vtype _let_2510_2601))) (let
  ((_let_2513_2604 (_field__rec_h_base _let_2510_2601))) (let
  ((_let_2514_2605 (_field__rec_h_offset _let_2510_2601))) (let
  ((_let_2515_2606 (_field__rec_h_length _let_2510_2601))) (let
  ((_let_2516_2607 (_field__rec_enc_state_p _let_2510_2601))) (let
  ((_let_2517_2608 (_field__rec_enc_state_d _let_2510_2601))) (let
  ((_let_2518_2609 (_field__rec_key_d _let_2510_2601))) (let
  ((_let_2519_2610 (_field__rec_ca_nonce_used _let_2510_2601))) (let
  ((_let_2520_2611 (_field__rec_ca_Boolrue _let_2510_2601))) (let
  ((_let_2521_2612
    (_make__type_record_2_ _let_2511_2602 _let_2512_2603 _let_2513_2604
     _let_2514_2605 _let_2515_2606 _let_2516_2607 NoKey _let_2517_2608
     _let_2518_2609 _let_2519_2610 _let_2520_2611)))
  (let ((_let_2522_2613 (_field__rec_value _let_2521_2612))) (let
  ((_let_2523_2614 (_field__rec_vtype _let_2521_2612))) (let
  ((_let_2524_2615 (_field__rec_h_base _let_2521_2612))) (let
  ((_let_2525_2616 (_field__rec_h_offset _let_2521_2612))) (let
  ((_let_2526_2617 (_field__rec_h_length _let_2521_2612))) (let
  ((_let_2527_2618 (_field__rec_enc_state_p _let_2521_2612))) (let
  ((_let_2528_2619 (_field__rec_key_p _let_2521_2612))) (let
  ((_let_2529_2620 (_field__rec_enc_state_d _let_2521_2612))) (let
  ((_let_2530_2621 (_field__rec_ca_nonce_used _let_2521_2612))) (let
  ((_let_2531_2622 (_field__rec_ca_Boolrue _let_2521_2612))) (let
  ((_let_2532_2623
    (_make__type_record_2_ _let_2522_2613 _let_2523_2614 _let_2524_2615
     _let_2525_2616 _let_2526_2617 _let_2527_2618 _let_2528_2619
     _let_2529_2620 NoKey _let_2530_2621 _let_2531_2622)))
  (let ((_let_2533_2624 (_field__rec_value _let_2532_2623))) (let
  ((_let_2534_2625 (_field__rec_vtype _let_2532_2623))) (let
  ((_let_2535_2626 (_field__rec_h_base _let_2532_2623))) (let
  ((_let_2536_2627 (_field__rec_h_offset _let_2532_2623))) (let
  ((_let_2537_2628 (_field__rec_h_length _let_2532_2623))) (let
  ((_let_2538_2629 (_field__rec_enc_state_p _let_2532_2623))) (let
  ((_let_2539_2630 (_field__rec_key_p _let_2532_2623))) (let
  ((_let_2540_2631 (_field__rec_enc_state_d _let_2532_2623))) (let
  ((_let_2541_2632 (_field__rec_key_d _let_2532_2623))) (let
  ((_let_2542_2633 (_field__rec_ca_nonce_used _let_2532_2623))) (let
  ((_let_2543_2634
    (_make__type_record_2_ _let_2533_2624 _let_2534_2625 _let_2535_2626
     _let_2536_2627 _let_2537_2628 _let_2538_2629 _let_2539_2630
     _let_2540_2631 _let_2541_2632 _let_2542_2633 _let_2406_2497)))
  (let ((_let_2544_2635 (_field__rec_value _let_2543_2634))) (let
  ((_let_2545_2636 (_field__rec_vtype _let_2543_2634))) (let
  ((_let_2546_2637 (_field__rec_h_base _let_2543_2634))) (let
  ((_let_2547_2638 (_field__rec_h_offset _let_2543_2634))) (let
  ((_let_2548_2639 (_field__rec_h_length _let_2543_2634))) (let
  ((_let_2549_2640 (_field__rec_enc_state_p _let_2543_2634))) (let
  ((_let_2550_2641 (_field__rec_key_p _let_2543_2634))) (let
  ((_let_2551_2642 (_field__rec_enc_state_d _let_2543_2634))) (let
  ((_let_2552_2643 (_field__rec_key_d _let_2543_2634))) (let
  ((_let_2553_2644 (_field__rec_ca_Boolrue _let_2543_2634))) (let
  ((_let_2554_2645
    (_make__type_record_2_ _let_2544_2635 _let_2545_2636 _let_2546_2637
     _let_2547_2638 _let_2548_2639 _let_2549_2640 _let_2550_2641
     _let_2551_2642 _let_2552_2643 _let_2405_2496 _let_2553_2644)))
  (let ((_let_2555_2646 (_field__rec_vtype _let_2554_2645))) (let
  ((_let_2556_2647 (= _let_2555_2646 HAN))) (let
  ((_let_2557_2648 (_field__rec_h_length _let_2554_2645))) (let
  ((_let_2558_2649 (_field__rec_h_offset _let_2554_2645))) (let
  ((_let_2559_2650 (bvult _let_2558_2649 _let_2557_2648))) (let
  ((_let_2560_2651 (bvule (_ bv0 2 ) _let_2558_2649))) (let
  ((_let_2561_2652 (and _let_2560_2651 _let_2559_2650))) (let
  ((_let_2562_2653 (not _let_2561_2652))) (let
  ((_let_2563_2654 (or _let_2562_2653 _let_2556_2647))) (let
  ((_let_2564_2655 (ite _let_2563_2654 true false))) (let
  ((_let_2565_2656
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_2566_2657 (ite _let_2565_2656 _let_2564_2655 _let_2403_2494)))
  (let
  ((_let_2567_2658
    (ite initial_50_v82 _let_2566_2657 initial_59___ucld_174_msv_curr_var2334)))
  (let
  ((_let_2568_2659 (= state_1___ucld_174_msv_curr_var2333 _let_2567_2658)))
  _let_2568_2659))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun initial_62___ucld_165_addr_probe_var2660 () (_ BitVec 2))
(declare-fun havoc_156_addr_bundle2661 () (_ BitVec 2))
(declare-fun state_1___ucld_165_addr_probe_var2662 () (_ BitVec 2))
(declare-fun havoc_108_addr_bundle2663 () (_ BitVec 2))
(assert
 (let
  ((_let_2569_2664
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_2570_2665
    (ite _let_2569_2664 havoc_156_addr_bundle2661
     initial_62___ucld_165_addr_probe_var2660)))
  (let
  ((_let_2571_2666
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_2572_2667
    (ite _let_2571_2666 havoc_108_addr_bundle2663 _let_2570_2665)))
  (let
  ((_let_2573_2668
    (ite initial_50_v82 _let_2572_2667
     initial_62___ucld_165_addr_probe_var2660)))
  (let
  ((_let_2574_2669 (= state_1___ucld_165_addr_probe_var2662 _let_2573_2668)))
  _let_2574_2669)))))))
(assert
 (let
  ((_let_2575_2670
    (forall ((a2671 (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var623
             (bvmul
              ((_ zero_extend 78) a2671)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_56___ucld_171_ghost_mem_var623
             (bvmul
              ((_ zero_extend 78) a2671)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          initial_56___ucld_171_ghost_mem_var623
          (bvmul
           ((_ zero_extend 78) a2671)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        ((_ extract 19 0)
         (bvlshr
          initial_56___ucld_171_ghost_mem_var623
          (bvmul
           ((_ zero_extend 78) a2671)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
        (_field__rec_h_offset
        ((_ extract 19 0)
         (bvlshr
          initial_56___ucld_171_ghost_mem_var623
          (bvmul
           ((_ zero_extend 78) a2671)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))))))))
  _let_2575_2670))
(declare-fun havoc_198_nondet_size2672 () (_ BitVec 2))
(assert
 (let ((_let_2576_2673 (_field__rec_valid havoc_193___ucld_34_ret_as273)))
  (let ((_let_2577_2674 (not _let_2576_2673))) (let
  ((_let_2578_2675
    (forall ((a2676 (_ BitVec 2)))
     (=>
      (not
       (and
        (bvule (_field__rec_h_base (_field__rec_allocg
         havoc_193___ucld_34_ret_as273)) a2676)
        (bvult
         a2676
         (bvadd
          (_field__rec_h_base
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as273))
          havoc_198_nondet_size2672))))
      (=
       (=
        ((_ extract 0 0)
         (bvlshr
          (_field__rec_newamap
          havoc_193___ucld_34_ret_as273)
          (bvmul ((_ zero_extend 2) a2676) #b0001)))
        #b1)
       (=
        ((_ extract 0 0)
         (bvlshr
          initial_51___ucld_157_alloc_map_var85
          (bvmul ((_ zero_extend 2) a2676) #b0001)))
        #b1))))))
  (let
  ((_let_2579_2677
    (forall ((a2678 (_ BitVec 2)))
     (=>
      (and
       (bvule (_field__rec_h_base (_field__rec_allocg
        havoc_193___ucld_34_ret_as273)) a2678)
       (bvult
        a2678
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as273))
         havoc_198_nondet_size2672)))
      (and (and
       (or
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as273)
             (bvmul
              ((_ zero_extend 78) a2678)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ENC)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as273)
             (bvmul
              ((_ zero_extend 78) a2678)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ENC)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as273)
             (bvmul
              ((_ zero_extend 78) a2678)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ENC))))
       (not
        (=
         ((_ extract 1 0)
          (_field__rec_enc_state_d
          ((_ extract 19 0)
           (bvlshr
            (_field__rec_newgmem
            havoc_193___ucld_34_ret_as273)
            (bvmul
             ((_ zero_extend 78) a2678)
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
             havoc_193___ucld_34_ret_as273)
             (bvmul
              ((_ zero_extend 78) a2678)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ViKey)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_key_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as273)
             (bvmul
              ((_ zero_extend 78) a2678)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ViKey)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_key_d
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as273)
             (bvmul
              ((_ zero_extend 78) a2678)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) ViKey))))
       (not
        (=
         ((_ extract 1 0)
          (_field__rec_key_d
          ((_ extract 19 0)
           (bvlshr
            (_field__rec_newgmem
            havoc_193___ucld_34_ret_as273)
            (bvmul
             ((_ zero_extend 78) a2678)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         #b11)))
       (and
       (=
        (_field__rec_ca_nonce_used
         ((_ extract 19 0)
          (bvlshr
           (_field__rec_newgmem
           havoc_193___ucld_34_ret_as273)
           (bvmul
            ((_ zero_extend 78) a2678)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
        (const___ucld_153_slot_to_nonce_c31 (_field__rec_h_base
         (_field__rec_allocg havoc_193___ucld_34_ret_as273))
         (bvadd
          (_field__rec_h_base
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as273))
          havoc_198_nondet_size2672)))
       (and
       (=
        (_field__rec_ca_Boolrue
         ((_ extract 19 0)
          (bvlshr
           (_field__rec_newgmem
           havoc_193___ucld_34_ret_as273)
           (bvmul
            ((_ zero_extend 78) a2678)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
        (const___ucld_153_slot_to_nonce_c31 (_field__rec_h_base
         (_field__rec_allocg havoc_193___ucld_34_ret_as273))
         (bvadd
          (_field__rec_h_base
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as273))
          havoc_198_nondet_size2672)))
       (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as273)
             (bvmul
              ((_ zero_extend 78) a2678)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) RAW)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             (_field__rec_newgmem
             havoc_193___ucld_34_ret_as273)
             (bvmul
              ((_ zero_extend 78) a2678)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) RAW)))))))))))))
  (let ((_let_2580_2679 (and _let_2579_2677 _let_2578_2675))) (let
  ((_let_2581_2680
    (forall ((a2681 (_ BitVec 2)))
     (=>
      (not
       (and
        (bvule (_field__rec_h_base (_field__rec_allocg
         havoc_193___ucld_34_ret_as273)) a2681)
        (bvult
         a2681
         (bvadd
          (_field__rec_h_base
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as273))
          havoc_198_nondet_size2672))))
      (=
       ((_ extract 19 0)
        (bvlshr
         (_field__rec_newgmem
         havoc_193___ucld_34_ret_as273)
         (bvmul
          ((_ zero_extend 78) a2681)
          #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))
       ((_ extract 19 0)
        (bvlshr
         initial_56___ucld_171_ghost_mem_var623
         (bvmul
          ((_ zero_extend 78) a2681)
          #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))))))
  (let ((_let_2582_2682 (and _let_2581_2680 _let_2580_2679))) (let
  ((_let_2583_2683
    (forall ((a2684 (_ BitVec 2)))
     (=>
      (and
       (bvule (_field__rec_h_base (_field__rec_allocg
        havoc_193___ucld_34_ret_as273)) a2684)
       (bvult
        a2684
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as273))
         havoc_198_nondet_size2672)))
      (=
       ((_ extract 0 0)
        (bvlshr
         (_field__rec_newamap
         havoc_193___ucld_34_ret_as273)
         (bvmul ((_ zero_extend 2) a2684) #b0001)))
       #b1)))))
  (let ((_let_2584_2685 (and _let_2583_2683 _let_2582_2682))) (let
  ((_let_2585_2686
    (forall ((a2687 (_ BitVec 2)))
     (=>
      (and
       (bvule (_field__rec_h_base (_field__rec_allocg
        havoc_193___ucld_34_ret_as273)) a2687)
       (bvult
        a2687
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as273))
         havoc_198_nondet_size2672)))
      (not
       (=
        ((_ extract 0 0)
         (bvlshr
          initial_51___ucld_157_alloc_map_var85
          (bvmul ((_ zero_extend 2) a2687) #b0001)))
        #b1))))))
  (let ((_let_2586_2688 (and _let_2585_2686 _let_2584_2685))) (let
  ((_let_2587_2689 (and true _let_2586_2688))) (let
  ((_let_2588_2690
    (_field__rec_value (_field__rec_allocg havoc_193___ucld_34_ret_as273))))
  (let
  ((_let_2589_2691
    (= _let_2588_2690
     (_field__rec_h_base (_field__rec_allocg havoc_193___ucld_34_ret_as273)))))
  (let ((_let_2590_2692 (and _let_2589_2691 _let_2587_2689))) (let
  ((_let_2591_2693
    (_field__rec_enc_state_d (_field__rec_allocg
     havoc_193___ucld_34_ret_as273))))
  (let ((_let_2592_2694 (= _let_2591_2693 PLN))) (let
  ((_let_2593_2695 (and _let_2592_2694 _let_2590_2692))) (let
  ((_let_2594_2696
    (_field__rec_key_p (_field__rec_allocg havoc_193___ucld_34_ret_as273))))
  (let ((_let_2595_2697 (= _let_2594_2696 ViKey))) (let
  ((_let_2596_2698 (and _let_2595_2697 _let_2593_2695))) (let
  ((_let_2597_2699
    (_field__rec_enc_state_p (_field__rec_allocg
     havoc_193___ucld_34_ret_as273))))
  (let ((_let_2598_2700 (= _let_2597_2699 ENC))) (let
  ((_let_2599_2701 (and _let_2598_2700 _let_2596_2698))) (let
  ((_let_2600_2702
    (_field__rec_h_offset (_field__rec_allocg havoc_193___ucld_34_ret_as273))))
  (let ((_let_2601_2703 (= _let_2600_2702 (_ bv0 2 )))) (let
  ((_let_2602_2704 (and _let_2601_2703 _let_2599_2701))) (let
  ((_let_2603_2705 (bvsub (_ bv3 2 ) havoc_198_nondet_size2672))) (let
  ((_let_2604_2706
    (bvule (_field__rec_h_base (_field__rec_allocg
     havoc_193___ucld_34_ret_as273)) _let_2603_2705)))
  (let ((_let_2605_2707 (and _let_2604_2706 _let_2602_2704))) (let
  ((_let_2606_2708
    (_field__rec_h_length (_field__rec_allocg havoc_193___ucld_34_ret_as273))))
  (let ((_let_2607_2709 (= _let_2606_2708 havoc_198_nondet_size2672))) (let
  ((_let_2608_2710 (and _let_2607_2709 _let_2605_2707))) (let
  ((_let_2609_2711
    (_field__rec_vtype (_field__rec_allocg havoc_193___ucld_34_ret_as273))))
  (let ((_let_2610_2712 (= _let_2609_2711 HAN))) (let
  ((_let_2611_2713 (and _let_2610_2712 _let_2608_2710))) (let
  ((_let_2612_2714 (and _let_2576_2673 _let_2611_2713))) (let
  ((_let_2613_2715 (or _let_2612_2714 _let_2577_2674))) (let
  ((_let_2614_2716 (= havoc_198_nondet_size2672 (_ bv0 2 )))) (let
  ((_let_2615_2717 (=> _let_2614_2716 _let_2577_2674))) (let
  ((_let_2616_2718 (and _let_2615_2717 _let_2613_2715))) (let
  ((_let_2617_2719
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_2618_2720 (not _let_2617_2719))) (let
  ((_let_2619_2721
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_2620_2722 (not _let_2619_2721))) (let
  ((_let_2621_2723
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_2622_2724 (and true _let_2621_2723))) (let
  ((_let_2623_2725 (and _let_2622_2724 _let_2620_2722))) (let
  ((_let_2624_2726 (and _let_2623_2725 _let_2618_2720))) (let
  ((_let_2625_2727 (and _let_2624_2726 initial_50_v82))) (let
  ((_let_2626_2728 (=> _let_2625_2727 _let_2616_2718)))
  _let_2626_2728))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let
  ((_let_2627_2729
    (forall ((a2730 (_ BitVec 2)))
     (=>
      (not
       (and
        (bvule (_field__rec_h_base (_field__rec_allocg
         havoc_193___ucld_34_ret_as273)) a2730)
        (bvult
         a2730
         (bvadd
          (_field__rec_h_base
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as273))
          (_field__rec_h_length
          (_field__rec_allocg
          havoc_193___ucld_34_ret_as273))))))
      (=
       ((_ extract 6 0)
        (bvlshr
         havoc_211___ucld_51_ret_nm1975
         (bvmul ((_ zero_extend 26) a2730) #b0000000000000000000000000111)))
       ((_ extract 6 0)
        (bvlshr
         initial_60___ucld_164_shadow_mem_var963
         (bvmul ((_ zero_extend 26) a2730) #b0000000000000000000000000111))))))))
  (let
  ((_let_2628_2731
    (forall ((a2732 (_ BitVec 2)))
     (=>
      (and
       (bvule (_field__rec_h_base (_field__rec_allocg
        havoc_193___ucld_34_ret_as273)) a2732)
       (bvult
        a2732
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as273))
         (_field__rec_h_length
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as273)))))
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a2732) #b0000000000000000000000000111)))))))))
  (let ((_let_2629_2733 (and _let_2628_2731 _let_2627_2729))) (let
  ((_let_2630_2734
    (forall ((a2735 (_ BitVec 2)))
     (=>
      (and
       (bvule (_field__rec_h_base (_field__rec_allocg
        havoc_193___ucld_34_ret_as273)) a2735)
       (bvult
        a2735
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as273))
         (_field__rec_h_length
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as273)))))
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          havoc_211___ucld_51_ret_nm1975
          (bvmul ((_ zero_extend 26) a2735) #b0000000000000000000000000111))))
       (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           havoc_211___ucld_51_ret_nm1975
           (bvmul ((_ zero_extend 26) a2735) #b0000000000000000000000000111))))
        (_field__rec_h_base (_field__rec_allocg
         havoc_193___ucld_34_ret_as273)))
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           havoc_211___ucld_51_ret_nm1975
           (bvmul ((_ zero_extend 26) a2735) #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as273))
         (_field__rec_h_length
         (_field__rec_allocg
         havoc_193___ucld_34_ret_as273))))))))))
  (let ((_let_2631_2736 (and _let_2630_2734 _let_2629_2733))) (let
  ((_let_2632_2737
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_2633_2738 (not _let_2632_2737))) (let
  ((_let_2634_2739
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_2635_2740 (not _let_2634_2739))) (let
  ((_let_2636_2741
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_2637_2742 (_field__rec_valid havoc_193___ucld_34_ret_as273)))
  (let ((_let_2638_2743 (and true _let_2637_2742))) (let
  ((_let_2639_2744 (and _let_2638_2743 _let_2636_2741))) (let
  ((_let_2640_2745 (and _let_2639_2744 _let_2635_2740))) (let
  ((_let_2641_2746 (and _let_2640_2745 _let_2633_2738))) (let
  ((_let_2642_2747 (and _let_2641_2746 initial_50_v82))) (let
  ((_let_2643_2748 (=> _let_2642_2747 _let_2631_2736)))
  _let_2643_2748))))))))))))))))))
(assert
 (let
  ((_let_2644_2749
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var296)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2645_2750 (_field__rec_ca_nonce_used _let_2644_2749))) (let
  ((_let_2646_2751 (_field__rec_ca_Boolrue _let_2644_2749))) (let
  ((_let_2647_2752 (_field__rec_enc_state_d _let_2644_2749))) (let
  ((_let_2648_2753 (_field__rec_h_length _let_2644_2749))) (let
  ((_let_2649_2754 (_field__rec_h_offset _let_2644_2749))) (let
  ((_let_2650_2755 (_field__rec_h_base _let_2644_2749))) (let
  ((_let_2651_2756 (_field__rec_vtype _let_2644_2749))) (let
  ((_let_2652_2757 (_field__rec_value _let_2644_2749))) (let
  ((_let_2653_2758
    (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2654_2759
    (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2655_2760
    (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2656_2761
    (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2657_2762
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2658_2763
    (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2659_2764
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2660_2765
    (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2661_2766
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2662_2767
    (_field__rec_ca_Boolrue havoc_175___ucld_44_ret_ghost_addr_out301)))
  (let
  ((_let_2663_2768
    (_make__type_record_2_ _let_2652_2757 _let_2653_2758 _let_2654_2759
     _let_2655_2760 _let_2656_2761 _let_2657_2762 _let_2658_2763
     _let_2659_2764 _let_2660_2765 _let_2661_2766 _let_2662_2767)))
  (let ((_let_2664_2769 (_field__rec_value _let_2663_2768))) (let
  ((_let_2665_2770 (_field__rec_h_base _let_2663_2768))) (let
  ((_let_2666_2771 (_field__rec_h_offset _let_2663_2768))) (let
  ((_let_2667_2772 (_field__rec_h_length _let_2663_2768))) (let
  ((_let_2668_2773 (_field__rec_enc_state_p _let_2663_2768))) (let
  ((_let_2669_2774 (_field__rec_key_p _let_2663_2768))) (let
  ((_let_2670_2775 (_field__rec_enc_state_d _let_2663_2768))) (let
  ((_let_2671_2776 (_field__rec_key_d _let_2663_2768))) (let
  ((_let_2672_2777 (_field__rec_ca_nonce_used _let_2663_2768))) (let
  ((_let_2673_2778 (_field__rec_ca_Boolrue _let_2663_2768))) (let
  ((_let_2674_2779
    (_make__type_record_2_ _let_2664_2769 _let_2651_2756 _let_2665_2770
     _let_2666_2771 _let_2667_2772 _let_2668_2773 _let_2669_2774
     _let_2670_2775 _let_2671_2776 _let_2672_2777 _let_2673_2778)))
  (let ((_let_2675_2780 (_field__rec_value _let_2674_2779))) (let
  ((_let_2676_2781 (_field__rec_vtype _let_2674_2779))) (let
  ((_let_2677_2782 (_field__rec_h_offset _let_2674_2779))) (let
  ((_let_2678_2783 (_field__rec_h_length _let_2674_2779))) (let
  ((_let_2679_2784 (_field__rec_enc_state_p _let_2674_2779))) (let
  ((_let_2680_2785 (_field__rec_key_p _let_2674_2779))) (let
  ((_let_2681_2786 (_field__rec_enc_state_d _let_2674_2779))) (let
  ((_let_2682_2787 (_field__rec_key_d _let_2674_2779))) (let
  ((_let_2683_2788 (_field__rec_ca_nonce_used _let_2674_2779))) (let
  ((_let_2684_2789 (_field__rec_ca_Boolrue _let_2674_2779))) (let
  ((_let_2685_2790
    (_make__type_record_2_ _let_2675_2780 _let_2676_2781 _let_2650_2755
     _let_2677_2782 _let_2678_2783 _let_2679_2784 _let_2680_2785
     _let_2681_2786 _let_2682_2787 _let_2683_2788 _let_2684_2789)))
  (let ((_let_2686_2791 (_field__rec_value _let_2685_2790))) (let
  ((_let_2687_2792 (_field__rec_vtype _let_2685_2790))) (let
  ((_let_2688_2793 (_field__rec_h_base _let_2685_2790))) (let
  ((_let_2689_2794 (_field__rec_h_length _let_2685_2790))) (let
  ((_let_2690_2795 (_field__rec_enc_state_p _let_2685_2790))) (let
  ((_let_2691_2796 (_field__rec_key_p _let_2685_2790))) (let
  ((_let_2692_2797 (_field__rec_enc_state_d _let_2685_2790))) (let
  ((_let_2693_2798 (_field__rec_key_d _let_2685_2790))) (let
  ((_let_2694_2799 (_field__rec_ca_nonce_used _let_2685_2790))) (let
  ((_let_2695_2800 (_field__rec_ca_Boolrue _let_2685_2790))) (let
  ((_let_2696_2801
    (_make__type_record_2_ _let_2686_2791 _let_2687_2792 _let_2688_2793
     _let_2649_2754 _let_2689_2794 _let_2690_2795 _let_2691_2796
     _let_2692_2797 _let_2693_2798 _let_2694_2799 _let_2695_2800)))
  (let ((_let_2697_2802 (_field__rec_value _let_2696_2801))) (let
  ((_let_2698_2803 (_field__rec_vtype _let_2696_2801))) (let
  ((_let_2699_2804 (_field__rec_h_base _let_2696_2801))) (let
  ((_let_2700_2805 (_field__rec_h_offset _let_2696_2801))) (let
  ((_let_2701_2806 (_field__rec_enc_state_p _let_2696_2801))) (let
  ((_let_2702_2807 (_field__rec_key_p _let_2696_2801))) (let
  ((_let_2703_2808 (_field__rec_enc_state_d _let_2696_2801))) (let
  ((_let_2704_2809 (_field__rec_key_d _let_2696_2801))) (let
  ((_let_2705_2810 (_field__rec_ca_nonce_used _let_2696_2801))) (let
  ((_let_2706_2811 (_field__rec_ca_Boolrue _let_2696_2801))) (let
  ((_let_2707_2812
    (_make__type_record_2_ _let_2697_2802 _let_2698_2803 _let_2699_2804
     _let_2700_2805 _let_2648_2753 _let_2701_2806 _let_2702_2807
     _let_2703_2808 _let_2704_2809 _let_2705_2810 _let_2706_2811)))
  (let ((_let_2708_2813 (_field__rec_value _let_2707_2812))) (let
  ((_let_2709_2814 (_field__rec_vtype _let_2707_2812))) (let
  ((_let_2710_2815 (_field__rec_h_base _let_2707_2812))) (let
  ((_let_2711_2816 (_field__rec_h_offset _let_2707_2812))) (let
  ((_let_2712_2817 (_field__rec_h_length _let_2707_2812))) (let
  ((_let_2713_2818 (_field__rec_enc_state_p _let_2707_2812))) (let
  ((_let_2714_2819 (_field__rec_key_p _let_2707_2812))) (let
  ((_let_2715_2820 (_field__rec_key_d _let_2707_2812))) (let
  ((_let_2716_2821 (_field__rec_ca_nonce_used _let_2707_2812))) (let
  ((_let_2717_2822 (_field__rec_ca_Boolrue _let_2707_2812))) (let
  ((_let_2718_2823
    (_make__type_record_2_ _let_2708_2813 _let_2709_2814 _let_2710_2815
     _let_2711_2816 _let_2712_2817 _let_2713_2818 _let_2714_2819
     _let_2647_2752 _let_2715_2820 _let_2716_2821 _let_2717_2822)))
  (let ((_let_2719_2824 (_field__rec_value _let_2718_2823))) (let
  ((_let_2720_2825 (_field__rec_vtype _let_2718_2823))) (let
  ((_let_2721_2826 (_field__rec_h_base _let_2718_2823))) (let
  ((_let_2722_2827 (_field__rec_h_offset _let_2718_2823))) (let
  ((_let_2723_2828 (_field__rec_h_length _let_2718_2823))) (let
  ((_let_2724_2829 (_field__rec_key_p _let_2718_2823))) (let
  ((_let_2725_2830 (_field__rec_enc_state_d _let_2718_2823))) (let
  ((_let_2726_2831 (_field__rec_key_d _let_2718_2823))) (let
  ((_let_2727_2832 (_field__rec_ca_nonce_used _let_2718_2823))) (let
  ((_let_2728_2833 (_field__rec_ca_Boolrue _let_2718_2823))) (let
  ((_let_2729_2834
    (_make__type_record_2_ _let_2719_2824 _let_2720_2825 _let_2721_2826
     _let_2722_2827 _let_2723_2828 GAR _let_2724_2829 _let_2725_2830
     _let_2726_2831 _let_2727_2832 _let_2728_2833)))
  (let
  ((_let_2730_2835
    (_make__type_record_2_ _let_2719_2824 _let_2720_2825 _let_2721_2826
     _let_2722_2827 _let_2723_2828 PLN _let_2724_2829 _let_2725_2830
     _let_2726_2831 _let_2727_2832 _let_2728_2833)))
  (let ((_let_2731_2836 (_field__rec_key_p _let_2644_2749))) (let
  ((_let_2732_2837 (= _let_2731_2836 ViKey))) (let
  ((_let_2733_2838 (ite _let_2732_2837 _let_2730_2835 _let_2729_2834))) (let
  ((_let_2734_2839 (_field__rec_enc_state_p _let_2644_2749))) (let
  ((_let_2735_2840 (= _let_2734_2839 ENC))) (let
  ((_let_2736_2841 (ite _let_2735_2840 _let_2729_2834 _let_2733_2838))) (let
  ((_let_2737_2842
    (_make__type_record_2_ _let_2708_2813 _let_2709_2814 _let_2710_2815
     _let_2711_2816 _let_2712_2817 _let_2713_2818 _let_2714_2819 GAR
     _let_2715_2820 _let_2716_2821 _let_2717_2822)))
  (let ((_let_2738_2843 (_field__rec_value _let_2737_2842))) (let
  ((_let_2739_2844 (_field__rec_vtype _let_2737_2842))) (let
  ((_let_2740_2845 (_field__rec_h_base _let_2737_2842))) (let
  ((_let_2741_2846 (_field__rec_h_offset _let_2737_2842))) (let
  ((_let_2742_2847 (_field__rec_h_length _let_2737_2842))) (let
  ((_let_2743_2848 (_field__rec_key_p _let_2737_2842))) (let
  ((_let_2744_2849 (_field__rec_enc_state_d _let_2737_2842))) (let
  ((_let_2745_2850 (_field__rec_key_d _let_2737_2842))) (let
  ((_let_2746_2851 (_field__rec_ca_nonce_used _let_2737_2842))) (let
  ((_let_2747_2852 (_field__rec_ca_Boolrue _let_2737_2842))) (let
  ((_let_2748_2853
    (_make__type_record_2_ _let_2738_2843 _let_2739_2844 _let_2740_2845
     _let_2741_2846 _let_2742_2847 GAR _let_2743_2848 _let_2744_2849
     _let_2745_2850 _let_2746_2851 _let_2747_2852)))
  (let ((_let_2749_2854 (= _let_2647_2752 PLN))) (let
  ((_let_2750_2855 (ite _let_2749_2854 _let_2748_2853 _let_2736_2841))) (let
  ((_let_2751_2856 (_field__rec_value _let_2750_2855))) (let
  ((_let_2752_2857 (_field__rec_vtype _let_2750_2855))) (let
  ((_let_2753_2858 (_field__rec_h_base _let_2750_2855))) (let
  ((_let_2754_2859 (_field__rec_h_offset _let_2750_2855))) (let
  ((_let_2755_2860 (_field__rec_h_length _let_2750_2855))) (let
  ((_let_2756_2861 (_field__rec_enc_state_p _let_2750_2855))) (let
  ((_let_2757_2862 (_field__rec_enc_state_d _let_2750_2855))) (let
  ((_let_2758_2863 (_field__rec_key_d _let_2750_2855))) (let
  ((_let_2759_2864 (_field__rec_ca_nonce_used _let_2750_2855))) (let
  ((_let_2760_2865 (_field__rec_ca_Boolrue _let_2750_2855))) (let
  ((_let_2761_2866
    (_make__type_record_2_ _let_2751_2856 _let_2752_2857 _let_2753_2858
     _let_2754_2859 _let_2755_2860 _let_2756_2861 NoKey _let_2757_2862
     _let_2758_2863 _let_2759_2864 _let_2760_2865)))
  (let ((_let_2762_2867 (_field__rec_value _let_2761_2866))) (let
  ((_let_2763_2868 (_field__rec_vtype _let_2761_2866))) (let
  ((_let_2764_2869 (_field__rec_h_base _let_2761_2866))) (let
  ((_let_2765_2870 (_field__rec_h_offset _let_2761_2866))) (let
  ((_let_2766_2871 (_field__rec_h_length _let_2761_2866))) (let
  ((_let_2767_2872 (_field__rec_enc_state_p _let_2761_2866))) (let
  ((_let_2768_2873 (_field__rec_key_p _let_2761_2866))) (let
  ((_let_2769_2874 (_field__rec_enc_state_d _let_2761_2866))) (let
  ((_let_2770_2875 (_field__rec_ca_nonce_used _let_2761_2866))) (let
  ((_let_2771_2876 (_field__rec_ca_Boolrue _let_2761_2866))) (let
  ((_let_2772_2877
    (_make__type_record_2_ _let_2762_2867 _let_2763_2868 _let_2764_2869
     _let_2765_2870 _let_2766_2871 _let_2767_2872 _let_2768_2873
     _let_2769_2874 NoKey _let_2770_2875 _let_2771_2876)))
  (let ((_let_2773_2878 (_field__rec_value _let_2772_2877))) (let
  ((_let_2774_2879 (_field__rec_vtype _let_2772_2877))) (let
  ((_let_2775_2880 (_field__rec_h_base _let_2772_2877))) (let
  ((_let_2776_2881 (_field__rec_h_offset _let_2772_2877))) (let
  ((_let_2777_2882 (_field__rec_h_length _let_2772_2877))) (let
  ((_let_2778_2883 (_field__rec_enc_state_p _let_2772_2877))) (let
  ((_let_2779_2884 (_field__rec_key_p _let_2772_2877))) (let
  ((_let_2780_2885 (_field__rec_enc_state_d _let_2772_2877))) (let
  ((_let_2781_2886 (_field__rec_key_d _let_2772_2877))) (let
  ((_let_2782_2887 (_field__rec_ca_nonce_used _let_2772_2877))) (let
  ((_let_2783_2888
    (_make__type_record_2_ _let_2773_2878 _let_2774_2879 _let_2775_2880
     _let_2776_2881 _let_2777_2882 _let_2778_2883 _let_2779_2884
     _let_2780_2885 _let_2781_2886 _let_2782_2887 _let_2646_2751)))
  (let ((_let_2784_2889 (_field__rec_value _let_2783_2888))) (let
  ((_let_2785_2890 (_field__rec_vtype _let_2783_2888))) (let
  ((_let_2786_2891 (_field__rec_h_base _let_2783_2888))) (let
  ((_let_2787_2892 (_field__rec_h_offset _let_2783_2888))) (let
  ((_let_2788_2893 (_field__rec_h_length _let_2783_2888))) (let
  ((_let_2789_2894 (_field__rec_enc_state_p _let_2783_2888))) (let
  ((_let_2790_2895 (_field__rec_key_p _let_2783_2888))) (let
  ((_let_2791_2896 (_field__rec_enc_state_d _let_2783_2888))) (let
  ((_let_2792_2897 (_field__rec_key_d _let_2783_2888))) (let
  ((_let_2793_2898 (_field__rec_ca_Boolrue _let_2783_2888))) (let
  ((_let_2794_2899
    (_make__type_record_2_ _let_2784_2889 _let_2785_2890 _let_2786_2891
     _let_2787_2892 _let_2788_2893 _let_2789_2894 _let_2790_2895
     _let_2791_2896 _let_2792_2897 _let_2645_2750 _let_2793_2898)))
  (let ((_let_2795_2900 (_field__rec_h_offset _let_2794_2899))) (let
  ((_let_2796_2901 (bvsub (_ bv3 2 ) _let_2795_2900))) (let
  ((_let_2797_2902 (_field__rec_h_base _let_2794_2899))) (let
  ((_let_2798_2903 (bvule _let_2797_2902 _let_2796_2901))) (let
  ((_let_2799_2904
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_2800_2905 (not _let_2799_2904))) (let
  ((_let_2801_2906
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_2802_2907 (and true _let_2801_2906))) (let
  ((_let_2803_2908 (and _let_2802_2907 _let_2800_2905))) (let
  ((_let_2804_2909 (and _let_2803_2908 initial_50_v82))) (let
  ((_let_2805_2910 (=> _let_2804_2909 _let_2798_2903)))
  _let_2805_2910)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun initial_55___ucld_176_addr_probe_true_var2911 () (_ BitVec 2))
(declare-fun state_1___ucld_176_addr_probe_true_var2912 () (_ BitVec 2))
(assert
 (let
  ((_let_2806_2913
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2807_2914 (_field__rec_ca_nonce_used _let_2806_2913))) (let
  ((_let_2808_2915 (_field__rec_ca_Boolrue _let_2806_2913))) (let
  ((_let_2809_2916 (_field__rec_enc_state_d _let_2806_2913))) (let
  ((_let_2810_2917 (_field__rec_h_length _let_2806_2913))) (let
  ((_let_2811_2918 (_field__rec_h_offset _let_2806_2913))) (let
  ((_let_2812_2919 (_field__rec_h_base _let_2806_2913))) (let
  ((_let_2813_2920 (_field__rec_vtype _let_2806_2913))) (let
  ((_let_2814_2921 (_field__rec_value _let_2806_2913))) (let
  ((_let_2815_2922
    (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2816_2923
    (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2817_2924
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2818_2925
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2819_2926
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2820_2927
    (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2821_2928
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2822_2929
    (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2823_2930
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2824_2931
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2825_2932
    (_make__type_record_2_ _let_2814_2921 _let_2815_2922 _let_2816_2923
     _let_2817_2924 _let_2818_2925 _let_2819_2926 _let_2820_2927
     _let_2821_2928 _let_2822_2929 _let_2823_2930 _let_2824_2931)))
  (let ((_let_2826_2933 (_field__rec_value _let_2825_2932))) (let
  ((_let_2827_2934 (_field__rec_h_base _let_2825_2932))) (let
  ((_let_2828_2935 (_field__rec_h_offset _let_2825_2932))) (let
  ((_let_2829_2936 (_field__rec_h_length _let_2825_2932))) (let
  ((_let_2830_2937 (_field__rec_enc_state_p _let_2825_2932))) (let
  ((_let_2831_2938 (_field__rec_key_p _let_2825_2932))) (let
  ((_let_2832_2939 (_field__rec_enc_state_d _let_2825_2932))) (let
  ((_let_2833_2940 (_field__rec_key_d _let_2825_2932))) (let
  ((_let_2834_2941 (_field__rec_ca_nonce_used _let_2825_2932))) (let
  ((_let_2835_2942 (_field__rec_ca_Boolrue _let_2825_2932))) (let
  ((_let_2836_2943
    (_make__type_record_2_ _let_2826_2933 _let_2813_2920 _let_2827_2934
     _let_2828_2935 _let_2829_2936 _let_2830_2937 _let_2831_2938
     _let_2832_2939 _let_2833_2940 _let_2834_2941 _let_2835_2942)))
  (let ((_let_2837_2944 (_field__rec_value _let_2836_2943))) (let
  ((_let_2838_2945 (_field__rec_vtype _let_2836_2943))) (let
  ((_let_2839_2946 (_field__rec_h_offset _let_2836_2943))) (let
  ((_let_2840_2947 (_field__rec_h_length _let_2836_2943))) (let
  ((_let_2841_2948 (_field__rec_enc_state_p _let_2836_2943))) (let
  ((_let_2842_2949 (_field__rec_key_p _let_2836_2943))) (let
  ((_let_2843_2950 (_field__rec_enc_state_d _let_2836_2943))) (let
  ((_let_2844_2951 (_field__rec_key_d _let_2836_2943))) (let
  ((_let_2845_2952 (_field__rec_ca_nonce_used _let_2836_2943))) (let
  ((_let_2846_2953 (_field__rec_ca_Boolrue _let_2836_2943))) (let
  ((_let_2847_2954
    (_make__type_record_2_ _let_2837_2944 _let_2838_2945 _let_2812_2919
     _let_2839_2946 _let_2840_2947 _let_2841_2948 _let_2842_2949
     _let_2843_2950 _let_2844_2951 _let_2845_2952 _let_2846_2953)))
  (let ((_let_2848_2955 (_field__rec_value _let_2847_2954))) (let
  ((_let_2849_2956 (_field__rec_vtype _let_2847_2954))) (let
  ((_let_2850_2957 (_field__rec_h_base _let_2847_2954))) (let
  ((_let_2851_2958 (_field__rec_h_length _let_2847_2954))) (let
  ((_let_2852_2959 (_field__rec_enc_state_p _let_2847_2954))) (let
  ((_let_2853_2960 (_field__rec_key_p _let_2847_2954))) (let
  ((_let_2854_2961 (_field__rec_enc_state_d _let_2847_2954))) (let
  ((_let_2855_2962 (_field__rec_key_d _let_2847_2954))) (let
  ((_let_2856_2963 (_field__rec_ca_nonce_used _let_2847_2954))) (let
  ((_let_2857_2964 (_field__rec_ca_Boolrue _let_2847_2954))) (let
  ((_let_2858_2965
    (_make__type_record_2_ _let_2848_2955 _let_2849_2956 _let_2850_2957
     _let_2811_2918 _let_2851_2958 _let_2852_2959 _let_2853_2960
     _let_2854_2961 _let_2855_2962 _let_2856_2963 _let_2857_2964)))
  (let ((_let_2859_2966 (_field__rec_value _let_2858_2965))) (let
  ((_let_2860_2967 (_field__rec_vtype _let_2858_2965))) (let
  ((_let_2861_2968 (_field__rec_h_base _let_2858_2965))) (let
  ((_let_2862_2969 (_field__rec_h_offset _let_2858_2965))) (let
  ((_let_2863_2970 (_field__rec_enc_state_p _let_2858_2965))) (let
  ((_let_2864_2971 (_field__rec_key_p _let_2858_2965))) (let
  ((_let_2865_2972 (_field__rec_enc_state_d _let_2858_2965))) (let
  ((_let_2866_2973 (_field__rec_key_d _let_2858_2965))) (let
  ((_let_2867_2974 (_field__rec_ca_nonce_used _let_2858_2965))) (let
  ((_let_2868_2975 (_field__rec_ca_Boolrue _let_2858_2965))) (let
  ((_let_2869_2976
    (_make__type_record_2_ _let_2859_2966 _let_2860_2967 _let_2861_2968
     _let_2862_2969 _let_2810_2917 _let_2863_2970 _let_2864_2971
     _let_2865_2972 _let_2866_2973 _let_2867_2974 _let_2868_2975)))
  (let ((_let_2870_2977 (_field__rec_value _let_2869_2976))) (let
  ((_let_2871_2978 (_field__rec_vtype _let_2869_2976))) (let
  ((_let_2872_2979 (_field__rec_h_base _let_2869_2976))) (let
  ((_let_2873_2980 (_field__rec_h_offset _let_2869_2976))) (let
  ((_let_2874_2981 (_field__rec_h_length _let_2869_2976))) (let
  ((_let_2875_2982 (_field__rec_enc_state_p _let_2869_2976))) (let
  ((_let_2876_2983 (_field__rec_key_p _let_2869_2976))) (let
  ((_let_2877_2984 (_field__rec_key_d _let_2869_2976))) (let
  ((_let_2878_2985 (_field__rec_ca_nonce_used _let_2869_2976))) (let
  ((_let_2879_2986 (_field__rec_ca_Boolrue _let_2869_2976))) (let
  ((_let_2880_2987
    (_make__type_record_2_ _let_2870_2977 _let_2871_2978 _let_2872_2979
     _let_2873_2980 _let_2874_2981 _let_2875_2982 _let_2876_2983
     _let_2809_2916 _let_2877_2984 _let_2878_2985 _let_2879_2986)))
  (let ((_let_2881_2988 (_field__rec_value _let_2880_2987))) (let
  ((_let_2882_2989 (_field__rec_vtype _let_2880_2987))) (let
  ((_let_2883_2990 (_field__rec_h_base _let_2880_2987))) (let
  ((_let_2884_2991 (_field__rec_h_offset _let_2880_2987))) (let
  ((_let_2885_2992 (_field__rec_h_length _let_2880_2987))) (let
  ((_let_2886_2993 (_field__rec_key_p _let_2880_2987))) (let
  ((_let_2887_2994 (_field__rec_enc_state_d _let_2880_2987))) (let
  ((_let_2888_2995 (_field__rec_key_d _let_2880_2987))) (let
  ((_let_2889_2996 (_field__rec_ca_nonce_used _let_2880_2987))) (let
  ((_let_2890_2997 (_field__rec_ca_Boolrue _let_2880_2987))) (let
  ((_let_2891_2998
    (_make__type_record_2_ _let_2881_2988 _let_2882_2989 _let_2883_2990
     _let_2884_2991 _let_2885_2992 GAR _let_2886_2993 _let_2887_2994
     _let_2888_2995 _let_2889_2996 _let_2890_2997)))
  (let
  ((_let_2892_2999
    (_make__type_record_2_ _let_2881_2988 _let_2882_2989 _let_2883_2990
     _let_2884_2991 _let_2885_2992 PLN _let_2886_2993 _let_2887_2994
     _let_2888_2995 _let_2889_2996 _let_2890_2997)))
  (let ((_let_2893_3000 (_field__rec_key_p _let_2806_2913))) (let
  ((_let_2894_3001 (= _let_2893_3000 ViKey))) (let
  ((_let_2895_3002 (ite _let_2894_3001 _let_2892_2999 _let_2891_2998))) (let
  ((_let_2896_3003 (_field__rec_enc_state_p _let_2806_2913))) (let
  ((_let_2897_3004 (= _let_2896_3003 ENC))) (let
  ((_let_2898_3005 (ite _let_2897_3004 _let_2891_2998 _let_2895_3002))) (let
  ((_let_2899_3006
    (_make__type_record_2_ _let_2870_2977 _let_2871_2978 _let_2872_2979
     _let_2873_2980 _let_2874_2981 _let_2875_2982 _let_2876_2983 GAR
     _let_2877_2984 _let_2878_2985 _let_2879_2986)))
  (let ((_let_2900_3007 (_field__rec_value _let_2899_3006))) (let
  ((_let_2901_3008 (_field__rec_vtype _let_2899_3006))) (let
  ((_let_2902_3009 (_field__rec_h_base _let_2899_3006))) (let
  ((_let_2903_3010 (_field__rec_h_offset _let_2899_3006))) (let
  ((_let_2904_3011 (_field__rec_h_length _let_2899_3006))) (let
  ((_let_2905_3012 (_field__rec_key_p _let_2899_3006))) (let
  ((_let_2906_3013 (_field__rec_enc_state_d _let_2899_3006))) (let
  ((_let_2907_3014 (_field__rec_key_d _let_2899_3006))) (let
  ((_let_2908_3015 (_field__rec_ca_nonce_used _let_2899_3006))) (let
  ((_let_2909_3016 (_field__rec_ca_Boolrue _let_2899_3006))) (let
  ((_let_2910_3017
    (_make__type_record_2_ _let_2900_3007 _let_2901_3008 _let_2902_3009
     _let_2903_3010 _let_2904_3011 GAR _let_2905_3012 _let_2906_3013
     _let_2907_3014 _let_2908_3015 _let_2909_3016)))
  (let ((_let_2911_3018 (= _let_2809_2916 PLN))) (let
  ((_let_2912_3019 (ite _let_2911_3018 _let_2910_3017 _let_2898_3005))) (let
  ((_let_2913_3020 (_field__rec_value _let_2912_3019))) (let
  ((_let_2914_3021 (_field__rec_vtype _let_2912_3019))) (let
  ((_let_2915_3022 (_field__rec_h_base _let_2912_3019))) (let
  ((_let_2916_3023 (_field__rec_h_offset _let_2912_3019))) (let
  ((_let_2917_3024 (_field__rec_h_length _let_2912_3019))) (let
  ((_let_2918_3025 (_field__rec_enc_state_p _let_2912_3019))) (let
  ((_let_2919_3026 (_field__rec_enc_state_d _let_2912_3019))) (let
  ((_let_2920_3027 (_field__rec_key_d _let_2912_3019))) (let
  ((_let_2921_3028 (_field__rec_ca_nonce_used _let_2912_3019))) (let
  ((_let_2922_3029 (_field__rec_ca_Boolrue _let_2912_3019))) (let
  ((_let_2923_3030
    (_make__type_record_2_ _let_2913_3020 _let_2914_3021 _let_2915_3022
     _let_2916_3023 _let_2917_3024 _let_2918_3025 NoKey _let_2919_3026
     _let_2920_3027 _let_2921_3028 _let_2922_3029)))
  (let ((_let_2924_3031 (_field__rec_value _let_2923_3030))) (let
  ((_let_2925_3032 (_field__rec_vtype _let_2923_3030))) (let
  ((_let_2926_3033 (_field__rec_h_base _let_2923_3030))) (let
  ((_let_2927_3034 (_field__rec_h_offset _let_2923_3030))) (let
  ((_let_2928_3035 (_field__rec_h_length _let_2923_3030))) (let
  ((_let_2929_3036 (_field__rec_enc_state_p _let_2923_3030))) (let
  ((_let_2930_3037 (_field__rec_key_p _let_2923_3030))) (let
  ((_let_2931_3038 (_field__rec_enc_state_d _let_2923_3030))) (let
  ((_let_2932_3039 (_field__rec_ca_nonce_used _let_2923_3030))) (let
  ((_let_2933_3040 (_field__rec_ca_Boolrue _let_2923_3030))) (let
  ((_let_2934_3041
    (_make__type_record_2_ _let_2924_3031 _let_2925_3032 _let_2926_3033
     _let_2927_3034 _let_2928_3035 _let_2929_3036 _let_2930_3037
     _let_2931_3038 NoKey _let_2932_3039 _let_2933_3040)))
  (let ((_let_2935_3042 (_field__rec_value _let_2934_3041))) (let
  ((_let_2936_3043 (_field__rec_vtype _let_2934_3041))) (let
  ((_let_2937_3044 (_field__rec_h_base _let_2934_3041))) (let
  ((_let_2938_3045 (_field__rec_h_offset _let_2934_3041))) (let
  ((_let_2939_3046 (_field__rec_h_length _let_2934_3041))) (let
  ((_let_2940_3047 (_field__rec_enc_state_p _let_2934_3041))) (let
  ((_let_2941_3048 (_field__rec_key_p _let_2934_3041))) (let
  ((_let_2942_3049 (_field__rec_enc_state_d _let_2934_3041))) (let
  ((_let_2943_3050 (_field__rec_key_d _let_2934_3041))) (let
  ((_let_2944_3051 (_field__rec_ca_nonce_used _let_2934_3041))) (let
  ((_let_2945_3052
    (_make__type_record_2_ _let_2935_3042 _let_2936_3043 _let_2937_3044
     _let_2938_3045 _let_2939_3046 _let_2940_3047 _let_2941_3048
     _let_2942_3049 _let_2943_3050 _let_2944_3051 _let_2808_2915)))
  (let ((_let_2946_3053 (_field__rec_value _let_2945_3052))) (let
  ((_let_2947_3054 (_field__rec_vtype _let_2945_3052))) (let
  ((_let_2948_3055 (_field__rec_h_base _let_2945_3052))) (let
  ((_let_2949_3056 (_field__rec_h_offset _let_2945_3052))) (let
  ((_let_2950_3057 (_field__rec_h_length _let_2945_3052))) (let
  ((_let_2951_3058 (_field__rec_enc_state_p _let_2945_3052))) (let
  ((_let_2952_3059 (_field__rec_key_p _let_2945_3052))) (let
  ((_let_2953_3060 (_field__rec_enc_state_d _let_2945_3052))) (let
  ((_let_2954_3061 (_field__rec_key_d _let_2945_3052))) (let
  ((_let_2955_3062 (_field__rec_ca_Boolrue _let_2945_3052))) (let
  ((_let_2956_3063
    (_make__type_record_2_ _let_2946_3053 _let_2947_3054 _let_2948_3055
     _let_2949_3056 _let_2950_3057 _let_2951_3058 _let_2952_3059
     _let_2953_3060 _let_2954_3061 _let_2807_2914 _let_2955_3062)))
  (let
  ((_let_2957_3064 (const___ucld_151_ghost_to_addr_value_c381 _let_2956_3063)))
  (let
  ((_let_2958_3065
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_2959_3066
    (ite _let_2958_3065 _let_2957_3064
     initial_55___ucld_176_addr_probe_true_var2911)))
  (let
  ((_let_2960_3067
    (ite initial_50_v82 _let_2959_3066
     initial_55___ucld_176_addr_probe_true_var2911)))
  (let
  ((_let_2961_3068
    (= state_1___ucld_176_addr_probe_true_var2912 _let_2960_3067)))
  _let_2961_3068)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun state_1___ucld_162_l2_var3069 () (_ BitVec 3))
(declare-fun havoc_98___ucld_115_l2_havoc3070 () (_ BitVec 3))
(assert
 (let
  ((_let_2962_3071
    (ite initial_50_v82 havoc_98___ucld_115_l2_havoc3070
     initial_57___ucld_162_l2_var83)))
  (let ((_let_2963_3072 (= state_1___ucld_162_l2_var3069 _let_2962_3071)))
  _let_2963_3072)))
(declare-fun initial_67___ucld_160_observable_var3073 () (_ BitVec 22))
(assert
 (let
  ((_let_2964_3074
    (_field__rec_data_g initial_67___ucld_160_observable_var3073)))
  (let ((_let_2965_3075 (_field__rec_enc_state_d _let_2964_3074))) (let
  ((_let_2966_3076 (= _let_2965_3075 GAR))) (let
  ((_let_2967_3077 (= _let_2965_3075 ENC))) (let
  ((_let_2968_3078 (or _let_2967_3077 _let_2966_3076))) (let
  ((_let_2969_3079
    (_field__rec_valid initial_67___ucld_160_observable_var3073)))
  (let ((_let_2970_3080 (not _let_2969_3079))) (let
  ((_let_2971_3081 (or _let_2970_3080 _let_2968_3078))) (let
  ((_let_2972_3082 (=> initial_59___ucld_174_msv_curr_var2334 _let_2971_3081)))
  _let_2972_3082))))))))))
(declare-fun state_1___ucld_160_observable_var3083 () (_ BitVec 22))
(assert
 (let
  ((_let_2973_3084
    (_field__rec_data_g initial_67___ucld_160_observable_var3073)))
  (let ((_let_2974_3085 (_make__type_record_6_ false _let_2973_3084))) (let
  ((_let_2975_3086
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_2976_3087
    (ite _let_2975_3086 _let_2974_3085
     initial_67___ucld_160_observable_var3073)))
  (let
  ((_let_2977_3088
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_2978_3089 (_field__rec_ca_nonce_used _let_2977_3088))) (let
  ((_let_2979_3090 (_field__rec_ca_Boolrue _let_2977_3088))) (let
  ((_let_2980_3091 (_field__rec_enc_state_d _let_2977_3088))) (let
  ((_let_2981_3092 (_field__rec_h_length _let_2977_3088))) (let
  ((_let_2982_3093 (_field__rec_h_offset _let_2977_3088))) (let
  ((_let_2983_3094 (_field__rec_h_base _let_2977_3088))) (let
  ((_let_2984_3095 (_field__rec_vtype _let_2977_3088))) (let
  ((_let_2985_3096 (_field__rec_value _let_2977_3088))) (let
  ((_let_2986_3097
    (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2987_3098
    (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2988_3099
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2989_3100
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2990_3101
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2991_3102
    (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2992_3103
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2993_3104
    (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2994_3105
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2995_3106
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_2996_3107
    (_make__type_record_2_ _let_2985_3096 _let_2986_3097 _let_2987_3098
     _let_2988_3099 _let_2989_3100 _let_2990_3101 _let_2991_3102
     _let_2992_3103 _let_2993_3104 _let_2994_3105 _let_2995_3106)))
  (let ((_let_2997_3108 (_field__rec_value _let_2996_3107))) (let
  ((_let_2998_3109 (_field__rec_h_base _let_2996_3107))) (let
  ((_let_2999_3110 (_field__rec_h_offset _let_2996_3107))) (let
  ((_let_3000_3111 (_field__rec_h_length _let_2996_3107))) (let
  ((_let_3001_3112 (_field__rec_enc_state_p _let_2996_3107))) (let
  ((_let_3002_3113 (_field__rec_key_p _let_2996_3107))) (let
  ((_let_3003_3114 (_field__rec_enc_state_d _let_2996_3107))) (let
  ((_let_3004_3115 (_field__rec_key_d _let_2996_3107))) (let
  ((_let_3005_3116 (_field__rec_ca_nonce_used _let_2996_3107))) (let
  ((_let_3006_3117 (_field__rec_ca_Boolrue _let_2996_3107))) (let
  ((_let_3007_3118
    (_make__type_record_2_ _let_2997_3108 _let_2984_3095 _let_2998_3109
     _let_2999_3110 _let_3000_3111 _let_3001_3112 _let_3002_3113
     _let_3003_3114 _let_3004_3115 _let_3005_3116 _let_3006_3117)))
  (let ((_let_3008_3119 (_field__rec_value _let_3007_3118))) (let
  ((_let_3009_3120 (_field__rec_vtype _let_3007_3118))) (let
  ((_let_3010_3121 (_field__rec_h_offset _let_3007_3118))) (let
  ((_let_3011_3122 (_field__rec_h_length _let_3007_3118))) (let
  ((_let_3012_3123 (_field__rec_enc_state_p _let_3007_3118))) (let
  ((_let_3013_3124 (_field__rec_key_p _let_3007_3118))) (let
  ((_let_3014_3125 (_field__rec_enc_state_d _let_3007_3118))) (let
  ((_let_3015_3126 (_field__rec_key_d _let_3007_3118))) (let
  ((_let_3016_3127 (_field__rec_ca_nonce_used _let_3007_3118))) (let
  ((_let_3017_3128 (_field__rec_ca_Boolrue _let_3007_3118))) (let
  ((_let_3018_3129
    (_make__type_record_2_ _let_3008_3119 _let_3009_3120 _let_2983_3094
     _let_3010_3121 _let_3011_3122 _let_3012_3123 _let_3013_3124
     _let_3014_3125 _let_3015_3126 _let_3016_3127 _let_3017_3128)))
  (let ((_let_3019_3130 (_field__rec_value _let_3018_3129))) (let
  ((_let_3020_3131 (_field__rec_vtype _let_3018_3129))) (let
  ((_let_3021_3132 (_field__rec_h_base _let_3018_3129))) (let
  ((_let_3022_3133 (_field__rec_h_length _let_3018_3129))) (let
  ((_let_3023_3134 (_field__rec_enc_state_p _let_3018_3129))) (let
  ((_let_3024_3135 (_field__rec_key_p _let_3018_3129))) (let
  ((_let_3025_3136 (_field__rec_enc_state_d _let_3018_3129))) (let
  ((_let_3026_3137 (_field__rec_key_d _let_3018_3129))) (let
  ((_let_3027_3138 (_field__rec_ca_nonce_used _let_3018_3129))) (let
  ((_let_3028_3139 (_field__rec_ca_Boolrue _let_3018_3129))) (let
  ((_let_3029_3140
    (_make__type_record_2_ _let_3019_3130 _let_3020_3131 _let_3021_3132
     _let_2982_3093 _let_3022_3133 _let_3023_3134 _let_3024_3135
     _let_3025_3136 _let_3026_3137 _let_3027_3138 _let_3028_3139)))
  (let ((_let_3030_3141 (_field__rec_value _let_3029_3140))) (let
  ((_let_3031_3142 (_field__rec_vtype _let_3029_3140))) (let
  ((_let_3032_3143 (_field__rec_h_base _let_3029_3140))) (let
  ((_let_3033_3144 (_field__rec_h_offset _let_3029_3140))) (let
  ((_let_3034_3145 (_field__rec_enc_state_p _let_3029_3140))) (let
  ((_let_3035_3146 (_field__rec_key_p _let_3029_3140))) (let
  ((_let_3036_3147 (_field__rec_enc_state_d _let_3029_3140))) (let
  ((_let_3037_3148 (_field__rec_key_d _let_3029_3140))) (let
  ((_let_3038_3149 (_field__rec_ca_nonce_used _let_3029_3140))) (let
  ((_let_3039_3150 (_field__rec_ca_Boolrue _let_3029_3140))) (let
  ((_let_3040_3151
    (_make__type_record_2_ _let_3030_3141 _let_3031_3142 _let_3032_3143
     _let_3033_3144 _let_2981_3092 _let_3034_3145 _let_3035_3146
     _let_3036_3147 _let_3037_3148 _let_3038_3149 _let_3039_3150)))
  (let ((_let_3041_3152 (_field__rec_value _let_3040_3151))) (let
  ((_let_3042_3153 (_field__rec_vtype _let_3040_3151))) (let
  ((_let_3043_3154 (_field__rec_h_base _let_3040_3151))) (let
  ((_let_3044_3155 (_field__rec_h_offset _let_3040_3151))) (let
  ((_let_3045_3156 (_field__rec_h_length _let_3040_3151))) (let
  ((_let_3046_3157 (_field__rec_enc_state_p _let_3040_3151))) (let
  ((_let_3047_3158 (_field__rec_key_p _let_3040_3151))) (let
  ((_let_3048_3159 (_field__rec_key_d _let_3040_3151))) (let
  ((_let_3049_3160 (_field__rec_ca_nonce_used _let_3040_3151))) (let
  ((_let_3050_3161 (_field__rec_ca_Boolrue _let_3040_3151))) (let
  ((_let_3051_3162
    (_make__type_record_2_ _let_3041_3152 _let_3042_3153 _let_3043_3154
     _let_3044_3155 _let_3045_3156 _let_3046_3157 _let_3047_3158
     _let_2980_3091 _let_3048_3159 _let_3049_3160 _let_3050_3161)))
  (let ((_let_3052_3163 (_field__rec_value _let_3051_3162))) (let
  ((_let_3053_3164 (_field__rec_vtype _let_3051_3162))) (let
  ((_let_3054_3165 (_field__rec_h_base _let_3051_3162))) (let
  ((_let_3055_3166 (_field__rec_h_offset _let_3051_3162))) (let
  ((_let_3056_3167 (_field__rec_h_length _let_3051_3162))) (let
  ((_let_3057_3168 (_field__rec_key_p _let_3051_3162))) (let
  ((_let_3058_3169 (_field__rec_enc_state_d _let_3051_3162))) (let
  ((_let_3059_3170 (_field__rec_key_d _let_3051_3162))) (let
  ((_let_3060_3171 (_field__rec_ca_nonce_used _let_3051_3162))) (let
  ((_let_3061_3172 (_field__rec_ca_Boolrue _let_3051_3162))) (let
  ((_let_3062_3173
    (_make__type_record_2_ _let_3052_3163 _let_3053_3164 _let_3054_3165
     _let_3055_3166 _let_3056_3167 GAR _let_3057_3168 _let_3058_3169
     _let_3059_3170 _let_3060_3171 _let_3061_3172)))
  (let
  ((_let_3063_3174
    (_make__type_record_2_ _let_3052_3163 _let_3053_3164 _let_3054_3165
     _let_3055_3166 _let_3056_3167 PLN _let_3057_3168 _let_3058_3169
     _let_3059_3170 _let_3060_3171 _let_3061_3172)))
  (let ((_let_3064_3175 (_field__rec_key_p _let_2977_3088))) (let
  ((_let_3065_3176 (= _let_3064_3175 ViKey))) (let
  ((_let_3066_3177 (ite _let_3065_3176 _let_3063_3174 _let_3062_3173))) (let
  ((_let_3067_3178 (_field__rec_enc_state_p _let_2977_3088))) (let
  ((_let_3068_3179 (= _let_3067_3178 ENC))) (let
  ((_let_3069_3180 (ite _let_3068_3179 _let_3062_3173 _let_3066_3177))) (let
  ((_let_3070_3181
    (_make__type_record_2_ _let_3041_3152 _let_3042_3153 _let_3043_3154
     _let_3044_3155 _let_3045_3156 _let_3046_3157 _let_3047_3158 GAR
     _let_3048_3159 _let_3049_3160 _let_3050_3161)))
  (let ((_let_3071_3182 (_field__rec_value _let_3070_3181))) (let
  ((_let_3072_3183 (_field__rec_vtype _let_3070_3181))) (let
  ((_let_3073_3184 (_field__rec_h_base _let_3070_3181))) (let
  ((_let_3074_3185 (_field__rec_h_offset _let_3070_3181))) (let
  ((_let_3075_3186 (_field__rec_h_length _let_3070_3181))) (let
  ((_let_3076_3187 (_field__rec_key_p _let_3070_3181))) (let
  ((_let_3077_3188 (_field__rec_enc_state_d _let_3070_3181))) (let
  ((_let_3078_3189 (_field__rec_key_d _let_3070_3181))) (let
  ((_let_3079_3190 (_field__rec_ca_nonce_used _let_3070_3181))) (let
  ((_let_3080_3191 (_field__rec_ca_Boolrue _let_3070_3181))) (let
  ((_let_3081_3192
    (_make__type_record_2_ _let_3071_3182 _let_3072_3183 _let_3073_3184
     _let_3074_3185 _let_3075_3186 GAR _let_3076_3187 _let_3077_3188
     _let_3078_3189 _let_3079_3190 _let_3080_3191)))
  (let ((_let_3082_3193 (= _let_2980_3091 PLN))) (let
  ((_let_3083_3194 (ite _let_3082_3193 _let_3081_3192 _let_3069_3180))) (let
  ((_let_3084_3195 (_field__rec_value _let_3083_3194))) (let
  ((_let_3085_3196 (_field__rec_vtype _let_3083_3194))) (let
  ((_let_3086_3197 (_field__rec_h_base _let_3083_3194))) (let
  ((_let_3087_3198 (_field__rec_h_offset _let_3083_3194))) (let
  ((_let_3088_3199 (_field__rec_h_length _let_3083_3194))) (let
  ((_let_3089_3200 (_field__rec_enc_state_p _let_3083_3194))) (let
  ((_let_3090_3201 (_field__rec_enc_state_d _let_3083_3194))) (let
  ((_let_3091_3202 (_field__rec_key_d _let_3083_3194))) (let
  ((_let_3092_3203 (_field__rec_ca_nonce_used _let_3083_3194))) (let
  ((_let_3093_3204 (_field__rec_ca_Boolrue _let_3083_3194))) (let
  ((_let_3094_3205
    (_make__type_record_2_ _let_3084_3195 _let_3085_3196 _let_3086_3197
     _let_3087_3198 _let_3088_3199 _let_3089_3200 NoKey _let_3090_3201
     _let_3091_3202 _let_3092_3203 _let_3093_3204)))
  (let ((_let_3095_3206 (_field__rec_value _let_3094_3205))) (let
  ((_let_3096_3207 (_field__rec_vtype _let_3094_3205))) (let
  ((_let_3097_3208 (_field__rec_h_base _let_3094_3205))) (let
  ((_let_3098_3209 (_field__rec_h_offset _let_3094_3205))) (let
  ((_let_3099_3210 (_field__rec_h_length _let_3094_3205))) (let
  ((_let_3100_3211 (_field__rec_enc_state_p _let_3094_3205))) (let
  ((_let_3101_3212 (_field__rec_key_p _let_3094_3205))) (let
  ((_let_3102_3213 (_field__rec_enc_state_d _let_3094_3205))) (let
  ((_let_3103_3214 (_field__rec_ca_nonce_used _let_3094_3205))) (let
  ((_let_3104_3215 (_field__rec_ca_Boolrue _let_3094_3205))) (let
  ((_let_3105_3216
    (_make__type_record_2_ _let_3095_3206 _let_3096_3207 _let_3097_3208
     _let_3098_3209 _let_3099_3210 _let_3100_3211 _let_3101_3212
     _let_3102_3213 NoKey _let_3103_3214 _let_3104_3215)))
  (let ((_let_3106_3217 (_field__rec_value _let_3105_3216))) (let
  ((_let_3107_3218 (_field__rec_vtype _let_3105_3216))) (let
  ((_let_3108_3219 (_field__rec_h_base _let_3105_3216))) (let
  ((_let_3109_3220 (_field__rec_h_offset _let_3105_3216))) (let
  ((_let_3110_3221 (_field__rec_h_length _let_3105_3216))) (let
  ((_let_3111_3222 (_field__rec_enc_state_p _let_3105_3216))) (let
  ((_let_3112_3223 (_field__rec_key_p _let_3105_3216))) (let
  ((_let_3113_3224 (_field__rec_enc_state_d _let_3105_3216))) (let
  ((_let_3114_3225 (_field__rec_key_d _let_3105_3216))) (let
  ((_let_3115_3226 (_field__rec_ca_nonce_used _let_3105_3216))) (let
  ((_let_3116_3227
    (_make__type_record_2_ _let_3106_3217 _let_3107_3218 _let_3108_3219
     _let_3109_3220 _let_3110_3221 _let_3111_3222 _let_3112_3223
     _let_3113_3224 _let_3114_3225 _let_3115_3226 _let_2979_3090)))
  (let ((_let_3117_3228 (_field__rec_value _let_3116_3227))) (let
  ((_let_3118_3229 (_field__rec_vtype _let_3116_3227))) (let
  ((_let_3119_3230 (_field__rec_h_base _let_3116_3227))) (let
  ((_let_3120_3231 (_field__rec_h_offset _let_3116_3227))) (let
  ((_let_3121_3232 (_field__rec_h_length _let_3116_3227))) (let
  ((_let_3122_3233 (_field__rec_enc_state_p _let_3116_3227))) (let
  ((_let_3123_3234 (_field__rec_key_p _let_3116_3227))) (let
  ((_let_3124_3235 (_field__rec_enc_state_d _let_3116_3227))) (let
  ((_let_3125_3236 (_field__rec_key_d _let_3116_3227))) (let
  ((_let_3126_3237 (_field__rec_ca_Boolrue _let_3116_3227))) (let
  ((_let_3127_3238
    (_make__type_record_2_ _let_3117_3228 _let_3118_3229 _let_3119_3230
     _let_3120_3231 _let_3121_3232 _let_3122_3233 _let_3123_3234
     _let_3124_3235 _let_3125_3236 _let_2978_3089 _let_3126_3237)))
  (let
  ((_let_3128_3239 (const___ucld_151_ghost_to_addr_value_c381 _let_3127_3238)))
  (let
  ((_let_3129_3240
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var623
      (bvmul
       ((_ zero_extend 78) _let_3128_3239)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3130_3241 (_field__rec_ca_Boolrue _let_3129_3240))) (let
  ((_let_3131_3242 (_field__rec_ca_nonce_used _let_3129_3240))) (let
  ((_let_3132_3243 (_field__rec_key_p _let_3129_3240))) (let
  ((_let_3133_3244 (_field__rec_enc_state_p _let_3129_3240))) (let
  ((_let_3134_3245 (_field__rec_h_length _let_3129_3240))) (let
  ((_let_3135_3246 (_field__rec_h_offset _let_3129_3240))) (let
  ((_let_3136_3247 (_field__rec_h_base _let_3129_3240))) (let
  ((_let_3137_3248 (_field__rec_vtype _let_3129_3240))) (let
  ((_let_3138_3249 (_field__rec_value _let_3129_3240))) (let
  ((_let_3139_3250
    (_field__rec_vtype havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3140_3251
    (_field__rec_h_base havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3141_3252
    (_field__rec_h_offset havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3142_3253
    (_field__rec_h_length havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3143_3254
    (_field__rec_enc_state_p havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3144_3255
    (_field__rec_key_p havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3145_3256
    (_field__rec_enc_state_d havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3146_3257
    (_field__rec_key_d havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3147_3258
    (_field__rec_ca_nonce_used havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3148_3259
    (_field__rec_ca_Boolrue havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3149_3260
    (_make__type_record_2_ _let_3138_3249 _let_3139_3250 _let_3140_3251
     _let_3141_3252 _let_3142_3253 _let_3143_3254 _let_3144_3255
     _let_3145_3256 _let_3146_3257 _let_3147_3258 _let_3148_3259)))
  (let ((_let_3150_3261 (_field__rec_value _let_3149_3260))) (let
  ((_let_3151_3262 (_field__rec_h_base _let_3149_3260))) (let
  ((_let_3152_3263 (_field__rec_h_offset _let_3149_3260))) (let
  ((_let_3153_3264 (_field__rec_h_length _let_3149_3260))) (let
  ((_let_3154_3265 (_field__rec_enc_state_p _let_3149_3260))) (let
  ((_let_3155_3266 (_field__rec_key_p _let_3149_3260))) (let
  ((_let_3156_3267 (_field__rec_enc_state_d _let_3149_3260))) (let
  ((_let_3157_3268 (_field__rec_key_d _let_3149_3260))) (let
  ((_let_3158_3269 (_field__rec_ca_nonce_used _let_3149_3260))) (let
  ((_let_3159_3270 (_field__rec_ca_Boolrue _let_3149_3260))) (let
  ((_let_3160_3271
    (_make__type_record_2_ _let_3150_3261 _let_3137_3248 _let_3151_3262
     _let_3152_3263 _let_3153_3264 _let_3154_3265 _let_3155_3266
     _let_3156_3267 _let_3157_3268 _let_3158_3269 _let_3159_3270)))
  (let ((_let_3161_3272 (_field__rec_value _let_3160_3271))) (let
  ((_let_3162_3273 (_field__rec_vtype _let_3160_3271))) (let
  ((_let_3163_3274 (_field__rec_h_offset _let_3160_3271))) (let
  ((_let_3164_3275 (_field__rec_h_length _let_3160_3271))) (let
  ((_let_3165_3276 (_field__rec_enc_state_p _let_3160_3271))) (let
  ((_let_3166_3277 (_field__rec_key_p _let_3160_3271))) (let
  ((_let_3167_3278 (_field__rec_enc_state_d _let_3160_3271))) (let
  ((_let_3168_3279 (_field__rec_key_d _let_3160_3271))) (let
  ((_let_3169_3280 (_field__rec_ca_nonce_used _let_3160_3271))) (let
  ((_let_3170_3281 (_field__rec_ca_Boolrue _let_3160_3271))) (let
  ((_let_3171_3282
    (_make__type_record_2_ _let_3161_3272 _let_3162_3273 _let_3136_3247
     _let_3163_3274 _let_3164_3275 _let_3165_3276 _let_3166_3277
     _let_3167_3278 _let_3168_3279 _let_3169_3280 _let_3170_3281)))
  (let ((_let_3172_3283 (_field__rec_value _let_3171_3282))) (let
  ((_let_3173_3284 (_field__rec_vtype _let_3171_3282))) (let
  ((_let_3174_3285 (_field__rec_h_base _let_3171_3282))) (let
  ((_let_3175_3286 (_field__rec_h_length _let_3171_3282))) (let
  ((_let_3176_3287 (_field__rec_enc_state_p _let_3171_3282))) (let
  ((_let_3177_3288 (_field__rec_key_p _let_3171_3282))) (let
  ((_let_3178_3289 (_field__rec_enc_state_d _let_3171_3282))) (let
  ((_let_3179_3290 (_field__rec_key_d _let_3171_3282))) (let
  ((_let_3180_3291 (_field__rec_ca_nonce_used _let_3171_3282))) (let
  ((_let_3181_3292 (_field__rec_ca_Boolrue _let_3171_3282))) (let
  ((_let_3182_3293
    (_make__type_record_2_ _let_3172_3283 _let_3173_3284 _let_3174_3285
     _let_3135_3246 _let_3175_3286 _let_3176_3287 _let_3177_3288
     _let_3178_3289 _let_3179_3290 _let_3180_3291 _let_3181_3292)))
  (let ((_let_3183_3294 (_field__rec_value _let_3182_3293))) (let
  ((_let_3184_3295 (_field__rec_vtype _let_3182_3293))) (let
  ((_let_3185_3296 (_field__rec_h_base _let_3182_3293))) (let
  ((_let_3186_3297 (_field__rec_h_offset _let_3182_3293))) (let
  ((_let_3187_3298 (_field__rec_enc_state_p _let_3182_3293))) (let
  ((_let_3188_3299 (_field__rec_key_p _let_3182_3293))) (let
  ((_let_3189_3300 (_field__rec_enc_state_d _let_3182_3293))) (let
  ((_let_3190_3301 (_field__rec_key_d _let_3182_3293))) (let
  ((_let_3191_3302 (_field__rec_ca_nonce_used _let_3182_3293))) (let
  ((_let_3192_3303 (_field__rec_ca_Boolrue _let_3182_3293))) (let
  ((_let_3193_3304
    (_make__type_record_2_ _let_3183_3294 _let_3184_3295 _let_3185_3296
     _let_3186_3297 _let_3134_3245 _let_3187_3298 _let_3188_3299
     _let_3189_3300 _let_3190_3301 _let_3191_3302 _let_3192_3303)))
  (let ((_let_3194_3305 (_field__rec_value _let_3193_3304))) (let
  ((_let_3195_3306 (_field__rec_vtype _let_3193_3304))) (let
  ((_let_3196_3307 (_field__rec_h_base _let_3193_3304))) (let
  ((_let_3197_3308 (_field__rec_h_offset _let_3193_3304))) (let
  ((_let_3198_3309 (_field__rec_h_length _let_3193_3304))) (let
  ((_let_3199_3310 (_field__rec_enc_state_p _let_3193_3304))) (let
  ((_let_3200_3311 (_field__rec_key_p _let_3193_3304))) (let
  ((_let_3201_3312 (_field__rec_key_d _let_3193_3304))) (let
  ((_let_3202_3313 (_field__rec_ca_nonce_used _let_3193_3304))) (let
  ((_let_3203_3314 (_field__rec_ca_Boolrue _let_3193_3304))) (let
  ((_let_3204_3315
    (_make__type_record_2_ _let_3194_3305 _let_3195_3306 _let_3196_3307
     _let_3197_3308 _let_3198_3309 _let_3199_3310 _let_3200_3311 GAR
     _let_3201_3312 _let_3202_3313 _let_3203_3314)))
  (let ((_let_3205_3316 (_field__rec_value _let_3204_3315))) (let
  ((_let_3206_3317 (_field__rec_vtype _let_3204_3315))) (let
  ((_let_3207_3318 (_field__rec_h_base _let_3204_3315))) (let
  ((_let_3208_3319 (_field__rec_h_offset _let_3204_3315))) (let
  ((_let_3209_3320 (_field__rec_h_length _let_3204_3315))) (let
  ((_let_3210_3321 (_field__rec_enc_state_p _let_3204_3315))) (let
  ((_let_3211_3322 (_field__rec_key_p _let_3204_3315))) (let
  ((_let_3212_3323 (_field__rec_enc_state_d _let_3204_3315))) (let
  ((_let_3213_3324 (_field__rec_ca_nonce_used _let_3204_3315))) (let
  ((_let_3214_3325 (_field__rec_ca_Boolrue _let_3204_3315))) (let
  ((_let_3215_3326
    (_make__type_record_2_ _let_3205_3316 _let_3206_3317 _let_3207_3318
     _let_3208_3319 _let_3209_3320 _let_3210_3321 _let_3211_3322
     _let_3212_3323 NoKey _let_3213_3324 _let_3214_3325)))
  (let
  ((_let_3216_3327
    (_make__type_record_2_ _let_3194_3305 _let_3195_3306 _let_3196_3307
     _let_3197_3308 _let_3198_3309 _let_3199_3310 _let_3200_3311 PLN
     _let_3201_3312 _let_3202_3313 _let_3203_3314)))
  (let ((_let_3217_3328 (_field__rec_value _let_3216_3327))) (let
  ((_let_3218_3329 (_field__rec_vtype _let_3216_3327))) (let
  ((_let_3219_3330 (_field__rec_h_base _let_3216_3327))) (let
  ((_let_3220_3331 (_field__rec_h_offset _let_3216_3327))) (let
  ((_let_3221_3332 (_field__rec_h_length _let_3216_3327))) (let
  ((_let_3222_3333 (_field__rec_enc_state_p _let_3216_3327))) (let
  ((_let_3223_3334 (_field__rec_key_p _let_3216_3327))) (let
  ((_let_3224_3335 (_field__rec_enc_state_d _let_3216_3327))) (let
  ((_let_3225_3336 (_field__rec_ca_nonce_used _let_3216_3327))) (let
  ((_let_3226_3337 (_field__rec_ca_Boolrue _let_3216_3327))) (let
  ((_let_3227_3338
    (_make__type_record_2_ _let_3217_3328 _let_3218_3329 _let_3219_3330
     _let_3220_3331 _let_3221_3332 _let_3222_3333 _let_3223_3334
     _let_3224_3335 NoKey _let_3225_3336 _let_3226_3337)))
  (let
  ((_let_3228_3339 (const___ucld_147_ghost_to_nonce_c379 _let_3127_3238)))
  (let ((_let_3229_3340 (= _let_3131_3242 _let_3228_3339))) (let
  ((_let_3230_3341 (_field__rec_key_d _let_3129_3240))) (let
  ((_let_3231_3342 (= _let_3230_3341 ViKey))) (let
  ((_let_3232_3343 (and _let_3231_3342 _let_3229_3340))) (let
  ((_let_3233_3344 (ite _let_3232_3343 _let_3227_3338 _let_3215_3326))) (let
  ((_let_3234_3345 (_field__rec_enc_state_d _let_3129_3240))) (let
  ((_let_3235_3346 (= _let_3234_3345 ENC))) (let
  ((_let_3236_3347 (ite _let_3235_3346 _let_3215_3326 _let_3233_3344))) (let
  ((_let_3237_3348 (_field__rec_value _let_3236_3347))) (let
  ((_let_3238_3349 (_field__rec_vtype _let_3236_3347))) (let
  ((_let_3239_3350 (_field__rec_h_base _let_3236_3347))) (let
  ((_let_3240_3351 (_field__rec_h_offset _let_3236_3347))) (let
  ((_let_3241_3352 (_field__rec_h_length _let_3236_3347))) (let
  ((_let_3242_3353 (_field__rec_key_p _let_3236_3347))) (let
  ((_let_3243_3354 (_field__rec_enc_state_d _let_3236_3347))) (let
  ((_let_3244_3355 (_field__rec_key_d _let_3236_3347))) (let
  ((_let_3245_3356 (_field__rec_ca_nonce_used _let_3236_3347))) (let
  ((_let_3246_3357 (_field__rec_ca_Boolrue _let_3236_3347))) (let
  ((_let_3247_3358
    (_make__type_record_2_ _let_3237_3348 _let_3238_3349 _let_3239_3350
     _let_3240_3351 _let_3241_3352 _let_3133_3244 _let_3242_3353
     _let_3243_3354 _let_3244_3355 _let_3245_3356 _let_3246_3357)))
  (let ((_let_3248_3359 (_field__rec_value _let_3247_3358))) (let
  ((_let_3249_3360 (_field__rec_vtype _let_3247_3358))) (let
  ((_let_3250_3361 (_field__rec_h_base _let_3247_3358))) (let
  ((_let_3251_3362 (_field__rec_h_offset _let_3247_3358))) (let
  ((_let_3252_3363 (_field__rec_h_length _let_3247_3358))) (let
  ((_let_3253_3364 (_field__rec_enc_state_p _let_3247_3358))) (let
  ((_let_3254_3365 (_field__rec_enc_state_d _let_3247_3358))) (let
  ((_let_3255_3366 (_field__rec_key_d _let_3247_3358))) (let
  ((_let_3256_3367 (_field__rec_ca_nonce_used _let_3247_3358))) (let
  ((_let_3257_3368 (_field__rec_ca_Boolrue _let_3247_3358))) (let
  ((_let_3258_3369
    (_make__type_record_2_ _let_3248_3359 _let_3249_3360 _let_3250_3361
     _let_3251_3362 _let_3252_3363 _let_3253_3364 _let_3132_3243
     _let_3254_3365 _let_3255_3366 _let_3256_3367 _let_3257_3368)))
  (let ((_let_3259_3370 (_field__rec_value _let_3258_3369))) (let
  ((_let_3260_3371 (_field__rec_vtype _let_3258_3369))) (let
  ((_let_3261_3372 (_field__rec_h_base _let_3258_3369))) (let
  ((_let_3262_3373 (_field__rec_h_offset _let_3258_3369))) (let
  ((_let_3263_3374 (_field__rec_h_length _let_3258_3369))) (let
  ((_let_3264_3375 (_field__rec_enc_state_p _let_3258_3369))) (let
  ((_let_3265_3376 (_field__rec_key_p _let_3258_3369))) (let
  ((_let_3266_3377 (_field__rec_enc_state_d _let_3258_3369))) (let
  ((_let_3267_3378 (_field__rec_key_d _let_3258_3369))) (let
  ((_let_3268_3379 (_field__rec_ca_Boolrue _let_3258_3369))) (let
  ((_let_3269_3380
    (_make__type_record_2_ _let_3259_3370 _let_3260_3371 _let_3261_3372
     _let_3262_3373 _let_3263_3374 _let_3264_3375 _let_3265_3376
     _let_3266_3377 _let_3267_3378 _let_3131_3242 _let_3268_3379)))
  (let ((_let_3270_3381 (_field__rec_value _let_3269_3380))) (let
  ((_let_3271_3382 (_field__rec_vtype _let_3269_3380))) (let
  ((_let_3272_3383 (_field__rec_h_base _let_3269_3380))) (let
  ((_let_3273_3384 (_field__rec_h_offset _let_3269_3380))) (let
  ((_let_3274_3385 (_field__rec_h_length _let_3269_3380))) (let
  ((_let_3275_3386 (_field__rec_enc_state_p _let_3269_3380))) (let
  ((_let_3276_3387 (_field__rec_key_p _let_3269_3380))) (let
  ((_let_3277_3388 (_field__rec_enc_state_d _let_3269_3380))) (let
  ((_let_3278_3389 (_field__rec_key_d _let_3269_3380))) (let
  ((_let_3279_3390 (_field__rec_ca_nonce_used _let_3269_3380))) (let
  ((_let_3280_3391
    (_make__type_record_2_ _let_3270_3381 _let_3271_3382 _let_3272_3383
     _let_3273_3384 _let_3274_3385 _let_3275_3386 _let_3276_3387
     _let_3277_3388 _let_3278_3389 _let_3279_3390 _let_3130_3241)))
  (let ((_let_3281_3392 (_make__type_record_6_ true _let_2973_3084))) (let
  ((_let_3282_3393 (_field__rec_valid _let_3281_3392))) (let
  ((_let_3283_3394 (_make__type_record_6_ _let_3282_3393 _let_3280_3391)))
  (let
  ((_let_3284_3395
    (=
     ((_ extract 0 0)
      (bvlshr
       initial_51___ucld_157_alloc_map_var85
       (bvmul ((_ zero_extend 2) _let_3128_3239) #b0001)))
     #b1)))
  (let ((_let_3285_3396 (not _let_3284_3395))) (let
  ((_let_3286_3397 (ite _let_3285_3396 _let_2974_3085 _let_3283_3394))) (let
  ((_let_3287_3398
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3288_3399 (ite _let_3287_3398 _let_3286_3397 _let_2976_3087)))
  (let
  ((_let_3289_3400
    (ite initial_50_v82 _let_3288_3399
     initial_67___ucld_160_observable_var3073)))
  (let
  ((_let_3290_3401
    (and
     (or
      (and
       (= ((_ extract 21 21) state_1___ucld_160_observable_var3083)
        ((_ extract 21 21) _let_3289_3400))
       (and (and
       (or
        (and
         (= ((_ extract 20 20) state_1___ucld_160_observable_var3083)
          ((_ extract 20 20) _let_3289_3400))
         (and (and
         (or
          (and
           (= ((_ extract 14 13) state_1___ucld_160_observable_var3083)
            ((_ extract 14 13) _let_3289_3400)))
          (and
           (= ((_ extract 14 13) state_1___ucld_160_observable_var3083)
            ((_ extract 14 13) _let_3289_3400)))
          (and
           (= ((_ extract 14 13) state_1___ucld_160_observable_var3083)
            ((_ extract 14 13) _let_3289_3400))))
         (not
          (= ((_ extract 14 13) state_1___ucld_160_observable_var3083) #b11)))
         (and
         (or
          (and
           (= ((_ extract 10 9) state_1___ucld_160_observable_var3083)
            ((_ extract 10 9) _let_3289_3400)))
          (and
           (= ((_ extract 10 9) state_1___ucld_160_observable_var3083)
            ((_ extract 10 9) _let_3289_3400)))
          (and
           (= ((_ extract 10 9) state_1___ucld_160_observable_var3083)
            ((_ extract 10 9) _let_3289_3400))))
         (not
          (= ((_ extract 10 9) state_1___ucld_160_observable_var3083) #b11)))
         (and
         (or
          (and
           (= ((_ extract 12 11) state_1___ucld_160_observable_var3083)
            ((_ extract 12 11) _let_3289_3400)))
          (and
           (= ((_ extract 12 11) state_1___ucld_160_observable_var3083)
            ((_ extract 12 11) _let_3289_3400)))
          (and
           (= ((_ extract 12 11) state_1___ucld_160_observable_var3083)
            ((_ extract 12 11) _let_3289_3400))))
         (not
          (= ((_ extract 12 11) state_1___ucld_160_observable_var3083) #b11)))
         (and
         (or
          (and
           (= ((_ extract 16 15) state_1___ucld_160_observable_var3083)
            ((_ extract 16 15) _let_3289_3400)))
          (and
           (= ((_ extract 16 15) state_1___ucld_160_observable_var3083)
            ((_ extract 16 15) _let_3289_3400)))
          (and
           (= ((_ extract 16 15) state_1___ucld_160_observable_var3083)
            ((_ extract 16 15) _let_3289_3400))))
         (not
          (= ((_ extract 16 15) state_1___ucld_160_observable_var3083) #b11)))
         (and
         (or
          (and
           (= ((_ extract 2 2) state_1___ucld_160_observable_var3083)
            ((_ extract 2 2) _let_3289_3400)))
          (and
           (= ((_ extract 2 2) state_1___ucld_160_observable_var3083)
            ((_ extract 2 2) _let_3289_3400))))))))
       (not (= ((_ extract 20 20) state_1___ucld_160_observable_var3083) #b1))))))
     (not (= ((_ extract 21 21) state_1___ucld_160_observable_var3083) #b1)))))
  _let_3290_3401)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((_let_3291_3402 (_field__rec_vtype havoc_237_newdata_g992))) (let
  ((_let_3292_3403 (= _let_3291_3402 RAW))) (let
  ((_let_3293_3404
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3294_3405 (not _let_3293_3404))) (let
  ((_let_3295_3406
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3296_3407 (not _let_3295_3406))) (let
  ((_let_3297_3408
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3298_3409 (not _let_3297_3408))) (let
  ((_let_3299_3410
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3300_3411 (not _let_3299_3410))) (let
  ((_let_3301_3412
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3302_3413 (and true _let_3301_3412))) (let
  ((_let_3303_3414 (and _let_3302_3413 _let_3300_3411))) (let
  ((_let_3304_3415 (and _let_3303_3414 _let_3298_3409))) (let
  ((_let_3305_3416 (and _let_3304_3415 _let_3296_3407))) (let
  ((_let_3306_3417 (and _let_3305_3416 _let_3294_3405))) (let
  ((_let_3307_3418 (and _let_3306_3417 initial_50_v82))) (let
  ((_let_3308_3419 (=> _let_3307_3418 _let_3292_3403)))
  _let_3308_3419)))))))))))))))))))
(declare-fun state_1___ucld_158_opcode_var3420 () Bool)
(declare-fun havoc_100___ucld_117_opcode_havoc3421 () Bool)
(declare-fun initial_61___ucld_158_opcode_var3422 () Bool)
(assert
 (let
  ((_let_3309_3423
    (ite initial_50_v82 havoc_100___ucld_117_opcode_havoc3421
     initial_61___ucld_158_opcode_var3422)))
  (let
  ((_let_3310_3424 (= state_1___ucld_158_opcode_var3420 _let_3309_3423)))
  _let_3310_3424)))
(declare-fun state_1___ucld_170_src2_probe_g_var3425 () (_ BitVec 20))
(declare-fun initial_58___ucld_170_src2_probe_g_var3426 () (_ BitVec 20))
(assert
 (let
  ((_let_3311_3427
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_3312_3428
    (ite _let_3311_3427 initial_58___ucld_170_src2_probe_g_var3426
     initial_58___ucld_170_src2_probe_g_var3426)))
  (let
  ((_let_3313_3429
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_3314_3430
    (ite _let_3313_3429 initial_58___ucld_170_src2_probe_g_var3426
     _let_3312_3428)))
  (let
  ((_let_3315_3431
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_3316_3432
    (ite _let_3315_3431 initial_58___ucld_170_src2_probe_g_var3426
     _let_3314_3430)))
  (let
  ((_let_3317_3433
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_3318_3434
    (ite _let_3317_3433 initial_58___ucld_170_src2_probe_g_var3426
     _let_3316_3432)))
  (let
  ((_let_3319_3435
    (ite initial_50_v82 _let_3318_3434
     initial_58___ucld_170_src2_probe_g_var3426)))
  (let
  ((_let_3320_3436
    (and
     (or
      (and
       (= ((_ extract 19 19) state_1___ucld_170_src2_probe_g_var3425)
        ((_ extract 19 19) _let_3319_3435))
       (and (and
       (or
        (and
         (= ((_ extract 14 13) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 14 13) _let_3319_3435)))
        (and
         (= ((_ extract 14 13) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 14 13) _let_3319_3435)))
        (and
         (= ((_ extract 14 13) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 14 13) _let_3319_3435))))
       (not
        (= ((_ extract 14 13) state_1___ucld_170_src2_probe_g_var3425) #b11)))
       (and
       (or
        (and
         (= ((_ extract 10 9) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 10 9) _let_3319_3435)))
        (and
         (= ((_ extract 10 9) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 10 9) _let_3319_3435)))
        (and
         (= ((_ extract 10 9) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 10 9) _let_3319_3435))))
       (not
        (= ((_ extract 10 9) state_1___ucld_170_src2_probe_g_var3425) #b11)))
       (and
       (or
        (and
         (= ((_ extract 12 11) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 12 11) _let_3319_3435)))
        (and
         (= ((_ extract 12 11) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 12 11) _let_3319_3435)))
        (and
         (= ((_ extract 12 11) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 12 11) _let_3319_3435))))
       (not
        (= ((_ extract 12 11) state_1___ucld_170_src2_probe_g_var3425) #b11)))
       (and
       (or
        (and
         (= ((_ extract 16 15) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 16 15) _let_3319_3435)))
        (and
         (= ((_ extract 16 15) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 16 15) _let_3319_3435)))
        (and
         (= ((_ extract 16 15) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 16 15) _let_3319_3435))))
       (not
        (= ((_ extract 16 15) state_1___ucld_170_src2_probe_g_var3425) #b11)))
       (and
       (or
        (and
         (= ((_ extract 2 2) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 2 2) _let_3319_3435)))
        (and
         (= ((_ extract 2 2) state_1___ucld_170_src2_probe_g_var3425)
          ((_ extract 2 2) _let_3319_3435))))))))
     (not (= ((_ extract 19 19) state_1___ucld_170_src2_probe_g_var3425) #b1)))))
  _let_3320_3436)))))))))))
(declare-fun initial_71___ucld_156_data_probe_pre_var3437 () (_ BitVec 2))
(declare-fun havoc_124_cell_data3438 () (_ BitVec 2))
(declare-fun state_1___ucld_156_data_probe_pre_var3439 () (_ BitVec 2))
(assert
 (let
  ((_let_3321_3440
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3322_3441 (_field__rec_ca_nonce_used _let_3321_3440))) (let
  ((_let_3323_3442 (_field__rec_ca_Boolrue _let_3321_3440))) (let
  ((_let_3324_3443 (_field__rec_enc_state_d _let_3321_3440))) (let
  ((_let_3325_3444 (_field__rec_h_length _let_3321_3440))) (let
  ((_let_3326_3445 (_field__rec_h_offset _let_3321_3440))) (let
  ((_let_3327_3446 (_field__rec_h_base _let_3321_3440))) (let
  ((_let_3328_3447 (_field__rec_vtype _let_3321_3440))) (let
  ((_let_3329_3448 (_field__rec_value _let_3321_3440))) (let
  ((_let_3330_3449
    (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3331_3450
    (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3332_3451
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3333_3452
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3334_3453
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3335_3454
    (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3336_3455
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3337_3456
    (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3338_3457
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3339_3458
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3340_3459
    (_make__type_record_2_ _let_3329_3448 _let_3330_3449 _let_3331_3450
     _let_3332_3451 _let_3333_3452 _let_3334_3453 _let_3335_3454
     _let_3336_3455 _let_3337_3456 _let_3338_3457 _let_3339_3458)))
  (let ((_let_3341_3460 (_field__rec_value _let_3340_3459))) (let
  ((_let_3342_3461 (_field__rec_h_base _let_3340_3459))) (let
  ((_let_3343_3462 (_field__rec_h_offset _let_3340_3459))) (let
  ((_let_3344_3463 (_field__rec_h_length _let_3340_3459))) (let
  ((_let_3345_3464 (_field__rec_enc_state_p _let_3340_3459))) (let
  ((_let_3346_3465 (_field__rec_key_p _let_3340_3459))) (let
  ((_let_3347_3466 (_field__rec_enc_state_d _let_3340_3459))) (let
  ((_let_3348_3467 (_field__rec_key_d _let_3340_3459))) (let
  ((_let_3349_3468 (_field__rec_ca_nonce_used _let_3340_3459))) (let
  ((_let_3350_3469 (_field__rec_ca_Boolrue _let_3340_3459))) (let
  ((_let_3351_3470
    (_make__type_record_2_ _let_3341_3460 _let_3328_3447 _let_3342_3461
     _let_3343_3462 _let_3344_3463 _let_3345_3464 _let_3346_3465
     _let_3347_3466 _let_3348_3467 _let_3349_3468 _let_3350_3469)))
  (let ((_let_3352_3471 (_field__rec_value _let_3351_3470))) (let
  ((_let_3353_3472 (_field__rec_vtype _let_3351_3470))) (let
  ((_let_3354_3473 (_field__rec_h_offset _let_3351_3470))) (let
  ((_let_3355_3474 (_field__rec_h_length _let_3351_3470))) (let
  ((_let_3356_3475 (_field__rec_enc_state_p _let_3351_3470))) (let
  ((_let_3357_3476 (_field__rec_key_p _let_3351_3470))) (let
  ((_let_3358_3477 (_field__rec_enc_state_d _let_3351_3470))) (let
  ((_let_3359_3478 (_field__rec_key_d _let_3351_3470))) (let
  ((_let_3360_3479 (_field__rec_ca_nonce_used _let_3351_3470))) (let
  ((_let_3361_3480 (_field__rec_ca_Boolrue _let_3351_3470))) (let
  ((_let_3362_3481
    (_make__type_record_2_ _let_3352_3471 _let_3353_3472 _let_3327_3446
     _let_3354_3473 _let_3355_3474 _let_3356_3475 _let_3357_3476
     _let_3358_3477 _let_3359_3478 _let_3360_3479 _let_3361_3480)))
  (let ((_let_3363_3482 (_field__rec_value _let_3362_3481))) (let
  ((_let_3364_3483 (_field__rec_vtype _let_3362_3481))) (let
  ((_let_3365_3484 (_field__rec_h_base _let_3362_3481))) (let
  ((_let_3366_3485 (_field__rec_h_length _let_3362_3481))) (let
  ((_let_3367_3486 (_field__rec_enc_state_p _let_3362_3481))) (let
  ((_let_3368_3487 (_field__rec_key_p _let_3362_3481))) (let
  ((_let_3369_3488 (_field__rec_enc_state_d _let_3362_3481))) (let
  ((_let_3370_3489 (_field__rec_key_d _let_3362_3481))) (let
  ((_let_3371_3490 (_field__rec_ca_nonce_used _let_3362_3481))) (let
  ((_let_3372_3491 (_field__rec_ca_Boolrue _let_3362_3481))) (let
  ((_let_3373_3492
    (_make__type_record_2_ _let_3363_3482 _let_3364_3483 _let_3365_3484
     _let_3326_3445 _let_3366_3485 _let_3367_3486 _let_3368_3487
     _let_3369_3488 _let_3370_3489 _let_3371_3490 _let_3372_3491)))
  (let ((_let_3374_3493 (_field__rec_value _let_3373_3492))) (let
  ((_let_3375_3494 (_field__rec_vtype _let_3373_3492))) (let
  ((_let_3376_3495 (_field__rec_h_base _let_3373_3492))) (let
  ((_let_3377_3496 (_field__rec_h_offset _let_3373_3492))) (let
  ((_let_3378_3497 (_field__rec_enc_state_p _let_3373_3492))) (let
  ((_let_3379_3498 (_field__rec_key_p _let_3373_3492))) (let
  ((_let_3380_3499 (_field__rec_enc_state_d _let_3373_3492))) (let
  ((_let_3381_3500 (_field__rec_key_d _let_3373_3492))) (let
  ((_let_3382_3501 (_field__rec_ca_nonce_used _let_3373_3492))) (let
  ((_let_3383_3502 (_field__rec_ca_Boolrue _let_3373_3492))) (let
  ((_let_3384_3503
    (_make__type_record_2_ _let_3374_3493 _let_3375_3494 _let_3376_3495
     _let_3377_3496 _let_3325_3444 _let_3378_3497 _let_3379_3498
     _let_3380_3499 _let_3381_3500 _let_3382_3501 _let_3383_3502)))
  (let ((_let_3385_3504 (_field__rec_value _let_3384_3503))) (let
  ((_let_3386_3505 (_field__rec_vtype _let_3384_3503))) (let
  ((_let_3387_3506 (_field__rec_h_base _let_3384_3503))) (let
  ((_let_3388_3507 (_field__rec_h_offset _let_3384_3503))) (let
  ((_let_3389_3508 (_field__rec_h_length _let_3384_3503))) (let
  ((_let_3390_3509 (_field__rec_enc_state_p _let_3384_3503))) (let
  ((_let_3391_3510 (_field__rec_key_p _let_3384_3503))) (let
  ((_let_3392_3511 (_field__rec_key_d _let_3384_3503))) (let
  ((_let_3393_3512 (_field__rec_ca_nonce_used _let_3384_3503))) (let
  ((_let_3394_3513 (_field__rec_ca_Boolrue _let_3384_3503))) (let
  ((_let_3395_3514
    (_make__type_record_2_ _let_3385_3504 _let_3386_3505 _let_3387_3506
     _let_3388_3507 _let_3389_3508 _let_3390_3509 _let_3391_3510
     _let_3324_3443 _let_3392_3511 _let_3393_3512 _let_3394_3513)))
  (let ((_let_3396_3515 (_field__rec_value _let_3395_3514))) (let
  ((_let_3397_3516 (_field__rec_vtype _let_3395_3514))) (let
  ((_let_3398_3517 (_field__rec_h_base _let_3395_3514))) (let
  ((_let_3399_3518 (_field__rec_h_offset _let_3395_3514))) (let
  ((_let_3400_3519 (_field__rec_h_length _let_3395_3514))) (let
  ((_let_3401_3520 (_field__rec_key_p _let_3395_3514))) (let
  ((_let_3402_3521 (_field__rec_enc_state_d _let_3395_3514))) (let
  ((_let_3403_3522 (_field__rec_key_d _let_3395_3514))) (let
  ((_let_3404_3523 (_field__rec_ca_nonce_used _let_3395_3514))) (let
  ((_let_3405_3524 (_field__rec_ca_Boolrue _let_3395_3514))) (let
  ((_let_3406_3525
    (_make__type_record_2_ _let_3396_3515 _let_3397_3516 _let_3398_3517
     _let_3399_3518 _let_3400_3519 GAR _let_3401_3520 _let_3402_3521
     _let_3403_3522 _let_3404_3523 _let_3405_3524)))
  (let
  ((_let_3407_3526
    (_make__type_record_2_ _let_3396_3515 _let_3397_3516 _let_3398_3517
     _let_3399_3518 _let_3400_3519 PLN _let_3401_3520 _let_3402_3521
     _let_3403_3522 _let_3404_3523 _let_3405_3524)))
  (let ((_let_3408_3527 (_field__rec_key_p _let_3321_3440))) (let
  ((_let_3409_3528 (= _let_3408_3527 ViKey))) (let
  ((_let_3410_3529 (ite _let_3409_3528 _let_3407_3526 _let_3406_3525))) (let
  ((_let_3411_3530 (_field__rec_enc_state_p _let_3321_3440))) (let
  ((_let_3412_3531 (= _let_3411_3530 ENC))) (let
  ((_let_3413_3532 (ite _let_3412_3531 _let_3406_3525 _let_3410_3529))) (let
  ((_let_3414_3533
    (_make__type_record_2_ _let_3385_3504 _let_3386_3505 _let_3387_3506
     _let_3388_3507 _let_3389_3508 _let_3390_3509 _let_3391_3510 GAR
     _let_3392_3511 _let_3393_3512 _let_3394_3513)))
  (let ((_let_3415_3534 (_field__rec_value _let_3414_3533))) (let
  ((_let_3416_3535 (_field__rec_vtype _let_3414_3533))) (let
  ((_let_3417_3536 (_field__rec_h_base _let_3414_3533))) (let
  ((_let_3418_3537 (_field__rec_h_offset _let_3414_3533))) (let
  ((_let_3419_3538 (_field__rec_h_length _let_3414_3533))) (let
  ((_let_3420_3539 (_field__rec_key_p _let_3414_3533))) (let
  ((_let_3421_3540 (_field__rec_enc_state_d _let_3414_3533))) (let
  ((_let_3422_3541 (_field__rec_key_d _let_3414_3533))) (let
  ((_let_3423_3542 (_field__rec_ca_nonce_used _let_3414_3533))) (let
  ((_let_3424_3543 (_field__rec_ca_Boolrue _let_3414_3533))) (let
  ((_let_3425_3544
    (_make__type_record_2_ _let_3415_3534 _let_3416_3535 _let_3417_3536
     _let_3418_3537 _let_3419_3538 GAR _let_3420_3539 _let_3421_3540
     _let_3422_3541 _let_3423_3542 _let_3424_3543)))
  (let ((_let_3426_3545 (= _let_3324_3443 PLN))) (let
  ((_let_3427_3546 (ite _let_3426_3545 _let_3425_3544 _let_3413_3532))) (let
  ((_let_3428_3547 (_field__rec_value _let_3427_3546))) (let
  ((_let_3429_3548 (_field__rec_vtype _let_3427_3546))) (let
  ((_let_3430_3549 (_field__rec_h_base _let_3427_3546))) (let
  ((_let_3431_3550 (_field__rec_h_offset _let_3427_3546))) (let
  ((_let_3432_3551 (_field__rec_h_length _let_3427_3546))) (let
  ((_let_3433_3552 (_field__rec_enc_state_p _let_3427_3546))) (let
  ((_let_3434_3553 (_field__rec_enc_state_d _let_3427_3546))) (let
  ((_let_3435_3554 (_field__rec_key_d _let_3427_3546))) (let
  ((_let_3436_3555 (_field__rec_ca_nonce_used _let_3427_3546))) (let
  ((_let_3437_3556 (_field__rec_ca_Boolrue _let_3427_3546))) (let
  ((_let_3438_3557
    (_make__type_record_2_ _let_3428_3547 _let_3429_3548 _let_3430_3549
     _let_3431_3550 _let_3432_3551 _let_3433_3552 NoKey _let_3434_3553
     _let_3435_3554 _let_3436_3555 _let_3437_3556)))
  (let ((_let_3439_3558 (_field__rec_value _let_3438_3557))) (let
  ((_let_3440_3559 (_field__rec_vtype _let_3438_3557))) (let
  ((_let_3441_3560 (_field__rec_h_base _let_3438_3557))) (let
  ((_let_3442_3561 (_field__rec_h_offset _let_3438_3557))) (let
  ((_let_3443_3562 (_field__rec_h_length _let_3438_3557))) (let
  ((_let_3444_3563 (_field__rec_enc_state_p _let_3438_3557))) (let
  ((_let_3445_3564 (_field__rec_key_p _let_3438_3557))) (let
  ((_let_3446_3565 (_field__rec_enc_state_d _let_3438_3557))) (let
  ((_let_3447_3566 (_field__rec_ca_nonce_used _let_3438_3557))) (let
  ((_let_3448_3567 (_field__rec_ca_Boolrue _let_3438_3557))) (let
  ((_let_3449_3568
    (_make__type_record_2_ _let_3439_3558 _let_3440_3559 _let_3441_3560
     _let_3442_3561 _let_3443_3562 _let_3444_3563 _let_3445_3564
     _let_3446_3565 NoKey _let_3447_3566 _let_3448_3567)))
  (let ((_let_3450_3569 (_field__rec_value _let_3449_3568))) (let
  ((_let_3451_3570 (_field__rec_vtype _let_3449_3568))) (let
  ((_let_3452_3571 (_field__rec_h_base _let_3449_3568))) (let
  ((_let_3453_3572 (_field__rec_h_offset _let_3449_3568))) (let
  ((_let_3454_3573 (_field__rec_h_length _let_3449_3568))) (let
  ((_let_3455_3574 (_field__rec_enc_state_p _let_3449_3568))) (let
  ((_let_3456_3575 (_field__rec_key_p _let_3449_3568))) (let
  ((_let_3457_3576 (_field__rec_enc_state_d _let_3449_3568))) (let
  ((_let_3458_3577 (_field__rec_key_d _let_3449_3568))) (let
  ((_let_3459_3578 (_field__rec_ca_nonce_used _let_3449_3568))) (let
  ((_let_3460_3579
    (_make__type_record_2_ _let_3450_3569 _let_3451_3570 _let_3452_3571
     _let_3453_3572 _let_3454_3573 _let_3455_3574 _let_3456_3575
     _let_3457_3576 _let_3458_3577 _let_3459_3578 _let_3323_3442)))
  (let ((_let_3461_3580 (_field__rec_value _let_3460_3579))) (let
  ((_let_3462_3581 (_field__rec_vtype _let_3460_3579))) (let
  ((_let_3463_3582 (_field__rec_h_base _let_3460_3579))) (let
  ((_let_3464_3583 (_field__rec_h_offset _let_3460_3579))) (let
  ((_let_3465_3584 (_field__rec_h_length _let_3460_3579))) (let
  ((_let_3466_3585 (_field__rec_enc_state_p _let_3460_3579))) (let
  ((_let_3467_3586 (_field__rec_key_p _let_3460_3579))) (let
  ((_let_3468_3587 (_field__rec_enc_state_d _let_3460_3579))) (let
  ((_let_3469_3588 (_field__rec_key_d _let_3460_3579))) (let
  ((_let_3470_3589 (_field__rec_ca_Boolrue _let_3460_3579))) (let
  ((_let_3471_3590
    (_make__type_record_2_ _let_3461_3580 _let_3462_3581 _let_3463_3582
     _let_3464_3583 _let_3465_3584 _let_3466_3585 _let_3467_3586
     _let_3468_3587 _let_3469_3588 _let_3322_3441 _let_3470_3589)))
  (let
  ((_let_3472_3591 (const___ucld_151_ghost_to_addr_value_c381 _let_3471_3590)))
  (let
  ((_let_3473_3592
    (=
     ((_ extract 0 0)
      (bvlshr
       initial_51___ucld_157_alloc_map_var85
       (bvmul ((_ zero_extend 2) _let_3472_3591) #b0001)))
     #b1)))
  (let ((_let_3474_3593 (not _let_3473_3592))) (let
  ((_let_3475_3594
    (ite _let_3474_3593 initial_71___ucld_156_data_probe_pre_var3437
     havoc_124_cell_data3438)))
  (let
  ((_let_3476_3595
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_3477_3596
    (ite _let_3476_3595 _let_3475_3594
     initial_71___ucld_156_data_probe_pre_var3437)))
  (let
  ((_let_3478_3597
    (ite initial_50_v82 _let_3477_3596
     initial_71___ucld_156_data_probe_pre_var3437)))
  (let
  ((_let_3479_3598
    (= state_1___ucld_156_data_probe_pre_var3439 _let_3478_3597)))
  _let_3479_3598))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun state_1___ucld_173_ghost_lmap_var3599 () (_ BitVec 160))
(assert
 (let
  ((_let_3480_3600
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var87
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var296))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) havoc_237_newdata_g992)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var296)))))
  (let
  ((_let_3481_3601
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) ARITHOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_3482_3602
    (ite _let_3481_3601 _let_3480_3600 initial_69___ucld_173_ghost_lmap_var87)))
  (let
  ((_let_3483_3603
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var87
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var296))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) havoc_227_newdata993)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var296)))))
  (let
  ((_let_3484_3604
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3485_3605 (_field__rec_h_offset _let_3484_3604))) (let
  ((_let_3486_3606 (bvadd _let_3485_3605 havoc_225_nondet_arg994))) (let
  ((_let_3487_3607 (_field__rec_value _let_3484_3604))) (let
  ((_let_3488_3608 (_field__rec_vtype _let_3484_3604))) (let
  ((_let_3489_3609 (_field__rec_h_base _let_3484_3604))) (let
  ((_let_3490_3610 (_field__rec_h_length _let_3484_3604))) (let
  ((_let_3491_3611 (_field__rec_enc_state_p _let_3484_3604))) (let
  ((_let_3492_3612 (_field__rec_key_p _let_3484_3604))) (let
  ((_let_3493_3613 (_field__rec_enc_state_d _let_3484_3604))) (let
  ((_let_3494_3614 (_field__rec_key_d _let_3484_3604))) (let
  ((_let_3495_3615 (_field__rec_ca_nonce_used _let_3484_3604))) (let
  ((_let_3496_3616 (_field__rec_ca_Boolrue _let_3484_3604))) (let
  ((_let_3497_3617
    (_make__type_record_2_ _let_3487_3607 _let_3488_3608 _let_3489_3609
     _let_3486_3606 _let_3490_3610 _let_3491_3611 _let_3492_3612
     _let_3493_3613 _let_3494_3614 _let_3495_3615 _let_3496_3616)))
  (let ((_let_3498_3618 (_field__rec_value _let_3497_3617))) (let
  ((_let_3499_3619 (bvadd _let_3498_3618 havoc_225_nondet_arg994))) (let
  ((_let_3500_3620 (_field__rec_vtype _let_3497_3617))) (let
  ((_let_3501_3621 (_field__rec_h_base _let_3497_3617))) (let
  ((_let_3502_3622 (_field__rec_h_offset _let_3497_3617))) (let
  ((_let_3503_3623 (_field__rec_h_length _let_3497_3617))) (let
  ((_let_3504_3624 (_field__rec_enc_state_p _let_3497_3617))) (let
  ((_let_3505_3625 (_field__rec_key_p _let_3497_3617))) (let
  ((_let_3506_3626 (_field__rec_enc_state_d _let_3497_3617))) (let
  ((_let_3507_3627 (_field__rec_key_d _let_3497_3617))) (let
  ((_let_3508_3628 (_field__rec_ca_nonce_used _let_3497_3617))) (let
  ((_let_3509_3629 (_field__rec_ca_Boolrue _let_3497_3617))) (let
  ((_let_3510_3630
    (_make__type_record_2_ _let_3499_3619 _let_3500_3620 _let_3501_3621
     _let_3502_3622 _let_3503_3623 _let_3504_3624 _let_3505_3625
     _let_3506_3626 _let_3507_3627 _let_3508_3628 _let_3509_3629)))
  (let
  ((_let_3511_3631
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var87
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var296))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) _let_3510_3630)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var296)))))
  (let ((_let_3512_3632 (= _let_3488_3608 HAN))) (let
  ((_let_3513_3633 (ite _let_3512_3632 _let_3511_3631 _let_3483_3603))) (let
  ((_let_3514_3634
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3515_3635 (ite _let_3514_3634 _let_3513_3633 _let_3482_3602)))
  (let ((_let_3516_3636 (_field__rec_allocg havoc_193___ucld_34_ret_as273)))
  (let
  ((_let_3517_3637
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var87
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var296))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) _let_3516_3636)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var296)))))
  (let ((_let_3518_3638 (_field__rec_valid havoc_193___ucld_34_ret_as273)))
  (let
  ((_let_3519_3639
    (ite _let_3518_3638 _let_3517_3637 initial_69___ucld_173_ghost_lmap_var87)))
  (let
  ((_let_3520_3640
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3521_3641 (ite _let_3520_3640 _let_3519_3639 _let_3515_3635)))
  (let
  ((_let_3522_3642
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_3523_3643
    (ite _let_3522_3642 initial_69___ucld_173_ghost_lmap_var87 _let_3521_3641)))
  (let
  ((_let_3524_3644
    (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3525_3645
    (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3526_3646
    (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3527_3647
    (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3528_3648
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3529_3649
    (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3530_3650
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3531_3651
    (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3532_3652
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3533_3653
    (_field__rec_ca_Boolrue havoc_136___ucld_37_ret_ghost_addr_out84)))
  (let
  ((_let_3534_3654
    (_make__type_record_2_ _let_3487_3607 _let_3524_3644 _let_3525_3645
     _let_3526_3646 _let_3527_3647 _let_3528_3648 _let_3529_3649
     _let_3530_3650 _let_3531_3651 _let_3532_3652 _let_3533_3653)))
  (let ((_let_3535_3655 (_field__rec_value _let_3534_3654))) (let
  ((_let_3536_3656 (_field__rec_h_base _let_3534_3654))) (let
  ((_let_3537_3657 (_field__rec_h_offset _let_3534_3654))) (let
  ((_let_3538_3658 (_field__rec_h_length _let_3534_3654))) (let
  ((_let_3539_3659 (_field__rec_enc_state_p _let_3534_3654))) (let
  ((_let_3540_3660 (_field__rec_key_p _let_3534_3654))) (let
  ((_let_3541_3661 (_field__rec_enc_state_d _let_3534_3654))) (let
  ((_let_3542_3662 (_field__rec_key_d _let_3534_3654))) (let
  ((_let_3543_3663 (_field__rec_ca_nonce_used _let_3534_3654))) (let
  ((_let_3544_3664 (_field__rec_ca_Boolrue _let_3534_3654))) (let
  ((_let_3545_3665
    (_make__type_record_2_ _let_3535_3655 _let_3488_3608 _let_3536_3656
     _let_3537_3657 _let_3538_3658 _let_3539_3659 _let_3540_3660
     _let_3541_3661 _let_3542_3662 _let_3543_3663 _let_3544_3664)))
  (let ((_let_3546_3666 (_field__rec_value _let_3545_3665))) (let
  ((_let_3547_3667 (_field__rec_vtype _let_3545_3665))) (let
  ((_let_3548_3668 (_field__rec_h_offset _let_3545_3665))) (let
  ((_let_3549_3669 (_field__rec_h_length _let_3545_3665))) (let
  ((_let_3550_3670 (_field__rec_enc_state_p _let_3545_3665))) (let
  ((_let_3551_3671 (_field__rec_key_p _let_3545_3665))) (let
  ((_let_3552_3672 (_field__rec_enc_state_d _let_3545_3665))) (let
  ((_let_3553_3673 (_field__rec_key_d _let_3545_3665))) (let
  ((_let_3554_3674 (_field__rec_ca_nonce_used _let_3545_3665))) (let
  ((_let_3555_3675 (_field__rec_ca_Boolrue _let_3545_3665))) (let
  ((_let_3556_3676
    (_make__type_record_2_ _let_3546_3666 _let_3547_3667 _let_3489_3609
     _let_3548_3668 _let_3549_3669 _let_3550_3670 _let_3551_3671
     _let_3552_3672 _let_3553_3673 _let_3554_3674 _let_3555_3675)))
  (let ((_let_3557_3677 (_field__rec_value _let_3556_3676))) (let
  ((_let_3558_3678 (_field__rec_vtype _let_3556_3676))) (let
  ((_let_3559_3679 (_field__rec_h_base _let_3556_3676))) (let
  ((_let_3560_3680 (_field__rec_h_length _let_3556_3676))) (let
  ((_let_3561_3681 (_field__rec_enc_state_p _let_3556_3676))) (let
  ((_let_3562_3682 (_field__rec_key_p _let_3556_3676))) (let
  ((_let_3563_3683 (_field__rec_enc_state_d _let_3556_3676))) (let
  ((_let_3564_3684 (_field__rec_key_d _let_3556_3676))) (let
  ((_let_3565_3685 (_field__rec_ca_nonce_used _let_3556_3676))) (let
  ((_let_3566_3686 (_field__rec_ca_Boolrue _let_3556_3676))) (let
  ((_let_3567_3687
    (_make__type_record_2_ _let_3557_3677 _let_3558_3678 _let_3559_3679
     _let_3485_3605 _let_3560_3680 _let_3561_3681 _let_3562_3682
     _let_3563_3683 _let_3564_3684 _let_3565_3685 _let_3566_3686)))
  (let ((_let_3568_3688 (_field__rec_value _let_3567_3687))) (let
  ((_let_3569_3689 (_field__rec_vtype _let_3567_3687))) (let
  ((_let_3570_3690 (_field__rec_h_base _let_3567_3687))) (let
  ((_let_3571_3691 (_field__rec_h_offset _let_3567_3687))) (let
  ((_let_3572_3692 (_field__rec_enc_state_p _let_3567_3687))) (let
  ((_let_3573_3693 (_field__rec_key_p _let_3567_3687))) (let
  ((_let_3574_3694 (_field__rec_enc_state_d _let_3567_3687))) (let
  ((_let_3575_3695 (_field__rec_key_d _let_3567_3687))) (let
  ((_let_3576_3696 (_field__rec_ca_nonce_used _let_3567_3687))) (let
  ((_let_3577_3697 (_field__rec_ca_Boolrue _let_3567_3687))) (let
  ((_let_3578_3698
    (_make__type_record_2_ _let_3568_3688 _let_3569_3689 _let_3570_3690
     _let_3571_3691 _let_3490_3610 _let_3572_3692 _let_3573_3693
     _let_3574_3694 _let_3575_3695 _let_3576_3696 _let_3577_3697)))
  (let ((_let_3579_3699 (_field__rec_value _let_3578_3698))) (let
  ((_let_3580_3700 (_field__rec_vtype _let_3578_3698))) (let
  ((_let_3581_3701 (_field__rec_h_base _let_3578_3698))) (let
  ((_let_3582_3702 (_field__rec_h_offset _let_3578_3698))) (let
  ((_let_3583_3703 (_field__rec_h_length _let_3578_3698))) (let
  ((_let_3584_3704 (_field__rec_enc_state_p _let_3578_3698))) (let
  ((_let_3585_3705 (_field__rec_key_p _let_3578_3698))) (let
  ((_let_3586_3706 (_field__rec_key_d _let_3578_3698))) (let
  ((_let_3587_3707 (_field__rec_ca_nonce_used _let_3578_3698))) (let
  ((_let_3588_3708 (_field__rec_ca_Boolrue _let_3578_3698))) (let
  ((_let_3589_3709
    (_make__type_record_2_ _let_3579_3699 _let_3580_3700 _let_3581_3701
     _let_3582_3702 _let_3583_3703 _let_3584_3704 _let_3585_3705
     _let_3493_3613 _let_3586_3706 _let_3587_3707 _let_3588_3708)))
  (let ((_let_3590_3710 (_field__rec_value _let_3589_3709))) (let
  ((_let_3591_3711 (_field__rec_vtype _let_3589_3709))) (let
  ((_let_3592_3712 (_field__rec_h_base _let_3589_3709))) (let
  ((_let_3593_3713 (_field__rec_h_offset _let_3589_3709))) (let
  ((_let_3594_3714 (_field__rec_h_length _let_3589_3709))) (let
  ((_let_3595_3715 (_field__rec_key_p _let_3589_3709))) (let
  ((_let_3596_3716 (_field__rec_enc_state_d _let_3589_3709))) (let
  ((_let_3597_3717 (_field__rec_key_d _let_3589_3709))) (let
  ((_let_3598_3718 (_field__rec_ca_nonce_used _let_3589_3709))) (let
  ((_let_3599_3719 (_field__rec_ca_Boolrue _let_3589_3709))) (let
  ((_let_3600_3720
    (_make__type_record_2_ _let_3590_3710 _let_3591_3711 _let_3592_3712
     _let_3593_3713 _let_3594_3714 GAR _let_3595_3715 _let_3596_3716
     _let_3597_3717 _let_3598_3718 _let_3599_3719)))
  (let
  ((_let_3601_3721
    (_make__type_record_2_ _let_3590_3710 _let_3591_3711 _let_3592_3712
     _let_3593_3713 _let_3594_3714 PLN _let_3595_3715 _let_3596_3716
     _let_3597_3717 _let_3598_3718 _let_3599_3719)))
  (let ((_let_3602_3722 (= _let_3492_3612 ViKey))) (let
  ((_let_3603_3723 (ite _let_3602_3722 _let_3601_3721 _let_3600_3720))) (let
  ((_let_3604_3724 (= _let_3491_3611 ENC))) (let
  ((_let_3605_3725 (ite _let_3604_3724 _let_3600_3720 _let_3603_3723))) (let
  ((_let_3606_3726
    (_make__type_record_2_ _let_3579_3699 _let_3580_3700 _let_3581_3701
     _let_3582_3702 _let_3583_3703 _let_3584_3704 _let_3585_3705 GAR
     _let_3586_3706 _let_3587_3707 _let_3588_3708)))
  (let ((_let_3607_3727 (_field__rec_value _let_3606_3726))) (let
  ((_let_3608_3728 (_field__rec_vtype _let_3606_3726))) (let
  ((_let_3609_3729 (_field__rec_h_base _let_3606_3726))) (let
  ((_let_3610_3730 (_field__rec_h_offset _let_3606_3726))) (let
  ((_let_3611_3731 (_field__rec_h_length _let_3606_3726))) (let
  ((_let_3612_3732 (_field__rec_key_p _let_3606_3726))) (let
  ((_let_3613_3733 (_field__rec_enc_state_d _let_3606_3726))) (let
  ((_let_3614_3734 (_field__rec_key_d _let_3606_3726))) (let
  ((_let_3615_3735 (_field__rec_ca_nonce_used _let_3606_3726))) (let
  ((_let_3616_3736 (_field__rec_ca_Boolrue _let_3606_3726))) (let
  ((_let_3617_3737
    (_make__type_record_2_ _let_3607_3727 _let_3608_3728 _let_3609_3729
     _let_3610_3730 _let_3611_3731 GAR _let_3612_3732 _let_3613_3733
     _let_3614_3734 _let_3615_3735 _let_3616_3736)))
  (let ((_let_3618_3738 (= _let_3493_3613 PLN))) (let
  ((_let_3619_3739 (ite _let_3618_3738 _let_3617_3737 _let_3605_3725))) (let
  ((_let_3620_3740 (_field__rec_value _let_3619_3739))) (let
  ((_let_3621_3741 (_field__rec_vtype _let_3619_3739))) (let
  ((_let_3622_3742 (_field__rec_h_base _let_3619_3739))) (let
  ((_let_3623_3743 (_field__rec_h_offset _let_3619_3739))) (let
  ((_let_3624_3744 (_field__rec_h_length _let_3619_3739))) (let
  ((_let_3625_3745 (_field__rec_enc_state_p _let_3619_3739))) (let
  ((_let_3626_3746 (_field__rec_enc_state_d _let_3619_3739))) (let
  ((_let_3627_3747 (_field__rec_key_d _let_3619_3739))) (let
  ((_let_3628_3748 (_field__rec_ca_nonce_used _let_3619_3739))) (let
  ((_let_3629_3749 (_field__rec_ca_Boolrue _let_3619_3739))) (let
  ((_let_3630_3750
    (_make__type_record_2_ _let_3620_3740 _let_3621_3741 _let_3622_3742
     _let_3623_3743 _let_3624_3744 _let_3625_3745 NoKey _let_3626_3746
     _let_3627_3747 _let_3628_3748 _let_3629_3749)))
  (let ((_let_3631_3751 (_field__rec_value _let_3630_3750))) (let
  ((_let_3632_3752 (_field__rec_vtype _let_3630_3750))) (let
  ((_let_3633_3753 (_field__rec_h_base _let_3630_3750))) (let
  ((_let_3634_3754 (_field__rec_h_offset _let_3630_3750))) (let
  ((_let_3635_3755 (_field__rec_h_length _let_3630_3750))) (let
  ((_let_3636_3756 (_field__rec_enc_state_p _let_3630_3750))) (let
  ((_let_3637_3757 (_field__rec_key_p _let_3630_3750))) (let
  ((_let_3638_3758 (_field__rec_enc_state_d _let_3630_3750))) (let
  ((_let_3639_3759 (_field__rec_ca_nonce_used _let_3630_3750))) (let
  ((_let_3640_3760 (_field__rec_ca_Boolrue _let_3630_3750))) (let
  ((_let_3641_3761
    (_make__type_record_2_ _let_3631_3751 _let_3632_3752 _let_3633_3753
     _let_3634_3754 _let_3635_3755 _let_3636_3756 _let_3637_3757
     _let_3638_3758 NoKey _let_3639_3759 _let_3640_3760)))
  (let ((_let_3642_3762 (_field__rec_value _let_3641_3761))) (let
  ((_let_3643_3763 (_field__rec_vtype _let_3641_3761))) (let
  ((_let_3644_3764 (_field__rec_h_base _let_3641_3761))) (let
  ((_let_3645_3765 (_field__rec_h_offset _let_3641_3761))) (let
  ((_let_3646_3766 (_field__rec_h_length _let_3641_3761))) (let
  ((_let_3647_3767 (_field__rec_enc_state_p _let_3641_3761))) (let
  ((_let_3648_3768 (_field__rec_key_p _let_3641_3761))) (let
  ((_let_3649_3769 (_field__rec_enc_state_d _let_3641_3761))) (let
  ((_let_3650_3770 (_field__rec_key_d _let_3641_3761))) (let
  ((_let_3651_3771 (_field__rec_ca_nonce_used _let_3641_3761))) (let
  ((_let_3652_3772
    (_make__type_record_2_ _let_3642_3762 _let_3643_3763 _let_3644_3764
     _let_3645_3765 _let_3646_3766 _let_3647_3767 _let_3648_3768
     _let_3649_3769 _let_3650_3770 _let_3651_3771 _let_3496_3616)))
  (let ((_let_3653_3773 (_field__rec_value _let_3652_3772))) (let
  ((_let_3654_3774 (_field__rec_vtype _let_3652_3772))) (let
  ((_let_3655_3775 (_field__rec_h_base _let_3652_3772))) (let
  ((_let_3656_3776 (_field__rec_h_offset _let_3652_3772))) (let
  ((_let_3657_3777 (_field__rec_h_length _let_3652_3772))) (let
  ((_let_3658_3778 (_field__rec_enc_state_p _let_3652_3772))) (let
  ((_let_3659_3779 (_field__rec_key_p _let_3652_3772))) (let
  ((_let_3660_3780 (_field__rec_enc_state_d _let_3652_3772))) (let
  ((_let_3661_3781 (_field__rec_key_d _let_3652_3772))) (let
  ((_let_3662_3782 (_field__rec_ca_Boolrue _let_3652_3772))) (let
  ((_let_3663_3783
    (_make__type_record_2_ _let_3653_3773 _let_3654_3774 _let_3655_3775
     _let_3656_3776 _let_3657_3777 _let_3658_3778 _let_3659_3779
     _let_3660_3780 _let_3661_3781 _let_3495_3615 _let_3662_3782)))
  (let
  ((_let_3664_3784 (const___ucld_151_ghost_to_addr_value_c381 _let_3663_3783)))
  (let
  ((_let_3665_3785
    ((_ extract 19 0)
     (bvlshr
      initial_56___ucld_171_ghost_mem_var623
      (bvmul
       ((_ zero_extend 78) _let_3664_3784)
       #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3666_3786 (_field__rec_ca_Boolrue _let_3665_3785))) (let
  ((_let_3667_3787 (_field__rec_ca_nonce_used _let_3665_3785))) (let
  ((_let_3668_3788 (_field__rec_key_p _let_3665_3785))) (let
  ((_let_3669_3789 (_field__rec_enc_state_p _let_3665_3785))) (let
  ((_let_3670_3790 (_field__rec_h_length _let_3665_3785))) (let
  ((_let_3671_3791 (_field__rec_h_offset _let_3665_3785))) (let
  ((_let_3672_3792 (_field__rec_h_base _let_3665_3785))) (let
  ((_let_3673_3793 (_field__rec_vtype _let_3665_3785))) (let
  ((_let_3674_3794 (_field__rec_value _let_3665_3785))) (let
  ((_let_3675_3795
    (_field__rec_vtype havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3676_3796
    (_field__rec_h_base havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3677_3797
    (_field__rec_h_offset havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3678_3798
    (_field__rec_h_length havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3679_3799
    (_field__rec_enc_state_p havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3680_3800
    (_field__rec_key_p havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3681_3801
    (_field__rec_enc_state_d havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3682_3802
    (_field__rec_key_d havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3683_3803
    (_field__rec_ca_nonce_used havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3684_3804
    (_field__rec_ca_Boolrue havoc_143___ucld_41_ret_ghost_data_out995)))
  (let
  ((_let_3685_3805
    (_make__type_record_2_ _let_3674_3794 _let_3675_3795 _let_3676_3796
     _let_3677_3797 _let_3678_3798 _let_3679_3799 _let_3680_3800
     _let_3681_3801 _let_3682_3802 _let_3683_3803 _let_3684_3804)))
  (let ((_let_3686_3806 (_field__rec_value _let_3685_3805))) (let
  ((_let_3687_3807 (_field__rec_h_base _let_3685_3805))) (let
  ((_let_3688_3808 (_field__rec_h_offset _let_3685_3805))) (let
  ((_let_3689_3809 (_field__rec_h_length _let_3685_3805))) (let
  ((_let_3690_3810 (_field__rec_enc_state_p _let_3685_3805))) (let
  ((_let_3691_3811 (_field__rec_key_p _let_3685_3805))) (let
  ((_let_3692_3812 (_field__rec_enc_state_d _let_3685_3805))) (let
  ((_let_3693_3813 (_field__rec_key_d _let_3685_3805))) (let
  ((_let_3694_3814 (_field__rec_ca_nonce_used _let_3685_3805))) (let
  ((_let_3695_3815 (_field__rec_ca_Boolrue _let_3685_3805))) (let
  ((_let_3696_3816
    (_make__type_record_2_ _let_3686_3806 _let_3673_3793 _let_3687_3807
     _let_3688_3808 _let_3689_3809 _let_3690_3810 _let_3691_3811
     _let_3692_3812 _let_3693_3813 _let_3694_3814 _let_3695_3815)))
  (let ((_let_3697_3817 (_field__rec_value _let_3696_3816))) (let
  ((_let_3698_3818 (_field__rec_vtype _let_3696_3816))) (let
  ((_let_3699_3819 (_field__rec_h_offset _let_3696_3816))) (let
  ((_let_3700_3820 (_field__rec_h_length _let_3696_3816))) (let
  ((_let_3701_3821 (_field__rec_enc_state_p _let_3696_3816))) (let
  ((_let_3702_3822 (_field__rec_key_p _let_3696_3816))) (let
  ((_let_3703_3823 (_field__rec_enc_state_d _let_3696_3816))) (let
  ((_let_3704_3824 (_field__rec_key_d _let_3696_3816))) (let
  ((_let_3705_3825 (_field__rec_ca_nonce_used _let_3696_3816))) (let
  ((_let_3706_3826 (_field__rec_ca_Boolrue _let_3696_3816))) (let
  ((_let_3707_3827
    (_make__type_record_2_ _let_3697_3817 _let_3698_3818 _let_3672_3792
     _let_3699_3819 _let_3700_3820 _let_3701_3821 _let_3702_3822
     _let_3703_3823 _let_3704_3824 _let_3705_3825 _let_3706_3826)))
  (let ((_let_3708_3828 (_field__rec_value _let_3707_3827))) (let
  ((_let_3709_3829 (_field__rec_vtype _let_3707_3827))) (let
  ((_let_3710_3830 (_field__rec_h_base _let_3707_3827))) (let
  ((_let_3711_3831 (_field__rec_h_length _let_3707_3827))) (let
  ((_let_3712_3832 (_field__rec_enc_state_p _let_3707_3827))) (let
  ((_let_3713_3833 (_field__rec_key_p _let_3707_3827))) (let
  ((_let_3714_3834 (_field__rec_enc_state_d _let_3707_3827))) (let
  ((_let_3715_3835 (_field__rec_key_d _let_3707_3827))) (let
  ((_let_3716_3836 (_field__rec_ca_nonce_used _let_3707_3827))) (let
  ((_let_3717_3837 (_field__rec_ca_Boolrue _let_3707_3827))) (let
  ((_let_3718_3838
    (_make__type_record_2_ _let_3708_3828 _let_3709_3829 _let_3710_3830
     _let_3671_3791 _let_3711_3831 _let_3712_3832 _let_3713_3833
     _let_3714_3834 _let_3715_3835 _let_3716_3836 _let_3717_3837)))
  (let ((_let_3719_3839 (_field__rec_value _let_3718_3838))) (let
  ((_let_3720_3840 (_field__rec_vtype _let_3718_3838))) (let
  ((_let_3721_3841 (_field__rec_h_base _let_3718_3838))) (let
  ((_let_3722_3842 (_field__rec_h_offset _let_3718_3838))) (let
  ((_let_3723_3843 (_field__rec_enc_state_p _let_3718_3838))) (let
  ((_let_3724_3844 (_field__rec_key_p _let_3718_3838))) (let
  ((_let_3725_3845 (_field__rec_enc_state_d _let_3718_3838))) (let
  ((_let_3726_3846 (_field__rec_key_d _let_3718_3838))) (let
  ((_let_3727_3847 (_field__rec_ca_nonce_used _let_3718_3838))) (let
  ((_let_3728_3848 (_field__rec_ca_Boolrue _let_3718_3838))) (let
  ((_let_3729_3849
    (_make__type_record_2_ _let_3719_3839 _let_3720_3840 _let_3721_3841
     _let_3722_3842 _let_3670_3790 _let_3723_3843 _let_3724_3844
     _let_3725_3845 _let_3726_3846 _let_3727_3847 _let_3728_3848)))
  (let ((_let_3730_3850 (_field__rec_value _let_3729_3849))) (let
  ((_let_3731_3851 (_field__rec_vtype _let_3729_3849))) (let
  ((_let_3732_3852 (_field__rec_h_base _let_3729_3849))) (let
  ((_let_3733_3853 (_field__rec_h_offset _let_3729_3849))) (let
  ((_let_3734_3854 (_field__rec_h_length _let_3729_3849))) (let
  ((_let_3735_3855 (_field__rec_enc_state_p _let_3729_3849))) (let
  ((_let_3736_3856 (_field__rec_key_p _let_3729_3849))) (let
  ((_let_3737_3857 (_field__rec_key_d _let_3729_3849))) (let
  ((_let_3738_3858 (_field__rec_ca_nonce_used _let_3729_3849))) (let
  ((_let_3739_3859 (_field__rec_ca_Boolrue _let_3729_3849))) (let
  ((_let_3740_3860
    (_make__type_record_2_ _let_3730_3850 _let_3731_3851 _let_3732_3852
     _let_3733_3853 _let_3734_3854 _let_3735_3855 _let_3736_3856 GAR
     _let_3737_3857 _let_3738_3858 _let_3739_3859)))
  (let ((_let_3741_3861 (_field__rec_value _let_3740_3860))) (let
  ((_let_3742_3862 (_field__rec_vtype _let_3740_3860))) (let
  ((_let_3743_3863 (_field__rec_h_base _let_3740_3860))) (let
  ((_let_3744_3864 (_field__rec_h_offset _let_3740_3860))) (let
  ((_let_3745_3865 (_field__rec_h_length _let_3740_3860))) (let
  ((_let_3746_3866 (_field__rec_enc_state_p _let_3740_3860))) (let
  ((_let_3747_3867 (_field__rec_key_p _let_3740_3860))) (let
  ((_let_3748_3868 (_field__rec_enc_state_d _let_3740_3860))) (let
  ((_let_3749_3869 (_field__rec_ca_nonce_used _let_3740_3860))) (let
  ((_let_3750_3870 (_field__rec_ca_Boolrue _let_3740_3860))) (let
  ((_let_3751_3871
    (_make__type_record_2_ _let_3741_3861 _let_3742_3862 _let_3743_3863
     _let_3744_3864 _let_3745_3865 _let_3746_3866 _let_3747_3867
     _let_3748_3868 NoKey _let_3749_3869 _let_3750_3870)))
  (let
  ((_let_3752_3872
    (_make__type_record_2_ _let_3730_3850 _let_3731_3851 _let_3732_3852
     _let_3733_3853 _let_3734_3854 _let_3735_3855 _let_3736_3856 PLN
     _let_3737_3857 _let_3738_3858 _let_3739_3859)))
  (let ((_let_3753_3873 (_field__rec_value _let_3752_3872))) (let
  ((_let_3754_3874 (_field__rec_vtype _let_3752_3872))) (let
  ((_let_3755_3875 (_field__rec_h_base _let_3752_3872))) (let
  ((_let_3756_3876 (_field__rec_h_offset _let_3752_3872))) (let
  ((_let_3757_3877 (_field__rec_h_length _let_3752_3872))) (let
  ((_let_3758_3878 (_field__rec_enc_state_p _let_3752_3872))) (let
  ((_let_3759_3879 (_field__rec_key_p _let_3752_3872))) (let
  ((_let_3760_3880 (_field__rec_enc_state_d _let_3752_3872))) (let
  ((_let_3761_3881 (_field__rec_ca_nonce_used _let_3752_3872))) (let
  ((_let_3762_3882 (_field__rec_ca_Boolrue _let_3752_3872))) (let
  ((_let_3763_3883
    (_make__type_record_2_ _let_3753_3873 _let_3754_3874 _let_3755_3875
     _let_3756_3876 _let_3757_3877 _let_3758_3878 _let_3759_3879
     _let_3760_3880 NoKey _let_3761_3881 _let_3762_3882)))
  (let
  ((_let_3764_3884 (const___ucld_147_ghost_to_nonce_c379 _let_3663_3783)))
  (let ((_let_3765_3885 (= _let_3667_3787 _let_3764_3884))) (let
  ((_let_3766_3886 (_field__rec_key_d _let_3665_3785))) (let
  ((_let_3767_3887 (= _let_3766_3886 ViKey))) (let
  ((_let_3768_3888 (and _let_3767_3887 _let_3765_3885))) (let
  ((_let_3769_3889 (ite _let_3768_3888 _let_3763_3883 _let_3751_3871))) (let
  ((_let_3770_3890 (_field__rec_enc_state_d _let_3665_3785))) (let
  ((_let_3771_3891 (= _let_3770_3890 ENC))) (let
  ((_let_3772_3892 (ite _let_3771_3891 _let_3751_3871 _let_3769_3889))) (let
  ((_let_3773_3893 (_field__rec_value _let_3772_3892))) (let
  ((_let_3774_3894 (_field__rec_vtype _let_3772_3892))) (let
  ((_let_3775_3895 (_field__rec_h_base _let_3772_3892))) (let
  ((_let_3776_3896 (_field__rec_h_offset _let_3772_3892))) (let
  ((_let_3777_3897 (_field__rec_h_length _let_3772_3892))) (let
  ((_let_3778_3898 (_field__rec_key_p _let_3772_3892))) (let
  ((_let_3779_3899 (_field__rec_enc_state_d _let_3772_3892))) (let
  ((_let_3780_3900 (_field__rec_key_d _let_3772_3892))) (let
  ((_let_3781_3901 (_field__rec_ca_nonce_used _let_3772_3892))) (let
  ((_let_3782_3902 (_field__rec_ca_Boolrue _let_3772_3892))) (let
  ((_let_3783_3903
    (_make__type_record_2_ _let_3773_3893 _let_3774_3894 _let_3775_3895
     _let_3776_3896 _let_3777_3897 _let_3669_3789 _let_3778_3898
     _let_3779_3899 _let_3780_3900 _let_3781_3901 _let_3782_3902)))
  (let ((_let_3784_3904 (_field__rec_value _let_3783_3903))) (let
  ((_let_3785_3905 (_field__rec_vtype _let_3783_3903))) (let
  ((_let_3786_3906 (_field__rec_h_base _let_3783_3903))) (let
  ((_let_3787_3907 (_field__rec_h_offset _let_3783_3903))) (let
  ((_let_3788_3908 (_field__rec_h_length _let_3783_3903))) (let
  ((_let_3789_3909 (_field__rec_enc_state_p _let_3783_3903))) (let
  ((_let_3790_3910 (_field__rec_enc_state_d _let_3783_3903))) (let
  ((_let_3791_3911 (_field__rec_key_d _let_3783_3903))) (let
  ((_let_3792_3912 (_field__rec_ca_nonce_used _let_3783_3903))) (let
  ((_let_3793_3913 (_field__rec_ca_Boolrue _let_3783_3903))) (let
  ((_let_3794_3914
    (_make__type_record_2_ _let_3784_3904 _let_3785_3905 _let_3786_3906
     _let_3787_3907 _let_3788_3908 _let_3789_3909 _let_3668_3788
     _let_3790_3910 _let_3791_3911 _let_3792_3912 _let_3793_3913)))
  (let ((_let_3795_3915 (_field__rec_value _let_3794_3914))) (let
  ((_let_3796_3916 (_field__rec_vtype _let_3794_3914))) (let
  ((_let_3797_3917 (_field__rec_h_base _let_3794_3914))) (let
  ((_let_3798_3918 (_field__rec_h_offset _let_3794_3914))) (let
  ((_let_3799_3919 (_field__rec_h_length _let_3794_3914))) (let
  ((_let_3800_3920 (_field__rec_enc_state_p _let_3794_3914))) (let
  ((_let_3801_3921 (_field__rec_key_p _let_3794_3914))) (let
  ((_let_3802_3922 (_field__rec_enc_state_d _let_3794_3914))) (let
  ((_let_3803_3923 (_field__rec_key_d _let_3794_3914))) (let
  ((_let_3804_3924 (_field__rec_ca_Boolrue _let_3794_3914))) (let
  ((_let_3805_3925
    (_make__type_record_2_ _let_3795_3915 _let_3796_3916 _let_3797_3917
     _let_3798_3918 _let_3799_3919 _let_3800_3920 _let_3801_3921
     _let_3802_3922 _let_3803_3923 _let_3667_3787 _let_3804_3924)))
  (let ((_let_3806_3926 (_field__rec_value _let_3805_3925))) (let
  ((_let_3807_3927 (_field__rec_vtype _let_3805_3925))) (let
  ((_let_3808_3928 (_field__rec_h_base _let_3805_3925))) (let
  ((_let_3809_3929 (_field__rec_h_offset _let_3805_3925))) (let
  ((_let_3810_3930 (_field__rec_h_length _let_3805_3925))) (let
  ((_let_3811_3931 (_field__rec_enc_state_p _let_3805_3925))) (let
  ((_let_3812_3932 (_field__rec_key_p _let_3805_3925))) (let
  ((_let_3813_3933 (_field__rec_enc_state_d _let_3805_3925))) (let
  ((_let_3814_3934 (_field__rec_key_d _let_3805_3925))) (let
  ((_let_3815_3935 (_field__rec_ca_nonce_used _let_3805_3925))) (let
  ((_let_3816_3936
    (_make__type_record_2_ _let_3806_3926 _let_3807_3927 _let_3808_3928
     _let_3809_3929 _let_3810_3930 _let_3811_3931 _let_3812_3932
     _let_3813_3933 _let_3814_3934 _let_3815_3935 _let_3666_3786)))
  (let
  ((_let_3817_3937
    (bvor
     (bvand
      initial_69___ucld_173_ghost_lmap_var87
      (bvxor
       (bvshl
        #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111
        ((_ zero_extend 157) initial_63___ucld_161_l1_var296))
       #b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
     (bvshl
      ((_ zero_extend 140) _let_3816_3936)
      ((_ zero_extend 157) initial_63___ucld_161_l1_var296)))))
  (let
  ((_let_3818_3938
    (=
     ((_ extract 0 0)
      (bvlshr
       initial_51___ucld_157_alloc_map_var85
       (bvmul ((_ zero_extend 2) _let_3664_3784) #b0001)))
     #b1)))
  (let ((_let_3819_3939 (not _let_3818_3938))) (let
  ((_let_3820_3940
    (ite _let_3819_3939 initial_69___ucld_173_ghost_lmap_var87 _let_3817_3937)))
  (let
  ((_let_3821_3941
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3822_3942 (ite _let_3821_3941 _let_3820_3940 _let_3523_3643)))
  (let
  ((_let_3823_3943
    (ite initial_50_v82 _let_3822_3942 initial_69___ucld_173_ghost_lmap_var87)))
  (let
  ((_let_3824_3944 (= state_1___ucld_173_ghost_lmap_var3599 _let_3823_3943)))
  _let_3824_3944))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let
  ((_let_3825_3945
    (forall ((a13946 (_ BitVec 2))) (forall ((a23947 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a13946) #b0000000000000000000000000111))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a23947) #b0000000000000000000000000111)))))
      (or
      (and
       (bvult
        (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a13946) #b0000000000000000000000000111))))
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a13946) #b0000000000000000000000000111)))))
       (and
       (bvult
        (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a23947) #b0000000000000000000000000111))))
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a23947) #b0000000000000000000000000111)))))
       (and
       (not
        (and
         (bvule (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_60___ucld_164_shadow_mem_var963
            (bvmul ((_ zero_extend 26) a23947) #b0000000000000000000000000111))))
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_60___ucld_164_shadow_mem_var963
            (bvmul ((_ zero_extend 26) a13946) #b0000000000000000000000000111)))))
         (bvult
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_60___ucld_164_shadow_mem_var963
            (bvmul ((_ zero_extend 26) a13946) #b0000000000000000000000000111))))
          (_field__rec_highend
          ((_ extract 6 0)
           (bvlshr
            initial_60___ucld_164_shadow_mem_var963
            (bvmul ((_ zero_extend 26) a23947) #b0000000000000000000000000111)))))))
       (not
        (and
         (bvule (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_60___ucld_164_shadow_mem_var963
            (bvmul ((_ zero_extend 26) a13946) #b0000000000000000000000000111))))
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_60___ucld_164_shadow_mem_var963
            (bvmul ((_ zero_extend 26) a23947) #b0000000000000000000000000111)))))
         (bvult
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            initial_60___ucld_164_shadow_mem_var963
            (bvmul ((_ zero_extend 26) a23947) #b0000000000000000000000000111))))
          (_field__rec_highend
          ((_ extract 6 0)
           (bvlshr
            initial_60___ucld_164_shadow_mem_var963
            (bvmul ((_ zero_extend 26) a13946) #b0000000000000000000000000111))))))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul ((_ zero_extend 26) a13946) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul ((_ zero_extend 26) a23947) #b0000000000000000000000000111)))))
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul ((_ zero_extend 26) a13946) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           initial_60___ucld_164_shadow_mem_var963
           (bvmul ((_ zero_extend 26) a23947) #b0000000000000000000000000111))))))))))))
  _let_3825_3945))
(assert
 (let
  ((_let_3826_3948
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3827_3949 (_field__rec_h_offset _let_3826_3948))) (let
  ((_let_3828_3950 (bvadd _let_3827_3949 havoc_225_nondet_arg994))) (let
  ((_let_3829_3951 (bvsub (_ bv3 2 ) _let_3828_3950))) (let
  ((_let_3830_3952 (_field__rec_h_base _let_3826_3948))) (let
  ((_let_3831_3953 (bvule _let_3830_3952 _let_3829_3951))) (let
  ((_let_3832_3954
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3833_3955 (not _let_3832_3954))) (let
  ((_let_3834_3956
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3835_3957 (not _let_3834_3956))) (let
  ((_let_3836_3958
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3837_3959 (not _let_3836_3958))) (let
  ((_let_3838_3960
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3839_3961 (_field__rec_vtype _let_3826_3948))) (let
  ((_let_3840_3962 (= _let_3839_3961 HAN))) (let
  ((_let_3841_3963 (and true _let_3840_3962))) (let
  ((_let_3842_3964 (and _let_3841_3963 _let_3838_3960))) (let
  ((_let_3843_3965 (and _let_3842_3964 _let_3837_3959))) (let
  ((_let_3844_3966 (and _let_3843_3965 _let_3835_3957))) (let
  ((_let_3845_3967 (and _let_3844_3966 _let_3833_3955))) (let
  ((_let_3846_3968 (and _let_3845_3967 initial_50_v82))) (let
  ((_let_3847_3969 (=> _let_3846_3968 _let_3831_3953)))
  _let_3847_3969)))))))))))))))))))))))
(declare-fun state_1_v3970 () Bool)
(assert (let ((_let_3848_3971 (= state_1_v3970 true))) _let_3848_3971))
(assert
 (let
  ((_let_3849_3972
    (forall ((a3973 (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a3973) #b0000000000000000000000000111)))))
      (=
       (const___ucld_153_slot_to_nonce_c31 (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a3973) #b0000000000000000000000000111))))
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a3973) #b0000000000000000000000000111)))))
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          initial_56___ucld_171_ghost_mem_var623
          (bvmul
           ((_ zero_extend 78) a3973)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  _let_3849_3972))
(assert
 (let ((_let_3850_3974 (_field__rec_vtype havoc_227_newdata993))) (let
  ((_let_3851_3975 (= _let_3850_3974 RAW))) (let
  ((_let_3852_3976
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3853_3977 (not _let_3852_3976))) (let
  ((_let_3854_3978
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3855_3979 (not _let_3854_3978))) (let
  ((_let_3856_3980
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let ((_let_3857_3981 (not _let_3856_3980))) (let
  ((_let_3858_3982
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var88)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var88) #b111)))))
  (let
  ((_let_3859_3983
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var87
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var83)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_3860_3984 (_field__rec_vtype _let_3859_3983))) (let
  ((_let_3861_3985 (= _let_3860_3984 HAN))) (let
  ((_let_3862_3986 (not _let_3861_3985))) (let
  ((_let_3863_3987 (and true _let_3862_3986))) (let
  ((_let_3864_3988 (and _let_3863_3987 _let_3858_3982))) (let
  ((_let_3865_3989 (and _let_3864_3988 _let_3857_3981))) (let
  ((_let_3866_3990 (and _let_3865_3989 _let_3855_3979))) (let
  ((_let_3867_3991 (and _let_3866_3990 _let_3853_3977))) (let
  ((_let_3868_3992 (and _let_3867_3991 initial_50_v82))) (let
  ((_let_3869_3993 (=> _let_3868_3992 _let_3851_3975)))
  _let_3869_3993)))))))))))))))))))))
(declare-fun state_1___ucld_167_action_var3994 () (_ BitVec 3))
(declare-fun havoc_101___ucld_118_action_havoc3995 () (_ BitVec 3))
(assert
 (let
  ((_let_3870_3996
    (ite initial_50_v82 havoc_101___ucld_118_action_havoc3995
     initial_54___ucld_167_action_var88)))
  (let
  ((_let_3871_3997
    (and
     (or
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var3994)
        ((_ extract 2 0) _let_3870_3996)))
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var3994)
        ((_ extract 2 0) _let_3870_3996)))
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var3994)
        ((_ extract 2 0) _let_3870_3996)))
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var3994)
        ((_ extract 2 0) _let_3870_3996)))
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var3994)
        ((_ extract 2 0) _let_3870_3996)))
      (and
       (= ((_ extract 2 0) state_1___ucld_167_action_var3994)
        ((_ extract 2 0) _let_3870_3996))))
     (not (= ((_ extract 2 0) state_1___ucld_167_action_var3994) #b110))
     (not (= ((_ extract 2 0) state_1___ucld_167_action_var3994) #b111)))))
  _let_3871_3997)))
(assert
 (let
  ((_let_3872_3998
    (forall ((a3999 (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a3999) #b0000000000000000000000000111)))))
      (and
       (bvule (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a3999) #b0000000000000000000000000111))))
        a3999)
       (bvult
        a3999
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          initial_60___ucld_164_shadow_mem_var963
          (bvmul ((_ zero_extend 26) a3999) #b0000000000000000000000000111))))))))))
  _let_3872_3998))
(assert
 (let
  ((_let_3873_4000
    (forall ((a4001 (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var87
             (bvmul
              ((_ zero_extend 157) a4001)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             initial_69___ucld_173_ghost_lmap_var87
             (bvmul
              ((_ zero_extend 157) a4001)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          initial_69___ucld_173_ghost_lmap_var87
          (bvmul
           ((_ zero_extend 157) a4001)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        ((_ extract 19 0)
         (bvlshr
          initial_69___ucld_173_ghost_lmap_var87
          (bvmul
           ((_ zero_extend 157) a4001)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
        (_field__rec_h_offset
        ((_ extract 19 0)
         (bvlshr
          initial_69___ucld_173_ghost_lmap_var87
          (bvmul
           ((_ zero_extend 157) a4001)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))))))))
  _let_3873_4000))
(push 1)
(assert
 (let
  ((_let_3874_4002
    (forall ((l4003 (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var3599
             (bvmul
              ((_ zero_extend 157) l4003)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var3599
             (bvmul
              ((_ zero_extend 157) l4003)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               state_1___ucld_173_ghost_lmap_var3599
               (bvmul
                ((_ zero_extend 157) l4003)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           state_1___ucld_173_ghost_lmap_var3599
           (bvmul
            ((_ zero_extend 157) l4003)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               state_1___ucld_173_ghost_lmap_var3599
               (bvmul
                ((_ zero_extend 157) l4003)
                #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           state_1___ucld_173_ghost_lmap_var3599
           (bvmul
            ((_ zero_extend 157) l4003)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
         (_field__rec_h_length
         ((_ extract 19 0)
          (bvlshr
           state_1___ucld_173_ghost_lmap_var3599
           (bvmul
            ((_ zero_extend 157) l4003)
            #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              state_1___ucld_173_ghost_lmap_var3599
              (bvmul
               ((_ zero_extend 157) l4003)
               #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  (let ((_let_3875_4004 (not _let_3874_4002))) _let_3875_4004)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3876_4005
    (forall ((a4006 (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var3599
             (bvmul
              ((_ zero_extend 157) a4006)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var3599
             (bvmul
              ((_ zero_extend 157) a4006)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_173_ghost_lmap_var3599
          (bvmul
           ((_ zero_extend 157) a4006)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_173_ghost_lmap_var3599
          (bvmul
           ((_ zero_extend 157) a4006)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
        (_field__rec_h_offset
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_173_ghost_lmap_var3599
          (bvmul
           ((_ zero_extend 157) a4006)
           #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))))))))
  (let ((_let_3877_4007 (not _let_3876_4005))) _let_3877_4007)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3878_4008
    (forall ((a4009 (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a4009) #b0000000000000000000000000111)))))
      (and
       (bvule (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a4009) #b0000000000000000000000000111))))
        a4009)
       (bvult
        a4009
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a4009) #b0000000000000000000000000111))))))))))
  (let ((_let_3879_4010 (not _let_3878_4008))) _let_3879_4010)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3880_4011 (_field__rec_data_g state_1___ucld_160_observable_var3083)))
  (let ((_let_3881_4012 (_field__rec_enc_state_d _let_3880_4011))) (let
  ((_let_3882_4013 (= _let_3881_4012 GAR))) (let
  ((_let_3883_4014 (= _let_3881_4012 ENC))) (let
  ((_let_3884_4015 (or _let_3883_4014 _let_3882_4013))) (let
  ((_let_3885_4016 (_field__rec_valid state_1___ucld_160_observable_var3083)))
  (let ((_let_3886_4017 (not _let_3885_4016))) (let
  ((_let_3887_4018 (or _let_3886_4017 _let_3884_4015))) (let
  ((_let_3888_4019 (=> state_1___ucld_174_msv_curr_var2333 _let_3887_4018)))
  (let ((_let_3889_4020 (not _let_3888_4019))) _let_3889_4020)))))))))))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3890_4021
    (forall ((a4022 (_ BitVec 2)))
     (=>
      (and
       (=
        ((_ extract 0 0)
         (bvlshr
          state_1___ucld_157_alloc_map_var980
          (bvmul ((_ zero_extend 2) a4022) #b0001)))
        #b1)
       (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var624
             (bvmul
              ((_ zero_extend 78) a4022)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var624
             (bvmul
              ((_ zero_extend 78) a4022)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               state_1___ucld_171_ghost_mem_var624
               (bvmul
                ((_ zero_extend 78) a4022)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           state_1___ucld_171_ghost_mem_var624
           (bvmul
            ((_ zero_extend 78) a4022)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul
            ((_ zero_extend 26)
             (_field__rec_h_base
             ((_ extract 19 0)
              (bvlshr
               state_1___ucld_171_ghost_mem_var624
               (bvmul
                ((_ zero_extend 78) a4022)
                #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
            #b0000000000000000000000000111))))
        (bvadd
         (_field__rec_h_base
         ((_ extract 19 0)
          (bvlshr
           state_1___ucld_171_ghost_mem_var624
           (bvmul
            ((_ zero_extend 78) a4022)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
         (_field__rec_h_length
         ((_ extract 19 0)
          (bvlshr
           state_1___ucld_171_ghost_mem_var624
           (bvmul
            ((_ zero_extend 78) a4022)
            #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul
           ((_ zero_extend 26)
            (_field__rec_h_base
            ((_ extract 19 0)
             (bvlshr
              state_1___ucld_171_ghost_mem_var624
              (bvmul
               ((_ zero_extend 78) a4022)
               #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
           #b0000000000000000000000000111))))))))))
  (let ((_let_3891_4023 (not _let_3890_4021))) _let_3891_4023)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3892_4024
    (forall ((a14025 (_ BitVec 2))) (forall ((a24026 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a14025) #b0000000000000000000000000111))))
       (and
       (bvule (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a14025) #b0000000000000000000000000111))))
        a24026)
       (bvult
        a24026
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a14025) #b0000000000000000000000000111)))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul ((_ zero_extend 26) a14025) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul ((_ zero_extend 26) a24026) #b0000000000000000000000000111)))))
       (and
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul ((_ zero_extend 26) a14025) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul ((_ zero_extend 26) a24026) #b0000000000000000000000000111)))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a24026) #b0000000000000000000000000111)))))))))))
  (let ((_let_3893_4027 (not _let_3892_4024))) _let_3893_4027)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3894_4028
    (forall ((l4029 (_ BitVec 3)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var3599
             (bvmul
              ((_ zero_extend 157) l4029)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_173_ghost_lmap_var3599
             (bvmul
              ((_ zero_extend 157) l4029)
              #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       (_ bv0 2 )
       (_field__rec_h_length
       ((_ extract 19 0)
        (bvlshr
         state_1___ucld_173_ghost_lmap_var3599
         (bvmul
          ((_ zero_extend 157) l4029)
          #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  (let
  ((_let_3895_4030
    (forall ((a4031 (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var624
             (bvmul
              ((_ zero_extend 78) a4031)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var624
             (bvmul
              ((_ zero_extend 78) a4031)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (bvult
       (_ bv0 2 )
       (_field__rec_h_length
       ((_ extract 19 0)
        (bvlshr
         state_1___ucld_171_ghost_mem_var624
         (bvmul
          ((_ zero_extend 78) a4031)
          #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  (let ((_let_3896_4032 (and _let_3895_4030 _let_3894_4028))) (let
  ((_let_3897_4033 (not _let_3896_4032))) _let_3897_4033)))))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3898_4034
    (forall ((a4035 (_ BitVec 2)))
     (=>
      (and
       (or
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var624
             (bvmul
              ((_ zero_extend 78) a4035)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))
        (and
         (=
          ((_ extract 0 0)
           (_field__rec_vtype
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var624
             (bvmul
              ((_ zero_extend 78) a4035)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 0 0) HAN)))))
      (=
       (_field__rec_value
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_171_ghost_mem_var624
          (bvmul
           ((_ zero_extend 78) a4035)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (bvadd
        (_field__rec_h_base
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_171_ghost_mem_var624
          (bvmul
           ((_ zero_extend 78) a4035)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
        (_field__rec_h_offset
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_171_ghost_mem_var624
          (bvmul
           ((_ zero_extend 78) a4035)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))))))))
  (let ((_let_3899_4036 (not _let_3898_4034))) _let_3899_4036)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3900_4037
    (forall ((a4038 (_ BitVec 2)))
     (=
      (=
       ((_ extract 0 0)
        (bvlshr
         state_1___ucld_157_alloc_map_var980
         (bvmul ((_ zero_extend 2) a4038) #b0001)))
       #b1)
      (_field__rec_alloc
       ((_ extract 6 0)
        (bvlshr
         state_1___ucld_164_shadow_mem_var1976
         (bvmul ((_ zero_extend 26) a4038) #b0000000000000000000000000111))))))))
  (let ((_let_3901_4039 (not _let_3900_4037))) _let_3901_4039)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3902_4040
    (forall ((a14041 (_ BitVec 2))) (forall ((a24042 (_ BitVec 2)))
     (=>
      (and
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a14041) #b0000000000000000000000000111))))
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a24042) #b0000000000000000000000000111)))))
      (or
      (and
       (bvult
        (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a14041) #b0000000000000000000000000111))))
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a14041) #b0000000000000000000000000111)))))
       (and
       (bvult
        (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a24042) #b0000000000000000000000000111))))
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a24042) #b0000000000000000000000000111)))))
       (and
       (not
        (and
         (bvule (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            state_1___ucld_164_shadow_mem_var1976
            (bvmul ((_ zero_extend 26) a24042) #b0000000000000000000000000111))))
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            state_1___ucld_164_shadow_mem_var1976
            (bvmul ((_ zero_extend 26) a14041) #b0000000000000000000000000111)))))
         (bvult
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            state_1___ucld_164_shadow_mem_var1976
            (bvmul ((_ zero_extend 26) a14041) #b0000000000000000000000000111))))
          (_field__rec_highend
          ((_ extract 6 0)
           (bvlshr
            state_1___ucld_164_shadow_mem_var1976
            (bvmul ((_ zero_extend 26) a24042) #b0000000000000000000000000111)))))))
       (not
        (and
         (bvule (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            state_1___ucld_164_shadow_mem_var1976
            (bvmul ((_ zero_extend 26) a14041) #b0000000000000000000000000111))))
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            state_1___ucld_164_shadow_mem_var1976
            (bvmul ((_ zero_extend 26) a24042) #b0000000000000000000000000111)))))
         (bvult
          (_field__rec_lowend
          ((_ extract 6 0)
           (bvlshr
            state_1___ucld_164_shadow_mem_var1976
            (bvmul ((_ zero_extend 26) a24042) #b0000000000000000000000000111))))
          (_field__rec_highend
          ((_ extract 6 0)
           (bvlshr
            state_1___ucld_164_shadow_mem_var1976
            (bvmul ((_ zero_extend 26) a14041) #b0000000000000000000000000111))))))))))
      (and
       (=
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul ((_ zero_extend 26) a14041) #b0000000000000000000000000111))))
        (_field__rec_lowend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul ((_ zero_extend 26) a24042) #b0000000000000000000000000111)))))
       (=
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul ((_ zero_extend 26) a14041) #b0000000000000000000000000111))))
        (_field__rec_highend
         ((_ extract 6 0)
          (bvlshr
           state_1___ucld_164_shadow_mem_var1976
           (bvmul ((_ zero_extend 26) a24042) #b0000000000000000000000000111))))))))))))
  (let ((_let_3903_4043 (not _let_3902_4040))) _let_3903_4043)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3904_4044
    (forall ((a4045 (_ BitVec 2)))
     (or
      (not
       (=
        ((_ extract 0 0)
         (bvlshr
          state_1___ucld_157_alloc_map_var980
          (bvmul ((_ zero_extend 2) a4045) #b0001)))
        #b1))
      (or
      (=
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_171_ghost_mem_var624
          (bvmul
           ((_ zero_extend 78) a4045)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
       (_field__rec_ca_nonce_used
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_171_ghost_mem_var624
          (bvmul
           ((_ zero_extend 78) a4045)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
      (and
       (or
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var624
             (bvmul
              ((_ zero_extend 78) a4045)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var624
             (bvmul
              ((_ zero_extend 78) a4045)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR)))
        (and
         (=
          ((_ extract 1 0)
           (_field__rec_enc_state_d
           ((_ extract 19 0)
            (bvlshr
             state_1___ucld_171_ghost_mem_var624
             (bvmul
              ((_ zero_extend 78) a4045)
              #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
          ((_ extract 1 0) GAR))))
       (not
        (=
         ((_ extract 1 0)
          (_field__rec_enc_state_d
          ((_ extract 19 0)
           (bvlshr
            state_1___ucld_171_ghost_mem_var624
            (bvmul
             ((_ zero_extend 78) a4045)
             #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
         #b11))))))))
  (let ((_let_3905_4046 (not _let_3904_4044))) _let_3905_4046)))
(check-sat)
(pop 1)
(push 1)
(assert
 (let
  ((_let_3906_4047
    (forall ((a4048 (_ BitVec 2)))
     (or
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a4048) #b0000000000000000000000000111)))))
      (=
       (const___ucld_153_slot_to_nonce_c31 (_field__rec_lowend
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a4048) #b0000000000000000000000000111))))
        (_field__rec_highend
        ((_ extract 6 0)
         (bvlshr
          state_1___ucld_164_shadow_mem_var1976
          (bvmul ((_ zero_extend 26) a4048) #b0000000000000000000000000111)))))
       (_field__rec_ca_Boolrue
        ((_ extract 19 0)
         (bvlshr
          state_1___ucld_171_ghost_mem_var624
          (bvmul
           ((_ zero_extend 78) a4048)
           #b00000000000000000000000000000000000000000000000000000000000000000000000000010100)))))))))
  (let ((_let_3907_4049 (not _let_3906_4047))) _let_3907_4049)))
(check-sat)
(pop 1)
(pop 1)