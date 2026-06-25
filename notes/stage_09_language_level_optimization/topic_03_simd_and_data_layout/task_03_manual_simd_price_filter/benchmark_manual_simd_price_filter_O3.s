	.build_version macos, 26, 0	sdk_version 26, 5
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function _Z15generate_pricesRNSt3__16vectorIyNS_9allocatorIyEEEEmy
lCPI0_0:
	.quad	0                               ; 0x0
	.quad	9223372036854775807             ; 0x7fffffffffffffff
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z15generate_pricesRNSt3__16vectorIyNS_9allocatorIyEEEEmy
	.p2align	2
__Z15generate_pricesRNSt3__16vectorIyNS_9allocatorIyEEEEmy: ; @_Z15generate_pricesRNSt3__16vectorIyNS_9allocatorIyEEEEmy
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	sub	sp, sp, #2560
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
	mov	x23, #0                         ; =0x0
	mov	w24, #16960                     ; =0x4240
	movk	w24, #15, lsl #16
	mul	x8, x20, x24
	lsr	x8, x8, #2
	mov	x9, #62915                      ; =0xf5c3
	movk	x9, #23592, lsl #16
	movk	x9, #49807, lsl #32
	movk	x9, #10485, lsl #48
	umulh	x8, x8, x9
	lsr	x25, x8, #2
	str	xzr, [sp, #2504]
	b	LBB0_8
LBB0_6:                                 ;   in Loop: Header=BB0_8 Depth=1
	str	xzr, [x28], #8
LBB0_7:                                 ;   in Loop: Header=BB0_8 Depth=1
	str	x28, [x19, #8]
	add	x23, x23, #1
	cmp	x24, x23
	b.eq	LBB0_21
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	cmp	x23, x25
	b.hs	LBB0_11
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=1
	mov	w8, w23
	mov	w9, #19923                      ; =0x4dd3
	movk	w9, #4194, lsl #16
	umull	x8, w8, w9
	lsr	x8, x8, #38
	mov	w9, #1000                       ; =0x3e8
	mov	w10, #96                        ; =0x60
	msub	w8, w8, w9, w10
	orr	x8, x8, #0x4
	add	w26, w23, w8
	ldp	x28, x8, [x19, #8]
	cmp	x28, x8
	b.hs	LBB0_16
; %bb.10:                               ;   in Loop: Header=BB0_8 Depth=1
	str	x26, [x28], #8
	b	LBB0_7
LBB0_11:                                ;   in Loop: Header=BB0_8 Depth=1
	ldp	x28, x8, [x19, #8]
	cmp	x28, x8
	b.lo	LBB0_6
; %bb.12:                               ;   in Loop: Header=BB0_8 Depth=1
	ldr	x20, [x19]
	sub	x21, x28, x20
	asr	x26, x21, #3
	add	x9, x26, #1
	lsr	x10, x9, #61
	cbnz	x10, LBB0_28
; %bb.13:                               ;   in Loop: Header=BB0_8 Depth=1
	sub	x8, x8, x20
	asr	x10, x8, #2
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x8, x10
	mov	x8, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x8, x9, x8, lo
	lsr	x9, x8, #61
	cbnz	x9, LBB0_29
; %bb.14:                               ;   in Loop: Header=BB0_8 Depth=1
	lsl	x22, x8, #3
	mov	x0, x22
	bl	__Znwm
	add	x28, x0, x21
	add	x27, x0, x22
	sub	x22, x28, x26, lsl #3
	str	xzr, [x28], #8
	mov	x0, x22
	mov	x1, x20
	mov	x2, x21
	bl	_memcpy
	stp	x22, x28, [x19]
	str	x27, [x19, #16]
	cbz	x20, LBB0_7
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=1
	mov	x0, x20
	bl	__ZdlPv
	b	LBB0_7
LBB0_16:                                ;   in Loop: Header=BB0_8 Depth=1
	ldr	x20, [x19]
	sub	x21, x28, x20
	asr	x27, x21, #3
	add	x9, x27, #1
	lsr	x10, x9, #61
	cbnz	x10, LBB0_28
; %bb.17:                               ;   in Loop: Header=BB0_8 Depth=1
	sub	x8, x8, x20
	asr	x10, x8, #2
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x8, x10
	mov	x8, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x8, x9, x8, lo
	lsr	x9, x8, #61
	cbnz	x9, LBB0_29
; %bb.18:                               ;   in Loop: Header=BB0_8 Depth=1
	lsl	x22, x8, #3
	mov	x0, x22
	bl	__Znwm
	add	x28, x0, x21
	add	x24, x0, x22
	sub	x22, x28, x27, lsl #3
	str	x26, [x28], #8
	mov	x0, x22
	mov	x1, x20
	mov	x2, x21
	bl	_memcpy
	stp	x22, x28, [x19]
	str	x24, [x19, #16]
	cbz	x20, LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=1
	mov	x0, x20
	bl	__ZdlPv
LBB0_20:                                ;   in Loop: Header=BB0_8 Depth=1
	mov	w24, #16960                     ; =0x4240
	movk	w24, #15, lsl #16
	b	LBB0_7
LBB0_21:
	ldr	x19, [x19]
	sub	x8, x28, x19
	asr	x8, x8, #3
	cmp	x8, #2
	b.lt	LBB0_27
; %bb.22:
Lloh0:
	adrp	x9, lCPI0_0@PAGE
Lloh1:
	ldr	q0, [x9, lCPI0_0@PAGEOFF]
	stur	q0, [x29, #-112]
	sub	x20, x28, #8
	cmp	x19, x20
	b.hs	LBB0_27
; %bb.23:
	sub	x21, x8, #1
	mov	x22, x19
	b	LBB0_25
LBB0_24:                                ;   in Loop: Header=BB0_25 Depth=1
	add	x22, x22, #8
	sub	x21, x21, #1
	add	x19, x19, #8
	cmp	x22, x20
	b.hs	LBB0_27
LBB0_25:                                ; =>This Inner Loop Header: Depth=1
	stp	xzr, x21, [x29, #-128]
	sub	x0, x29, #112
	add	x1, sp, #8
	sub	x2, x29, #128
	bl	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIyLm64ELm312ELm156ELm31ELy13043109905998158313ELm29ELy6148914691236517205ELm17ELy8202884508482404352ELm37ELy18444473444759240704ELm43ELy6364136223846793005EEEEElRT_RKNS1_10param_typeE
	cbz	x0, LBB0_24
; %bb.26:                               ;   in Loop: Header=BB0_25 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x19, x0, lsl #3]
	str	x9, [x22]
	str	x8, [x19, x0, lsl #3]
	b	LBB0_24
LBB0_27:
	add	sp, sp, #2560
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_28:
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
LBB0_29:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.loh AdrpLdr	Lloh0, Lloh1
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
Lloh2:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh3:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	x0, x19
	mov	x2, x8
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w21, #10                        ; =0xa
	strb	w21, [sp, #12]
	add	x1, sp, #12
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lloh4:
	adrp	x1, l_.str@PAGE
Lloh5:
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
Lloh6:
	adrp	x1, l_.str.1@PAGE
Lloh7:
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
Lloh8:
	adrp	x1, l_.str.2@PAGE
Lloh9:
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
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
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
	cbz	x21, LBB2_6
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
LBB2_6:
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
Lloh10:
	adrp	x1, l_.str.9@PAGE
Lloh11:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp14:
; %bb.8:
	ldr	w8, [sp, #152]
	tbnz	w8, #4, LBB2_11
; %bb.9:
	tbnz	w8, #3, LBB2_25
; %bb.10:
	mov	x20, #0                         ; =0x0
	strb	wzr, [sp, #31]
	add	x22, sp, #8
	b	LBB2_19
LBB2_11:
	ldr	x8, [sp, #144]
	ldr	x9, [sp, #104]
	cmp	x8, x9
	b.hs	LBB2_13
; %bb.12:
	str	x9, [sp, #144]
	mov	x8, x9
LBB2_13:
	add	x9, sp, #48
	ldr	x21, [x9, #48]!
	mov	x9, #-9                         ; =0xfffffffffffffff7
	movk	x9, #32767, lsl #48
	sub	x20, x8, x21
	cmp	x20, x9
	b.hs	LBB2_26
LBB2_14:
	cmp	x20, #23
	b.hs	LBB2_16
; %bb.15:
	strb	w20, [sp, #31]
	add	x22, sp, #8
	cbnz	x20, LBB2_18
	b	LBB2_19
LBB2_16:
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp16:
	mov	x0, x23
	bl	__Znwm
Ltmp17:
; %bb.17:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x20, x8, [sp, #16]
	str	x0, [sp, #8]
LBB2_18:
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	bl	_memmove
LBB2_19:
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
; %bb.20:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB2_22
; %bb.21:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB2_22:
Lloh12:
	adrp	x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh13:
	ldr	x20, [x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [sp, #48]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	add	x21, sp, #48
	str	x9, [x21, x8]
Lloh14:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh15:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #56]
	ldrsb	w8, [sp, #143]
	tbz	w8, #31, LBB2_24
; %bb.23:
	ldr	x0, [sp, #120]
	bl	__ZdlPv
LBB2_24:
Lloh16:
	adrp	x8, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh17:
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
LBB2_25:
	add	x8, sp, #48
	add	x9, x8, #24
	ldr	x8, [sp, #88]
	ldr	x21, [x9]
	mov	x9, #-9                         ; =0xfffffffffffffff7
	movk	x9, #32767, lsl #48
	sub	x20, x8, x21
	cmp	x20, x9
	b.lo	LBB2_14
LBB2_26:
Ltmp18:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
Ltmp19:
; %bb.27:
	brk	#0x1
LBB2_28:
Ltmp23:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB2_36
; %bb.29:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	add	x0, sp, #48
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_30:
Ltmp5:
	mov	x19, x0
	b	LBB2_34
LBB2_31:
Ltmp2:
	mov	x19, x0
	add	x0, sp, #48
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_32:
Ltmp20:
	mov	x19, x0
	add	x0, sp, #48
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_33:
Ltmp10:
	mov	x19, x0
	add	x0, sp, #40
	bl	__ZNSt3__16localeD1Ev
LBB2_34:
	add	x0, sp, #32
	bl	__ZNSt3__16localeD1Ev
	add	x0, sp, #48
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_35:
Ltmp15:
	mov	x19, x0
LBB2_36:
	add	x0, sp, #48
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh16, Lloh17
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
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
	.globl	__Z30count_prices_above_manual_neonRKNSt3__16vectorIyNS_9allocatorIyEEEEy ; -- Begin function _Z30count_prices_above_manual_neonRKNSt3__16vectorIyNS_9allocatorIyEEEEy
	.p2align	2
__Z30count_prices_above_manual_neonRKNSt3__16vectorIyNS_9allocatorIyEEEEy: ; @_Z30count_prices_above_manual_neonRKNSt3__16vectorIyNS_9allocatorIyEEEEy
	.cfi_startproc
; %bb.0:
	dup.2d	v0, x1
	ldp	x8, x9, [x0]
	sub	x9, x9, x8
	asr	x9, x9, #3
	cmp	x9, #2
	b.lo	LBB3_4
; %bb.1:
	mov	x0, #0                          ; =0x0
	mov	w10, #1                         ; =0x1
	mov	w11, #1                         ; =0x1
	mov	x12, x8
LBB3_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	q1, [x12], #16
	cmhi.2d	v1, v1, v0
	dup.2d	v2, x10
	and.16b	v1, v1, v2
	addp.2d	d1, v1
	fmov	x13, d1
	add	x0, x13, x0
	add	x11, x11, #2
	cmp	x11, x9
	b.lo	LBB3_2
; %bb.3:
	and	x13, x9, #0xfffffffffffffffe
	subs	x11, x9, x13
	b.hi	LBB3_5
	b	LBB3_12
LBB3_4:
	mov	x13, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
	subs	x11, x9, x13
	b.ls	LBB3_12
LBB3_5:
	cmp	x11, #8
	b.hs	LBB3_7
; %bb.6:
	mov	x10, x13
	b	LBB3_10
LBB3_7:
	and	x12, x11, #0xfffffffffffffff8
	add	x10, x13, x12
	movi.2d	v1, #0000000000000000
	mov.d	v1[0], x0
	movi.2d	v2, #0000000000000000
	add	x13, x8, x13, lsl #3
	add	x13, x13, #32
	mov	x14, x12
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB3_8:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q5, q6, [x13, #-32]
	ldp	q7, q16, [x13], #64
	cmhi.2d	v5, v5, v0
	cmhi.2d	v6, v6, v0
	cmhi.2d	v7, v7, v0
	cmhi.2d	v16, v16, v0
	sub.2d	v1, v1, v5
	sub.2d	v2, v2, v6
	sub.2d	v3, v3, v7
	sub.2d	v4, v4, v16
	subs	x14, x14, #8
	b.ne	LBB3_8
; %bb.9:
	add.2d	v0, v2, v1
	add.2d	v1, v4, v3
	add.2d	v0, v1, v0
	addp.2d	d0, v0
	fmov	x0, d0
	cmp	x11, x12
	b.eq	LBB3_12
LBB3_10:
	sub	x9, x9, x10
	add	x8, x8, x10, lsl #3
LBB3_11:                                ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, x1
	cinc	x0, x0, hi
	subs	x9, x9, #1
	b.ne	LBB3_11
LBB3_12:
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
	b.eq	LBB4_3
; %bb.1:
	asr	x9, x9, #3
LBB4_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, x1
	cinc	x0, x0, hi
	subs	x9, x9, #1
	b.ne	LBB4_2
LBB4_3:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z23count_prices_above_autoRKNSt3__16vectorIyNS_9allocatorIyEEEEy ; -- Begin function _Z23count_prices_above_autoRKNSt3__16vectorIyNS_9allocatorIyEEEEy
	.p2align	2
__Z23count_prices_above_autoRKNSt3__16vectorIyNS_9allocatorIyEEEEy: ; @_Z23count_prices_above_autoRKNSt3__16vectorIyNS_9allocatorIyEEEEy
	.cfi_startproc
; %bb.0:
	ldp	x8, x9, [x0]
	subs	x9, x9, x8
	b.eq	LBB5_3
; %bb.1:
	asr	x9, x9, #3
	cmp	x9, #8
	b.hs	LBB5_4
; %bb.2:
	mov	x10, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
	b	LBB5_7
LBB5_3:
	mov	x0, #0                          ; =0x0
	ret
LBB5_4:
	and	x10, x9, #0xfffffffffffffff8
	dup.2d	v0, x1
	add	x11, x8, #32
	movi.2d	v1, #0000000000000000
	mov	x12, x10
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB5_5:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q5, q6, [x11, #-32]
	ldp	q7, q16, [x11], #64
	cmhi.2d	v5, v5, v0
	cmhi.2d	v6, v6, v0
	cmhi.2d	v7, v7, v0
	cmhi.2d	v16, v16, v0
	sub.2d	v1, v1, v5
	sub.2d	v2, v2, v6
	sub.2d	v3, v3, v7
	sub.2d	v4, v4, v16
	subs	x12, x12, #8
	b.ne	LBB5_5
; %bb.6:
	add.2d	v0, v2, v1
	add.2d	v1, v4, v3
	add.2d	v0, v1, v0
	addp.2d	d0, v0
	fmov	x0, d0
	cmp	x9, x10
	b.eq	LBB5_9
LBB5_7:
	sub	x9, x9, x10
	add	x8, x8, x10, lsl #3
LBB5_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, x1
	cinc	x0, x0, hi
	subs	x9, x9, #1
	b.ne	LBB5_8
LBB5_9:
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
	sub	sp, sp, #96
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
	stp	xzr, xzr, [sp, #8]
	str	xzr, [sp, #24]
Ltmp24:
	mov	w0, #4608                       ; =0x1200
	movk	w0, #122, lsl #16
	bl	__Znwm
Ltmp25:
; %bb.1:
	add	x8, x0, #1953, lsl #12          ; =7999488
	add	x8, x8, #512
	stp	x0, x0, [sp, #8]
	str	x8, [sp, #24]
Ltmp26:
	add	x0, sp, #8
	mov	w1, #90                         ; =0x5a
	mov	w2, #42                         ; =0x2a
	bl	__Z15generate_pricesRNSt3__16vectorIyNS_9allocatorIyEEEEmy
Ltmp27:
; %bb.2:
	ldp	x19, x23, [sp, #8]
	subs	x8, x23, x19
	asr	x20, x8, #3
	mov	x9, #0                          ; =0x0
	b.eq	LBB6_12
; %bb.3:
	mov	x8, #0                          ; =0x0
LBB6_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x19, x9, lsl #3]
	cmp	x10, #266
	cinc	x8, x8, hi
	add	x9, x9, #1
	cmp	x20, x9
	b.ne	LBB6_4
; %bb.5:
	cmp	x20, #8
	b.hs	LBB6_7
; %bb.6:
	mov	x10, #0                         ; =0x0
	mov	x9, #0                          ; =0x0
	b	LBB6_10
LBB6_7:
	and	x10, x20, #0xfffffffffffffff8
	add	x9, x19, #32
	movi.2d	v0, #0000000000000000
	mov	w11, #266                       ; =0x10a
	dup.2d	v1, x11
	mov	x11, x10
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB6_8:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q5, q6, [x9, #-32]
	ldp	q7, q16, [x9], #64
	cmhi.2d	v5, v5, v1
	cmhi.2d	v6, v6, v1
	cmhi.2d	v7, v7, v1
	cmhi.2d	v16, v16, v1
	sub.2d	v0, v0, v5
	sub.2d	v2, v2, v6
	sub.2d	v3, v3, v7
	sub.2d	v4, v4, v16
	subs	x11, x11, #8
	b.ne	LBB6_8
; %bb.9:
	add.2d	v0, v2, v0
	add.2d	v1, v4, v3
	add.2d	v0, v1, v0
	addp.2d	d0, v0
	fmov	x9, d0
	cmp	x20, x10
	b.eq	LBB6_12
LBB6_10:
	sub	x11, x20, x10
	add	x10, x19, x10, lsl #3
LBB6_11:                                ; =>This Inner Loop Header: Depth=1
	ldr	x12, [x10], #8
	cmp	x12, #266
	cinc	x9, x9, hi
	subs	x11, x11, #1
	b.ne	LBB6_11
LBB6_12:
	cmp	x20, #2
	b.lo	LBB6_16
; %bb.13:
	mov	x10, #0                         ; =0x0
	mov	w11, #1                         ; =0x1
	mov	w12, #266                       ; =0x10a
	dup.2d	v0, x12
	mov	x12, x19
	mov	w13, #1                         ; =0x1
LBB6_14:                                ; =>This Inner Loop Header: Depth=1
	ldr	q1, [x12], #16
	cmhi.2d	v1, v1, v0
	dup.2d	v2, x11
	and.16b	v1, v1, v2
	addp.2d	d1, v1
	fmov	x14, d1
	add	x10, x14, x10
	add	x13, x13, #2
	cmp	x13, x20
	b.lo	LBB6_14
; %bb.15:
	and	x14, x20, #0xfffffffffffffffe
	subs	x12, x20, x14
	b.hi	LBB6_17
	b	LBB6_24
LBB6_16:
	mov	x14, #0                         ; =0x0
	mov	x10, #0                         ; =0x0
	subs	x12, x20, x14
	b.ls	LBB6_24
LBB6_17:
	cmp	x12, #8
	b.hs	LBB6_19
; %bb.18:
	mov	x11, x14
	b	LBB6_22
LBB6_19:
	and	x13, x12, #0xfffffffffffffff8
	add	x11, x14, x13
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	mov.d	v1[0], x10
	add	x10, x19, x14, lsl #3
	add	x10, x10, #32
	mov	w14, #266                       ; =0x10a
	dup.2d	v2, x14
	mov	x14, x13
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB6_20:                                ; =>This Inner Loop Header: Depth=1
	ldp	q5, q6, [x10, #-32]
	ldp	q7, q16, [x10], #64
	cmhi.2d	v5, v5, v2
	cmhi.2d	v6, v6, v2
	cmhi.2d	v7, v7, v2
	cmhi.2d	v16, v16, v2
	sub.2d	v1, v1, v5
	sub.2d	v0, v0, v6
	sub.2d	v3, v3, v7
	sub.2d	v4, v4, v16
	subs	x14, x14, #8
	b.ne	LBB6_20
; %bb.21:
	add.2d	v0, v0, v1
	add.2d	v1, v4, v3
	add.2d	v0, v1, v0
	addp.2d	d0, v0
	fmov	x10, d0
	cmp	x12, x13
	b.eq	LBB6_24
LBB6_22:
	sub	x12, x20, x11
	add	x11, x19, x11, lsl #3
LBB6_23:                                ; =>This Inner Loop Header: Depth=1
	ldr	x13, [x11], #8
	cmp	x13, #266
	cinc	x10, x10, hi
	subs	x12, x12, #1
	b.ne	LBB6_23
LBB6_24:
	cmp	x8, x9
	b.ne	LBB6_29
; %bb.25:
	cmp	x8, x10
	b.ne	LBB6_29
; %bb.26:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	cmp	x23, x19
	b.eq	LBB6_33
; %bb.27:
	mov	x22, #0                         ; =0x0
	mov	x8, x19
	mov	x9, x20
LBB6_28:                                ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, #266
	cinc	x22, x22, hi
	subs	x9, x9, #1
	b.ne	LBB6_28
	b	LBB6_34
LBB6_29:
Ltmp29:
Lloh18:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh19:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh20:
	adrp	x1, l_.str.3@PAGE
Lloh21:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #17                         ; =0x11
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp30:
; %bb.30:
	mov	w20, #1                         ; =0x1
	cbz	x19, LBB6_32
LBB6_31:
	mov	x0, x19
	bl	__ZdlPv
LBB6_32:
	mov	x0, x20
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB6_33:
	mov	x22, #0                         ; =0x0
LBB6_34:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp32:
Lloh22:
	adrp	x0, l_.str.4@PAGE
Lloh23:
	add	x0, x0, l_.str.4@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	x2, x21
	mov	x4, x22
	mov	x5, x20
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp33:
; %bb.35:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	cmp	x23, x19
	b.eq	LBB6_38
; %bb.36:
	cmp	x20, #8
	b.hs	LBB6_39
; %bb.37:
	mov	x8, #0                          ; =0x0
	mov	x22, #0                         ; =0x0
	b	LBB6_42
LBB6_38:
	mov	x22, #0                         ; =0x0
	b	LBB6_44
LBB6_39:
	and	x8, x20, #0xfffffffffffffff8
	add	x9, x19, #32
	movi.2d	v0, #0000000000000000
	mov	w10, #266                       ; =0x10a
	dup.2d	v1, x10
	mov	x10, x8
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB6_40:                                ; =>This Inner Loop Header: Depth=1
	ldp	q5, q6, [x9, #-32]
	ldp	q7, q16, [x9], #64
	cmhi.2d	v5, v5, v1
	cmhi.2d	v6, v6, v1
	cmhi.2d	v7, v7, v1
	cmhi.2d	v16, v16, v1
	sub.2d	v0, v0, v5
	sub.2d	v2, v2, v6
	sub.2d	v3, v3, v7
	sub.2d	v4, v4, v16
	subs	x10, x10, #8
	b.ne	LBB6_40
; %bb.41:
	add.2d	v0, v2, v0
	add.2d	v1, v4, v3
	add.2d	v0, v1, v0
	addp.2d	d0, v0
	fmov	x22, d0
	cmp	x20, x8
	b.eq	LBB6_44
LBB6_42:
	sub	x9, x20, x8
	add	x8, x19, x8, lsl #3
LBB6_43:                                ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, #266
	cinc	x22, x22, hi
	subs	x9, x9, #1
	b.ne	LBB6_43
LBB6_44:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp35:
Lloh24:
	adrp	x0, l_.str.5@PAGE
Lloh25:
	add	x0, x0, l_.str.5@PAGEOFF
	mov	w1, #4                          ; =0x4
	mov	x2, x21
	mov	x4, x22
	mov	x5, x20
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp36:
; %bb.45:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	cmp	x20, #2
	b.lo	LBB6_49
; %bb.46:
	mov	x22, #0                         ; =0x0
	mov	w8, #1                          ; =0x1
	mov	w9, #266                        ; =0x10a
	dup.2d	v0, x9
	mov	x9, x19
	mov	w10, #1                         ; =0x1
LBB6_47:                                ; =>This Inner Loop Header: Depth=1
	ldr	q1, [x9], #16
	cmhi.2d	v1, v1, v0
	dup.2d	v2, x8
	and.16b	v1, v1, v2
	addp.2d	d1, v1
	fmov	x11, d1
	add	x22, x11, x22
	add	x10, x10, #2
	cmp	x10, x20
	b.lo	LBB6_47
; %bb.48:
	and	x11, x20, #0xfffffffffffffffe
	subs	x9, x20, x11
	b.hi	LBB6_50
	b	LBB6_57
LBB6_49:
	mov	x11, #0                         ; =0x0
	mov	x22, #0                         ; =0x0
	subs	x9, x20, x11
	b.ls	LBB6_57
LBB6_50:
	cmp	x9, #8
	b.hs	LBB6_52
; %bb.51:
	mov	x8, x11
	b	LBB6_55
LBB6_52:
	and	x10, x9, #0xfffffffffffffff8
	add	x8, x11, x10
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	mov.d	v1[0], x22
	add	x11, x19, x11, lsl #3
	add	x11, x11, #32
	mov	w12, #266                       ; =0x10a
	dup.2d	v2, x12
	mov	x12, x10
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB6_53:                                ; =>This Inner Loop Header: Depth=1
	ldp	q5, q6, [x11, #-32]
	ldp	q7, q16, [x11], #64
	cmhi.2d	v5, v5, v2
	cmhi.2d	v6, v6, v2
	cmhi.2d	v7, v7, v2
	cmhi.2d	v16, v16, v2
	sub.2d	v1, v1, v5
	sub.2d	v0, v0, v6
	sub.2d	v3, v3, v7
	sub.2d	v4, v4, v16
	subs	x12, x12, #8
	b.ne	LBB6_53
; %bb.54:
	add.2d	v0, v0, v1
	add.2d	v1, v4, v3
	add.2d	v0, v1, v0
	addp.2d	d0, v0
	fmov	x22, d0
	cmp	x9, x10
	b.eq	LBB6_57
LBB6_55:
	sub	x9, x20, x8
	add	x8, x19, x8, lsl #3
LBB6_56:                                ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x8], #8
	cmp	x10, #266
	cinc	x22, x22, hi
	subs	x9, x9, #1
	b.ne	LBB6_56
LBB6_57:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x3, x0
Ltmp38:
Lloh26:
	adrp	x0, l_.str.6@PAGE
Lloh27:
	add	x0, x0, l_.str.6@PAGEOFF
	mov	w1, #11                         ; =0xb
	mov	x2, x21
	mov	x4, x22
	mov	x5, x20
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
Ltmp39:
; %bb.58:
	mov	w20, #0                         ; =0x0
	cbnz	x19, LBB6_31
	b	LBB6_32
LBB6_59:
Ltmp40:
	mov	x20, x0
	b	LBB6_64
LBB6_60:
Ltmp37:
	mov	x20, x0
	b	LBB6_64
LBB6_61:
Ltmp34:
	mov	x20, x0
	b	LBB6_64
LBB6_62:
Ltmp31:
	mov	x20, x0
	b	LBB6_64
LBB6_63:
Ltmp28:
	mov	x20, x0
	ldr	x19, [sp, #8]
LBB6_64:
	cbz	x19, LBB6_66
; %bb.65:
	mov	x0, x19
	bl	__ZdlPv
LBB6_66:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh18, Lloh19
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh26, Lloh27
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
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
	.uleb128 Ltmp29-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp30-Ltmp29                  ;   Call between Ltmp29 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin1            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp33-Ltmp32                  ;   Call between Ltmp32 and Ltmp33
	.uleb128 Ltmp34-Lfunc_begin1            ;     jumps to Ltmp34
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp36-Ltmp35                  ;   Call between Ltmp35 and Ltmp36
	.uleb128 Ltmp37-Lfunc_begin1            ;     jumps to Ltmp37
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
Lloh28:
	adrp	x0, l_.str.7@PAGE
Lloh29:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh28, Lloh29
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
Lloh30:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh31:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh32:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh33:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB9_2:
Ltmp43:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh32, Lloh33
	.loh AdrpLdrGot	Lloh30, Lloh31
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table9:
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
Lloh34:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh35:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh34, Lloh35
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
Lloh36:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh37:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh38:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh39:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh38, Lloh39
	.loh AdrpLdrGot	Lloh36, Lloh37
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
	b.eq	LBB12_5
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
	cbz	x13, LBB12_6
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
LBB12_3:                                ; =>This Inner Loop Header: Depth=1
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
	b.hs	LBB12_3
; %bb.4:
	str	x17, [x1, #2496]
	add	x0, x0, x12
LBB12_5:
	ret
LBB12_6:
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
	b.ne	LBB13_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB13_7
; %bb.3:
Ltmp47:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp48:
; %bb.4:
Ltmp49:
Lloh40:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh41:
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
LBB13_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp54:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp55:
; %bb.8:
	cbnz	x0, LBB13_10
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
LBB13_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB13_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB13_12:
Ltmp59:
	b	LBB13_15
LBB13_13:
Ltmp53:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB13_16
LBB13_14:
Ltmp56:
LBB13_15:
	mov	x20, x0
LBB13_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB13_18
LBB13_17:
Ltmp46:
	mov	x20, x0
LBB13_18:
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
	b	LBB13_11
LBB13_20:
Ltmp62:
	mov	x19, x0
Ltmp63:
	bl	___cxa_end_catch
Ltmp64:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB13_22:
Ltmp65:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh40, Lloh41
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table13:
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
	cbz	x0, LBB14_16
; %bb.1:
	mov	x23, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	mov	x24, x1
	ldr	x26, [x4, #24]
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB14_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x24
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB14_15
LBB14_3:
	sub	x8, x22, x24
	cmp	x26, x8
	b.le	LBB14_12
; %bb.4:
	mov	x9, #-9                         ; =0xfffffffffffffff7
	movk	x9, #32767, lsl #48
	sub	x24, x26, x8
	cmp	x24, x9
	b.hs	LBB14_17
; %bb.5:
	cmp	x24, #23
	b.hs	LBB14_7
; %bb.6:
	strb	w24, [sp, #31]
	add	x25, sp, #8
	b	LBB14_8
LBB14_7:
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
LBB14_8:
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
Ltmp66:
	mov	x0, x19
	mov	x2, x24
	blr	x8
Ltmp67:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB14_11
; %bb.10:
	cmp	x0, x24
	b.ne	LBB14_15
	b	LBB14_12
LBB14_11:
	ldr	x8, [sp, #8]
	mov	x23, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x23, x24
	b.ne	LBB14_15
LBB14_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB14_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB14_15
LBB14_14:
	str	xzr, [x20, #24]
	b	LBB14_16
LBB14_15:
	mov	x19, #0                         ; =0x0
LBB14_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB14_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
LBB14_18:
Ltmp68:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB14_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB14_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table14:
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
Lloh42:
	adrp	x0, l_.str.8@PAGE
Lloh43:
	add	x0, x0, l_.str.8@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh42, Lloh43
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
Lloh44:
	adrp	x24, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh45:
	ldr	x24, [x24, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x23, x24, #64
	mov	x19, x0
	str	x23, [x19, #112]!
	str	xzr, [x0, #160]
Lloh46:
	adrp	x22, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh47:
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
Lloh48:
	adrp	x23, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh49:
	ldr	x23, [x23, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x9, x23, #16
	stp	x8, x9, [x20]
	add	x0, x20, #16
	bl	__ZNSt3__16localeC1Ev
	movi.2d	v0, #0000000000000000
	mov	x24, x20
	str	q0, [x24, #72]!
	stur	q0, [x24, #-16]
Lloh50:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh51:
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
LBB16_3:
Ltmp74:
	mov	x21, x0
	ldrsb	w8, [x20, #95]
	tbz	w8, #31, LBB16_5
; %bb.4:
	ldr	x0, [x24]
	bl	__ZdlPv
LBB16_5:
	add	x8, x23, #16
	str	x8, [x20, #8]
	add	x0, x20, #16
	bl	__ZNSt3__16localeD1Ev
	add	x1, x22, #8
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x21
	bl	__Unwind_Resume
LBB16_6:
Ltmp71:
	mov	x21, x0
	mov	x0, x19
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh46, Lloh47
	.loh AdrpLdrGot	Lloh44, Lloh45
	.loh AdrpLdrGot	Lloh50, Lloh51
	.loh AdrpLdrGot	Lloh48, Lloh49
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table16:
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
Lloh52:
	adrp	x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh53:
	ldr	x20, [x20, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [x0]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
Lloh54:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh55:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0, #8]
	ldrsb	w8, [x0, #95]
	tbz	w8, #31, LBB17_2
; %bb.1:
	ldr	x0, [x19, #72]
	bl	__ZdlPv
LBB17_2:
Lloh56:
	adrp	x8, __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh57:
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
	.loh AdrpLdrGot	Lloh54, Lloh55
	.loh AdrpLdrGot	Lloh52, Lloh53
	.loh AdrpLdrGot	Lloh56, Lloh57
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
	tbnz	x9, #63, LBB18_7
; %bb.1:
	mov	x19, x8
	mov	x20, x9
	ldr	w10, [x0, #96]
	tbz	w10, #3, LBB18_3
LBB18_2:
	add	x11, x19, x20
	str	x11, [x0, #88]
	stp	x19, x19, [x0, #16]
	str	x11, [x0, #32]
LBB18_3:
	tbz	w10, #4, LBB18_18
; %bb.4:
	add	x10, x19, x20
	str	x10, [x0, #88]
	tbnz	w9, #31, LBB18_8
; %bb.5:
	mov	w10, #22                        ; =0x16
	cmp	w9, #21
	b.ls	LBB18_9
; %bb.6:
	strb	w10, [x0, #87]
	b	LBB18_11
LBB18_7:
	ldp	x19, x20, [x0, #64]
	ldr	w10, [x0, #96]
	tbnz	w10, #3, LBB18_2
	b	LBB18_3
LBB18_8:
	ldp	x9, x10, [x0, #72]
	and	x10, x10, #0x7fffffffffffffff
	sub	x10, x10, #1
	cmp	x10, x9
	b.ls	LBB18_10
LBB18_9:
	mov	x21, x0
	sub	x1, x10, x9
	mov	x0, x8
	mov	w2, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc
	mov	x0, x21
	ldrsb	x8, [x21, #87]
	tbz	x8, #63, LBB18_13
	b	LBB18_12
LBB18_10:
	ldr	x8, [x0, #64]
	str	x10, [x0, #72]
LBB18_11:
	strb	wzr, [x8, x10]
	ldrsb	x8, [x0, #87]
	tbz	x8, #63, LBB18_13
LBB18_12:
	ldr	x8, [x0, #72]
LBB18_13:
	add	x8, x19, x8
	stp	x19, x19, [x0, #40]
	str	x8, [x0, #56]
	ldrb	w8, [x0, #96]
	tst	w8, #0x3
	b.eq	LBB18_18
; %bb.14:
	lsr	x8, x20, #31
	cbz	x8, LBB18_16
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
LBB18_16:
	cbz	x20, LBB18_18
; %bb.17:
	add	x8, x19, x20
	str	x8, [x0, #48]
LBB18_18:
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
