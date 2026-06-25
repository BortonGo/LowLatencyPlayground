	.build_version macos, 26, 0	sdk_version 26, 5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z15generate_pricesRNSt3__16vectorIyNS_9allocatorIyEEEEmy ; -- Begin function _Z15generate_pricesRNSt3__16vectorIyNS_9allocatorIyEEEEmy
	.p2align	2
__Z15generate_pricesRNSt3__16vectorIyNS_9allocatorIyEEEEmy: ; @_Z15generate_pricesRNSt3__16vectorIyNS_9allocatorIyEEEEmy
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #2544
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
	mov	w8, #4608                       ; =0x1200
	movk	w8, #122, lsl #16
	ldr	x22, [x0]
	str	x22, [x0, #8]
	ldr	x9, [x0, #16]
	sub	x9, x9, x22
	cmp	x9, x8
	b.hs	LBB0_3
; %bb.1:
	mov	w0, #4608                       ; =0x1200
	movk	w0, #122, lsl #16
	bl	__Znwm
	add	x8, x0, #1953, lsl #12          ; =7999488
	add	x8, x8, #512
	stp	x0, x0, [x19]
	str	x8, [x19, #16]
	cbz	x22, LBB0_3
; %bb.2:
	mov	x0, x22
	bl	__ZdlPv
LBB0_3:
	str	x21, [sp, #8]
	mov	w8, #1                          ; =0x1
	mov	x9, #32557                      ; =0x7f2d
	movk	x9, #19605, lsl #16
	movk	x9, #62509, lsl #32
	movk	x9, #22609, lsl #48
	add	x10, sp, #8
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	eor	x11, x21, x21, lsr #62
	madd	x21, x11, x9, x8
	str	x21, [x10, x8, lsl #3]
	add	x8, x8, #1
	cmp	x8, #312
	b.ne	LBB0_4
; %bb.5:
	mov	x21, #0                         ; =0x0
	mov	w22, #16960                     ; =0x4240
	movk	w22, #15, lsl #16
	mul	x8, x20, x22
	lsr	x8, x8, #2
	mov	x9, #62915                      ; =0xf5c3
	movk	x9, #23592, lsl #16
	movk	x9, #49807, lsl #32
	movk	x9, #10485, lsl #48
	umulh	x8, x8, x9
	str	xzr, [sp, #2504]
	lsr	x20, x8, #2
	mov	x23, #63439                     ; =0xf7cf
	movk	x23, #58195, lsl #16
	movk	x23, #39845, lsl #32
	movk	x23, #8388, lsl #48
	mov	w24, #1000                      ; =0x3e8
	mov	w25, #100                       ; =0x64
	b	LBB0_8
LBB0_6:                                 ;   in Loop: Header=BB0_8 Depth=1
	lsr	x8, x21, #3
	umulh	x8, x8, x23
	lsr	x8, x8, #4
	msub	x8, x8, x24, x25
	add	x8, x21, x8
	stur	x8, [x29, #-80]
LBB0_7:                                 ;   in Loop: Header=BB0_8 Depth=1
	sub	x1, x29, #80
	mov	x0, x19
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106EOy
	add	x21, x21, #1
	cmp	x22, x21
	b.eq	LBB0_10
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	cmp	x21, x20
	b.lo	LBB0_6
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=1
	stur	xzr, [x29, #-80]
	b	LBB0_7
LBB0_10:
	ldp	x20, x9, [x19]
	sub	x8, x9, x20
	asr	x8, x8, #3
	cmp	x8, #2
	b.lt	LBB0_16
; %bb.11:
	mov	x10, #9223372036854775807       ; =0x7fffffffffffffff
	stp	xzr, x10, [x29, #-80]
	sub	x19, x9, #8
	cmp	x20, x19
	b.hs	LBB0_16
; %bb.12:
	sub	x21, x8, #1
	mov	x22, x20
	b	LBB0_14
LBB0_13:                                ;   in Loop: Header=BB0_14 Depth=1
	add	x22, x22, #8
	sub	x21, x21, #1
	add	x20, x20, #8
	cmp	x22, x19
	b.hs	LBB0_16
LBB0_14:                                ; =>This Inner Loop Header: Depth=1
	stp	xzr, x21, [x29, #-96]
	sub	x0, x29, #80
	add	x1, sp, #8
	sub	x2, x29, #96
	bl	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	cbz	x0, LBB0_13
; %bb.15:                               ;   in Loop: Header=BB0_14 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x20, x0, lsl #3]
	str	x9, [x22]
	str	x8, [x20, x0, lsl #3]
	b	LBB0_13
LBB0_16:
	add	sp, sp, #2544
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106EOy ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106EOy
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106EOy
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106EOy
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106EOy: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106EOy
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
	b.hs	LBB1_2
; %bb.1:
	ldr	x8, [x21]
	str	x8, [x24], #8
	str	x24, [x19, #8]
	b	LBB1_6
LBB1_2:
	ldr	x20, [x19]
	sub	x22, x24, x20
	asr	x25, x22, #3
	add	x9, x25, #1
	lsr	x10, x9, #61
	cbnz	x10, LBB1_7
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
	cbnz	x9, LBB1_8
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
	cbz	x20, LBB1_6
; %bb.5:
	mov	x0, x20
	bl	__ZdlPv
LBB1_6:
	str	x24, [x19, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB1_7:
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
LBB1_8:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.cfi_endproc
                                        ; -- End function
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
	cbz	x21, LBB3_6
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
LBB3_6:
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
	adrp	x1, l_.str.9@PAGE
Lloh9:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp14:
; %bb.8:
	ldr	w8, [sp, #152]
	tbnz	w8, #4, LBB3_11
; %bb.9:
	tbnz	w8, #3, LBB3_14
; %bb.10:
	mov	x20, #0                         ; =0x0
	mov	x21, #0                         ; =0x0
	b	LBB3_16
LBB3_11:
	ldr	x9, [sp, #144]
	ldr	x8, [sp, #104]
	cmp	x9, x8
	b.hs	LBB3_13
; %bb.12:
	str	x8, [sp, #144]
LBB3_13:
	ldr	x20, [sp, #96]
	ldr	x8, [sp, #144]
	b	LBB3_15
LBB3_14:
	ldr	x20, [sp, #72]
	ldr	x8, [sp, #88]
LBB3_15:
	sub	x21, x8, x20
LBB3_16:
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x21, x8
	b.hs	LBB3_28
; %bb.17:
	cmp	x21, #22
	b.hi	LBB3_26
; %bb.18:
	strb	w21, [sp, #31]
	add	x22, sp, #8
	cbz	x21, LBB3_20
LBB3_19:
	mov	x0, x22
	mov	x1, x20
	mov	x2, x21
	bl	_memmove
LBB3_20:
	strb	wzr, [x22, x21]
	ldrsb	x8, [sp, #31]
	add	x9, sp, #8
	ldp	x10, x11, [sp, #8]
	cmp	x8, #0
	csel	x1, x10, x9, lt
	cmp	w8, #0
	csel	x2, x11, x8, lt
Ltmp18:
	mov	x0, x19
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp19:
; %bb.21:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB3_23
; %bb.22:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB3_23:
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
	tbz	w8, #31, LBB3_25
; %bb.24:
	ldr	x0, [sp, #120]
	bl	__ZdlPv
LBB3_25:
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
LBB3_26:
	orr	x8, x21, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp16:
	mov	x0, x23
	bl	__Znwm
Ltmp17:
; %bb.27:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x21, x8, [sp, #16]
	str	x0, [sp, #8]
	cbnz	x21, LBB3_19
	b	LBB3_20
LBB3_28:
Ltmp21:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
Ltmp22:
; %bb.29:
	brk	#0x1
LBB3_30:
Ltmp20:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB3_39
; %bb.31:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	b	LBB3_39
LBB3_32:
Ltmp5:
	mov	x19, x0
	b	LBB3_36
LBB3_33:
Ltmp2:
	b	LBB3_38
LBB3_34:
Ltmp23:
	b	LBB3_38
LBB3_35:
Ltmp10:
	mov	x19, x0
	add	x0, sp, #40
	bl	__ZNSt3__16localeD1Ev
LBB3_36:
	add	x0, sp, #32
	bl	__ZNSt3__16localeD1Ev
	b	LBB3_39
LBB3_37:
Ltmp15:
LBB3_38:
	mov	x19, x0
LBB3_39:
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
GCC_except_table3:
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
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp18-Ltmp14                  ;   Call between Ltmp14 and Ltmp18
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp19-Ltmp18                  ;   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0            ;     jumps to Ltmp20
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp22-Ltmp16                  ;   Call between Ltmp16 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Lfunc_end0-Ltmp22              ;   Call between Ltmp22 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z30count_prices_above_manual_neonRKNSt3__16vectorIyNS_9allocatorIyEEEEy ; -- Begin function _Z30count_prices_above_manual_neonRKNSt3__16vectorIyNS_9allocatorIyEEEEy
	.p2align	2
__Z30count_prices_above_manual_neonRKNSt3__16vectorIyNS_9allocatorIyEEEEy: ; @_Z30count_prices_above_manual_neonRKNSt3__16vectorIyNS_9allocatorIyEEEEy
	.cfi_startproc
; %bb.0:
	ldp	x8, x9, [x0]
	sub	x9, x9, x8
	asr	x9, x9, #3
	cmp	x9, #2
	b.lo	LBB4_4
; %bb.1:
	mov	x0, #0                          ; =0x0
	dup.2d	v0, x1
	mov	w10, #1                         ; =0x1
	mov	w11, #1                         ; =0x1
	mov	x12, x8
LBB4_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	q1, [x12], #16
	cmhi.2d	v1, v1, v0
	dup.2d	v2, x10
	and.16b	v1, v1, v2
	addp.2d	d1, v1
	fmov	x13, d1
	add	x0, x13, x0
	add	x11, x11, #2
	cmp	x11, x9
	b.lo	LBB4_2
; %bb.3:
	and	x10, x9, #0xfffffffffffffffe
	subs	x9, x9, x10
	b.hi	LBB4_5
	b	LBB4_7
LBB4_4:
	mov	x10, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
	subs	x9, x9, x10
	b.ls	LBB4_7
LBB4_5:
	add	x8, x8, x10, lsl #3
LBB4_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, x1
	cinc	x0, x0, hi
	subs	x9, x9, #1
	b.ne	LBB4_6
LBB4_7:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z25count_prices_above_scalarRKNSt3__16vectorIyNS_9allocatorIyEEEEy ; -- Begin function _Z25count_prices_above_scalarRKNSt3__16vectorIyNS_9allocatorIyEEEEy
	.p2align	2
__Z25count_prices_above_scalarRKNSt3__16vectorIyNS_9allocatorIyEEEEy: ; @_Z25count_prices_above_scalarRKNSt3__16vectorIyNS_9allocatorIyEEEEy
	.cfi_startproc
; %bb.0:
	ldp	x8, x9, [x0]
	mov	x0, #0                          ; =0x0
	subs	x9, x9, x8
	b.eq	LBB5_3
; %bb.1:
	asr	x9, x9, #3
LBB5_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, x1
	cinc	x0, x0, hi
	subs	x9, x9, #1
	b.ne	LBB5_2
LBB5_3:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z23count_prices_above_autoRKNSt3__16vectorIyNS_9allocatorIyEEEEy ; -- Begin function _Z23count_prices_above_autoRKNSt3__16vectorIyNS_9allocatorIyEEEEy
	.p2align	2
__Z23count_prices_above_autoRKNSt3__16vectorIyNS_9allocatorIyEEEEy: ; @_Z23count_prices_above_autoRKNSt3__16vectorIyNS_9allocatorIyEEEEy
	.cfi_startproc
; %bb.0:
	ldp	x8, x9, [x0]
	mov	x0, #0                          ; =0x0
	subs	x9, x9, x8
	b.eq	LBB6_3
; %bb.1:
	asr	x9, x9, #3
LBB6_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, x1
	cinc	x0, x0, hi
	subs	x9, x9, #1
	b.ne	LBB6_2
LBB6_3:
	ret
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
	sub	sp, sp, #64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	stp	xzr, xzr, [sp, #8]
	str	xzr, [sp, #24]
	mov	w8, #4607                       ; =0x11ff
	movk	w8, #122, lsl #16
	cmp	xzr, x8
	b.hi	LBB7_3
; %bb.1:
	ldr	x19, [sp, #16]
Ltmp24:
	mov	w0, #4608                       ; =0x1200
	movk	w0, #122, lsl #16
	bl	__Znwm
Ltmp25:
; %bb.2:
	add	x8, x0, x19
	add	x9, x0, #1953, lsl #12          ; =7999488
	add	x9, x9, #512
	stp	x8, x8, [sp, #8]
	str	x9, [sp, #24]
LBB7_3:
Ltmp26:
	add	x0, sp, #8
	mov	w1, #90                         ; =0x5a
	mov	w2, #42                         ; =0x2a
	bl	__Z15generate_pricesRNSt3__16vectorIyNS_9allocatorIyEEEEmy
Ltmp27:
; %bb.4:
	ldp	x9, x10, [sp, #8]
	mov	x8, #0                          ; =0x0
	subs	x11, x10, x9
	b.eq	LBB7_7
; %bb.5:
	asr	x11, x11, #3
	mov	x12, x9
LBB7_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x13, [x12], #8
	cmp	x13, #266
	cinc	x8, x8, hi
	subs	x11, x11, #1
	b.ne	LBB7_6
LBB7_7:
	subs	x11, x10, x9
	b.eq	LBB7_10
; %bb.8:
	mov	x10, #0                         ; =0x0
	asr	x12, x11, #3
	mov	x13, x9
LBB7_9:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x14, [x13], #8
	cmp	x14, #266
	cinc	x10, x10, hi
	subs	x12, x12, #1
	b.ne	LBB7_9
	b	LBB7_11
LBB7_10:
	mov	x10, #0                         ; =0x0
LBB7_11:
	asr	x12, x11, #3
	cmp	x12, #2
	b.lo	LBB7_15
; %bb.12:
	mov	x11, #0                         ; =0x0
	mov	w13, #1                         ; =0x1
	mov	w14, #266                       ; =0x10a
	dup.2d	v0, x14
	mov	x14, x9
	mov	w15, #1                         ; =0x1
LBB7_13:                                ; =>This Inner Loop Header: Depth=1
	ldr	q1, [x14], #16
	cmhi.2d	v1, v1, v0
	dup.2d	v2, x13
	and.16b	v1, v1, v2
	addp.2d	d1, v1
	fmov	x16, d1
	add	x11, x16, x11
	add	x15, x15, #2
	cmp	x15, x12
	b.lo	LBB7_13
; %bb.14:
	and	x13, x12, #0xfffffffffffffffe
	subs	x12, x12, x13
	b.hi	LBB7_16
	b	LBB7_18
LBB7_15:
	mov	x13, #0                         ; =0x0
	mov	x11, #0                         ; =0x0
	subs	x12, x12, x13
	b.ls	LBB7_18
LBB7_16:
	add	x9, x9, x13, lsl #3
LBB7_17:                                ; =>This Inner Loop Header: Depth=1
	ldr	x13, [x9], #8
	cmp	x13, #266
	cinc	x11, x11, hi
	subs	x12, x12, #1
	b.ne	LBB7_17
LBB7_18:
	cmp	x8, x10
	b.ne	LBB7_32
; %bb.19:
	cmp	x8, x11
	b.ne	LBB7_32
; %bb.20:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x8, x9, [sp, #8]
	mov	x20, #0                         ; =0x0
	subs	x9, x9, x8
	b.eq	LBB7_23
; %bb.21:
	asr	x9, x9, #3
LBB7_22:                                ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, #266
	cinc	x20, x20, hi
	subs	x9, x9, #1
	b.ne	LBB7_22
LBB7_23:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
	ldp	x9, x8, [sp, #8]
	sub	x8, x8, x9
	asr	x5, x8, #3
Ltmp32:
Lloh16:
	adrp	x0, l_.str.4@PAGE
Lloh17:
	add	x0, x0, l_.str.4@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	x2, x19
	mov	x4, x20
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp33:
; %bb.24:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x8, x9, [sp, #8]
	mov	x20, #0                         ; =0x0
	subs	x9, x9, x8
	b.eq	LBB7_27
; %bb.25:
	asr	x9, x9, #3
LBB7_26:                                ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, #266
	cinc	x20, x20, hi
	subs	x9, x9, #1
	b.ne	LBB7_26
LBB7_27:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
	ldp	x9, x8, [sp, #8]
	sub	x8, x8, x9
	asr	x5, x8, #3
Ltmp35:
Lloh18:
	adrp	x0, l_.str.5@PAGE
Lloh19:
	add	x0, x0, l_.str.5@PAGEOFF
	mov	w1, #4                          ; =0x4
	mov	x2, x19
	mov	x4, x20
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp36:
; %bb.28:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x8, x9, [sp, #8]
	sub	x9, x9, x8
	asr	x9, x9, #3
	cmp	x9, #2
	b.lo	LBB7_36
; %bb.29:
	mov	x20, #0                         ; =0x0
	mov	w10, #1                         ; =0x1
	mov	w11, #266                       ; =0x10a
	dup.2d	v0, x11
	mov	x11, x8
	mov	w12, #1                         ; =0x1
LBB7_30:                                ; =>This Inner Loop Header: Depth=1
	ldr	q1, [x11], #16
	cmhi.2d	v1, v1, v0
	dup.2d	v2, x10
	and.16b	v1, v1, v2
	addp.2d	d1, v1
	fmov	x13, d1
	add	x20, x13, x20
	add	x12, x12, #2
	cmp	x12, x9
	b.lo	LBB7_30
; %bb.31:
	and	x10, x9, #0xfffffffffffffffe
	subs	x9, x9, x10
	b.hi	LBB7_37
	b	LBB7_39
LBB7_32:
Ltmp29:
Lloh20:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh21:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh22:
	adrp	x1, l_.str.3@PAGE
Lloh23:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #17                         ; =0x11
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp30:
; %bb.33:
	mov	w19, #1                         ; =0x1
	ldr	x0, [sp, #8]
	cbz	x0, LBB7_35
LBB7_34:
	str	x0, [sp, #16]
	bl	__ZdlPv
LBB7_35:
	mov	x0, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB7_36:
	mov	x10, #0                         ; =0x0
	mov	x20, #0                         ; =0x0
	subs	x9, x9, x10
	b.ls	LBB7_39
LBB7_37:
	add	x8, x8, x10, lsl #3
LBB7_38:                                ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, #266
	cinc	x20, x20, hi
	subs	x9, x9, #1
	b.ne	LBB7_38
LBB7_39:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
	ldp	x9, x8, [sp, #8]
	sub	x8, x8, x9
	asr	x5, x8, #3
Ltmp38:
Lloh24:
	adrp	x0, l_.str.6@PAGE
Lloh25:
	add	x0, x0, l_.str.6@PAGEOFF
	mov	w1, #11                         ; =0xb
	mov	x2, x19
	mov	x4, x20
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp39:
; %bb.40:
	mov	w19, #0                         ; =0x0
	ldr	x0, [sp, #8]
	cbnz	x0, LBB7_34
	b	LBB7_35
LBB7_41:
Ltmp40:
	b	LBB7_46
LBB7_42:
Ltmp37:
	b	LBB7_46
LBB7_43:
Ltmp31:
	b	LBB7_46
LBB7_44:
Ltmp34:
	b	LBB7_46
LBB7_45:
Ltmp28:
LBB7_46:
	mov	x19, x0
	ldr	x0, [sp, #8]
	cbz	x0, LBB7_48
; %bb.47:
	str	x0, [sp, #16]
	bl	__ZdlPv
LBB7_48:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpLdrGot	Lloh20, Lloh21
	.loh AdrpAdd	Lloh24, Lloh25
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp24-Lfunc_begin1            ; >> Call Site 1 <<
	.uleb128 Ltmp27-Ltmp24                  ;   Call between Ltmp24 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin1            ;     jumps to Ltmp28
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp33-Ltmp32                  ;   Call between Ltmp32 and Ltmp33
	.uleb128 Ltmp34-Lfunc_begin1            ;     jumps to Ltmp34
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp36-Ltmp35                  ;   Call between Ltmp35 and Ltmp36
	.uleb128 Ltmp37-Lfunc_begin1            ;     jumps to Ltmp37
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp30-Ltmp29                  ;   Call between Ltmp29 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin1            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp39-Ltmp38                  ;   Call between Ltmp38 and Ltmp39
	.uleb128 Ltmp40-Lfunc_begin1            ;     jumps to Ltmp40
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp39-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Lfunc_end1-Ltmp39              ;   Call between Ltmp39 and Lfunc_end1
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
Lloh26:
	adrp	x0, l_.str.7@PAGE
Lloh27:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh26, Lloh27
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
Ltmp41:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B9nqe210106EPKc
Ltmp42:
; %bb.1:
Lloh28:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh29:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh30:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh31:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB10_2:
Ltmp43:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh30, Lloh31
	.loh AdrpLdrGot	Lloh28, Lloh29
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table10:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp41-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp41
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp42-Ltmp41                  ;   Call between Ltmp41 and Ltmp42
	.uleb128 Ltmp43-Lfunc_begin2            ;     jumps to Ltmp43
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp42              ;   Call between Ltmp42 and Lfunc_end2
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
Lloh32:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh33:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh32, Lloh33
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
Lloh34:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh35:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh36:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh37:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpLdrGot	Lloh34, Lloh35
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE ; -- Begin function _ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	.globl	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	.p2align	2
__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE: ; @_ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	.cfi_startproc
; %bb.0:
	ldp	x0, x8, [x2]
	subs	x12, x8, x0
	b.eq	LBB13_5
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
	add	x12, x12, #1
	cbz	x12, LBB13_6
; %bb.2:
	clz	x13, x12
	lsl	x14, x12, x13
	tst	x14, #0x7fffffffffffffff
	mov	w14, #63                        ; =0x3f
	cinc	x14, x14, ne
	sub	x13, x14, x13
	add	x14, x13, #63
	lsr	x14, x14, #6
	cmp	x14, x13
	udiv	x13, x13, x14
	neg	x13, x13
	mov	x14, #-1                        ; =0xffffffffffffffff
	lsr	x13, x14, x13
	csel	x13, xzr, x13, hi
	ldr	x16, [x1, #2496]
	mov	x14, #3361                      ; =0xd21
	movk	x14, #8402, lsl #16
	movk	x14, #53773, lsl #32
	movk	x14, #3360, lsl #48
	mov	w15, #312                       ; =0x138
LBB13_3:                                ; =>This Inner Loop Header: Depth=1
	mov	x17, x16
	add	x16, x16, #1
	lsr	x2, x16, #3
	umulh	x2, x2, x14
	lsr	x2, x2, #1
	msub	x16, x2, x15, x16
	ldr	x2, [x1, x17, lsl #3]
	and	x2, x2, #0xffffffff80000000
	ldr	x3, [x1, x16, lsl #3]
	and	x4, x3, #0x7ffffffe
	orr	x2, x4, x2
	add	x4, x17, #156
	lsr	x5, x4, #3
	umulh	x5, x5, x14
	lsr	x5, x5, #1
	msub	x4, x5, x15, x4
	ldr	x4, [x1, x4, lsl #3]
	tst	w3, #0x1
	csel	x3, x11, xzr, ne
	eor	x3, x3, x4
	eor	x2, x3, x2, lsr #1
	str	x2, [x1, x17, lsl #3]
	and	x17, x10, x2, lsr #29
	eor	x17, x17, x2
	and	x2, x9, x17, lsl #17
	eor	x17, x2, x17
	and	x2, x8, x17, lsl #37
	eor	x17, x2, x17
	eor	x17, x17, x17, lsr #43
	and	x17, x17, x13
	cmp	x17, x12
	b.hs	LBB13_3
; %bb.4:
	str	x16, [x1, #2496]
	add	x0, x17, x0
LBB13_5:
	ret
LBB13_6:
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
Ltmp44:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp45:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB14_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w8, [x4, #144]
	cmn	w8, #1
	b.ne	LBB14_7
; %bb.3:
Ltmp47:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp48:
; %bb.4:
Ltmp49:
Lloh38:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh39:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp50:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp51:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp52:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB14_7:
	ldrsb	w5, [x4, #144]
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp54:
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp55:
; %bb.8:
	cbnz	x0, LBB14_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp57:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp58:
LBB14_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB14_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB14_12:
Ltmp59:
	b	LBB14_15
LBB14_13:
Ltmp53:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB14_16
LBB14_14:
Ltmp56:
LBB14_15:
	mov	x20, x0
LBB14_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB14_18
LBB14_17:
Ltmp46:
	mov	x20, x0
LBB14_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp60:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp61:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB14_11
LBB14_20:
Ltmp62:
	mov	x19, x0
Ltmp63:
	bl	___cxa_end_catch
Ltmp64:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB14_22:
Ltmp65:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh38, Lloh39
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table14:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp44-Lfunc_begin3            ; >> Call Site 1 <<
	.uleb128 Ltmp45-Ltmp44                  ;   Call between Ltmp44 and Ltmp45
	.uleb128 Ltmp46-Lfunc_begin3            ;     jumps to Ltmp46
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp47-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp48-Ltmp47                  ;   Call between Ltmp47 and Ltmp48
	.uleb128 Ltmp56-Lfunc_begin3            ;     jumps to Ltmp56
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp49-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Ltmp52-Ltmp49                  ;   Call between Ltmp49 and Ltmp52
	.uleb128 Ltmp53-Lfunc_begin3            ;     jumps to Ltmp53
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp54-Lfunc_begin3            ; >> Call Site 4 <<
	.uleb128 Ltmp55-Ltmp54                  ;   Call between Ltmp54 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin3            ;     jumps to Ltmp56
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp57-Lfunc_begin3            ; >> Call Site 5 <<
	.uleb128 Ltmp58-Ltmp57                  ;   Call between Ltmp57 and Ltmp58
	.uleb128 Ltmp59-Lfunc_begin3            ;     jumps to Ltmp59
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp58-Lfunc_begin3            ; >> Call Site 6 <<
	.uleb128 Ltmp60-Ltmp58                  ;   Call between Ltmp58 and Ltmp60
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin3            ; >> Call Site 7 <<
	.uleb128 Ltmp61-Ltmp60                  ;   Call between Ltmp60 and Ltmp61
	.uleb128 Ltmp62-Lfunc_begin3            ;     jumps to Ltmp62
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp61-Lfunc_begin3            ; >> Call Site 8 <<
	.uleb128 Ltmp63-Ltmp61                  ;   Call between Ltmp61 and Ltmp63
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp63-Lfunc_begin3            ; >> Call Site 9 <<
	.uleb128 Ltmp64-Ltmp63                  ;   Call between Ltmp63 and Ltmp64
	.uleb128 Ltmp65-Lfunc_begin3            ;     jumps to Ltmp65
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp64-Lfunc_begin3            ; >> Call Site 10 <<
	.uleb128 Lfunc_end3-Ltmp64              ;   Call between Ltmp64 and Lfunc_end3
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
	sub	sp, sp, #128
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
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
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x0
	cbz	x0, LBB15_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x26, [x4, #24]
	sub	x27, x3, x1
	subs	x8, x26, x27
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB15_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB15_15
LBB15_3:
	cmp	x26, x27
	b.le	LBB15_12
; %bb.4:
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x23, x8
	b.hs	LBB15_17
; %bb.5:
	cmp	x23, #22
	b.hi	LBB15_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB15_8
LBB15_7:
	orr	x8, x23, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x26, x9, x8, eq
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB15_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp66:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp67:
; %bb.9:
	cmp	x0, x23
	csel	x19, x19, xzr, eq
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB15_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB15_15
	b	LBB15_12
LBB15_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	mov	x0, x24
	cmp	x0, x23
	b.ne	LBB15_15
LBB15_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB15_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB15_15
LBB15_14:
	str	xzr, [x20, #24]
	b	LBB15_16
LBB15_15:
	mov	x19, #0                         ; =0x0
LBB15_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB15_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
LBB15_18:
Ltmp68:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB15_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB15_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table15:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp66-Lfunc_begin4            ;   Call between Lfunc_begin4 and Ltmp66
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp66-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp67-Ltmp66                  ;   Call between Ltmp66 and Ltmp67
	.uleb128 Ltmp68-Lfunc_begin4            ;     jumps to Ltmp68
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp67-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp67              ;   Call between Ltmp67 and Lfunc_end4
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
Lloh40:
	adrp	x0, l_.str.8@PAGE
Lloh41:
	add	x0, x0, l_.str.8@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh40, Lloh41
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
Lloh42:
	adrp	x24, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh43:
	ldr	x24, [x24, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x23, x24, #64
	mov	x19, x0
	str	x23, [x19, #112]!
	str	xzr, [x0, #160]
Lloh44:
	adrp	x22, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh45:
	ldr	x22, [x22, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x22, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x21, x0, x8
Ltmp69:
	add	x1, x0, #8
	mov	x0, x21
	bl	__ZNSt3__18ios_base4initEPv
Ltmp70:
; %bb.1:
	str	xzr, [x21, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x21, #144]
	add	x8, x24, #24
	str	x23, [x20, #112]
Lloh46:
	adrp	x23, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh47:
	ldr	x23, [x23, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x9, x23, #16
	stp	x8, x9, [x20]
	add	x0, x20, #16
	bl	__ZNSt3__16localeC1Ev
	movi.2d	v0, #0000000000000000
	mov	x24, x20
	str	q0, [x24, #72]!
	stur	q0, [x24, #-16]
Lloh48:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh49:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	stp	q0, q0, [x24, #-48]
	add	x8, x8, #16
	str	x8, [x20, #8]
	str	q0, [x24, #16]
	mov	w8, #16                         ; =0x10
	str	w8, [x24, #32]
Ltmp72:
	add	x0, x20, #8
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
Ltmp73:
; %bb.2:
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB17_3:
Ltmp74:
	mov	x21, x0
	ldrsb	w8, [x20, #95]
	tbz	w8, #31, LBB17_5
; %bb.4:
	ldr	x0, [x24]
	bl	__ZdlPv
LBB17_5:
	add	x8, x23, #16
	str	x8, [x20, #8]
	add	x0, x20, #16
	bl	__ZNSt3__16localeD1Ev
	add	x1, x22, #8
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB17_7
LBB17_6:
Ltmp71:
	mov	x21, x0
LBB17_7:
	mov	x0, x19
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh44, Lloh45
	.loh AdrpLdrGot	Lloh42, Lloh43
	.loh AdrpLdrGot	Lloh48, Lloh49
	.loh AdrpLdrGot	Lloh46, Lloh47
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table17:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp69-Lfunc_begin5            ; >> Call Site 1 <<
	.uleb128 Ltmp70-Ltmp69                  ;   Call between Ltmp69 and Ltmp70
	.uleb128 Ltmp71-Lfunc_begin5            ;     jumps to Ltmp71
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp73-Ltmp72                  ;   Call between Ltmp72 and Ltmp73
	.uleb128 Ltmp74-Lfunc_begin5            ;     jumps to Ltmp74
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp73              ;   Call between Ltmp73 and Lfunc_end5
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
Lloh50:
	adrp	x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh51:
	ldr	x20, [x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [x0]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
Lloh52:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh53:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0, #8]
	ldrsb	w8, [x0, #95]
	tbz	w8, #31, LBB18_2
; %bb.1:
	ldr	x0, [x19, #72]
	bl	__ZdlPv
LBB18_2:
Lloh54:
	adrp	x8, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh55:
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
	.loh AdrpLdrGot	Lloh52, Lloh53
	.loh AdrpLdrGot	Lloh50, Lloh51
	.loh AdrpLdrGot	Lloh54, Lloh55
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
	mov	x20, x8
	tbnz	x9, #63, LBB19_9
; %bb.1:
	tbnz	w9, #31, LBB19_10
LBB19_2:
	mov	x19, x9
	ldr	w10, [x0, #96]
	tbz	w10, #3, LBB19_4
LBB19_3:
	add	x11, x20, x19
	str	x11, [x0, #88]
	stp	x20, x20, [x0, #16]
	str	x11, [x0, #32]
LBB19_4:
	tbz	w10, #4, LBB19_25
; %bb.5:
	add	x10, x20, x19
	str	x10, [x0, #88]
	tbnz	w9, #31, LBB19_11
; %bb.6:
	mov	w10, #22                        ; =0x16
	tbnz	w9, #31, LBB19_12
LBB19_7:
	mov	x11, x9
	subs	x1, x10, x11
	b.ls	LBB19_13
LBB19_8:
	mov	x21, x0
	mov	x0, x8
	mov	w2, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc
	mov	x0, x21
	ldrsb	x8, [x0, #87]
	tbz	x8, #63, LBB19_20
	b	LBB19_19
LBB19_9:
	ldr	x20, [x8]
	tbz	w9, #31, LBB19_2
LBB19_10:
	ldr	x19, [x0, #72]
	ldr	w10, [x0, #96]
	tbnz	w10, #3, LBB19_3
	b	LBB19_4
LBB19_11:
	ldr	x10, [x0, #80]
	and	x10, x10, #0x7fffffffffffffff
	sub	x10, x10, #1
	tbz	w9, #31, LBB19_7
LBB19_12:
	ldr	x11, [x0, #72]
	subs	x1, x10, x11
	b.hi	LBB19_8
LBB19_13:
	tbnz	w9, #31, LBB19_16
; %bb.14:
	tbnz	w9, #31, LBB19_17
LBB19_15:
	and	w9, w10, #0x7f
	strb	w9, [x0, #87]
	b	LBB19_18
LBB19_16:
	ldr	x8, [x8]
	tbz	w9, #31, LBB19_15
LBB19_17:
	str	x10, [x0, #72]
LBB19_18:
	strb	wzr, [x8, x10]
	ldrsb	x8, [x0, #87]
	tbz	x8, #63, LBB19_20
LBB19_19:
	ldr	x8, [x0, #72]
LBB19_20:
	add	x8, x20, x8
	stp	x20, x20, [x0, #40]
	str	x8, [x0, #56]
	ldrb	w8, [x0, #96]
	tst	w8, #0x3
	b.eq	LBB19_25
; %bb.21:
	lsr	x8, x19, #31
	cbz	x8, LBB19_23
; %bb.22:
	ldr	x8, [x0, #48]
	mov	x9, #-2147483648                ; =0xffffffff80000000
	add	x9, x19, x9
	mov	x10, #5                         ; =0x5
	movk	x10, #2, lsl #32
	umulh	x10, x9, x10
	sub	x9, x9, x10
	add	x9, x10, x9, lsr #1
	lsr	x9, x9, #30
	lsl	x10, x9, #31
	mov	w11, #2147483647                ; =0x7fffffff
	sub	x9, x10, x9
	sub	x10, x19, x9
	add	x8, x8, x11
	add	x8, x8, x9
	mov	x9, #-2147483647                ; =0xffffffff80000001
	add	x19, x10, x9
	str	x8, [x0, #48]
LBB19_23:
	cbz	x19, LBB19_25
; %bb.24:
	ldr	x8, [x0, #48]
	add	x8, x8, x19
	str	x8, [x0, #48]
LBB19_25:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_config                         ; @config
	.p2align	3, 0x0
_config:
	.quad	20                              ; 0x14
	.quad	200                             ; 0xc8

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"checksum = "

l_.str.1:                               ; @.str.1
	.asciz	"elapsed = "

l_.str.2:                               ; @.str.2
	.asciz	"throughput_ops_sec = "

l_.str.3:                               ; @.str.3
	.asciz	"results mismatch\n"

l_.str.4:                               ; @.str.4
	.asciz	"SCALAR"

l_.str.5:                               ; @.str.5
	.asciz	"AUTO"

l_.str.6:                               ; @.str.6
	.asciz	"MANUAL NEON"

l_.str.7:                               ; @.str.7
	.asciz	"vector"

l_.str.8:                               ; @.str.8
	.asciz	"basic_string"

l_.str.9:                               ; @.str.9
	.asciz	"\302\265s"

.subsections_via_symbols
