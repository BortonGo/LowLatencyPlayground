	.build_version macos, 26, 0	sdk_version 26, 5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym ; -- Begin function _Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	.p2align	2
__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym: ; @_Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	mov	x20, x4
	mov	x8, x1
	mov	x1, x0
	sub	x22, x3, x2
	scvtf	d0, x22
	mov	x9, #225833675390976            ; =0xcd6500000000
	movk	x9, #16845, lsl #48
	fmov	d1, x9
	fdiv	d0, d0, d1
	ucvtf	d1, x5
	fdiv	d8, d1, d0
Lloh0:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh1:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	x0, x19
	mov	x2, x8
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w21, #10                        ; =0xa
	strb	w21, [sp, #12]
	add	x1, sp, #12
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh2:
	adrp	x1, l_.str@PAGE
Lloh3:
	add	x1, x1, l_.str@PAGEOFF
	mov	x0, x19
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	strb	w21, [sp, #13]
	add	x1, sp, #13
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh4:
	adrp	x1, l_.str.1@PAGE
Lloh5:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, x19
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x8, #63439                      ; =0xf7cf
	movk	x8, #58195, lsl #16
	movk	x8, #39845, lsl #32
	movk	x8, #8388, lsl #48
	smulh	x8, x22, x8
	asr	x9, x8, #7
	add	x8, x9, x8, lsr #63
	str	x8, [sp]
	mov	x1, sp
	bl	__ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE
	strb	w21, [sp, #14]
	add	x1, sp, #14
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh6:
	adrp	x1, l_.str.2@PAGE
Lloh7:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x0, x19
	mov	w2, #21                         ; =0x15
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov.16b	v0, v8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	strb	w21, [sp, #15]
	add	x1, sp, #15
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE ; -- Begin function _ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE
	.globl	__ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE
	.weak_def_can_be_hidden	__ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE
	.p2align	2
__ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE: ; @_ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #384
	stp	x24, x23, [sp, #320]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #336]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #352]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #368]            ; 16-byte Folded Spill
	add	x29, sp, #368
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x1
	mov	x19, x0
	add	x21, sp, #48
	add	x0, sp, #48
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	ldr	x8, [sp, #48]
	ldur	x9, [x8, #-24]
	add	x9, x21, x9
	ldr	x10, [x19]
	ldur	x11, [x10, #-24]
	add	x11, x19, x11
	ldr	w11, [x11, #8]
	str	w11, [x9, #8]
	ldur	x22, [x8, #-24]
	ldur	x9, [x10, #-24]
Ltmp0:
	add	x8, sp, #32
	add	x0, x19, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp1:
; %bb.1:
	add	x21, x21, x22
Ltmp3:
	add	x8, sp, #40
	mov	x0, x21
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp4:
; %bb.2:
Ltmp6:
	add	x8, sp, #8
	add	x1, sp, #32
	mov	x0, x21
	bl	__ZNSt3__18ios_base5imbueERKNS_6localeE
Ltmp7:
; %bb.3:
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	ldr	x21, [x21, #40]
	cbz	x21, LBB1_6
; %bb.4:
	ldr	x8, [x21]
	ldr	x8, [x8, #16]
Ltmp8:
	add	x1, sp, #32
	mov	x0, x21
	blr	x8
Ltmp9:
; %bb.5:
	sub	x0, x29, #56
	add	x1, x21, #8
	bl	__ZNSt3__16localeC1ERKS0_
	add	x0, x21, #8
	add	x1, sp, #32
	bl	__ZNSt3__16localeaSERKS0_
	sub	x0, x29, #56
	bl	__ZNSt3__16localeD1Ev
LBB1_6:
	add	x0, sp, #40
	bl	__ZNSt3__16localeD1Ev
	add	x0, sp, #32
	bl	__ZNSt3__16localeD1Ev
	ldr	x8, [sp, #48]
	ldur	x8, [x8, #-24]
	add	x9, sp, #48
	add	x8, x9, x8
	ldr	x9, [x19]
	ldur	x9, [x9, #-24]
	add	x9, x19, x9
	ldr	x9, [x9, #16]
	str	x9, [x8, #16]
	ldr	x1, [x20]
Ltmp11:
	add	x0, sp, #48
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp12:
; %bb.7:
Ltmp13:
Lloh8:
	adrp	x1, l_.str.14@PAGE
Lloh9:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp14:
; %bb.8:
	ldr	w8, [sp, #152]
	tbnz	w8, #4, LBB1_11
; %bb.9:
	tbnz	w8, #3, LBB1_14
; %bb.10:
	mov	x20, #0                         ; =0x0
	strb	wzr, [sp, #31]
	add	x22, sp, #8
	b	LBB1_21
LBB1_11:
	ldr	x8, [sp, #144]
	ldr	x9, [sp, #104]
	cmp	x8, x9
	b.hs	LBB1_13
; %bb.12:
	str	x9, [sp, #144]
	mov	x8, x9
LBB1_13:
	add	x9, sp, #48
	add	x9, x9, #48
	b	LBB1_15
LBB1_14:
	add	x8, sp, #48
	add	x9, x8, #24
	ldr	x8, [sp, #88]
LBB1_15:
	ldr	x21, [x9]
	mov	x9, #-9                         ; =0xfffffffffffffff7
	movk	x9, #32767, lsl #48
	sub	x20, x8, x21
	cmp	x20, x9
	b.hs	LBB1_27
; %bb.16:
	cmp	x20, #23
	b.hs	LBB1_18
; %bb.17:
	strb	w20, [sp, #31]
	add	x22, sp, #8
	cbnz	x20, LBB1_20
	b	LBB1_21
LBB1_18:
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp16:
	mov	x0, x23
	bl	__Znwm
Ltmp17:
; %bb.19:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x20, x8, [sp, #16]
	str	x0, [sp, #8]
LBB1_20:
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	bl	_memmove
LBB1_21:
	strb	wzr, [x22, x20]
	ldrb	w8, [sp, #31]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #8]
	cmp	w9, #0
	add	x9, sp, #8
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp21:
	mov	x0, x19
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp22:
; %bb.22:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB1_24
; %bb.23:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB1_24:
Lloh10:
	adrp	x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh11:
	ldr	x20, [x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [sp, #48]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	add	x21, sp, #48
	str	x9, [x21, x8]
Lloh12:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh13:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #56]
	ldrsb	w8, [sp, #143]
	tbz	w8, #31, LBB1_26
; %bb.25:
	ldr	x0, [sp, #120]
	bl	__ZdlPv
LBB1_26:
Lloh14:
	adrp	x8, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh15:
	ldr	x8, [x8, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #56]
	add	x0, x21, #16
	bl	__ZNSt3__16localeD1Ev
	add	x0, sp, #48
	add	x1, x20, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x21, #112
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #368]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #352]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #336]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #384
	ret
LBB1_27:
Ltmp18:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
Ltmp19:
; %bb.28:
	brk	#0x1
LBB1_29:
Ltmp23:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB1_38
; %bb.30:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	b	LBB1_38
LBB1_31:
Ltmp5:
	mov	x19, x0
	b	LBB1_35
LBB1_32:
Ltmp2:
	b	LBB1_37
LBB1_33:
Ltmp20:
	b	LBB1_37
LBB1_34:
Ltmp10:
	mov	x19, x0
	add	x0, sp, #40
	bl	__ZNSt3__16localeD1Ev
LBB1_35:
	add	x0, sp, #32
	bl	__ZNSt3__16localeD1Ev
	b	LBB1_38
LBB1_36:
Ltmp15:
LBB1_37:
	mov	x19, x0
LBB1_38:
	add	x0, sp, #48
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh14, Lloh15
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp9-Ltmp6                    ;   Call between Ltmp6 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin0            ;     jumps to Ltmp10
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp14-Ltmp11                  ;   Call between Ltmp11 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp17-Ltmp16                  ;   Call between Ltmp16 and Ltmp17
	.uleb128 Ltmp20-Lfunc_begin0            ;     jumps to Ltmp20
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp21-Ltmp17                  ;   Call between Ltmp17 and Ltmp21
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp22-Ltmp21                  ;   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp19-Ltmp18                  ;   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0            ;     jumps to Ltmp20
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Lfunc_end0-Ltmp19              ;   Call between Ltmp19 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function _Z15generate_ordersRNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEEmy
lCPI2_0:
	.quad	0                               ; 0x0
	.quad	9223372036854775807             ; 0x7fffffffffffffff
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z15generate_ordersRNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEEmy
	.p2align	2
__Z15generate_ordersRNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEEmy: ; @_Z15generate_ordersRNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEEmy
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	sub	sp, sp, #2576
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	w8, #18432                      ; =0x4800
	movk	w8, #488, lsl #16
	ldr	x22, [x0]
	str	x22, [x0, #8]
	ldr	x9, [x0, #16]
	sub	x9, x9, x22
	cmp	x9, x8
	b.hs	LBB2_3
; %bb.1:
	mov	w0, #18432                      ; =0x4800
	movk	w0, #488, lsl #16
	bl	__Znwm
	mov	w8, #18432                      ; =0x4800
	movk	w8, #488, lsl #16
	add	x8, x0, x8
	stp	x0, x0, [x19]
	str	x8, [x19, #16]
	cbz	x22, LBB2_3
; %bb.2:
	mov	x0, x22
	bl	__ZdlPv
LBB2_3:
	str	x21, [sp, #8]
	mov	w8, #1                          ; =0x1
	mov	x9, #32557                      ; =0x7f2d
	movk	x9, #19605, lsl #16
	movk	x9, #62509, lsl #32
	movk	x9, #22609, lsl #48
	add	x10, sp, #8
LBB2_4:                                 ; =>This Inner Loop Header: Depth=1
	eor	x11, x21, x21, lsr #62
	madd	x21, x11, x9, x8
	str	x21, [x10, x8, lsl #3]
	add	x8, x8, #1
	cmp	x8, #312
	b.ne	LBB2_4
; %bb.5:
	mov	x8, #0                          ; =0x0
	mov	x23, #0                         ; =0x0
	mov	w9, #16960                      ; =0x4240
	movk	w9, #15, lsl #16
	mul	x9, x20, x9
	lsr	x9, x9, #2
	mov	x10, #62915                     ; =0xf5c3
	movk	x10, #23592, lsl #16
	movk	x10, #49807, lsl #32
	movk	x10, #10485, lsl #48
	umulh	x9, x9, x10
	lsr	x20, x9, #2
	str	xzr, [sp, #2504]
	mov	w25, #19923                     ; =0x4dd3
	movk	w25, #4194, lsl #16
	mov	w26, #1000                      ; =0x3e8
	mov	w27, #1                         ; =0x1
	mov	x28, #3361                      ; =0xd21
	movk	x28, #8402, lsl #16
	movk	x28, #53773, lsl #32
	movk	x28, #3360, lsl #48
	mov	w22, #312                       ; =0x138
	add	x21, sp, #8
	b	LBB2_8
LBB2_6:                                 ;   in Loop: Header=BB2_8 Depth=1
	mov	x24, x8
LBB2_7:                                 ;   in Loop: Header=BB2_8 Depth=1
	sub	x1, x29, #128
	mov	x0, x19
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_
	mov	x8, x24
	mov	w9, #16960                      ; =0x4240
	movk	w9, #15, lsl #16
	cmp	x9, x23
	b.eq	LBB2_12
LBB2_8:                                 ; =>This Inner Loop Header: Depth=1
	mov	w9, w23
	mov	w10, #34079                     ; =0x851f
	movk	w10, #20971, lsl #16
	umull	x10, w9, w10
	lsr	x10, x10, #37
	umull	x9, w9, w25
	lsr	x9, x9, #38
	msub	w9, w9, w26, w23
	add	w9, w9, #100
	stp	xzr, x9, [x29, #-120]
	mov	w9, #-100                       ; =0xffffff9c
	madd	w9, w10, w9, w23
	add	w9, w9, #1
	stur	w9, [x29, #-104]
	tst	x23, #0x1
	cinc	w9, w27, ne
	sturb	w9, [x29, #-100]
	cmp	x23, x20
	add	x23, x23, #1
	stur	x23, [x29, #-128]
	b.lo	LBB2_6
; %bb.9:                                ;   in Loop: Header=BB2_8 Depth=1
	add	x9, x8, #1
	lsr	x10, x9, #3
	umulh	x10, x10, x28
	lsr	x10, x10, #1
	msub	x24, x10, x22, x9
	ldr	x9, [x21, x8, lsl #3]
	and	x9, x9, #0xffffffff80000000
	ldr	x10, [x21, x24, lsl #3]
	and	x11, x10, #0x7ffffffe
	orr	x9, x11, x9
	add	x11, x8, #156
	lsr	x12, x11, #3
	umulh	x12, x12, x28
	lsr	x12, x12, #1
	msub	x11, x12, x22, x11
	ldr	x11, [x21, x11, lsl #3]
	tst	w10, #0x1
	mov	x10, #6633                      ; =0x19e9
	movk	x10, #43366, lsl #16
	movk	x10, #28506, lsl #32
	movk	x10, #46338, lsl #48
	csel	x10, x10, xzr, ne
	eor	x10, x10, x11
	eor	x9, x10, x9, lsr #1
	str	x9, [x21, x8, lsl #3]
	lsr	x8, x9, #29
	and	x8, x8, #0x5555555555555555
	eor	x8, x8, x9
	str	x24, [sp, #2504]
	mov	x9, #3987079168                 ; =0xeda60000
	movk	x9, #32767, lsl #32
	movk	x9, #29142, lsl #48
	and	x9, x9, x8, lsl #17
	eor	x9, x9, x8
	eor	x9, x9, x9, lsl #37
	lsr	x9, x9, #43
	eor	w8, w9, w8
	tbnz	w8, #0, LBB2_11
; %bb.10:                               ;   in Loop: Header=BB2_8 Depth=1
	stur	xzr, [x29, #-128]
	b	LBB2_7
LBB2_11:                                ;   in Loop: Header=BB2_8 Depth=1
	stur	xzr, [x29, #-112]
	b	LBB2_7
LBB2_12:
	ldp	x20, x9, [x19]
	sub	x8, x9, x20
	asr	x8, x8, #5
	cmp	x8, #2
	b.lt	LBB2_18
; %bb.13:
Lloh16:
	adrp	x10, lCPI2_0@PAGE
Lloh17:
	ldr	q0, [x10, lCPI2_0@PAGEOFF]
	sub	x23, x29, #144
	str	q0, [x23]
	sub	x19, x9, #32
	cmp	x20, x19
	b.hs	LBB2_18
; %bb.14:
	sub	x21, x8, #1
	mov	x22, x20
	b	LBB2_16
LBB2_15:                                ;   in Loop: Header=BB2_16 Depth=1
	add	x22, x22, #32
	sub	x21, x21, #1
	add	x20, x20, #32
	cmp	x22, x19
	b.hs	LBB2_18
LBB2_16:                                ; =>This Inner Loop Header: Depth=1
	stp	xzr, x21, [x29, #-128]
	sub	x0, x29, #144
	add	x1, sp, #8
	sub	x2, x29, #128
	bl	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	cbz	x0, LBB2_15
; %bb.17:                               ;   in Loop: Header=BB2_16 Depth=1
	add	x8, x20, x0, lsl #5
	ldr	q0, [x22]
	str	q0, [x23, #16]
	ldr	q1, [x22, #16]
	str	q1, [x23, #32]
	ldur	q1, [x8, #13]
	ldr	q2, [x8]
	str	q2, [x22]
	stur	q1, [x22, #13]
	ldur	q1, [x23, #29]
	stur	q1, [x8, #13]
	str	q0, [x8]
	b	LBB2_15
LBB2_18:
	add	sp, sp, #2576
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_ ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x1
	mov	x19, x0
	ldp	x9, x8, [x0, #8]
	cmp	x9, x8
	b.hs	LBB3_2
; %bb.1:
	ldp	q0, q1, [x21]
	stp	q0, q1, [x9]
	add	x23, x9, #32
	b	LBB3_6
LBB3_2:
	ldr	x20, [x19]
	sub	x22, x9, x20
	asr	x24, x22, #5
	add	x9, x24, #1
	lsr	x10, x9, #59
	cbnz	x10, LBB3_7
; %bb.3:
	mov	x10, #9223372036854775776       ; =0x7fffffffffffffe0
	sub	x8, x8, x20
	asr	x11, x8, #4
	cmp	x11, x9
	csel	x9, x11, x9, hi
	cmp	x8, x10
	mov	x8, #576460752303423487         ; =0x7ffffffffffffff
	csel	x8, x9, x8, lo
	lsr	x9, x8, #59
	cbnz	x9, LBB3_8
; %bb.4:
	lsl	x23, x8, #5
	mov	x0, x23
	bl	__Znwm
	add	x8, x0, x22
	add	x25, x0, x23
	ldp	q0, q1, [x21]
	stp	q0, q1, [x8]
	add	x23, x8, #32
	sub	x21, x8, x24, lsl #5
	mov	x0, x21
	mov	x1, x20
	mov	x2, x22
	bl	_memcpy
	stp	x21, x23, [x19]
	str	x25, [x19, #16]
	cbz	x20, LBB3_6
; %bb.5:
	mov	x0, x20
	bl	__ZdlPv
LBB3_6:
	str	x23, [x19, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB3_7:
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
LBB3_8:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.cfi_endproc
                                        ; -- End function
	.globl	__Z7isValidRKN3llp5OrderE       ; -- Begin function _Z7isValidRKN3llp5OrderE
	.p2align	2
__Z7isValidRKN3llp5OrderE:              ; @_Z7isValidRKN3llp5OrderE
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	cmp	x8, #0
	ldr	x8, [x0, #16]
	ccmp	x8, #0, #4, ne
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z19isValidAlwaysInlineRKN3llp5OrderE ; -- Begin function _Z19isValidAlwaysInlineRKN3llp5OrderE
	.p2align	2
__Z19isValidAlwaysInlineRKN3llp5OrderE: ; @_Z19isValidAlwaysInlineRKN3llp5OrderE
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	cmp	x8, #0
	ldr	x8, [x0, #16]
	ccmp	x8, #0, #4, ne
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z15isValidNoinlineRKN3llp5OrderE ; -- Begin function _Z15isValidNoinlineRKN3llp5OrderE
	.p2align	2
__Z15isValidNoinlineRKN3llp5OrderE:     ; @_Z15isValidNoinlineRKN3llp5OrderE
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	cmp	x8, #0
	ldr	x8, [x0, #16]
	ccmp	x8, #0, #4, ne
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z21run_bench_inside_loopNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE ; -- Begin function _Z21run_bench_inside_loopNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.p2align	2
__Z21run_bench_inside_loopNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE: ; @_Z21run_bench_inside_loopNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x22, x2
	mov	x19, x1
	mov	x20, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	ldp	x8, x9, [x22]
	cmp	x8, x9
	b.eq	LBB7_7
; %bb.1:
	mov	x23, #0                         ; =0x0
	mov	x22, #0                         ; =0x0
	b	LBB7_4
LBB7_2:                                 ;   in Loop: Header=BB7_4 Depth=1
	ldr	w10, [x8, #24]
LBB7_3:                                 ;   in Loop: Header=BB7_4 Depth=1
	add	x23, x10, x23
	add	x8, x8, #32
	cmp	x8, x9
	b.eq	LBB7_8
LBB7_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8]
	cbz	x10, LBB7_2
; %bb.5:                                ;   in Loop: Header=BB7_4 Depth=1
	ldr	x11, [x8, #16]
	cbz	x11, LBB7_2
; %bb.6:                                ;   in Loop: Header=BB7_4 Depth=1
	add	x22, x11, x22
	b	LBB7_3
LBB7_7:
	mov	x22, #0                         ; =0x0
	mov	x23, #0                         ; =0x0
LBB7_8:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	mov	x4, x23
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	mov	x0, x22
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z23run_bench_normal_helperNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE ; -- Begin function _Z23run_bench_normal_helperNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.p2align	2
__Z23run_bench_normal_helperNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE: ; @_Z23run_bench_normal_helperNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.cfi_startproc
; %bb.0:
	stp	d11, d10, [sp, #-96]!           ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	mov	x22, x2
	mov	x19, x1
	mov	x20, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	ldp	x11, x8, [x22]
	cmp	x11, x8
	b.eq	LBB8_3
; %bb.1:
	sub	x9, x8, x11
	sub	x9, x9, #32
	cmp	x9, #256
	b.hs	LBB8_4
; %bb.2:
	mov	x22, #0                         ; =0x0
	mov	x23, #0                         ; =0x0
	mov	x9, x11
	b	LBB8_7
LBB8_3:
	mov	x23, #0                         ; =0x0
	mov	x22, #0                         ; =0x0
	b	LBB8_8
LBB8_4:
	lsr	x9, x9, #5
	add	x9, x9, #1
	ands	x10, x9, #0x7
	mov	w12, #8                         ; =0x8
	csel	x10, x12, x10, eq
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	sub	x10, x9, x10
	add	x9, x11, x10, lsl #5
	add	x11, x11, #128
	movi.2d	v6, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v5, #0000000000000000
LBB8_5:                                 ; =>This Inner Loop Header: Depth=1
	sub	x12, x11, #128
	sub	x13, x11, #64
	ld4.2d	{ v28, v29, v30, v31 }, [x12]
	ld4.2d	{ v24, v25, v26, v27 }, [x13]
	mov	x12, x11
	ld4.2d	{ v20, v21, v22, v23 }, [x12], #64
	ld4.2d	{ v16, v17, v18, v19 }, [x12]
	cmtst.2d	v8, v28, v28
	cmeq.2d	v9, v30, #0
	sub	x12, x11, #72
	ldur	s10, [x11, #-104]
	ld1.s	{ v10 }[1], [x12]
	bic.16b	v8, v8, v9
	ushll.2d	v9, v10, #0
	bsl.16b	v8, v28, v9
	cmeq.2d	v9, v28, #0
	bic.16b	v28, v30, v9
	cmtst.2d	v29, v24, v24
	cmeq.2d	v30, v26, #0
	bic.16b	v29, v29, v30
	sub	x12, x11, #8
	ldur	s30, [x11, #-40]
	ld1.s	{ v30 }[1], [x12]
	ushll.2d	v30, v30, #0
	bsl.16b	v29, v24, v30
	cmeq.2d	v30, v24, #0
	bic.16b	v24, v26, v30
	cmtst.2d	v25, v20, v20
	cmeq.2d	v26, v22, #0
	bic.16b	v25, v25, v26
	add	x12, x11, #56
	ldr	s26, [x11, #24]
	ld1.s	{ v26 }[1], [x12]
	ushll.2d	v26, v26, #0
	bsl.16b	v25, v20, v26
	cmeq.2d	v26, v20, #0
	bic.16b	v20, v22, v26
	cmtst.2d	v21, v16, v16
	cmeq.2d	v22, v18, #0
	bic.16b	v21, v21, v22
	add	x12, x11, #120
	ldr	s22, [x11, #88]
	ld1.s	{ v22 }[1], [x12]
	ushll.2d	v22, v22, #0
	bsl.16b	v21, v16, v22
	cmeq.2d	v22, v16, #0
	bic.16b	v16, v18, v22
	add.2d	v2, v28, v2
	add.2d	v3, v24, v3
	add.2d	v4, v20, v4
	add.2d	v5, v16, v5
	add.2d	v0, v8, v0
	add.2d	v1, v29, v1
	add.2d	v6, v25, v6
	add.2d	v7, v21, v7
	add	x11, x11, #256
	subs	x10, x10, #8
	b.ne	LBB8_5
; %bb.6:
	add.2d	v0, v1, v0
	add.2d	v0, v6, v0
	add.2d	v0, v7, v0
	addp.2d	d0, v0
	fmov	x22, d0
	add.2d	v0, v3, v2
	add.2d	v0, v4, v0
	add.2d	v0, v5, v0
	addp.2d	d0, v0
	fmov	x23, d0
LBB8_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x9]
	ldr	x11, [x9, #16]
	cmp	x10, #0
	csel	x12, x11, xzr, ne
	cmp	x11, #0
	ccmp	x10, #0, #4, ne
	ldr	w11, [x9, #24]
	add	x23, x12, x23
	csel	x10, x10, x11, ne
	add	x22, x10, x22
	add	x9, x9, #32
	cmp	x9, x8
	b.ne	LBB8_7
LBB8_8:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	mov	x4, x22
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	mov	x0, x23
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #96             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z23run_bench_always_inlineNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE ; -- Begin function _Z23run_bench_always_inlineNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.p2align	2
__Z23run_bench_always_inlineNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE: ; @_Z23run_bench_always_inlineNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.cfi_startproc
; %bb.0:
	stp	d11, d10, [sp, #-96]!           ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	mov	x22, x2
	mov	x19, x1
	mov	x20, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	ldp	x11, x8, [x22]
	cmp	x11, x8
	b.eq	LBB9_3
; %bb.1:
	sub	x9, x8, x11
	sub	x9, x9, #32
	cmp	x9, #256
	b.hs	LBB9_4
; %bb.2:
	mov	x22, #0                         ; =0x0
	mov	x23, #0                         ; =0x0
	mov	x9, x11
	b	LBB9_7
LBB9_3:
	mov	x23, #0                         ; =0x0
	mov	x22, #0                         ; =0x0
	b	LBB9_8
LBB9_4:
	lsr	x9, x9, #5
	add	x9, x9, #1
	ands	x10, x9, #0x7
	mov	w12, #8                         ; =0x8
	csel	x10, x12, x10, eq
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	sub	x10, x9, x10
	add	x9, x11, x10, lsl #5
	add	x11, x11, #128
	movi.2d	v6, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v5, #0000000000000000
LBB9_5:                                 ; =>This Inner Loop Header: Depth=1
	sub	x12, x11, #128
	sub	x13, x11, #64
	ld4.2d	{ v28, v29, v30, v31 }, [x12]
	ld4.2d	{ v24, v25, v26, v27 }, [x13]
	mov	x12, x11
	ld4.2d	{ v20, v21, v22, v23 }, [x12], #64
	ld4.2d	{ v16, v17, v18, v19 }, [x12]
	cmtst.2d	v8, v28, v28
	cmeq.2d	v9, v30, #0
	sub	x12, x11, #72
	ldur	s10, [x11, #-104]
	ld1.s	{ v10 }[1], [x12]
	bic.16b	v8, v8, v9
	ushll.2d	v9, v10, #0
	bsl.16b	v8, v28, v9
	cmeq.2d	v9, v28, #0
	bic.16b	v28, v30, v9
	cmtst.2d	v29, v24, v24
	cmeq.2d	v30, v26, #0
	bic.16b	v29, v29, v30
	sub	x12, x11, #8
	ldur	s30, [x11, #-40]
	ld1.s	{ v30 }[1], [x12]
	ushll.2d	v30, v30, #0
	bsl.16b	v29, v24, v30
	cmeq.2d	v30, v24, #0
	bic.16b	v24, v26, v30
	cmtst.2d	v25, v20, v20
	cmeq.2d	v26, v22, #0
	bic.16b	v25, v25, v26
	add	x12, x11, #56
	ldr	s26, [x11, #24]
	ld1.s	{ v26 }[1], [x12]
	ushll.2d	v26, v26, #0
	bsl.16b	v25, v20, v26
	cmeq.2d	v26, v20, #0
	bic.16b	v20, v22, v26
	cmtst.2d	v21, v16, v16
	cmeq.2d	v22, v18, #0
	bic.16b	v21, v21, v22
	add	x12, x11, #120
	ldr	s22, [x11, #88]
	ld1.s	{ v22 }[1], [x12]
	ushll.2d	v22, v22, #0
	bsl.16b	v21, v16, v22
	cmeq.2d	v22, v16, #0
	bic.16b	v16, v18, v22
	add.2d	v2, v28, v2
	add.2d	v3, v24, v3
	add.2d	v4, v20, v4
	add.2d	v5, v16, v5
	add.2d	v0, v8, v0
	add.2d	v1, v29, v1
	add.2d	v6, v25, v6
	add.2d	v7, v21, v7
	add	x11, x11, #256
	subs	x10, x10, #8
	b.ne	LBB9_5
; %bb.6:
	add.2d	v0, v1, v0
	add.2d	v0, v6, v0
	add.2d	v0, v7, v0
	addp.2d	d0, v0
	fmov	x22, d0
	add.2d	v0, v3, v2
	add.2d	v0, v4, v0
	add.2d	v0, v5, v0
	addp.2d	d0, v0
	fmov	x23, d0
LBB9_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x9]
	ldr	x11, [x9, #16]
	cmp	x10, #0
	csel	x12, x11, xzr, ne
	cmp	x11, #0
	ccmp	x10, #0, #4, ne
	ldr	w11, [x9, #24]
	add	x23, x12, x23
	csel	x10, x10, x11, ne
	add	x22, x10, x22
	add	x9, x9, #32
	cmp	x9, x8
	b.ne	LBB9_7
LBB9_8:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	mov	x4, x22
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	mov	x0, x23
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #96             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z18run_bench_noinlineNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE ; -- Begin function _Z18run_bench_noinlineNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.p2align	2
__Z18run_bench_noinlineNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE: ; @_Z18run_bench_noinlineNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x22, x2
	mov	x19, x1
	mov	x20, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	ldp	x24, x25, [x22]
	cmp	x24, x25
	b.eq	LBB10_3
; %bb.1:
	mov	x23, #0                         ; =0x0
	mov	x22, #0                         ; =0x0
LBB10_2:                                ; =>This Inner Loop Header: Depth=1
	mov	x0, x24
	bl	__Z15isValidNoinlineRKN3llp5OrderE
	ldr	x8, [x24, #16]
	ldr	x9, [x24]
	ldr	w10, [x24, #24]
	cmp	w0, #0
	csel	x8, x8, xzr, ne
	add	x22, x8, x22
	csel	x8, x9, x10, ne
	add	x23, x8, x23
	add	x24, x24, #32
	cmp	x24, x25
	b.ne	LBB10_2
	b	LBB10_4
LBB10_3:
	mov	x22, #0                         ; =0x0
	mov	x23, #0                         ; =0x0
LBB10_4:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	mov	x4, x23
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	mov	x0, x22
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11printModulov               ; -- Begin function _Z11printModulov
	.p2align	2
__Z11printModulov:                      ; @_Z11printModulov
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w20, #10                        ; =0xa
	strb	w20, [sp, #13]
Lloh18:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh19:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #13
	mov	x0, x19
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh20:
	adrp	x1, l_.str.3@PAGE
Lloh21:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x0, x19
	mov	w2, #58                         ; =0x3a
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	strb	w20, [sp, #14]
	add	x1, sp, #14
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	strb	w20, [sp, #15]
	add	x1, sp, #15
	mov	x0, x19
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh18, Lloh19
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #144
	stp	d11, d10, [sp, #64]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #80]               ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	.cfi_offset b10, -72
	.cfi_offset b11, -80
	mov	w19, #18432                     ; =0x4800
	movk	w19, #488, lsl #16
	mov	w0, #18432                      ; =0x4800
	movk	w0, #488, lsl #16
	bl	__Znwm
	add	x8, x0, x19
	stp	x0, x0, [sp, #32]
	str	x8, [sp, #48]
	stp	xzr, xzr, [sp, #8]
	str	xzr, [sp, #24]
Ltmp24:
	mov	w0, #18432                      ; =0x4800
	movk	w0, #488, lsl #16
	bl	__Znwm
Ltmp25:
; %bb.1:
	mov	w8, #18432                      ; =0x4800
	movk	w8, #488, lsl #16
	add	x8, x0, x8
	stp	x0, x0, [sp, #8]
	str	x8, [sp, #24]
Ltmp26:
	add	x0, sp, #32
	mov	w1, #99                         ; =0x63
	mov	w2, #42                         ; =0x2a
	bl	__Z15generate_ordersRNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEEmy
Ltmp27:
; %bb.2:
Ltmp28:
	add	x0, sp, #8
	mov	w1, #50                         ; =0x32
	mov	w2, #42                         ; =0x2a
	bl	__Z15generate_ordersRNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEEmy
Ltmp29:
; %bb.3:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x8, x9, [sp, #32]
	cmp	x8, x9
	b.eq	LBB12_9
; %bb.4:
	mov	x20, #0                         ; =0x0
	b	LBB12_7
LBB12_5:                                ;   in Loop: Header=BB12_7 Depth=1
	ldr	w10, [x8, #24]
LBB12_6:                                ;   in Loop: Header=BB12_7 Depth=1
	add	x20, x10, x20
	add	x8, x8, #32
	cmp	x8, x9
	b.eq	LBB12_10
LBB12_7:                                ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8]
	cbz	x10, LBB12_5
; %bb.8:                                ;   in Loop: Header=BB12_7 Depth=1
	ldr	x11, [x8, #16]
	cbnz	x11, LBB12_6
	b	LBB12_5
LBB12_9:
	mov	x20, #0                         ; =0x0
LBB12_10:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp30:
Lloh22:
	adrp	x0, l_.str.4@PAGE
Lloh23:
	add	x0, x0, l_.str.4@PAGEOFF
	mov	w1, #21                         ; =0x15
	mov	x2, x19
	mov	x4, x20
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp31:
; %bb.11:
	mov	w8, #10                         ; =0xa
	strb	w8, [sp, #63]
Ltmp32:
Lloh24:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh25:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp33:
; %bb.12:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x11, x8, [sp, #32]
	cmp	x11, x8
	b.eq	LBB12_15
; %bb.13:
	sub	x9, x8, x11
	sub	x9, x9, #32
	cmp	x9, #256
	b.hs	LBB12_16
; %bb.14:
	mov	x20, #0                         ; =0x0
	mov	x9, x11
	b	LBB12_19
LBB12_15:
	mov	x20, #0                         ; =0x0
	b	LBB12_20
LBB12_16:
	lsr	x9, x9, #5
	add	x9, x9, #1
	ands	x10, x9, #0x7
	mov	w12, #8                         ; =0x8
	csel	x10, x12, x10, eq
	sub	x10, x9, x10
	add	x9, x11, x10, lsl #5
	add	x11, x11, #128
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB12_17:                               ; =>This Inner Loop Header: Depth=1
	sub	x12, x11, #128
	sub	x13, x11, #64
	ld4.2d	{ v4, v5, v6, v7 }, [x12]
	ld4.2d	{ v16, v17, v18, v19 }, [x13]
	mov	x12, x11
	ld4.2d	{ v20, v21, v22, v23 }, [x12], #64
	ld4.2d	{ v24, v25, v26, v27 }, [x12]
	cmtst.2d	v28, v4, v4
	cmtst.2d	v29, v16, v16
	cmtst.2d	v30, v20, v20
	cmtst.2d	v31, v24, v24
	cmeq.2d	v8, v6, #0
	cmeq.2d	v9, v18, #0
	cmeq.2d	v10, v22, #0
	cmeq.2d	v11, v26, #0
	bic.16b	v28, v28, v8
	bic.16b	v29, v29, v9
	bic.16b	v30, v30, v10
	bic.16b	v31, v31, v11
	sub	x12, x11, #72
	sub	x13, x11, #8
	add	x14, x11, #56
	ldur	s8, [x11, #-104]
	ld1.s	{ v8 }[1], [x12]
	ldur	s9, [x11, #-40]
	ld1.s	{ v9 }[1], [x13]
	ldr	s10, [x11, #24]
	ld1.s	{ v10 }[1], [x14]
	add	x12, x11, #120
	ldr	s11, [x11, #88]
	ld1.s	{ v11 }[1], [x12]
	ushll.2d	v8, v8, #0
	ushll.2d	v9, v9, #0
	ushll.2d	v10, v10, #0
	ushll.2d	v11, v11, #0
	bif.16b	v4, v8, v28
	mov.16b	v5, v29
	bsl.16b	v5, v16, v9
	mov.16b	v6, v30
	bsl.16b	v6, v20, v10
	mov.16b	v7, v31
	bsl.16b	v7, v24, v11
	add.2d	v0, v4, v0
	add.2d	v1, v5, v1
	add.2d	v2, v6, v2
	add.2d	v3, v7, v3
	add	x11, x11, #256
	subs	x10, x10, #8
	b.ne	LBB12_17
; %bb.18:
	add.2d	v0, v1, v0
	add.2d	v0, v2, v0
	add.2d	v0, v3, v0
	addp.2d	d0, v0
	fmov	x20, d0
LBB12_19:                               ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x9]
	ldr	x11, [x9, #16]
	cmp	x11, #0
	ccmp	x10, #0, #4, ne
	ldr	w11, [x9, #24]
	csel	x10, x10, x11, ne
	add	x20, x10, x20
	add	x9, x9, #32
	cmp	x9, x8
	b.ne	LBB12_19
LBB12_20:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp34:
Lloh26:
	adrp	x0, l_.str.5@PAGE
Lloh27:
	add	x0, x0, l_.str.5@PAGEOFF
	mov	w1, #23                         ; =0x17
	mov	x2, x19
	mov	x4, x20
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp35:
; %bb.21:
	mov	w8, #10                         ; =0xa
	strb	w8, [sp, #63]
Ltmp36:
Lloh28:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh29:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp37:
; %bb.22:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x11, x8, [sp, #32]
	cmp	x11, x8
	b.eq	LBB12_25
; %bb.23:
	sub	x9, x8, x11
	sub	x9, x9, #32
	cmp	x9, #256
	b.hs	LBB12_26
; %bb.24:
	mov	x20, #0                         ; =0x0
	mov	x9, x11
	b	LBB12_29
LBB12_25:
	mov	x20, #0                         ; =0x0
	b	LBB12_30
LBB12_26:
	lsr	x9, x9, #5
	add	x9, x9, #1
	ands	x10, x9, #0x7
	mov	w12, #8                         ; =0x8
	csel	x10, x12, x10, eq
	sub	x10, x9, x10
	add	x9, x11, x10, lsl #5
	add	x11, x11, #128
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB12_27:                               ; =>This Inner Loop Header: Depth=1
	sub	x12, x11, #128
	sub	x13, x11, #64
	ld4.2d	{ v4, v5, v6, v7 }, [x12]
	ld4.2d	{ v16, v17, v18, v19 }, [x13]
	mov	x12, x11
	ld4.2d	{ v20, v21, v22, v23 }, [x12], #64
	ld4.2d	{ v24, v25, v26, v27 }, [x12]
	cmtst.2d	v28, v4, v4
	cmtst.2d	v29, v16, v16
	cmtst.2d	v30, v20, v20
	cmtst.2d	v31, v24, v24
	cmeq.2d	v8, v6, #0
	cmeq.2d	v9, v18, #0
	cmeq.2d	v10, v22, #0
	cmeq.2d	v11, v26, #0
	bic.16b	v28, v28, v8
	bic.16b	v29, v29, v9
	bic.16b	v30, v30, v10
	bic.16b	v31, v31, v11
	sub	x12, x11, #72
	sub	x13, x11, #8
	add	x14, x11, #56
	ldur	s8, [x11, #-104]
	ld1.s	{ v8 }[1], [x12]
	ldur	s9, [x11, #-40]
	ld1.s	{ v9 }[1], [x13]
	ldr	s10, [x11, #24]
	ld1.s	{ v10 }[1], [x14]
	add	x12, x11, #120
	ldr	s11, [x11, #88]
	ld1.s	{ v11 }[1], [x12]
	ushll.2d	v8, v8, #0
	ushll.2d	v9, v9, #0
	ushll.2d	v10, v10, #0
	ushll.2d	v11, v11, #0
	bif.16b	v4, v8, v28
	mov.16b	v5, v29
	bsl.16b	v5, v16, v9
	mov.16b	v6, v30
	bsl.16b	v6, v20, v10
	mov.16b	v7, v31
	bsl.16b	v7, v24, v11
	add.2d	v0, v4, v0
	add.2d	v1, v5, v1
	add.2d	v2, v6, v2
	add.2d	v3, v7, v3
	add	x11, x11, #256
	subs	x10, x10, #8
	b.ne	LBB12_27
; %bb.28:
	add.2d	v0, v1, v0
	add.2d	v0, v2, v0
	add.2d	v0, v3, v0
	addp.2d	d0, v0
	fmov	x20, d0
LBB12_29:                               ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x9]
	ldr	x11, [x9, #16]
	cmp	x11, #0
	ccmp	x10, #0, #4, ne
	ldr	w11, [x9, #24]
	csel	x10, x10, x11, ne
	add	x20, x10, x20
	add	x9, x9, #32
	cmp	x9, x8
	b.ne	LBB12_29
LBB12_30:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp38:
Lloh30:
	adrp	x0, l_.str.6@PAGE
Lloh31:
	add	x0, x0, l_.str.6@PAGEOFF
	mov	w1, #32                         ; =0x20
	mov	x2, x19
	mov	x4, x20
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp39:
; %bb.31:
	mov	w8, #10                         ; =0xa
	strb	w8, [sp, #63]
Ltmp40:
Lloh32:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh33:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp41:
; %bb.32:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x21, x22, [sp, #32]
	cmp	x21, x22
	b.eq	LBB12_35
; %bb.33:
	mov	x20, #0                         ; =0x0
LBB12_34:                               ; =>This Inner Loop Header: Depth=1
	mov	x0, x21
	bl	__Z15isValidNoinlineRKN3llp5OrderE
	ldr	x8, [x21]
	ldr	w9, [x21, #24]
	cmp	w0, #0
	csel	x8, x8, x9, ne
	add	x20, x8, x20
	add	x21, x21, #32
	cmp	x21, x22
	b.ne	LBB12_34
	b	LBB12_36
LBB12_35:
	mov	x20, #0                         ; =0x0
LBB12_36:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp42:
Lloh34:
	adrp	x0, l_.str.7@PAGE
Lloh35:
	add	x0, x0, l_.str.7@PAGEOFF
	mov	w1, #27                         ; =0x1b
	mov	x2, x19
	mov	x4, x20
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp43:
; %bb.37:
	mov	w19, #10                        ; =0xa
	strb	w19, [sp, #63]
Ltmp44:
Lloh36:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh37:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp45:
; %bb.38:
	strb	w19, [sp, #63]
Ltmp46:
Lloh38:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh39:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp47:
; %bb.39:
Ltmp48:
Lloh40:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh41:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh42:
	adrp	x1, l_.str.3@PAGE
Lloh43:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #58                         ; =0x3a
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp49:
; %bb.40:
	strb	w19, [sp, #63]
Ltmp50:
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp51:
; %bb.41:
	strb	w19, [sp, #63]
Ltmp52:
Lloh44:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh45:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp53:
; %bb.42:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x8, x9, [sp, #8]
	cmp	x8, x9
	b.eq	LBB12_48
; %bb.43:
	mov	x20, #0                         ; =0x0
	b	LBB12_46
LBB12_44:                               ;   in Loop: Header=BB12_46 Depth=1
	ldr	w10, [x8, #24]
LBB12_45:                               ;   in Loop: Header=BB12_46 Depth=1
	add	x20, x10, x20
	add	x8, x8, #32
	cmp	x8, x9
	b.eq	LBB12_49
LBB12_46:                               ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8]
	cbz	x10, LBB12_44
; %bb.47:                               ;   in Loop: Header=BB12_46 Depth=1
	ldr	x11, [x8, #16]
	cbnz	x11, LBB12_45
	b	LBB12_44
LBB12_48:
	mov	x20, #0                         ; =0x0
LBB12_49:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp54:
Lloh46:
	adrp	x0, l_.str.8@PAGE
Lloh47:
	add	x0, x0, l_.str.8@PAGEOFF
	mov	w1, #21                         ; =0x15
	mov	x2, x19
	mov	x4, x20
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp55:
; %bb.50:
	mov	w8, #10                         ; =0xa
	strb	w8, [sp, #63]
Ltmp56:
Lloh48:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh49:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp57:
; %bb.51:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x11, x8, [sp, #8]
	cmp	x11, x8
	b.eq	LBB12_54
; %bb.52:
	sub	x9, x8, x11
	sub	x9, x9, #32
	cmp	x9, #256
	b.hs	LBB12_55
; %bb.53:
	mov	x20, #0                         ; =0x0
	mov	x9, x11
	b	LBB12_58
LBB12_54:
	mov	x20, #0                         ; =0x0
	b	LBB12_59
LBB12_55:
	lsr	x9, x9, #5
	add	x9, x9, #1
	ands	x10, x9, #0x7
	mov	w12, #8                         ; =0x8
	csel	x10, x12, x10, eq
	sub	x10, x9, x10
	add	x9, x11, x10, lsl #5
	add	x11, x11, #128
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB12_56:                               ; =>This Inner Loop Header: Depth=1
	sub	x12, x11, #128
	sub	x13, x11, #64
	ld4.2d	{ v4, v5, v6, v7 }, [x12]
	ld4.2d	{ v16, v17, v18, v19 }, [x13]
	mov	x12, x11
	ld4.2d	{ v20, v21, v22, v23 }, [x12], #64
	ld4.2d	{ v24, v25, v26, v27 }, [x12]
	cmtst.2d	v28, v4, v4
	cmtst.2d	v29, v16, v16
	cmtst.2d	v30, v20, v20
	cmtst.2d	v31, v24, v24
	cmeq.2d	v8, v6, #0
	cmeq.2d	v9, v18, #0
	cmeq.2d	v10, v22, #0
	cmeq.2d	v11, v26, #0
	bic.16b	v28, v28, v8
	bic.16b	v29, v29, v9
	bic.16b	v30, v30, v10
	bic.16b	v31, v31, v11
	sub	x12, x11, #72
	sub	x13, x11, #8
	add	x14, x11, #56
	ldur	s8, [x11, #-104]
	ld1.s	{ v8 }[1], [x12]
	ldur	s9, [x11, #-40]
	ld1.s	{ v9 }[1], [x13]
	ldr	s10, [x11, #24]
	ld1.s	{ v10 }[1], [x14]
	add	x12, x11, #120
	ldr	s11, [x11, #88]
	ld1.s	{ v11 }[1], [x12]
	ushll.2d	v8, v8, #0
	ushll.2d	v9, v9, #0
	ushll.2d	v10, v10, #0
	ushll.2d	v11, v11, #0
	bif.16b	v4, v8, v28
	mov.16b	v5, v29
	bsl.16b	v5, v16, v9
	mov.16b	v6, v30
	bsl.16b	v6, v20, v10
	mov.16b	v7, v31
	bsl.16b	v7, v24, v11
	add.2d	v0, v4, v0
	add.2d	v1, v5, v1
	add.2d	v2, v6, v2
	add.2d	v3, v7, v3
	add	x11, x11, #256
	subs	x10, x10, #8
	b.ne	LBB12_56
; %bb.57:
	add.2d	v0, v1, v0
	add.2d	v0, v2, v0
	add.2d	v0, v3, v0
	addp.2d	d0, v0
	fmov	x20, d0
LBB12_58:                               ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x9]
	ldr	x11, [x9, #16]
	cmp	x11, #0
	ccmp	x10, #0, #4, ne
	ldr	w11, [x9, #24]
	csel	x10, x10, x11, ne
	add	x20, x10, x20
	add	x9, x9, #32
	cmp	x9, x8
	b.ne	LBB12_58
LBB12_59:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp58:
Lloh50:
	adrp	x0, l_.str.9@PAGE
Lloh51:
	add	x0, x0, l_.str.9@PAGEOFF
	mov	w1, #23                         ; =0x17
	mov	x2, x19
	mov	x4, x20
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp59:
; %bb.60:
	mov	w8, #10                         ; =0xa
	strb	w8, [sp, #63]
Ltmp60:
Lloh52:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh53:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp61:
; %bb.61:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x11, x8, [sp, #8]
	cmp	x11, x8
	b.eq	LBB12_64
; %bb.62:
	sub	x9, x8, x11
	sub	x9, x9, #32
	cmp	x9, #256
	b.hs	LBB12_65
; %bb.63:
	mov	x20, #0                         ; =0x0
	mov	x9, x11
	b	LBB12_68
LBB12_64:
	mov	x20, #0                         ; =0x0
	b	LBB12_69
LBB12_65:
	lsr	x9, x9, #5
	add	x9, x9, #1
	ands	x10, x9, #0x7
	mov	w12, #8                         ; =0x8
	csel	x10, x12, x10, eq
	sub	x10, x9, x10
	add	x9, x11, x10, lsl #5
	add	x11, x11, #128
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB12_66:                               ; =>This Inner Loop Header: Depth=1
	sub	x12, x11, #128
	sub	x13, x11, #64
	ld4.2d	{ v4, v5, v6, v7 }, [x12]
	ld4.2d	{ v16, v17, v18, v19 }, [x13]
	mov	x12, x11
	ld4.2d	{ v20, v21, v22, v23 }, [x12], #64
	ld4.2d	{ v24, v25, v26, v27 }, [x12]
	cmtst.2d	v28, v4, v4
	cmtst.2d	v29, v16, v16
	cmtst.2d	v30, v20, v20
	cmtst.2d	v31, v24, v24
	cmeq.2d	v8, v6, #0
	cmeq.2d	v9, v18, #0
	cmeq.2d	v10, v22, #0
	cmeq.2d	v11, v26, #0
	bic.16b	v28, v28, v8
	bic.16b	v29, v29, v9
	bic.16b	v30, v30, v10
	bic.16b	v31, v31, v11
	sub	x12, x11, #72
	sub	x13, x11, #8
	add	x14, x11, #56
	ldur	s8, [x11, #-104]
	ld1.s	{ v8 }[1], [x12]
	ldur	s9, [x11, #-40]
	ld1.s	{ v9 }[1], [x13]
	ldr	s10, [x11, #24]
	ld1.s	{ v10 }[1], [x14]
	add	x12, x11, #120
	ldr	s11, [x11, #88]
	ld1.s	{ v11 }[1], [x12]
	ushll.2d	v8, v8, #0
	ushll.2d	v9, v9, #0
	ushll.2d	v10, v10, #0
	ushll.2d	v11, v11, #0
	bif.16b	v4, v8, v28
	mov.16b	v5, v29
	bsl.16b	v5, v16, v9
	mov.16b	v6, v30
	bsl.16b	v6, v20, v10
	mov.16b	v7, v31
	bsl.16b	v7, v24, v11
	add.2d	v0, v4, v0
	add.2d	v1, v5, v1
	add.2d	v2, v6, v2
	add.2d	v3, v7, v3
	add	x11, x11, #256
	subs	x10, x10, #8
	b.ne	LBB12_66
; %bb.67:
	add.2d	v0, v1, v0
	add.2d	v0, v2, v0
	add.2d	v0, v3, v0
	addp.2d	d0, v0
	fmov	x20, d0
LBB12_68:                               ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x9]
	ldr	x11, [x9, #16]
	cmp	x11, #0
	ccmp	x10, #0, #4, ne
	ldr	w11, [x9, #24]
	csel	x10, x10, x11, ne
	add	x20, x10, x20
	add	x9, x9, #32
	cmp	x9, x8
	b.ne	LBB12_68
LBB12_69:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp62:
Lloh54:
	adrp	x0, l_.str.10@PAGE
Lloh55:
	add	x0, x0, l_.str.10@PAGEOFF
	mov	w1, #32                         ; =0x20
	mov	x2, x19
	mov	x4, x20
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp63:
; %bb.70:
	mov	w8, #10                         ; =0xa
	strb	w8, [sp, #63]
Ltmp64:
Lloh56:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh57:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp65:
; %bb.71:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x21, x22, [sp, #8]
	cmp	x21, x22
	b.eq	LBB12_74
; %bb.72:
	mov	x20, #0                         ; =0x0
LBB12_73:                               ; =>This Inner Loop Header: Depth=1
	mov	x0, x21
	bl	__Z15isValidNoinlineRKN3llp5OrderE
	ldr	x8, [x21]
	ldr	w9, [x21, #24]
	cmp	w0, #0
	csel	x8, x8, x9, ne
	add	x20, x8, x20
	add	x21, x21, #32
	cmp	x21, x22
	b.ne	LBB12_73
	b	LBB12_75
LBB12_74:
	mov	x20, #0                         ; =0x0
LBB12_75:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp66:
Lloh58:
	adrp	x0, l_.str.11@PAGE
Lloh59:
	add	x0, x0, l_.str.11@PAGEOFF
	mov	w1, #27                         ; =0x1b
	mov	x2, x19
	mov	x4, x20
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp67:
; %bb.76:
	mov	w8, #10                         ; =0xa
	strb	w8, [sp, #63]
Ltmp68:
Lloh60:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh61:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #63
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp69:
; %bb.77:
	ldr	x0, [sp, #8]
	cbz	x0, LBB12_79
; %bb.78:
	str	x0, [sp, #16]
	bl	__ZdlPv
LBB12_79:
	ldr	x0, [sp, #32]
	cbz	x0, LBB12_81
; %bb.80:
	str	x0, [sp, #40]
	bl	__ZdlPv
LBB12_81:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #80]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB12_82:
Ltmp70:
	mov	x19, x0
	ldr	x0, [sp, #8]
	cbnz	x0, LBB12_85
; %bb.83:
	ldr	x0, [sp, #32]
	cbnz	x0, LBB12_86
LBB12_84:
	mov	x0, x19
	bl	__Unwind_Resume
LBB12_85:
	str	x0, [sp, #16]
	bl	__ZdlPv
	ldr	x0, [sp, #32]
	cbz	x0, LBB12_84
LBB12_86:
	str	x0, [sp, #40]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpLdrGot	Lloh24, Lloh25
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh28, Lloh29
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpLdrGot	Lloh32, Lloh33
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpLdrGot	Lloh38, Lloh39
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpLdrGot	Lloh40, Lloh41
	.loh AdrpLdrGot	Lloh44, Lloh45
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpLdrGot	Lloh48, Lloh49
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpLdrGot	Lloh52, Lloh53
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpLdrGot	Lloh56, Lloh57
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpLdrGot	Lloh60, Lloh61
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table12:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp24-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp24
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp69-Ltmp24                  ;   Call between Ltmp24 and Ltmp69
	.uleb128 Ltmp70-Lfunc_begin1            ;     jumps to Ltmp70
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp69-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp69              ;   Call between Ltmp69 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh62:
	adrp	x0, l_.str.12@PAGE
Lloh63:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh62, Lloh63
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB9nqe210106EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.globl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB9nqe210106EPKc: ; @_ZNSt3__120__throw_length_errorB9nqe210106EPKc
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp71:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B9nqe210106EPKc
Ltmp72:
; %bb.1:
Lloh64:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh65:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh66:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh67:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB15_2:
Ltmp73:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh66, Lloh67
	.loh AdrpLdrGot	Lloh64, Lloh65
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table15:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp71-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp71
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp71-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp72-Ltmp71                  ;   Call between Ltmp71 and Ltmp72
	.uleb128 Ltmp73-Lfunc_begin2            ;     jumps to Ltmp73
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp72              ;   Call between Ltmp72 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B9nqe210106EPKc ; -- Begin function _ZNSt12length_errorC1B9nqe210106EPKc
	.globl	__ZNSt12length_errorC1B9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B9nqe210106EPKc
	.p2align	2
__ZNSt12length_errorC1B9nqe210106EPKc:  ; @_ZNSt12length_errorC1B9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh68:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh69:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh68, Lloh69
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB9nqe210106v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.globl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB9nqe210106v: ; @_ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	bl	__ZNSt20bad_array_new_lengthC1Ev
Lloh70:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh71:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh72:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh73:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh72, Lloh73
	.loh AdrpLdrGot	Lloh70, Lloh71
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp74:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp75:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB18_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB18_7
; %bb.3:
Ltmp77:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp78:
; %bb.4:
Ltmp79:
Lloh74:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh75:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp80:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp81:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp82:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB18_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp84:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp85:
; %bb.8:
	cbnz	x0, LBB18_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp87:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp88:
LBB18_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB18_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB18_12:
Ltmp89:
	b	LBB18_15
LBB18_13:
Ltmp83:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB18_16
LBB18_14:
Ltmp86:
LBB18_15:
	mov	x20, x0
LBB18_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB18_18
LBB18_17:
Ltmp76:
	mov	x20, x0
LBB18_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp90:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp91:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB18_11
LBB18_20:
Ltmp92:
	mov	x19, x0
Ltmp93:
	bl	___cxa_end_catch
Ltmp94:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB18_22:
Ltmp95:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh74, Lloh75
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table18:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp74-Lfunc_begin3            ; >> Call Site 1 <<
	.uleb128 Ltmp75-Ltmp74                  ;   Call between Ltmp74 and Ltmp75
	.uleb128 Ltmp76-Lfunc_begin3            ;     jumps to Ltmp76
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp77-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp78-Ltmp77                  ;   Call between Ltmp77 and Ltmp78
	.uleb128 Ltmp86-Lfunc_begin3            ;     jumps to Ltmp86
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp79-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Ltmp82-Ltmp79                  ;   Call between Ltmp79 and Ltmp82
	.uleb128 Ltmp83-Lfunc_begin3            ;     jumps to Ltmp83
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp84-Lfunc_begin3            ; >> Call Site 4 <<
	.uleb128 Ltmp85-Ltmp84                  ;   Call between Ltmp84 and Ltmp85
	.uleb128 Ltmp86-Lfunc_begin3            ;     jumps to Ltmp86
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp87-Lfunc_begin3            ; >> Call Site 5 <<
	.uleb128 Ltmp88-Ltmp87                  ;   Call between Ltmp87 and Ltmp88
	.uleb128 Ltmp89-Lfunc_begin3            ;     jumps to Ltmp89
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp88-Lfunc_begin3            ; >> Call Site 6 <<
	.uleb128 Ltmp90-Ltmp88                  ;   Call between Ltmp88 and Ltmp90
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp90-Lfunc_begin3            ; >> Call Site 7 <<
	.uleb128 Ltmp91-Ltmp90                  ;   Call between Ltmp90 and Ltmp91
	.uleb128 Ltmp92-Lfunc_begin3            ;     jumps to Ltmp92
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp91-Lfunc_begin3            ; >> Call Site 8 <<
	.uleb128 Ltmp93-Ltmp91                  ;   Call between Ltmp91 and Ltmp93
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp93-Lfunc_begin3            ; >> Call Site 9 <<
	.uleb128 Ltmp94-Ltmp93                  ;   Call between Ltmp93 and Ltmp94
	.uleb128 Ltmp95-Lfunc_begin3            ;     jumps to Ltmp95
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp94-Lfunc_begin3            ; >> Call Site 10 <<
	.uleb128 Lfunc_end3-Ltmp94              ;   Call between Ltmp94 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB19_16
; %bb.1:
	mov	x23, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	mov	x24, x1
	ldr	x26, [x4, #24]
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB19_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x24
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB19_15
LBB19_3:
	sub	x8, x22, x24
	cmp	x26, x8
	b.le	LBB19_12
; %bb.4:
	mov	x9, #-9                         ; =0xfffffffffffffff7
	movk	x9, #32767, lsl #48
	sub	x24, x26, x8
	cmp	x24, x9
	b.hs	LBB19_17
; %bb.5:
	cmp	x24, #23
	b.hs	LBB19_7
; %bb.6:
	strb	w24, [sp, #31]
	add	x25, sp, #8
	b	LBB19_8
LBB19_7:
	orr	x8, x24, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x26, x9, x8, eq
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x24, x8, [sp, #16]
	str	x0, [sp, #8]
LBB19_8:
	mov	x0, x25
	mov	x1, x23
	mov	x2, x24
	bl	_memset
	strb	wzr, [x25, x24]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp96:
	mov	x0, x19
	mov	x2, x24
	blr	x8
Ltmp97:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB19_11
; %bb.10:
	cmp	x0, x24
	b.ne	LBB19_15
	b	LBB19_12
LBB19_11:
	ldr	x8, [sp, #8]
	mov	x23, x0
	mov	x0, x8
	bl	__ZdlPv
	mov	x0, x23
	cmp	x0, x24
	b.ne	LBB19_15
LBB19_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB19_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB19_15
LBB19_14:
	str	xzr, [x20, #24]
	b	LBB19_16
LBB19_15:
	mov	x19, #0                         ; =0x0
LBB19_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB19_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
LBB19_18:
Ltmp98:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB19_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB19_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table19:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp96-Lfunc_begin4            ;   Call between Lfunc_begin4 and Ltmp96
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp96-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp97-Ltmp96                  ;   Call between Ltmp96 and Ltmp97
	.uleb128 Ltmp98-Lfunc_begin4            ;     jumps to Ltmp98
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp97-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp97              ;   Call between Ltmp97 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh76:
	adrp	x0, l_.str.13@PAGE
Lloh77:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh76, Lloh77
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev ; -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	.globl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev: ; @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x0
Lloh78:
	adrp	x24, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh79:
	ldr	x24, [x24, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x23, x24, #64
	mov	x19, x0
	str	x23, [x19, #112]!
	str	xzr, [x0, #160]
Lloh80:
	adrp	x22, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh81:
	ldr	x22, [x22, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x22, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x21, x0, x8
Ltmp99:
	add	x1, x0, #8
	mov	x0, x21
	bl	__ZNSt3__18ios_base4initEPv
Ltmp100:
; %bb.1:
	str	xzr, [x21, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x21, #144]
	add	x8, x24, #24
	str	x23, [x20, #112]
Lloh82:
	adrp	x23, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh83:
	ldr	x23, [x23, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x9, x23, #16
	stp	x8, x9, [x20]
	add	x0, x20, #16
	bl	__ZNSt3__16localeC1Ev
	movi.2d	v0, #0000000000000000
	mov	x24, x20
	str	q0, [x24, #72]!
	stur	q0, [x24, #-16]
Lloh84:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh85:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	stp	q0, q0, [x24, #-48]
	add	x8, x8, #16
	str	x8, [x20, #8]
	str	q0, [x24, #16]
	mov	w8, #16                         ; =0x10
	str	w8, [x24, #32]
Ltmp102:
	add	x0, x20, #8
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
Ltmp103:
; %bb.2:
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB21_3:
Ltmp104:
	mov	x21, x0
	ldrsb	w8, [x20, #95]
	tbz	w8, #31, LBB21_5
; %bb.4:
	ldr	x0, [x24]
	bl	__ZdlPv
LBB21_5:
	add	x8, x23, #16
	str	x8, [x20, #8]
	add	x0, x20, #16
	bl	__ZNSt3__16localeD1Ev
	add	x1, x22, #8
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB21_7
LBB21_6:
Ltmp101:
	mov	x21, x0
LBB21_7:
	mov	x0, x19
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh80, Lloh81
	.loh AdrpLdrGot	Lloh78, Lloh79
	.loh AdrpLdrGot	Lloh84, Lloh85
	.loh AdrpLdrGot	Lloh82, Lloh83
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table21:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp99-Lfunc_begin5            ; >> Call Site 1 <<
	.uleb128 Ltmp100-Ltmp99                 ;   Call between Ltmp99 and Ltmp100
	.uleb128 Ltmp101-Lfunc_begin5           ;     jumps to Ltmp101
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp102-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp103-Ltmp102                ;   Call between Ltmp102 and Ltmp103
	.uleb128 Ltmp104-Lfunc_begin5           ;     jumps to Ltmp104
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp103-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp103             ;   Call between Ltmp103 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ; -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	2
__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ; @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Lloh86:
	adrp	x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh87:
	ldr	x20, [x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [x0]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
Lloh88:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh89:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0, #8]
	ldrsb	w8, [x0, #95]
	tbz	w8, #31, LBB22_2
; %bb.1:
	ldr	x0, [x19, #72]
	bl	__ZdlPv
LBB22_2:
Lloh90:
	adrp	x8, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh91:
	ldr	x8, [x8, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x19, #8]
	add	x0, x19, #16
	bl	__ZNSt3__16localeD1Ev
	add	x1, x20, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #112
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh88, Lloh89
	.loh AdrpLdrGot	Lloh86, Lloh87
	.loh AdrpLdrGot	Lloh90, Lloh91
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev ; -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
	.p2align	2
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev: ; @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	str	xzr, [x0, #88]
	add	x8, x0, #64
	ldrsb	x9, [x0, #87]
	tbnz	x9, #63, LBB23_7
; %bb.1:
	mov	x19, x8
	mov	x20, x9
	ldr	w10, [x0, #96]
	tbz	w10, #3, LBB23_3
LBB23_2:
	add	x11, x19, x20
	str	x11, [x0, #88]
	stp	x19, x19, [x0, #16]
	str	x11, [x0, #32]
LBB23_3:
	tbz	w10, #4, LBB23_18
; %bb.4:
	add	x10, x19, x20
	str	x10, [x0, #88]
	tbnz	w9, #31, LBB23_8
; %bb.5:
	mov	w10, #22                        ; =0x16
	cmp	w9, #21
	b.ls	LBB23_9
; %bb.6:
	strb	w10, [x0, #87]
	b	LBB23_11
LBB23_7:
	ldp	x19, x20, [x0, #64]
	ldr	w10, [x0, #96]
	tbnz	w10, #3, LBB23_2
	b	LBB23_3
LBB23_8:
	ldp	x9, x10, [x0, #72]
	and	x10, x10, #0x7fffffffffffffff
	sub	x10, x10, #1
	cmp	x10, x9
	b.ls	LBB23_10
LBB23_9:
	mov	x21, x0
	sub	x1, x10, x9
	mov	x0, x8
	mov	w2, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc
	mov	x0, x21
	ldrsb	x8, [x0, #87]
	tbz	x8, #63, LBB23_13
	b	LBB23_12
LBB23_10:
	ldr	x8, [x0, #64]
	str	x10, [x0, #72]
LBB23_11:
	strb	wzr, [x8, x10]
	ldrsb	x8, [x0, #87]
	tbz	x8, #63, LBB23_13
LBB23_12:
	ldr	x8, [x0, #72]
LBB23_13:
	add	x8, x19, x8
	stp	x19, x19, [x0, #40]
	str	x8, [x0, #56]
	ldrb	w8, [x0, #96]
	tst	w8, #0x3
	b.eq	LBB23_18
; %bb.14:
	lsr	x8, x20, #31
	cbz	x8, LBB23_16
; %bb.15:
	mov	x8, #-2147483648                ; =0xffffffff80000000
	add	x8, x20, x8
	mov	x9, #5                          ; =0x5
	movk	x9, #2, lsl #32
	umulh	x9, x8, x9
	sub	x8, x8, x9
	add	x8, x9, x8, lsr #1
	lsr	x8, x8, #30
	lsl	x9, x8, #31
	mov	w10, #2147483647                ; =0x7fffffff
	sub	x8, x9, x8
	sub	x9, x20, x8
	add	x10, x19, x10
	add	x19, x10, x8
	mov	x8, #-2147483647                ; =0xffffffff80000001
	add	x20, x9, x8
	str	x19, [x0, #48]
LBB23_16:
	cbz	x20, LBB23_18
; %bb.17:
	add	x8, x19, x20
	str	x8, [x0, #48]
LBB23_18:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE ; -- Begin function _ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	.globl	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	.p2align	2
__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE: ; @_ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	.cfi_startproc
; %bb.0:
	ldp	x12, x0, [x2]
	subs	x13, x0, x12
	b.eq	LBB24_5
; %bb.1:
	mov	x8, #262645840084992            ; =0xeee000000000
	movk	x8, #65527, lsl #48
	mov	x11, #6633                      ; =0x19e9
	movk	x11, #43366, lsl #16
	movk	x11, #28506, lsl #32
	movk	x11, #46338, lsl #48
	mov	x9, #3987079168                 ; =0xeda60000
	movk	x9, #32767, lsl #32
	movk	x9, #29142, lsl #48
	mov	x10, #6148914691236517205       ; =0x5555555555555555
	and	x10, x10, #0xfffffffff
	add	x13, x13, #1
	cbz	x13, LBB24_6
; %bb.2:
	clz	x14, x13
	lsl	x15, x13, x14
	tst	x15, #0x7fffffffffffffff
	mov	w15, #63                        ; =0x3f
	cinc	x15, x15, ne
	sub	x14, x15, x14
	add	x15, x14, #63
	lsr	x15, x15, #6
	cmp	x15, x14
	udiv	w14, w14, w15
	neg	x14, x14
	mov	x15, #-1                        ; =0xffffffffffffffff
	lsr	x14, x15, x14
	csel	x14, xzr, x14, hi
	ldr	x17, [x1, #2496]
	mov	x15, #3361                      ; =0xd21
	movk	x15, #8402, lsl #16
	movk	x15, #53773, lsl #32
	movk	x15, #3360, lsl #48
	mov	w16, #312                       ; =0x138
LBB24_3:                                ; =>This Inner Loop Header: Depth=1
	mov	x0, x17
	add	x17, x17, #1
	lsr	x2, x17, #3
	umulh	x2, x2, x15
	lsr	x2, x2, #1
	msub	x17, x2, x16, x17
	ldr	x2, [x1, x0, lsl #3]
	and	x2, x2, #0xffffffff80000000
	ldr	x3, [x1, x17, lsl #3]
	and	x4, x3, #0x7ffffffe
	orr	x2, x4, x2
	add	x4, x0, #156
	lsr	x5, x4, #3
	umulh	x5, x5, x15
	lsr	x5, x5, #1
	msub	x4, x5, x16, x4
	ldr	x4, [x1, x4, lsl #3]
	tst	w3, #0x1
	csel	x3, x11, xzr, ne
	eor	x3, x3, x4
	eor	x2, x3, x2, lsr #1
	str	x2, [x1, x0, lsl #3]
	and	x0, x10, x2, lsr #29
	eor	x0, x0, x2
	and	x2, x9, x0, lsl #17
	eor	x0, x2, x0
	and	x2, x8, x0, lsl #37
	eor	x0, x2, x0
	eor	x0, x0, x0, lsr #43
	and	x0, x0, x14
	cmp	x0, x13
	b.hs	LBB24_3
; %bb.4:
	str	x17, [x1, #2496]
	add	x0, x0, x12
LBB24_5:
	ret
LBB24_6:
	ldr	x12, [x1, #2496]
	add	x13, x12, #1
	lsr	x14, x13, #3
	mov	x15, #3361                      ; =0xd21
	movk	x15, #8402, lsl #16
	movk	x15, #53773, lsl #32
	movk	x15, #3360, lsl #48
	umulh	x14, x14, x15
	lsr	x14, x14, #1
	mov	w16, #312                       ; =0x138
	msub	x13, x14, x16, x13
	ldr	x14, [x1, x12, lsl #3]
	ldr	x17, [x1, x13, lsl #3]
	and	x14, x14, #0xffffffff80000000
	and	x0, x17, #0x7ffffffe
	orr	x14, x0, x14
	add	x0, x12, #156
	lsr	x2, x0, #3
	umulh	x15, x2, x15
	lsr	x15, x15, #1
	msub	x15, x15, x16, x0
	ldr	x15, [x1, x15, lsl #3]
	tst	w17, #0x1
	csel	x11, x11, xzr, ne
	eor	x11, x11, x15
	eor	x11, x11, x14, lsr #1
	str	x11, [x1, x12, lsl #3]
	and	x10, x10, x11, lsr #29
	eor	x10, x10, x11
	str	x13, [x1, #2496]
	and	x9, x9, x10, lsl #17
	eor	x9, x9, x10
	and	x8, x8, x9, lsl #37
	eor	x8, x8, x9
	eor	x0, x8, x8, lsr #43
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"checksum = "

l_.str.1:                               ; @.str.1
	.asciz	"elapsed = "

l_.str.2:                               ; @.str.2
	.asciz	"throughput_ops_sec = "

l_.str.3:                               ; @.str.3
	.asciz	"----------------------------------------------------------"

l_.str.4:                               ; @.str.4
	.asciz	"99% VALID INSIDE LOOP"

l_.str.5:                               ; @.str.5
	.asciz	"99% VALID NORMAL HELPER"

l_.str.6:                               ; @.str.6
	.asciz	"99% VALID [[gnu::always_inline]]"

l_.str.7:                               ; @.str.7
	.asciz	"99% VALID [[gnu::noinline]]"

l_.str.8:                               ; @.str.8
	.asciz	"50% VALID INSIDE LOOP"

l_.str.9:                               ; @.str.9
	.asciz	"50% VALID NORMAL HELPER"

l_.str.10:                              ; @.str.10
	.asciz	"50% VALID [[gnu::always_inline]]"

l_.str.11:                              ; @.str.11
	.asciz	"50% VALID [[gnu::noinline]]"

l_.str.12:                              ; @.str.12
	.asciz	"vector"

l_.str.13:                              ; @.str.13
	.asciz	"basic_string"

l_.str.14:                              ; @.str.14
	.asciz	"\302\265s"

.subsections_via_symbols
