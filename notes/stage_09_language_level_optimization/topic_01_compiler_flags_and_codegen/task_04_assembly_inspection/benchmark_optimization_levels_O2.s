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
	adrp	x1, l_.str.7@PAGE
Lloh9:
	add	x1, x1, l_.str.7@PAGEOFF
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
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z10sum_pricesNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE ; -- Begin function _Z10sum_pricesNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.p2align	2
__Z10sum_pricesNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE: ; @_Z10sum_pricesNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
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
	ldp	x11, x8, [x22]
	cmp	x11, x8
	b.eq	LBB2_3
; %bb.1:
	sub	x9, x8, x11
	sub	x9, x9, #32
	cmp	x9, #256
	b.hs	LBB2_4
; %bb.2:
	mov	x22, #0                         ; =0x0
	mov	x23, #0                         ; =0x0
	mov	x9, x11
	b	LBB2_7
LBB2_3:
	mov	x23, #0                         ; =0x0
	mov	x22, #0                         ; =0x0
	b	LBB2_8
LBB2_4:
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
LBB2_5:                                 ; =>This Inner Loop Header: Depth=1
	sub	x12, x11, #128
	sub	x13, x11, #64
	ld4.2d	{ v16, v17, v18, v19 }, [x12]
	ld4.2d	{ v20, v21, v22, v23 }, [x13]
	mov	x12, x11
	ld4.2d	{ v24, v25, v26, v27 }, [x12], #64
	ld4.2d	{ v28, v29, v30, v31 }, [x12]
	add.2d	v2, v18, v2
	add.2d	v3, v22, v3
	add.2d	v4, v26, v4
	add.2d	v5, v30, v5
	add.2d	v0, v16, v0
	add.2d	v1, v20, v1
	add.2d	v6, v24, v6
	add.2d	v7, v28, v7
	add	x11, x11, #256
	subs	x10, x10, #8
	b.ne	LBB2_5
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
LBB2_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x9]
	ldr	x11, [x9, #16]
	add	x23, x11, x23
	add	x22, x10, x22
	add	x9, x9, #32
	cmp	x9, x8
	b.ne	LBB2_7
LBB2_8:
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
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z17count_price_aboveNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEy ; -- Begin function _Z17count_price_aboveNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEy
	.p2align	2
__Z17count_price_aboveNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEy: ; @_Z17count_price_aboveNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEy
	.cfi_startproc
; %bb.0:
	stp	d13, d12, [sp, #-112]!          ; 16-byte Folded Spill
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	.cfi_offset b12, -104
	.cfi_offset b13, -112
	mov	x22, x3
	mov	x23, x2
	mov	x19, x1
	mov	x20, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	ldp	x11, x8, [x23]
	cmp	x11, x8
	b.eq	LBB3_3
; %bb.1:
	sub	x9, x8, x11
	sub	x9, x9, #32
	cmp	x9, #256
	b.hs	LBB3_4
; %bb.2:
	mov	x23, #0                         ; =0x0
	mov	x24, #0                         ; =0x0
	mov	x9, x11
	b	LBB3_7
LBB3_3:
	mov	x24, #0                         ; =0x0
	mov	x23, #0                         ; =0x0
	b	LBB3_8
LBB3_4:
	lsr	x9, x9, #5
	add	x9, x9, #1
	ands	x10, x9, #0x7
	mov	w12, #8                         ; =0x8
	dup.2d	v0, x22
	csel	x10, x12, x10, eq
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	sub	x10, x9, x10
	add	x9, x11, x10, lsl #5
	add	x11, x11, #128
	movi.2d	v7, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v6, #0000000000000000
LBB3_5:                                 ; =>This Inner Loop Header: Depth=1
	sub	x12, x11, #128
	sub	x13, x11, #64
	ld4.2d	{ v17, v18, v19, v20 }, [x12]
	ld4.2d	{ v21, v22, v23, v24 }, [x13]
	mov	x12, x11
	ld4.2d	{ v25, v26, v27, v28 }, [x12], #64
	ld4.2d	{ v8, v9, v10, v11 }, [x12]
	cmhi.2d	v29, v19, v0
	cmhi.2d	v30, v23, v0
	cmhi.2d	v31, v27, v0
	cmhi.2d	v12, v10, v0
	sub.2d	v3, v3, v29
	sub.2d	v4, v4, v30
	sub.2d	v5, v5, v31
	sub.2d	v6, v6, v12
	and.16b	v17, v29, v17
	and.16b	v18, v30, v21
	and.16b	v19, v31, v25
	and.16b	v20, v12, v8
	add.2d	v1, v17, v1
	add.2d	v2, v18, v2
	add.2d	v7, v19, v7
	add.2d	v16, v20, v16
	add	x11, x11, #256
	subs	x10, x10, #8
	b.ne	LBB3_5
; %bb.6:
	add.2d	v0, v2, v1
	add.2d	v0, v7, v0
	add.2d	v0, v16, v0
	addp.2d	d0, v0
	fmov	x23, d0
	add.2d	v0, v4, v3
	add.2d	v0, v5, v0
	add.2d	v0, v6, v0
	addp.2d	d0, v0
	fmov	x24, d0
LBB3_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x9, #16]
	ldr	x11, [x9], #32
	cmp	x10, x22
	csel	x10, x11, xzr, hi
	cinc	x24, x24, hi
	add	x23, x10, x23
	cmp	x9, x8
	b.ne	LBB3_7
LBB3_8:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	mov	x4, x23
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	mov	x0, x24
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #112            ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z18count_valid_ordersNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE ; -- Begin function _Z18count_valid_ordersNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.p2align	2
__Z18count_valid_ordersNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE: ; @_Z18count_valid_ordersNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.cfi_startproc
; %bb.0:
	stp	d15, d14, [sp, #-128]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
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
	.cfi_offset b12, -104
	.cfi_offset b13, -112
	.cfi_offset b14, -120
	.cfi_offset b15, -128
	mov	x22, x2
	mov	x19, x1
	mov	x20, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	ldp	x11, x8, [x22]
	cmp	x11, x8
	b.eq	LBB4_3
; %bb.1:
	sub	x9, x8, x11
	sub	x9, x9, #32
	cmp	x9, #256
	b.hs	LBB4_4
; %bb.2:
	mov	x22, #0                         ; =0x0
	mov	x23, #0                         ; =0x0
	mov	x9, x11
	b	LBB4_7
LBB4_3:
	mov	x23, #0                         ; =0x0
	mov	x22, #0                         ; =0x0
	b	LBB4_8
LBB4_4:
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
LBB4_5:                                 ; =>This Inner Loop Header: Depth=1
	sub	x12, x11, #128
	sub	x13, x11, #64
	ld4.2d	{ v16, v17, v18, v19 }, [x12]
	ld4.2d	{ v20, v21, v22, v23 }, [x13]
	mov	x12, x11
	ld4.2d	{ v24, v25, v26, v27 }, [x12], #64
	ld4.2d	{ v28, v29, v30, v31 }, [x12]
	cmtst.2d	v8, v16, v16
	cmtst.2d	v9, v20, v20
	cmtst.2d	v10, v24, v24
	cmtst.2d	v11, v28, v28
	cmeq.2d	v12, v18, #0
	cmeq.2d	v13, v22, #0
	cmeq.2d	v14, v26, #0
	cmeq.2d	v15, v30, #0
	bic.16b	v8, v8, v12
	bic.16b	v9, v9, v13
	bic.16b	v10, v10, v14
	bic.16b	v11, v11, v15
	sub.2d	v2, v2, v8
	sub.2d	v3, v3, v9
	sub.2d	v4, v4, v10
	sub.2d	v5, v5, v11
	and.16b	v16, v8, v16
	and.16b	v17, v9, v20
	and.16b	v18, v10, v24
	and.16b	v19, v11, v28
	add.2d	v0, v16, v0
	add.2d	v1, v17, v1
	add.2d	v6, v18, v6
	add.2d	v7, v19, v7
	add	x11, x11, #256
	subs	x10, x10, #8
	b.ne	LBB4_5
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
LBB4_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x9]
	ldr	x11, [x9, #16]
	cmp	x10, #0
	cset	w12, ne
	cmp	x11, #0
	cset	w11, ne
	ands	w11, w12, w11
	add	x23, x23, x11
	csel	x10, x10, xzr, ne
	add	x22, x10, x22
	add	x9, x9, #32
	cmp	x9, x8
	b.ne	LBB4_7
LBB4_8:
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
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #128            ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z17copy_matching_idsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEyRNS4_IyNS7_IyEEEE ; -- Begin function _Z17copy_matching_idsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEyRNS4_IyNS7_IyEEEE
	.p2align	2
__Z17copy_matching_idsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEyRNS4_IyNS7_IyEEEE: ; @_Z17copy_matching_idsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEyRNS4_IyNS7_IyEEEE
	.cfi_startproc
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
	mov	x19, x4
	mov	x23, x3
	mov	x24, x2
	mov	x20, x1
	mov	x21, x0
	ldr	x8, [x4]
	str	x8, [x4, #8]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
	ldp	x25, x26, [x24]
	cmp	x25, x26
	b.eq	LBB5_5
; %bb.1:
	mov	x24, #0                         ; =0x0
	b	LBB5_3
LBB5_2:                                 ;   in Loop: Header=BB5_3 Depth=1
	add	x25, x25, #32
	cmp	x25, x26
	b.eq	LBB5_6
LBB5_3:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x25]
	stp	q0, q1, [sp]
	ldr	x8, [sp, #16]
	cmp	x8, x23
	b.ls	LBB5_2
; %bb.4:                                ;   in Loop: Header=BB5_3 Depth=1
	mov	x1, sp
	mov	x0, x19
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy
	ldr	x8, [sp]
	add	x24, x8, x24
	b	LBB5_2
LBB5_5:
	mov	x24, #0                         ; =0x0
LBB5_6:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
	mov	x0, x21
	mov	x1, x20
	mov	x2, x22
	mov	x4, x24
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	ldp	x9, x8, [x19]
	sub	x8, x8, x9
	asr	x0, x8, #3
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy
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
	ldp	x24, x8, [x0, #8]
	cmp	x24, x8
	b.hs	LBB6_2
; %bb.1:
	ldr	x8, [x21]
	str	x8, [x24], #8
	b	LBB6_6
LBB6_2:
	ldr	x20, [x19]
	sub	x22, x24, x20
	asr	x25, x22, #3
	add	x9, x25, #1
	lsr	x10, x9, #61
	cbnz	x10, LBB6_7
; %bb.3:
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	sub	x8, x8, x20
	asr	x11, x8, #2
	cmp	x11, x9
	csel	x9, x11, x9, hi
	cmp	x8, x10
	mov	x8, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x8, x9, x8, lo
	lsr	x9, x8, #61
	cbnz	x9, LBB6_8
; %bb.4:
	lsl	x23, x8, #3
	mov	x0, x23
	bl	__Znwm
	add	x24, x0, x22
	add	x23, x0, x23
	ldr	x8, [x21]
	sub	x21, x24, x25, lsl #3
	str	x8, [x24], #8
	mov	x0, x21
	mov	x1, x20
	mov	x2, x22
	bl	_memcpy
	stp	x21, x24, [x19]
	str	x23, [x19, #16]
	cbz	x20, LBB6_6
; %bb.5:
	mov	x0, x20
	bl	__ZdlPv
LBB6_6:
	str	x24, [x19, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB6_7:
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
LBB6_8:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
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
Lloh16:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh17:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #13
	mov	x0, x19
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh18:
	adrp	x1, l_.str.3@PAGE
Lloh19:
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
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpLdrGot	Lloh16, Lloh17
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
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
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
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	w20, #18432                     ; =0x4800
	movk	w20, #488, lsl #16
	mov	w0, #18432                      ; =0x4800
	movk	w0, #488, lsl #16
	bl	__Znwm
	mov	x19, x0
	mov	x8, #0                          ; =0x0
	add	x21, x0, x20
	mov	w11, #34079                     ; =0x851f
	movk	w11, #20971, lsl #16
	mov	w12, #-100                      ; =0xffffff9c
	mov	w13, #19923                     ; =0x4dd3
	movk	w13, #4194, lsl #16
	mov	w14, #1000                      ; =0x3e8
	mov	w15, #1                         ; =0x1
	mov	w16, #16960                     ; =0x4240
	movk	w16, #15, lsl #16
	mov	x22, x0
	b	LBB8_3
LBB8_1:                                 ;   in Loop: Header=BB8_3 Depth=1
	stp	x25, xzr, [x22]
	str	x28, [x22, #16]
	str	w27, [x22, #24]
	mov	x23, x22
	strb	w26, [x22, #28]
LBB8_2:                                 ;   in Loop: Header=BB8_3 Depth=1
	add	x22, x23, #32
	mov	x8, x25
	cmp	x25, x16
	b.eq	LBB8_8
LBB8_3:                                 ; =>This Inner Loop Header: Depth=1
	add	x25, x8, #1
	mov	w9, w8
	umull	x10, w9, w11
	lsr	x10, x10, #37
	mul	w10, w10, w12
	umull	x9, w9, w13
	lsr	x9, x9, #38
	msub	w9, w9, w14, w8
	add	w28, w9, #100
	add	x27, x25, x10
	tst	x8, #0x1
	cinc	w26, w15, ne
	cmp	x22, x21
	b.lo	LBB8_1
; %bb.4:                                ;   in Loop: Header=BB8_3 Depth=1
	sub	x20, x22, x19
	asr	x22, x20, #5
	add	x8, x22, #1
	lsr	x9, x8, #59
	cbnz	x9, LBB8_19
; %bb.5:                                ;   in Loop: Header=BB8_3 Depth=1
	sub	x9, x21, x19
	asr	x10, x9, #4
	cmp	x10, x8
	csel	x8, x10, x8, hi
	mov	x10, #9223372036854775776       ; =0x7fffffffffffffe0
	cmp	x9, x10
	mov	x9, #576460752303423487         ; =0x7ffffffffffffff
	csel	x24, x8, x9, lo
	lsr	x8, x24, #59
	cbnz	x8, LBB8_20
; %bb.6:                                ;   in Loop: Header=BB8_3 Depth=1
	lsl	x0, x24, #5
Ltmp24:
	bl	__Znwm
Ltmp25:
; %bb.7:                                ;   in Loop: Header=BB8_3 Depth=1
	mov	x21, x0
	add	x23, x0, x20
	stp	x25, xzr, [x23]
	str	x28, [x23, #16]
	str	w27, [x23, #24]
	sub	x22, x23, x22, lsl #5
	strb	w26, [x23, #28]
	mov	x0, x22
	mov	x1, x19
	mov	x2, x20
	bl	_memcpy
	add	x21, x21, x24, lsl #5
	mov	x0, x19
	bl	__ZdlPv
	mov	x19, x22
	mov	w11, #34079                     ; =0x851f
	movk	w11, #20971, lsl #16
	mov	w12, #-100                      ; =0xffffff9c
	mov	w13, #19923                     ; =0x4dd3
	movk	w13, #4194, lsl #16
	mov	w14, #1000                      ; =0x3e8
	mov	w15, #1                         ; =0x1
	mov	w16, #16960                     ; =0x4240
	movk	w16, #15, lsl #16
	b	LBB8_2
LBB8_8:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	cmp	x19, x22
	b.eq	LBB8_11
; %bb.9:
	sub	x8, x23, x19
	cmp	x8, #256
	b.hs	LBB8_12
; %bb.10:
	mov	x21, #0                         ; =0x0
	mov	x8, x19
	b	LBB8_15
LBB8_11:
	mov	x21, #0                         ; =0x0
	b	LBB8_17
LBB8_12:
	lsr	x8, x8, #5
	add	x8, x8, #1
	ands	x9, x8, #0x7
	mov	w10, #8                         ; =0x8
	csel	x9, x10, x9, eq
	sub	x9, x8, x9
	add	x8, x19, x9, lsl #5
	add	x10, x19, #128
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB8_13:                                ; =>This Inner Loop Header: Depth=1
	sub	x11, x10, #128
	sub	x12, x10, #64
	ld4.2d	{ v4, v5, v6, v7 }, [x11]
	ld4.2d	{ v16, v17, v18, v19 }, [x12]
	add	x11, x10, #256
	ld4.2d	{ v20, v21, v22, v23 }, [x10], #64
	ld4.2d	{ v24, v25, v26, v27 }, [x10]
	add.2d	v0, v4, v0
	add.2d	v1, v16, v1
	add.2d	v2, v20, v2
	add.2d	v3, v24, v3
	mov	x10, x11
	subs	x9, x9, #8
	b.ne	LBB8_13
; %bb.14:
	add.2d	v0, v1, v0
	add.2d	v0, v2, v0
	add.2d	v0, v3, v0
	addp.2d	d0, v0
	fmov	x21, d0
LBB8_15:
	sub	x8, x8, #32
LBB8_16:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [x8, #32]!
	add	x21, x9, x21
	cmp	x8, x23
	b.ne	LBB8_16
LBB8_17:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp32:
Lloh20:
	adrp	x0, l_.str.4@PAGE
Lloh21:
	add	x0, x0, l_.str.4@PAGEOFF
	mov	w1, #10                         ; =0xa
	mov	x2, x20
	mov	x4, x21
	mov	w5, #16960                      ; =0x4240
	movk	w5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp33:
; %bb.18:
	mov	x0, x19
	bl	__ZdlPv
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB8_19:
Ltmp29:
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
Ltmp30:
	b	LBB8_21
LBB8_20:
Ltmp27:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
Ltmp28:
LBB8_21:
	brk	#0x1
LBB8_22:
Ltmp34:
	b	LBB8_25
LBB8_23:
Ltmp26:
	b	LBB8_25
LBB8_24:
Ltmp31:
LBB8_25:
	mov	x20, x0
	cbz	x19, LBB8_27
; %bb.26:
	mov	x0, x19
	bl	__ZdlPv
LBB8_27:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh20, Lloh21
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
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
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin1            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp32-Ltmp25                  ;   Call between Ltmp25 and Ltmp32
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp33-Ltmp32                  ;   Call between Ltmp32 and Ltmp33
	.uleb128 Ltmp34-Lfunc_begin1            ;     jumps to Ltmp34
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp28-Ltmp29                  ;   Call between Ltmp29 and Ltmp28
	.uleb128 Ltmp31-Lfunc_begin1            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Lfunc_end1-Ltmp28              ;   Call between Ltmp28 and Lfunc_end1
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
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh22:
	adrp	x0, l_.str.5@PAGE
Lloh23:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh22, Lloh23
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
Ltmp35:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B9nqe210106EPKc
Ltmp36:
; %bb.1:
Lloh24:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh25:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh26:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh27:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB11_2:
Ltmp37:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh24, Lloh25
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table11:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp35-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp35
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp36-Ltmp35                  ;   Call between Ltmp35 and Ltmp36
	.uleb128 Ltmp37-Lfunc_begin2            ;     jumps to Ltmp37
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp36              ;   Call between Ltmp36 and Lfunc_end2
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
Lloh28:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh29:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh28, Lloh29
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
Lloh30:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh31:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh32:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh33:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh32, Lloh33
	.loh AdrpLdrGot	Lloh30, Lloh31
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
Lloh34:
	adrp	x0, l_.str.5@PAGE
Lloh35:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh34, Lloh35
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
Ltmp38:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp39:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB15_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB15_7
; %bb.3:
Ltmp41:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp42:
; %bb.4:
Ltmp43:
Lloh36:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh37:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp44:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp45:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp46:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB15_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp48:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp49:
; %bb.8:
	cbnz	x0, LBB15_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp51:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp52:
LBB15_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB15_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB15_12:
Ltmp53:
	b	LBB15_15
LBB15_13:
Ltmp47:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB15_16
LBB15_14:
Ltmp50:
LBB15_15:
	mov	x20, x0
LBB15_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB15_18
LBB15_17:
Ltmp40:
	mov	x20, x0
LBB15_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp54:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp55:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB15_11
LBB15_20:
Ltmp56:
	mov	x19, x0
Ltmp57:
	bl	___cxa_end_catch
Ltmp58:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB15_22:
Ltmp59:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh36, Lloh37
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table15:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp38-Lfunc_begin3            ; >> Call Site 1 <<
	.uleb128 Ltmp39-Ltmp38                  ;   Call between Ltmp38 and Ltmp39
	.uleb128 Ltmp40-Lfunc_begin3            ;     jumps to Ltmp40
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp41-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp42-Ltmp41                  ;   Call between Ltmp41 and Ltmp42
	.uleb128 Ltmp50-Lfunc_begin3            ;     jumps to Ltmp50
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp43-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Ltmp46-Ltmp43                  ;   Call between Ltmp43 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin3            ;     jumps to Ltmp47
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp48-Lfunc_begin3            ; >> Call Site 4 <<
	.uleb128 Ltmp49-Ltmp48                  ;   Call between Ltmp48 and Ltmp49
	.uleb128 Ltmp50-Lfunc_begin3            ;     jumps to Ltmp50
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp51-Lfunc_begin3            ; >> Call Site 5 <<
	.uleb128 Ltmp52-Ltmp51                  ;   Call between Ltmp51 and Ltmp52
	.uleb128 Ltmp53-Lfunc_begin3            ;     jumps to Ltmp53
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp52-Lfunc_begin3            ; >> Call Site 6 <<
	.uleb128 Ltmp54-Ltmp52                  ;   Call between Ltmp52 and Ltmp54
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp54-Lfunc_begin3            ; >> Call Site 7 <<
	.uleb128 Ltmp55-Ltmp54                  ;   Call between Ltmp54 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin3            ;     jumps to Ltmp56
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin3            ; >> Call Site 8 <<
	.uleb128 Ltmp57-Ltmp55                  ;   Call between Ltmp55 and Ltmp57
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin3            ; >> Call Site 9 <<
	.uleb128 Ltmp58-Ltmp57                  ;   Call between Ltmp57 and Ltmp58
	.uleb128 Ltmp59-Lfunc_begin3            ;     jumps to Ltmp59
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp58-Lfunc_begin3            ; >> Call Site 10 <<
	.uleb128 Lfunc_end3-Ltmp58              ;   Call between Ltmp58 and Lfunc_end3
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
	cbz	x0, LBB16_16
; %bb.1:
	mov	x23, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	mov	x24, x1
	ldr	x26, [x4, #24]
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB16_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x24
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB16_15
LBB16_3:
	sub	x8, x22, x24
	cmp	x26, x8
	b.le	LBB16_12
; %bb.4:
	mov	x9, #-9                         ; =0xfffffffffffffff7
	movk	x9, #32767, lsl #48
	sub	x24, x26, x8
	cmp	x24, x9
	b.hs	LBB16_17
; %bb.5:
	cmp	x24, #23
	b.hs	LBB16_7
; %bb.6:
	strb	w24, [sp, #31]
	add	x25, sp, #8
	b	LBB16_8
LBB16_7:
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
LBB16_8:
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
Ltmp60:
	mov	x0, x19
	mov	x2, x24
	blr	x8
Ltmp61:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB16_11
; %bb.10:
	cmp	x0, x24
	b.ne	LBB16_15
	b	LBB16_12
LBB16_11:
	ldr	x8, [sp, #8]
	mov	x23, x0
	mov	x0, x8
	bl	__ZdlPv
	mov	x0, x23
	cmp	x0, x24
	b.ne	LBB16_15
LBB16_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB16_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB16_15
LBB16_14:
	str	xzr, [x20, #24]
	b	LBB16_16
LBB16_15:
	mov	x19, #0                         ; =0x0
LBB16_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB16_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
LBB16_18:
Ltmp62:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB16_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB16_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table16:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp60-Lfunc_begin4            ;   Call between Lfunc_begin4 and Ltmp60
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp61-Ltmp60                  ;   Call between Ltmp60 and Ltmp61
	.uleb128 Ltmp62-Lfunc_begin4            ;     jumps to Ltmp62
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp61-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp61              ;   Call between Ltmp61 and Lfunc_end4
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
Lloh38:
	adrp	x0, l_.str.6@PAGE
Lloh39:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh38, Lloh39
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
Lloh40:
	adrp	x24, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh41:
	ldr	x24, [x24, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x23, x24, #64
	mov	x19, x0
	str	x23, [x19, #112]!
	str	xzr, [x0, #160]
Lloh42:
	adrp	x22, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh43:
	ldr	x22, [x22, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x22, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x21, x0, x8
Ltmp63:
	add	x1, x0, #8
	mov	x0, x21
	bl	__ZNSt3__18ios_base4initEPv
Ltmp64:
; %bb.1:
	str	xzr, [x21, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x21, #144]
	add	x8, x24, #24
	str	x23, [x20, #112]
Lloh44:
	adrp	x23, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh45:
	ldr	x23, [x23, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x9, x23, #16
	stp	x8, x9, [x20]
	add	x0, x20, #16
	bl	__ZNSt3__16localeC1Ev
	movi.2d	v0, #0000000000000000
	mov	x24, x20
	str	q0, [x24, #72]!
	stur	q0, [x24, #-16]
Lloh46:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh47:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	stp	q0, q0, [x24, #-48]
	add	x8, x8, #16
	str	x8, [x20, #8]
	str	q0, [x24, #16]
	mov	w8, #16                         ; =0x10
	str	w8, [x24, #32]
Ltmp66:
	add	x0, x20, #8
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
Ltmp67:
; %bb.2:
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB18_3:
Ltmp68:
	mov	x21, x0
	ldrsb	w8, [x20, #95]
	tbz	w8, #31, LBB18_5
; %bb.4:
	ldr	x0, [x24]
	bl	__ZdlPv
LBB18_5:
	add	x8, x23, #16
	str	x8, [x20, #8]
	add	x0, x20, #16
	bl	__ZNSt3__16localeD1Ev
	add	x1, x22, #8
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB18_7
LBB18_6:
Ltmp65:
	mov	x21, x0
LBB18_7:
	mov	x0, x19
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh42, Lloh43
	.loh AdrpLdrGot	Lloh40, Lloh41
	.loh AdrpLdrGot	Lloh46, Lloh47
	.loh AdrpLdrGot	Lloh44, Lloh45
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table18:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp63-Lfunc_begin5            ; >> Call Site 1 <<
	.uleb128 Ltmp64-Ltmp63                  ;   Call between Ltmp63 and Ltmp64
	.uleb128 Ltmp65-Lfunc_begin5            ;     jumps to Ltmp65
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp66-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp67-Ltmp66                  ;   Call between Ltmp66 and Ltmp67
	.uleb128 Ltmp68-Lfunc_begin5            ;     jumps to Ltmp68
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp67-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp67              ;   Call between Ltmp67 and Lfunc_end5
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
Lloh48:
	adrp	x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh49:
	ldr	x20, [x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [x0]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
Lloh50:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh51:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0, #8]
	ldrsb	w8, [x0, #95]
	tbz	w8, #31, LBB19_2
; %bb.1:
	ldr	x0, [x19, #72]
	bl	__ZdlPv
LBB19_2:
Lloh52:
	adrp	x8, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh53:
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
	.loh AdrpLdrGot	Lloh50, Lloh51
	.loh AdrpLdrGot	Lloh48, Lloh49
	.loh AdrpLdrGot	Lloh52, Lloh53
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
	tbnz	x9, #63, LBB20_7
; %bb.1:
	mov	x19, x8
	mov	x20, x9
	ldr	w10, [x0, #96]
	tbz	w10, #3, LBB20_3
LBB20_2:
	add	x11, x19, x20
	str	x11, [x0, #88]
	stp	x19, x19, [x0, #16]
	str	x11, [x0, #32]
LBB20_3:
	tbz	w10, #4, LBB20_18
; %bb.4:
	add	x10, x19, x20
	str	x10, [x0, #88]
	tbnz	w9, #31, LBB20_8
; %bb.5:
	mov	w10, #22                        ; =0x16
	cmp	w9, #21
	b.ls	LBB20_9
; %bb.6:
	strb	w10, [x0, #87]
	b	LBB20_11
LBB20_7:
	ldp	x19, x20, [x0, #64]
	ldr	w10, [x0, #96]
	tbnz	w10, #3, LBB20_2
	b	LBB20_3
LBB20_8:
	ldp	x9, x10, [x0, #72]
	and	x10, x10, #0x7fffffffffffffff
	sub	x10, x10, #1
	cmp	x10, x9
	b.ls	LBB20_10
LBB20_9:
	mov	x21, x0
	sub	x1, x10, x9
	mov	x0, x8
	mov	w2, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc
	mov	x0, x21
	ldrsb	x8, [x0, #87]
	tbz	x8, #63, LBB20_13
	b	LBB20_12
LBB20_10:
	ldr	x8, [x0, #64]
	str	x10, [x0, #72]
LBB20_11:
	strb	wzr, [x8, x10]
	ldrsb	x8, [x0, #87]
	tbz	x8, #63, LBB20_13
LBB20_12:
	ldr	x8, [x0, #72]
LBB20_13:
	add	x8, x19, x8
	stp	x19, x19, [x0, #40]
	str	x8, [x0, #56]
	ldrb	w8, [x0, #96]
	tst	w8, #0x3
	b.eq	LBB20_18
; %bb.14:
	lsr	x8, x20, #31
	cbz	x8, LBB20_16
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
LBB20_16:
	cbz	x20, LBB20_18
; %bb.17:
	add	x8, x19, x20
	str	x8, [x0, #48]
LBB20_18:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
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
	.asciz	"SUM PRICES"

l_.str.5:                               ; @.str.5
	.asciz	"vector"

l_.str.6:                               ; @.str.6
	.asciz	"basic_string"

l_.str.7:                               ; @.str.7
	.asciz	"\302\265s"

.subsections_via_symbols
