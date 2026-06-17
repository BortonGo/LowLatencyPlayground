	.build_version macos, 26, 0	sdk_version 26, 5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym ; -- Begin function _Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	.p2align	2
__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym: ; @_Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	sub	x1, x29, #24
	stur	x2, [x29, #-24]
	sub	x0, x29, #32
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	stur	x5, [x29, #-48]
	bl	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	sub	x1, x29, #56
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-56]
	add	x0, sp, #72
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	stur	d0, [x29, #-64]
	ldur	d0, [x29, #-48]
	ucvtf	d0, d0
	ldur	d1, [x29, #-64]
	fdiv	d0, d0, d1
	str	d0, [sp, #64]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #48]
	ldr	x1, [sp, #48]
	ldr	x2, [sp, #56]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
	mov	w1, #10                         ; =0xa
	str	w1, [sp, #36]                   ; 4-byte Folded Spill
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-40]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	ldr	w1, [sp, #36]                   ; 4-byte Folded Reload
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	str	x8, [sp, #40]
	bl	__ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE
	ldr	w1, [sp, #36]                   ; 4-byte Folded Reload
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	d0, [sp, #64]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	ldr	w1, [sp, #36]                   ; 4-byte Folded Reload
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE ; -- Begin function _ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.globl	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak_definition	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	2
__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE: ; @_ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	add	x8, sp, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	.globl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev: ; @_ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c ; -- Begin function _ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.globl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.weak_definition	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.p2align	2
__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c: ; @_ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	str	x0, [sp, #8]
	add	x1, sp, #7
	strb	w8, [sp, #7]
	ldr	x0, [sp, #8]
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE ; -- Begin function _ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
	.globl	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
	.weak_definition	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
	.p2align	2
__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE: ; @_ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_17basic_string_viewIS4_S5_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	sub	x0, x29, #16
	str	x0, [sp]                        ; 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe210106Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE ; -- Begin function _ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE
	.globl	__ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE
	.weak_definition	__ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE
	.p2align	2
__ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE: ; @_ZNSt3__16chronolsB9nqe210106IcNS_11char_traitsIcEExNS_5ratioILl1ELl1000000EEEEERNS_13basic_ostreamIT_T0_EESA_RKNS0_8durationIT1_T2_EE
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #448
	stp	x28, x27, [sp, #416]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #432]            ; 16-byte Folded Spill
	add	x29, sp, #432
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	add	x0, sp, #136
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	ldr	x8, [sp, #136]
	ldur	x8, [x8, #-24]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	bl	__ZNKSt3__18ios_base5flagsB9nqe210106Ev
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	mov	x1, x0
Ltmp1:
	add	x0, x8, x9
	bl	__ZNSt3__18ios_base5flagsB9nqe210106Ej
Ltmp2:
	b	LBB7_1
LBB7_1:
	add	x8, sp, #136
	ldr	x9, [sp, #136]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp3:
	add	x8, sp, #104
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp4:
	b	LBB7_2
LBB7_2:
Ltmp5:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	add	x8, sp, #112
	add	x1, sp, #104
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueB9nqe210106ERKNS_6localeE
Ltmp6:
	b	LBB7_3
LBB7_3:
	add	x0, sp, #112
	bl	__ZNSt3__16localeD1Ev
	add	x0, sp, #104
	bl	__ZNSt3__16localeD1Ev
	add	x8, sp, #136
	ldr	x9, [sp, #136]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp8:
	bl	__ZNKSt3__18ios_base9precisionB9nqe210106Ev
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp9:
	b	LBB7_4
LBB7_4:
Ltmp10:
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__18ios_base9precisionB9nqe210106El
Ltmp11:
	b	LBB7_5
LBB7_5:
	ldur	x0, [x29, #-32]
Ltmp12:
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp13:
	b	LBB7_6
LBB7_6:
Ltmp14:
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	add	x0, sp, #136
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp15:
	b	LBB7_7
LBB7_7:
Ltmp16:
	bl	__ZNSt3__16chrono14__units_suffixB9nqe210106IcNS_5ratioILl1ELl1000000EEEEEDav
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp17:
	b	LBB7_8
LBB7_8:
Ltmp18:
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp19:
	b	LBB7_9
LBB7_9:
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp20:
	add	x8, sp, #80
	add	x0, sp, #136
	bl	__ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev
Ltmp21:
	b	LBB7_10
LBB7_10:
Ltmp23:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #80
	bl	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp24:
	b	LBB7_11
LBB7_11:
	add	x0, sp, #80
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #136
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #432]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #416]            ; 16-byte Folded Reload
	add	sp, sp, #448
	ret
LBB7_12:
Ltmp22:
	str	x0, [sp, #128]
	mov	x8, x1
	str	w8, [sp, #124]
	b	LBB7_15
LBB7_13:
Ltmp7:
	str	x0, [sp, #128]
	mov	x8, x1
	str	w8, [sp, #124]
	add	x0, sp, #104
	bl	__ZNSt3__16localeD1Ev
	b	LBB7_15
LBB7_14:
Ltmp25:
	str	x0, [sp, #128]
	mov	x8, x1
	str	w8, [sp, #124]
	add	x0, sp, #80
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB7_15
LBB7_15:
	add	x0, sp, #136
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB7_16
LBB7_16:
	ldr	x0, [sp, #128]
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp1-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp4-Ltmp1                    ;   Call between Ltmp1 and Ltmp4
	.uleb128 Ltmp22-Lfunc_begin0            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin0             ;     jumps to Ltmp7
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp21-Ltmp8                   ;   Call between Ltmp8 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin0            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp24-Ltmp23                  ;   Call between Ltmp23 and Ltmp24
	.uleb128 Ltmp25-Lfunc_begin0            ;     jumps to Ltmp25
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Lfunc_end0-Ltmp24              ;   Call between Ltmp24 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE ; -- Begin function _ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.globl	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.weak_definition	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.p2align	2
__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE: ; @_ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclB9nqe210106ERKS5_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z10sum_pricesNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE ; -- Begin function _Z10sum_pricesNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.p2align	2
__Z10sum_pricesNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE: ; @_Z10sum_pricesNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-24]
	stur	xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	stur	x0, [x29, #-48]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-56]
	ldur	x0, [x29, #-56]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5beginB9nqe210106Ev
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-56]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE3endB9nqe210106Ev
	stur	x0, [x29, #-72]
	b	LBB9_1
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #64
	sub	x1, x29, #72
	bl	__ZNSt3__1eqB9nqe210106IPKN3llp5OrderEEEbRKNS_11__wrap_iterIT_EES9_
	tbnz	w0, #0, LBB9_4
	b	LBB9_2
LBB9_2:                                 ;   in Loop: Header=BB9_1 Depth=1
	sub	x0, x29, #64
	bl	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEEdeB9nqe210106Ev
	ldr	q0, [x0]
	str	q0, [sp, #48]
	ldr	q0, [x0, #16]
	str	q0, [sp, #64]
	ldr	x9, [sp, #64]
	ldur	x8, [x29, #-40]
	add	x8, x8, x9
	stur	x8, [x29, #-40]
	ldr	x9, [sp, #48]
	ldur	x8, [x29, #-32]
	add	x8, x8, x9
	stur	x8, [x29, #-32]
	b	LBB9_3
LBB9_3:                                 ;   in Loop: Header=BB9_1 Depth=1
	sub	x0, x29, #64
	bl	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEppB9nqe210106Ev
	b	LBB9_1
LBB9_4:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #40]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #16]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #8]
	ldr	x8, [sp, #40]
	str	x8, [sp]
	ldur	x4, [x29, #-32]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	mov	x5, #16960                      ; =0x4240
	movk	x5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	ldur	x0, [x29, #-40]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5beginB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5beginB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5beginB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5beginB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5beginB9nqe210106Ev: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5beginB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe210106IPS2_Li0EEES7_T_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__make_iterB9nqe210106EPKS2_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE3endB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE3endB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE3endB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE3endB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE3endB9nqe210106Ev: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE3endB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe210106IPS2_Li0EEES7_T_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__make_iterB9nqe210106EPKS2_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1eqB9nqe210106IPKN3llp5OrderEEEbRKNS_11__wrap_iterIT_EES9_ ; -- Begin function _ZNSt3__1eqB9nqe210106IPKN3llp5OrderEEEbRKNS_11__wrap_iterIT_EES9_
	.globl	__ZNSt3__1eqB9nqe210106IPKN3llp5OrderEEEbRKNS_11__wrap_iterIT_EES9_
	.weak_definition	__ZNSt3__1eqB9nqe210106IPKN3llp5OrderEEEbRKNS_11__wrap_iterIT_EES9_
	.p2align	2
__ZNSt3__1eqB9nqe210106IPKN3llp5OrderEEEbRKNS_11__wrap_iterIT_EES9_: ; @_ZNSt3__1eqB9nqe210106IPKN3llp5OrderEEEbRKNS_11__wrap_iterIT_EES9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEE4baseB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEE4baseB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w0, eq
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEEdeB9nqe210106Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPKN3llp5OrderEEdeB9nqe210106Ev
	.globl	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEEdeB9nqe210106Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEEdeB9nqe210106Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPKN3llp5OrderEEdeB9nqe210106Ev: ; @_ZNKSt3__111__wrap_iterIPKN3llp5OrderEEdeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEppB9nqe210106Ev ; -- Begin function _ZNSt3__111__wrap_iterIPKN3llp5OrderEEppB9nqe210106Ev
	.globl	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEppB9nqe210106Ev
	.weak_definition	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEppB9nqe210106Ev
	.p2align	2
__ZNSt3__111__wrap_iterIPKN3llp5OrderEEppB9nqe210106Ev: ; @_ZNSt3__111__wrap_iterIPKN3llp5OrderEEppB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	add	x8, x8, #32
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z17count_price_aboveNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEy ; -- Begin function _Z17count_price_aboveNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEy
	.p2align	2
__Z17count_price_aboveNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEy: ; @_Z17count_price_aboveNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	xzr, [x29, #-40]
	stur	xzr, [x29, #-48]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	stur	x0, [x29, #-56]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5beginB9nqe210106Ev
	stur	x0, [x29, #-72]
	ldur	x0, [x29, #-64]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE3endB9nqe210106Ev
	str	x0, [sp, #80]
	b	LBB15_1
LBB15_1:                                ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #72
	add	x1, sp, #80
	bl	__ZNSt3__1eqB9nqe210106IPKN3llp5OrderEEEbRKNS_11__wrap_iterIT_EES9_
	tbnz	w0, #0, LBB15_6
	b	LBB15_2
LBB15_2:                                ;   in Loop: Header=BB15_1 Depth=1
	sub	x0, x29, #72
	bl	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEEdeB9nqe210106Ev
	ldr	q0, [x0]
	str	q0, [sp, #48]
	ldr	q0, [x0, #16]
	str	q0, [sp, #64]
	ldr	x8, [sp, #64]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	b.ls	LBB15_4
	b	LBB15_3
LBB15_3:                                ;   in Loop: Header=BB15_1 Depth=1
	ldur	x8, [x29, #-48]
	add	x8, x8, #1
	stur	x8, [x29, #-48]
	ldr	x9, [sp, #48]
	ldur	x8, [x29, #-40]
	add	x8, x8, x9
	stur	x8, [x29, #-40]
	b	LBB15_4
LBB15_4:                                ;   in Loop: Header=BB15_1 Depth=1
	b	LBB15_5
LBB15_5:                                ;   in Loop: Header=BB15_1 Depth=1
	sub	x0, x29, #72
	bl	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEppB9nqe210106Ev
	b	LBB15_1
LBB15_6:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #40]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #16]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]
	ldr	x8, [sp, #40]
	str	x8, [sp]
	ldur	x4, [x29, #-40]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	mov	x5, #16960                      ; =0x4240
	movk	x5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	ldur	x0, [x29, #-48]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z18count_valid_ordersNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE ; -- Begin function _Z18count_valid_ordersNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.p2align	2
__Z18count_valid_ordersNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE: ; @_Z18count_valid_ordersNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-24]
	stur	xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	stur	x0, [x29, #-48]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-56]
	ldur	x0, [x29, #-56]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5beginB9nqe210106Ev
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-56]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE3endB9nqe210106Ev
	stur	x0, [x29, #-72]
	b	LBB16_1
LBB16_1:                                ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #64
	sub	x1, x29, #72
	bl	__ZNSt3__1eqB9nqe210106IPKN3llp5OrderEEEbRKNS_11__wrap_iterIT_EES9_
	tbnz	w0, #0, LBB16_7
	b	LBB16_2
LBB16_2:                                ;   in Loop: Header=BB16_1 Depth=1
	sub	x0, x29, #64
	bl	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEEdeB9nqe210106Ev
	ldr	q0, [x0]
	str	q0, [sp, #48]
	ldr	q0, [x0, #16]
	str	q0, [sp, #64]
	ldr	x8, [sp, #48]
	subs	x8, x8, #0
	b.ls	LBB16_5
	b	LBB16_3
LBB16_3:                                ;   in Loop: Header=BB16_1 Depth=1
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.ls	LBB16_5
	b	LBB16_4
LBB16_4:                                ;   in Loop: Header=BB16_1 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	ldr	x9, [sp, #48]
	ldur	x8, [x29, #-32]
	add	x8, x8, x9
	stur	x8, [x29, #-32]
	b	LBB16_5
LBB16_5:                                ;   in Loop: Header=BB16_1 Depth=1
	b	LBB16_6
LBB16_6:                                ;   in Loop: Header=BB16_1 Depth=1
	sub	x0, x29, #64
	bl	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEppB9nqe210106Ev
	b	LBB16_1
LBB16_7:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #40]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #16]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #8]
	ldr	x8, [sp, #40]
	str	x8, [sp]
	ldur	x4, [x29, #-32]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	mov	x5, #16960                      ; =0x4240
	movk	x5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	ldur	x0, [x29, #-40]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z17copy_matching_idsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEyRNS4_IyNS7_IyEEEE ; -- Begin function _Z17copy_matching_idsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEyRNS4_IyNS7_IyEEEE
	.p2align	2
__Z17copy_matching_idsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEyRNS4_IyNS7_IyEEEE: ; @_Z17copy_matching_idsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEEyRNS4_IyNS7_IyEEEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	stur	xzr, [x29, #-48]
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE5clearB9nqe210106Ev
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	stur	x0, [x29, #-56]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5beginB9nqe210106Ev
	stur	x0, [x29, #-72]
	ldur	x0, [x29, #-64]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE3endB9nqe210106Ev
	str	x0, [sp, #80]
	b	LBB17_1
LBB17_1:                                ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #72
	add	x1, sp, #80
	bl	__ZNSt3__1eqB9nqe210106IPKN3llp5OrderEEEbRKNS_11__wrap_iterIT_EES9_
	tbnz	w0, #0, LBB17_6
	b	LBB17_2
LBB17_2:                                ;   in Loop: Header=BB17_1 Depth=1
	sub	x0, x29, #72
	bl	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEEdeB9nqe210106Ev
	ldr	q0, [x0]
	str	q0, [sp, #48]
	ldr	q0, [x0, #16]
	str	q0, [sp, #64]
	ldr	x8, [sp, #64]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	b.ls	LBB17_4
	b	LBB17_3
LBB17_3:                                ;   in Loop: Header=BB17_1 Depth=1
	ldur	x0, [x29, #-40]
	add	x1, sp, #48
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy
	ldr	x9, [sp, #48]
	ldur	x8, [x29, #-48]
	add	x8, x8, x9
	stur	x8, [x29, #-48]
	b	LBB17_4
LBB17_4:                                ;   in Loop: Header=BB17_1 Depth=1
	b	LBB17_5
LBB17_5:                                ;   in Loop: Header=BB17_1 Depth=1
	sub	x0, x29, #72
	bl	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEppB9nqe210106Ev
	b	LBB17_1
LBB17_6:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #40]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #16]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]
	ldr	x8, [sp, #40]
	str	x8, [sp]
	ldur	x4, [x29, #-48]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	mov	x5, #16960                      ; =0x4240
	movk	x5, #15, lsl #16
	bl	__Z10printStatsNSt3__117basic_string_viewIcNS_11char_traitsIcEEEENS_6chrono10time_pointINS4_12steady_clockENS4_8durationIxNS_5ratioILl1ELl1000000000EEEEEEESB_ym
	ldur	x0, [x29, #-40]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE5clearB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE5clearB9nqe210106Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE5clearB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE5clearB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE5clearB9nqe210106Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE5clearB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB9nqe210106EPy
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB9nqe210106Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE9push_backB9nqe210106ERKy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE12emplace_backIJRKyEEERyDpOT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11printModulov               ; -- Begin function _Z11printModulov
	.p2align	2
__Z11printModulov:                      ; @_Z11printModulov
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	w1, #10                         ; =0xa
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, #16960                      ; =0x4240
	movk	x8, #15, lsl #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	wzr, [x29, #-4]
	sub	x0, x29, #32
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC1B9nqe210106Ev
	sub	x0, x29, #56
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp29:
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE7reserveEm
Ltmp30:
	b	LBB22_1
LBB22_1:
Ltmp31:
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #56
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7reserveEm
Ltmp32:
	b	LBB22_2
LBB22_2:
	str	xzr, [sp, #64]
	b	LBB22_3
LBB22_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #64]
	subs	x8, x8, x9
	b.hs	LBB22_8
	b	LBB22_4
LBB22_4:                                ;   in Loop: Header=BB22_3 Depth=1
	add	x1, sp, #32
	str	xzr, [sp, #32]
	str	xzr, [sp, #40]
	str	xzr, [sp, #48]
	str	wzr, [sp, #56]
	mov	w8, #1                          ; =0x1
	strb	w8, [sp, #60]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #32]
	ldr	x8, [sp, #64]
	mov	x10, #1000                      ; =0x3e8
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	mov	x10, #100                       ; =0x64
	add	x8, x8, #100
	str	x8, [sp, #48]
	ldr	x8, [sp, #64]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	add	x8, x8, #1
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #56]
	ldr	x8, [sp, #64]
	mov	x10, #2                         ; =0x2
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x9, x8, x9
	mov	w8, #2                          ; =0x2
	subs	x9, x9, #0
	csinc	w8, w8, wzr, ne
	strb	w8, [sp, #60]
Ltmp37:
	sub	x0, x29, #32
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_
Ltmp38:
	b	LBB22_5
LBB22_5:                                ;   in Loop: Header=BB22_3 Depth=1
	b	LBB22_6
LBB22_6:                                ;   in Loop: Header=BB22_3 Depth=1
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	b	LBB22_3
LBB22_7:
Ltmp39:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	sub	x0, x29, #56
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B9nqe210106Ev
	sub	x0, x29, #32
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED1B9nqe210106Ev
	b	LBB22_11
LBB22_8:
Ltmp33:
	add	x0, sp, #16
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106EPKc
Ltmp34:
	b	LBB22_9
LBB22_9:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
Ltmp35:
	sub	x2, x29, #32
	bl	__Z10sum_pricesNSt3__117basic_string_viewIcNS_11char_traitsIcEEEERKNS_6vectorIN3llp5OrderENS_9allocatorIS6_EEEE
Ltmp36:
	b	LBB22_10
LBB22_10:
	stur	wzr, [x29, #-4]
	sub	x0, x29, #56
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B9nqe210106Ev
	sub	x0, x29, #32
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED1B9nqe210106Ev
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB22_11:
	ldur	x0, [x29, #-64]
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table22:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp29-Lfunc_begin1            ; >> Call Site 1 <<
	.uleb128 Ltmp36-Ltmp29                  ;   Call between Ltmp29 and Ltmp36
	.uleb128 Ltmp39-Lfunc_begin1            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Lfunc_end1-Ltmp36              ;   Call between Ltmp36 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC1B9nqe210106Ev: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEEC1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B9nqe210106Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE7reserveEm ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE7reserveEm
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE7reserveEm
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE7reserveEm
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE7reserveEm: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE7reserveEm
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB25_6
	b	LBB25_1
LBB25_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB25_3
	b	LBB25_2
LBB25_2:
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
LBB25_3:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x3, x8, #16
	add	x0, sp, #56
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC1EmmS5_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp40:
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
Ltmp41:
	b	LBB25_4
LBB25_4:
	add	x0, sp, #56
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED1Ev
	b	LBB25_6
LBB25_5:
Ltmp42:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	add	x0, sp, #56
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED1Ev
	b	LBB25_7
LBB25_6:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB25_7:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table25:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp40-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp40
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp41-Ltmp40                  ;   Call between Ltmp40 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin2            ;     jumps to Ltmp42
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp41              ;   Call between Ltmp41 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE7reserveEm ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE7reserveEm
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7reserveEm
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE7reserveEm
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE7reserveEm: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE7reserveEm
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB26_6
	b	LBB26_1
LBB26_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB26_3
	b	LBB26_2
LBB26_2:
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
LBB26_3:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x3, x8, #16
	add	x0, sp, #56
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp43:
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
Ltmp44:
	b	LBB26_4
LBB26_4:
	add	x0, sp, #56
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	b	LBB26_6
LBB26_5:
Ltmp45:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	add	x0, sp, #56
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	b	LBB26_7
LBB26_6:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB26_7:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table26:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp43-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp43
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp44-Ltmp43                  ;   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin3            ;     jumps to Ltmp45
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp44              ;   Call between Ltmp44 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_ ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE9push_backB9nqe210106ERKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106EPKc ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106EPKc
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106EPKc
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106EPKc: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEED1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEED1B9nqe210106Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEED1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEED2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED1B9nqe210106Ev: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_ ; -- Begin function _ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.globl	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.weak_definition	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.p2align	2
__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ; @_ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, sp, #24
	str	x8, [sp, #24]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	add	x0, sp, #16
	str	x8, [sp, #16]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	add	x1, sp, #32
	str	x8, [sp, #32]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.globl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev: ; @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	add	x0, sp, #8
	str	d0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	d0, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE ; -- Begin function _ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.globl	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.weak_definition	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.p2align	2
__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE: ; @_ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_
	stur	d0, [x29, #-8]
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_ ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_
	.globl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_
	.weak_definition	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_
	.p2align	2
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	scvtf	d0, x0
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	mov	x1, sp
	str	d0, [sp]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	d0, [x8]
	str	d0, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclB9nqe210106ERKS5_ ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclB9nqe210106ERKS5_
	.globl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclB9nqe210106ERKS5_
	.weak_definition	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclB9nqe210106ERKS5_
	.p2align	2
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclB9nqe210106ERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclB9nqe210106ERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	mov	x8, #1000                       ; =0x3e8
	sdiv	x8, x0, x8
	mov	x1, sp
	str	x8, [sp]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC1B9nqe210106IxLi0EEERKT_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC1B9nqe210106IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC1B9nqe210106IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC1B9nqe210106IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC1B9nqe210106IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC1B9nqe210106IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC2B9nqe210106IxLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC2B9nqe210106IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC2B9nqe210106IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC2B9nqe210106IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC2B9nqe210106IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC2B9nqe210106IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__make_iterB9nqe210106EPKS2_ ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__make_iterB9nqe210106EPKS2_
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__make_iterB9nqe210106EPKS2_
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__make_iterB9nqe210106EPKS2_
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__make_iterB9nqe210106EPKS2_: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__make_iterB9nqe210106EPKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	sub	x0, x29, #8
	bl	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEC1B9nqe210106ES4_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe210106IPS2_Li0EEES7_T_ ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe210106IPS2_Li0EEES7_T_
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe210106IPS2_Li0EEES7_T_
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe210106IPS2_Li0EEES7_T_: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__add_alignment_assumptionB9nqe210106IPS2_Li0EEES7_T_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEC1B9nqe210106ES4_ ; -- Begin function _ZNSt3__111__wrap_iterIPKN3llp5OrderEEC1B9nqe210106ES4_
	.globl	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEC1B9nqe210106ES4_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEC1B9nqe210106ES4_
	.p2align	2
__ZNSt3__111__wrap_iterIPKN3llp5OrderEEC1B9nqe210106ES4_: ; @_ZNSt3__111__wrap_iterIPKN3llp5OrderEEC1B9nqe210106ES4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEC2B9nqe210106ES4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEC2B9nqe210106ES4_ ; -- Begin function _ZNSt3__111__wrap_iterIPKN3llp5OrderEEC2B9nqe210106ES4_
	.globl	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEC2B9nqe210106ES4_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPKN3llp5OrderEEC2B9nqe210106ES4_
	.p2align	2
__ZNSt3__111__wrap_iterIPKN3llp5OrderEEC2B9nqe210106ES4_: ; @_ZNSt3__111__wrap_iterIPKN3llp5OrderEEC2B9nqe210106ES4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEE4baseB9nqe210106Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPKN3llp5OrderEE4baseB9nqe210106Ev
	.globl	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEE4baseB9nqe210106Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPKN3llp5OrderEE4baseB9nqe210106Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPKN3llp5OrderEE4baseB9nqe210106Ev: ; @_ZNKSt3__111__wrap_iterIPKN3llp5OrderEE4baseB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB9nqe210106EPy ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB9nqe210106EPy
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB9nqe210106EPy
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB9nqe210106EPy
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB9nqe210106EPy: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB9nqe210106EPy
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB49_1
LBB49_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB49_4
	b	LBB49_2
LBB49_2:                                ;   in Loop: Header=BB49_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #8
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp54:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB9nqe210106IyLi0EEEvRS2_PT_
Ltmp55:
	b	LBB49_3
LBB49_3:                                ;   in Loop: Header=BB49_1 Depth=1
	b	LBB49_1
LBB49_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB49_5:
Ltmp56:
	bl	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table49:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp54-Lfunc_begin4            ; >> Call Site 1 <<
	.uleb128 Ltmp55-Ltmp54                  ;   Call between Ltmp54 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin4            ;     jumps to Ltmp56
	.byte	1                               ;   On action: 1
Lcst_end4:
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
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB9nqe210106Em
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB9nqe210106Em: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB9nqe210106Em
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
Ltmp57:
	add	x1, x10, x11, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp58:
	b	LBB50_1
LBB50_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB50_2:
Ltmp59:
	bl	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table50:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp57-Lfunc_begin5            ; >> Call Site 1 <<
	.uleb128 Ltmp58-Ltmp57                  ;   Call between Ltmp57 and Ltmp58
	.uleb128 Ltmp59-Lfunc_begin5            ;     jumps to Ltmp59
	.byte	1                               ;   On action: 1
Lcst_end5:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB9nqe210106IyLi0EEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB9nqe210106IyLi0EEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB9nqe210106IyLi0EEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB9nqe210106IyLi0EEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB9nqe210106IyLi0EEEvRS2_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__112__destroy_atB9nqe210106IyLi0EEEvPT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	.globl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_: ; @_ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
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
	.private_extern	__ZNSt3__112__destroy_atB9nqe210106IyLi0EEEvPT_ ; -- Begin function _ZNSt3__112__destroy_atB9nqe210106IyLi0EEEvPT_
	.globl	__ZNSt3__112__destroy_atB9nqe210106IyLi0EEEvPT_
	.weak_definition	__ZNSt3__112__destroy_atB9nqe210106IyLi0EEEvPT_
	.p2align	2
__ZNSt3__112__destroy_atB9nqe210106IyLi0EEEvPT_: ; @_ZNSt3__112__destroy_atB9nqe210106IyLi0EEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_ ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	add	x1, x8, x9, lsl #3
	bl	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIyEEEEvPKvS4_S4_S4_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIyEEEEvPKvS4_S4_S4_ ; -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIyEEEEvPKvS4_S4_S4_
	.globl	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIyEEEEvPKvS4_S4_S4_
	.weak_definition	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIyEEEEvPKvS4_S4_S4_
	.p2align	2
__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIyEEEEvPKvS4_S4_S4_: ; @_ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIyEEEEvPKvS4_S4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE12emplace_backIJRKyEEERyDpOT_ ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE12emplace_backIJRKyEEERyDpOT_
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE12emplace_backIJRKyEEERyDpOT_
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE12emplace_backIJRKyEEERyDpOT_: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE12emplace_backIJRKyEEERyDpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.hs	LBB59_2
	b	LBB59_1
LBB59_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE30__emplace_back_assume_capacityB9nqe210106IJRKyEEEvDpOT_
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	LBB59_3
LBB59_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE24__emplace_back_slow_pathIJRKyEEEPyDpOT_
	str	x0, [sp, #8]
	b	LBB59_3
LBB59_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	subs	x0, x8, #8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE30__emplace_back_assume_capacityB9nqe210106IJRKyEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE30__emplace_back_assume_capacityB9nqe210106IJRKyEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE30__emplace_back_assume_capacityB9nqe210106IJRKyEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE30__emplace_back_assume_capacityB9nqe210106IJRKyEEEvDpOT_: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE30__emplace_back_assume_capacityB9nqe210106IJRKyEEEvDpOT_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #24
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp64:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB9nqe210106IyJRKyELi0EEEvRS2_PT_DpOT0_
Ltmp65:
	b	LBB60_1
LBB60_1:
	add	x0, sp, #24
	ldr	x8, [sp, #32]
	add	x8, x8, #8
	str	x8, [sp, #32]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B9nqe210106Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB60_2:
Ltmp66:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	add	x0, sp, #24
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B9nqe210106Ev
	b	LBB60_3
LBB60_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table60:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp64-Lfunc_begin6            ;   Call between Lfunc_begin6 and Ltmp64
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp64-Lfunc_begin6            ; >> Call Site 2 <<
	.uleb128 Ltmp65-Ltmp64                  ;   Call between Ltmp64 and Ltmp65
	.uleb128 Ltmp66-Lfunc_begin6            ;     jumps to Ltmp66
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp65-Lfunc_begin6            ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp65              ;   Call between Ltmp65 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE24__emplace_back_slow_pathIJRKyEEEPyDpOT_ ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE24__emplace_back_slow_pathIJRKyEEEPyDpOT_
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE24__emplace_back_slow_pathIJRKyEEEPyDpOT_
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE24__emplace_back_slow_pathIJRKyEEEPyDpOT_: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE24__emplace_back_slow_pathIJRKyEEEPyDpOT_
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB9nqe210106Em
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x0, sp, #40
	add	x3, x8, #16
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	ldr	x0, [sp, #56]
	bl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp67:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB9nqe210106IyJRKyELi0EEEvRS2_PT_DpOT0_
Ltmp68:
	b	LBB61_1
LBB61_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	ldr	x8, [sp, #56]
	add	x8, x8, #8
	str	x8, [sp, #56]
Ltmp69:
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
Ltmp70:
	b	LBB61_2
LBB61_2:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB61_3:
Ltmp71:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	b	LBB61_4
LBB61_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table61:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp67-Lfunc_begin7            ;   Call between Lfunc_begin7 and Ltmp67
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp67-Lfunc_begin7            ; >> Call Site 2 <<
	.uleb128 Ltmp70-Ltmp67                  ;   Call between Ltmp67 and Ltmp70
	.uleb128 Ltmp71-Lfunc_begin7            ;     jumps to Ltmp71
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp70-Lfunc_begin7            ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp70              ;   Call between Ltmp70 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B9nqe210106ERS3_m ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B9nqe210106ERS3_m: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B9nqe210106ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB9nqe210106IyJRKyELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB9nqe210106IyJRKyELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB9nqe210106IyJRKyELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB9nqe210106IyJRKyELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB9nqe210106IyJRKyELi0EEEvRS2_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__114__construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B9nqe210106Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B9nqe210106ERS3_m ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B9nqe210106ERS3_m: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B9nqe210106ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	str	x9, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	ldr	x10, [sp, #8]
	add	x9, x9, x10, lsl #3
	str	x9, [x8, #16]
	ldr	x0, [x8]
	ldr	x1, [sp, #8]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE19__annotate_increaseB9nqe210106Em
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE19__annotate_increaseB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE19__annotate_increaseB9nqe210106Em
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE19__annotate_increaseB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE19__annotate_increaseB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE19__annotate_increaseB9nqe210106Em: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE19__annotate_increaseB9nqe210106Em
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	ldr	x12, [sp]                       ; 8-byte Folded Reload
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x10, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp72:
	add	x1, x11, x12, lsl #3
	add	x8, x8, x10, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp73:
	b	LBB66_1
LBB66_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB66_2:
Ltmp74:
	bl	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table66:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp72-Lfunc_begin8            ; >> Call Site 1 <<
	.uleb128 Ltmp73-Ltmp72                  ;   Call between Ltmp72 and Ltmp73
	.uleb128 Ltmp74-Lfunc_begin8            ;     jumps to Ltmp74
	.byte	1                               ;   On action: 1
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_ ; -- Begin function _ZNSt3__114__construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_
	.globl	__ZNSt3__114__construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_
	.weak_definition	__ZNSt3__114__construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_
	.p2align	2
__ZNSt3__114__construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_: ; @_ZNSt3__114__construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__112construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_ ; -- Begin function _ZNSt3__112construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_
	.globl	__ZNSt3__112construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_
	.weak_definition	__ZNSt3__112construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_
	.p2align	2
__ZNSt3__112construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_: ; @_ZNSt3__112construct_atB9nqe210106IyJRKyEPyEEPT_S5_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B9nqe210106Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
	ldr	x8, [x9, #8]
	ldr	x10, [x9]
	str	x8, [x10, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB69_2
	b	LBB69_1
LBB69_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x9]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x1, x8, x9
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB9nqe210106Em
	b	LBB69_2
LBB69_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB9nqe210106Em
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB9nqe210106Em: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeB9nqe210106Ev
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ls	LBB70_2
	b	LBB70_1
LBB70_1:
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
LBB70_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2                         ; =0x2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	b.lo	LBB70_4
	b	LBB70_3
LBB70_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB70_5
LBB70_4:
	ldr	x9, [sp, #24]
	mov	x8, #2                          ; =0x2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB70_5
LBB70_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	x10, [x8, #8]
	ldr	x11, [x8]
	subs	x10, x10, x11
	mov	x11, #8                         ; =0x8
	sdiv	x11, x10, x11
	mov	x10, #0                         ; =0x0
	subs	x10, x10, x11
	add	x9, x9, x10, lsl #3
	str	x9, [sp, #24]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, x8, #16
	bl	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIyEEPyEEvRT_T0_S6_S6_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [x0]
	str	x8, [x0, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB9nqe210106IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB9nqe210106IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #16
	add	x1, x8, #24
	bl	__ZNSt3__14swapB9nqe210106IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB9nqe210106Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeB9nqe210106Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeB9nqe210106Ev
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp76:
	bl	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp77:
	b	LBB74_1
LBB74_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB74_2:
Ltmp78:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table74:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp76-Lfunc_begin9            ; >> Call Site 1 <<
	.uleb128 Ltmp77-Ltmp76                  ;   Call between Ltmp76 and Ltmp77
	.uleb128 Ltmp78-Lfunc_begin9            ;     jumps to Ltmp78
	.byte	1                               ;   On action: 1
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.globl	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_: ; @_ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.globl	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_: ; @_ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	__ZNSt3__114numeric_limitsImE3maxB9nqe210106Ev
	mov	x8, #8                          ; =0x8
	udiv	x0, x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev ; -- Begin function _ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.globl	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.weak_definition	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.p2align	2
__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev: ; @_ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB80_2
	b	LBB80_1
LBB80_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB80_3
LBB80_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB80_3
LBB80_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_ ; -- Begin function _ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.globl	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.weak_definition	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.p2align	2
__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_: ; @_ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w0, lo
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsImE3maxB9nqe210106Ev ; -- Begin function _ZNSt3__114numeric_limitsImE3maxB9nqe210106Ev
	.globl	__ZNSt3__114numeric_limitsImE3maxB9nqe210106Ev
	.weak_definition	__ZNSt3__114numeric_limitsImE3maxB9nqe210106Ev
	.p2align	2
__ZNSt3__114numeric_limitsImE3maxB9nqe210106Ev: ; @_ZNSt3__114numeric_limitsImE3maxB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB9nqe210106Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB9nqe210106Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB9nqe210106Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB9nqe210106Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB9nqe210106Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB9nqe210106Ev: ; @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #-1                         ; =0xffffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev: ; @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #9223372036854775807        ; =0x7fffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB9nqe210106EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.globl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.weak_definition	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB9nqe210106EPKc: ; @_ZNSt3__120__throw_length_errorB9nqe210106EPKc
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp80:
	bl	__ZNSt12length_errorC1B9nqe210106EPKc
Ltmp81:
	b	LBB85_1
LBB85_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB85_2:
Ltmp82:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB85_3
LBB85_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table85:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ; >> Call Site 1 <<
	.uleb128 Ltmp80-Lfunc_begin10           ;   Call between Lfunc_begin10 and Ltmp80
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp80-Lfunc_begin10           ; >> Call Site 2 <<
	.uleb128 Ltmp81-Ltmp80                  ;   Call between Ltmp80 and Ltmp81
	.uleb128 Ltmp82-Lfunc_begin10           ;     jumps to Ltmp82
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp81-Lfunc_begin10           ; >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp81             ;   Call between Ltmp81 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
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
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt12length_errorC2B9nqe210106EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt12length_errorC2B9nqe210106EPKc ; -- Begin function _ZNSt12length_errorC2B9nqe210106EPKc
	.globl	__ZNSt12length_errorC2B9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC2B9nqe210106EPKc
	.p2align	2
__ZNSt12length_errorC2B9nqe210106EPKc:  ; @_ZNSt12length_errorC2B9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTVSt12length_error@GOTPAGE
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB88_2
	b	LBB88_1
LBB88_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB88_3
LBB88_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB88_3
LBB88_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9, #24]
	ldr	x8, [sp, #24]
	str	x8, [x9, #32]
	ldur	x8, [x29, #-24]
	cbnz	x8, LBB89_2
	b	LBB89_1
LBB89_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB89_3
LBB89_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIyEEEEDaRT_m
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB89_3
LBB89_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x10, [sp, #32]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #16]
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-24]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #24]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIyEEEEDaRT_m ; -- Begin function _ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIyEEEEDaRT_m
	.globl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIyEEEEDaRT_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIyEEEEDaRT_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIyEEEEDaRT_m: ; @_ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIyEEEEDaRT_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE17allocate_at_leastB9nqe210106IS2_EENS_17allocation_resultIPymEERT_m
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE17allocate_at_leastB9nqe210106IS2_EENS_17allocation_resultIPymEERT_m ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIyEEE17allocate_at_leastB9nqe210106IS2_EENS_17allocation_resultIPymEERT_m
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE17allocate_at_leastB9nqe210106IS2_EENS_17allocation_resultIPymEERT_m
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIyEEE17allocate_at_leastB9nqe210106IS2_EENS_17allocation_resultIPymEERT_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorIyEEE17allocate_at_leastB9nqe210106IS2_EENS_17allocation_resultIPymEERT_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIyE17allocate_at_leastB9nqe210106Em
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIyE17allocate_at_leastB9nqe210106Em ; -- Begin function _ZNSt3__19allocatorIyE17allocate_at_leastB9nqe210106Em
	.globl	__ZNSt3__19allocatorIyE17allocate_at_leastB9nqe210106Em
	.weak_definition	__ZNSt3__19allocatorIyE17allocate_at_leastB9nqe210106Em
	.p2align	2
__ZNSt3__19allocatorIyE17allocate_at_leastB9nqe210106Em: ; @_ZNSt3__19allocatorIyE17allocate_at_leastB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIyE8allocateB9nqe210106Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIyE8allocateB9nqe210106Em ; -- Begin function _ZNSt3__19allocatorIyE8allocateB9nqe210106Em
	.globl	__ZNSt3__19allocatorIyE8allocateB9nqe210106Em
	.weak_definition	__ZNSt3__19allocatorIyE8allocateB9nqe210106Em
	.p2align	2
__ZNSt3__19allocatorIyE8allocateB9nqe210106Em: ; @_ZNSt3__19allocatorIyE8allocateB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB9nqe210106IS2_Li0EEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB93_2
	b	LBB93_1
LBB93_1:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
LBB93_2:
	ldr	x0, [sp, #16]
	mov	x1, #8                          ; =0x8
	bl	__ZNSt3__117__libcpp_allocateB9nqe210106IyEEPT_NS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB9nqe210106v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.globl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.weak_definition	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB9nqe210106v: ; @_ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt20bad_array_new_lengthC1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB9nqe210106IyEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB9nqe210106IyEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB9nqe210106IyEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB9nqe210106IyEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB9nqe210106IyEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB9nqe210106IyEEPT_NS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #3
	str	x8, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	tbz	w0, #0, LBB95_2
	b	LBB95_1
LBB95_1:
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	__ZnwmSt11align_val_t
	stur	x0, [x29, #-8]
	b	LBB95_3
LBB95_2:
	ldr	x0, [sp]
	bl	__Znwm
	stur	x0, [x29, #-8]
	b	LBB95_3
LBB95_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em ; -- Begin function _ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	.globl	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	.weak_definition	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	.p2align	2
__ZNSt3__124__is_overaligned_for_newB9nqe210106Em: ; @_ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #16
	cset	w0, hi
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB9nqe210106Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB9nqe210106Ev
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
Ltmp84:
	add	x1, x10, x11, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp85:
	b	LBB97_1
LBB97_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB97_2:
Ltmp86:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table97:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp84-Lfunc_begin11           ; >> Call Site 1 <<
	.uleb128 Ltmp85-Ltmp84                  ;   Call between Ltmp84 and Ltmp85
	.uleb128 Ltmp86-Lfunc_begin11           ;     jumps to Ltmp86
	.byte	1                               ;   On action: 1
Lcst_end11:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIyEEPyEEvRT_T0_S6_S6_ ; -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIyEEPyEEvRT_T0_S6_S6_
	.globl	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIyEEPyEEvRT_T0_S6_S6_
	.weak_definition	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIyEEPyEEvRT_T0_S6_S6_
	.p2align	2
__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIyEEPyEEvRT_T0_S6_S6_: ; @_ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIyEEPyEEvRT_T0_S6_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x9, x8, x9
	mov	x8, #8                          ; =0x8
	sdiv	x9, x9, x8
	mul	x2, x8, x9
	bl	_memcpy
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB9nqe210106IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_ ; -- Begin function _ZNSt3__14swapB9nqe210106IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.globl	__ZNSt3__14swapB9nqe210106IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.weak_definition	__ZNSt3__14swapB9nqe210106IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.p2align	2
__ZNSt3__14swapB9nqe210106IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_: ; @_ZNSt3__14swapB9nqe210106IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB9nqe210106Em
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB9nqe210106Em: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB9nqe210106Em
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp88:
	add	x1, x10, x11, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB9nqe210106EPKvS5_
Ltmp89:
	b	LBB100_1
LBB100_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB100_2:
Ltmp90:
	bl	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table100:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp88-Lfunc_begin12           ; >> Call Site 1 <<
	.uleb128 Ltmp89-Ltmp88                  ;   Call between Ltmp88 and Ltmp89
	.uleb128 Ltmp90-Lfunc_begin12           ;     jumps to Ltmp90
	.byte	1                               ;   On action: 1
Lcst_end12:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB9nqe210106Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	cbz	x8, LBB101_3
	b	LBB101_1
LBB101_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp91:
	bl	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB9nqe210106Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp92:
	b	LBB101_2
LBB101_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB9nqe210106ERS2_Pym
	b	LBB101_3
LBB101_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB101_4:
Ltmp93:
	bl	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table101:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp91-Lfunc_begin13           ; >> Call Site 1 <<
	.uleb128 Ltmp92-Ltmp91                  ;   Call between Ltmp91 and Ltmp92
	.uleb128 Ltmp93-Lfunc_begin13           ;     jumps to Ltmp93
	.byte	1                               ;   On action: 1
Lcst_end13:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB9nqe210106Ev ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB9nqe210106Ev
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB9nqe210106Ev
	.weak_definition	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB9nqe210106Ev
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB9nqe210106Ev: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPy
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB9nqe210106ERS2_Pym ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB9nqe210106ERS2_Pym
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB9nqe210106ERS2_Pym
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB9nqe210106ERS2_Pym
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB9nqe210106ERS2_Pym: ; @_ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB9nqe210106ERS2_Pym
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIyE10deallocateB9nqe210106EPym
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB9nqe210106Ev ; -- Begin function _ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB9nqe210106Ev
	.globl	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB9nqe210106Ev
	.weak_definition	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB9nqe210106Ev
	.p2align	2
__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB9nqe210106Ev: ; @_ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPy ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPy
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPy
	.weak_definition	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPy
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPy: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPyNS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPyNS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPyNS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPyNS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPyNS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPyNS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB9nqe210106EPyNS_17integral_constantIbLb0EEE
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB106_1
LBB106_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB106_4
	b	LBB106_2
LBB106_2:                               ;   in Loop: Header=BB106_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #32]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #8
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB9nqe210106IyEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp95:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB9nqe210106IyLi0EEEvRS2_PT_
Ltmp96:
	b	LBB106_3
LBB106_3:                               ;   in Loop: Header=BB106_1 Depth=1
	b	LBB106_1
LBB106_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB106_5:
Ltmp97:
	bl	___clang_call_terminate
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table106:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Ltmp95-Lfunc_begin14           ; >> Call Site 1 <<
	.uleb128 Ltmp96-Ltmp95                  ;   Call between Ltmp95 and Ltmp96
	.uleb128 Ltmp97-Lfunc_begin14           ;     jumps to Ltmp97
	.byte	1                               ;   On action: 1
Lcst_end14:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19allocatorIyE10deallocateB9nqe210106EPym ; -- Begin function _ZNSt3__19allocatorIyE10deallocateB9nqe210106EPym
	.globl	__ZNSt3__19allocatorIyE10deallocateB9nqe210106EPym
	.weak_definition	__ZNSt3__19allocatorIyE10deallocateB9nqe210106EPym
	.p2align	2
__ZNSt3__19allocatorIyE10deallocateB9nqe210106EPym: ; @_ZNSt3__19allocatorIyE10deallocateB9nqe210106EPym
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	x2, #8                          ; =0x8
	bl	__ZNSt3__119__libcpp_deallocateB9nqe210106IyEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB9nqe210106IyEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe210106IyEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB9nqe210106IyEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB9nqe210106IyEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB9nqe210106IyEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB9nqe210106IyEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #3
	str	x8, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	tbz	w0, #0, LBB108_2
	b	LBB108_1
LBB108_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	__ZdlPvSt11align_val_t
	b	LBB108_3
LBB108_2:
	ldur	x0, [x29, #-8]
	bl	__ZdlPv
	b	LBB108_3
LBB108_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC2B9nqe210106Ev: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	add	x0, x8, #16
	bl	__ZNSt3__19allocatorIN3llp5OrderEEC1B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIN3llp5OrderEEC1B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIN3llp5OrderEEC1B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIN3llp5OrderEEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIN3llp5OrderEEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIN3llp5OrderEEC1B9nqe210106Ev: ; @_ZNSt3__19allocatorIN3llp5OrderEEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIN3llp5OrderEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIN3llp5OrderEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIN3llp5OrderEEC2B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIN3llp5OrderEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIN3llp5OrderEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIN3llp5OrderEEC2B9nqe210106Ev: ; @_ZNSt3__19allocatorIN3llp5OrderEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIN3llp5OrderEEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIN3llp5OrderEEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIN3llp5OrderEEEEC2B9nqe210106Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIN3llp5OrderEEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIN3llp5OrderEEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIN3llp5OrderEEEEC2B9nqe210106Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIN3llp5OrderEEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEEC2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B9nqe210106Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	add	x0, x8, #16
	bl	__ZNSt3__19allocatorIyEC1B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIyEC1B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIyEC1B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIyEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIyEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIyEC1B9nqe210106Ev: ; @_ZNSt3__19allocatorIyEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIyEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIyEC2B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIyEC2B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIyEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIyEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIyEC2B9nqe210106Ev: ; @_ZNSt3__19allocatorIyEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B9nqe210106Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B9nqe210106Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #32                         ; =0x20
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp101:
	bl	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp102:
	b	LBB118_1
LBB118_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB118_2:
Ltmp103:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table118:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp101-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp102-Ltmp101                ;   Call between Ltmp101 and Ltmp102
	.uleb128 Ltmp103-Lfunc_begin15          ;     jumps to Ltmp103
	.byte	1                               ;   On action: 1
Lcst_end15:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #32                         ; =0x20
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC1EmmS5_ ; -- Begin function _ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC1EmmS5_
	.globl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC1EmmS5_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC1EmmS5_
	.p2align	2
__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC1EmmS5_: ; @_ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC1EmmS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC2EmmS5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	x10, [x8, #8]
	ldr	x11, [x8]
	subs	x10, x10, x11
	mov	x11, #32                        ; =0x20
	sdiv	x11, x10, x11
	mov	x10, #0                         ; =0x0
	subs	x10, x10, x11
	add	x9, x9, x10, lsl #5
	str	x9, [sp, #24]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, x8, #16
	bl	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIN3llp5OrderEEEPS3_EEvRT_T0_S8_S8_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [x0]
	str	x8, [x0, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB9nqe210106IPN3llp5OrderEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB9nqe210106IPN3llp5OrderEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #16
	add	x1, x8, #24
	bl	__ZNSt3__14swapB9nqe210106IPN3llp5OrderEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED1Ev
	.globl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED1Ev: ; @_ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	__ZNSt3__114numeric_limitsImE3maxB9nqe210106Ev
	mov	x8, #32                         ; =0x20
	udiv	x0, x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC2EmmS5_ ; -- Begin function _ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC2EmmS5_
	.globl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC2EmmS5_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC2EmmS5_
	.p2align	2
__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC2EmmS5_: ; @_ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC2EmmS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9, #24]
	ldr	x8, [sp, #24]
	str	x8, [x9, #32]
	ldur	x8, [x29, #-24]
	cbnz	x8, LBB125_2
	b	LBB125_1
LBB125_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB125_3
LBB125_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIN3llp5OrderEEEEEDaRT_m
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB125_3
LBB125_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x10, [sp, #32]
	add	x8, x8, x10, lsl #5
	str	x8, [x9, #16]
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-24]
	add	x8, x8, x10, lsl #5
	str	x8, [x9, #24]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIN3llp5OrderEEEEEDaRT_m ; -- Begin function _ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIN3llp5OrderEEEEEDaRT_m
	.globl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIN3llp5OrderEEEEEDaRT_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIN3llp5OrderEEEEEDaRT_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIN3llp5OrderEEEEEDaRT_m: ; @_ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIN3llp5OrderEEEEEDaRT_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE17allocate_at_leastB9nqe210106IS4_EENS_17allocation_resultIPS3_mEERT_m
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE17allocate_at_leastB9nqe210106IS4_EENS_17allocation_resultIPS3_mEERT_m ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE17allocate_at_leastB9nqe210106IS4_EENS_17allocation_resultIPS3_mEERT_m
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE17allocate_at_leastB9nqe210106IS4_EENS_17allocation_resultIPS3_mEERT_m
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE17allocate_at_leastB9nqe210106IS4_EENS_17allocation_resultIPS3_mEERT_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE17allocate_at_leastB9nqe210106IS4_EENS_17allocation_resultIPS3_mEERT_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIN3llp5OrderEE17allocate_at_leastB9nqe210106Em
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIN3llp5OrderEE17allocate_at_leastB9nqe210106Em ; -- Begin function _ZNSt3__19allocatorIN3llp5OrderEE17allocate_at_leastB9nqe210106Em
	.globl	__ZNSt3__19allocatorIN3llp5OrderEE17allocate_at_leastB9nqe210106Em
	.weak_definition	__ZNSt3__19allocatorIN3llp5OrderEE17allocate_at_leastB9nqe210106Em
	.p2align	2
__ZNSt3__19allocatorIN3llp5OrderEE17allocate_at_leastB9nqe210106Em: ; @_ZNSt3__19allocatorIN3llp5OrderEE17allocate_at_leastB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIN3llp5OrderEE8allocateB9nqe210106Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIN3llp5OrderEE8allocateB9nqe210106Em ; -- Begin function _ZNSt3__19allocatorIN3llp5OrderEE8allocateB9nqe210106Em
	.globl	__ZNSt3__19allocatorIN3llp5OrderEE8allocateB9nqe210106Em
	.weak_definition	__ZNSt3__19allocatorIN3llp5OrderEE8allocateB9nqe210106Em
	.p2align	2
__ZNSt3__19allocatorIN3llp5OrderEE8allocateB9nqe210106Em: ; @_ZNSt3__19allocatorIN3llp5OrderEE8allocateB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB129_2
	b	LBB129_1
LBB129_1:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
LBB129_2:
	ldr	x0, [sp, #16]
	mov	x1, #8                          ; =0x8
	bl	__ZNSt3__117__libcpp_allocateB9nqe210106IN3llp5OrderEEEPT_NS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB9nqe210106IN3llp5OrderEEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB9nqe210106IN3llp5OrderEEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB9nqe210106IN3llp5OrderEEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB9nqe210106IN3llp5OrderEEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB9nqe210106IN3llp5OrderEEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB9nqe210106IN3llp5OrderEEEPT_NS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #5
	str	x8, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	tbz	w0, #0, LBB130_2
	b	LBB130_1
LBB130_1:
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	__ZnwmSt11align_val_t
	stur	x0, [x29, #-8]
	b	LBB130_3
LBB130_2:
	ldr	x0, [sp]
	bl	__Znwm
	stur	x0, [x29, #-8]
	b	LBB130_3
LBB130_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
Ltmp105:
	add	x1, x10, x11, lsl #5
	add	x2, x8, x9, lsl #5
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
Ltmp106:
	b	LBB131_1
LBB131_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB131_2:
Ltmp107:
	bl	___clang_call_terminate
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table131:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp105-Lfunc_begin16          ; >> Call Site 1 <<
	.uleb128 Ltmp106-Ltmp105                ;   Call between Ltmp105 and Ltmp106
	.uleb128 Ltmp107-Lfunc_begin16          ;     jumps to Ltmp107
	.byte	1                               ;   On action: 1
Lcst_end16:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIN3llp5OrderEEEPS3_EEvRT_T0_S8_S8_ ; -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIN3llp5OrderEEEPS3_EEvRT_T0_S8_S8_
	.globl	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIN3llp5OrderEEEPS3_EEvRT_T0_S8_S8_
	.weak_definition	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIN3llp5OrderEEEPS3_EEvRT_T0_S8_S8_
	.p2align	2
__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIN3llp5OrderEEEPS3_EEvRT_T0_S8_S8_: ; @_ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIN3llp5OrderEEEPS3_EEvRT_T0_S8_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x9, x8, x9
	mov	x8, #32                         ; =0x20
	sdiv	x9, x9, x8
	mul	x2, x8, x9
	bl	_memcpy
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_ ; -- Begin function _ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	.globl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	.weak_definition	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	.p2align	2
__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_: ; @_ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB9nqe210106IPN3llp5OrderEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_ ; -- Begin function _ZNSt3__14swapB9nqe210106IPN3llp5OrderEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.globl	__ZNSt3__14swapB9nqe210106IPN3llp5OrderEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.weak_definition	__ZNSt3__14swapB9nqe210106IPN3llp5OrderEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.p2align	2
__ZNSt3__14swapB9nqe210106IPN3llp5OrderEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_: ; @_ZNSt3__14swapB9nqe210106IPN3llp5OrderEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp110:
	add	x1, x10, x11, lsl #5
	add	x2, x8, x9, lsl #5
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
Ltmp111:
	b	LBB135_1
LBB135_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB135_2:
Ltmp112:
	bl	___clang_call_terminate
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table135:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp110-Lfunc_begin17          ; >> Call Site 1 <<
	.uleb128 Ltmp111-Ltmp110                ;   Call between Ltmp110 and Ltmp111
	.uleb128 Ltmp112-Lfunc_begin17          ;     jumps to Ltmp112
	.byte	1                               ;   On action: 1
Lcst_end17:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_ ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	add	x1, x8, x9, lsl #5
	bl	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIN3llp5OrderEEEEEvPKvS6_S6_S6_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIN3llp5OrderEEEEEvPKvS6_S6_S6_ ; -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIN3llp5OrderEEEEEvPKvS6_S6_S6_
	.globl	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIN3llp5OrderEEEEEvPKvS6_S6_S6_
	.weak_definition	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIN3llp5OrderEEEEEvPKvS6_S6_S6_
	.p2align	2
__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIN3llp5OrderEEEEEvPKvS6_S6_S6_: ; @_ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIN3llp5OrderEEEEEvPKvS6_S6_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED2Ev
	.globl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED2Ev: ; @_ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED2Ev
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	cbz	x8, LBB139_3
	b	LBB139_1
LBB139_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp114:
	bl	__ZNKSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp115:
	b	LBB139_2
LBB139_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE10deallocateB9nqe210106ERS4_PS3_m
	b	LBB139_3
LBB139_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB139_4:
Ltmp116:
	bl	___clang_call_terminate
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table139:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Ltmp114-Lfunc_begin18          ; >> Call Site 1 <<
	.uleb128 Ltmp115-Ltmp114                ;   Call between Ltmp114 and Ltmp115
	.uleb128 Ltmp116-Lfunc_begin18          ;     jumps to Ltmp116
	.byte	1                               ;   On action: 1
Lcst_end18:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE5clearB9nqe210106Ev ; -- Begin function _ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.globl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.weak_definition	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.p2align	2
__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE5clearB9nqe210106Ev: ; @_ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE10deallocateB9nqe210106ERS4_PS3_m ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE10deallocateB9nqe210106ERS4_PS3_m
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE10deallocateB9nqe210106ERS4_PS3_m
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE10deallocateB9nqe210106ERS4_PS3_m
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE10deallocateB9nqe210106ERS4_PS3_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE10deallocateB9nqe210106ERS4_PS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIN3llp5OrderEE10deallocateB9nqe210106EPS2_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE8capacityB9nqe210106Ev ; -- Begin function _ZNKSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.globl	__ZNKSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.weak_definition	__ZNKSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.p2align	2
__ZNKSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE8capacityB9nqe210106Ev: ; @_ZNKSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #32                         ; =0x20
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_ ; -- Begin function _ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_
	.globl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_
	.weak_definition	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_
	.p2align	2
__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_: ; @_ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB144_1
LBB144_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB144_4
	b	LBB144_2
LBB144_2:                               ;   in Loop: Header=BB144_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #32]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #32
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp118:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_
Ltmp119:
	b	LBB144_3
LBB144_3:                               ;   in Loop: Header=BB144_1 Depth=1
	b	LBB144_1
LBB144_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB144_5:
Ltmp120:
	bl	___clang_call_terminate
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table144:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase12-Lttbaseref12
Lttbaseref12:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Ltmp118-Lfunc_begin19          ; >> Call Site 1 <<
	.uleb128 Ltmp119-Ltmp118                ;   Call between Ltmp118 and Ltmp119
	.uleb128 Ltmp120-Lfunc_begin19          ;     jumps to Ltmp120
	.byte	1                               ;   On action: 1
Lcst_end19:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__112__destroy_atB9nqe210106IN3llp5OrderELi0EEEvPT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__destroy_atB9nqe210106IN3llp5OrderELi0EEEvPT_ ; -- Begin function _ZNSt3__112__destroy_atB9nqe210106IN3llp5OrderELi0EEEvPT_
	.globl	__ZNSt3__112__destroy_atB9nqe210106IN3llp5OrderELi0EEEvPT_
	.weak_definition	__ZNSt3__112__destroy_atB9nqe210106IN3llp5OrderELi0EEEvPT_
	.p2align	2
__ZNSt3__112__destroy_atB9nqe210106IN3llp5OrderELi0EEEvPT_: ; @_ZNSt3__112__destroy_atB9nqe210106IN3llp5OrderELi0EEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIN3llp5OrderEE10deallocateB9nqe210106EPS2_m ; -- Begin function _ZNSt3__19allocatorIN3llp5OrderEE10deallocateB9nqe210106EPS2_m
	.globl	__ZNSt3__19allocatorIN3llp5OrderEE10deallocateB9nqe210106EPS2_m
	.weak_definition	__ZNSt3__19allocatorIN3llp5OrderEE10deallocateB9nqe210106EPS2_m
	.p2align	2
__ZNSt3__19allocatorIN3llp5OrderEE10deallocateB9nqe210106EPS2_m: ; @_ZNSt3__19allocatorIN3llp5OrderEE10deallocateB9nqe210106EPS2_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	x2, #8                          ; =0x8
	bl	__ZNSt3__119__libcpp_deallocateB9nqe210106IN3llp5OrderEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB9nqe210106IN3llp5OrderEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe210106IN3llp5OrderEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB9nqe210106IN3llp5OrderEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB9nqe210106IN3llp5OrderEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB9nqe210106IN3llp5OrderEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB9nqe210106IN3llp5OrderEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #5
	str	x8, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	tbz	w0, #0, LBB148_2
	b	LBB148_1
LBB148_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	__ZdlPvSt11align_val_t
	b	LBB148_3
LBB148_2:
	ldur	x0, [x29, #-8]
	bl	__ZdlPv
	b	LBB148_3
LBB148_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_ ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.hs	LBB149_2
	b	LBB149_1
LBB149_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJRKS2_EEEvDpOT_
	ldr	x8, [sp, #8]
	add	x8, x8, #32
	str	x8, [sp, #8]
	b	LBB149_3
LBB149_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRKS2_EEEPS2_DpOT_
	str	x0, [sp, #8]
	b	LBB149_3
LBB149_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	subs	x0, x8, #32
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJRKS2_EEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJRKS2_EEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJRKS2_EEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJRKS2_EEEvDpOT_: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJRKS2_EEEvDpOT_
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #24
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp122:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE9constructB9nqe210106IS3_JRKS3_ELi0EEEvRS4_PT_DpOT0_
Ltmp123:
	b	LBB150_1
LBB150_1:
	add	x0, sp, #24
	ldr	x8, [sp, #32]
	add	x8, x8, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB150_2:
Ltmp124:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	add	x0, sp, #24
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	b	LBB150_3
LBB150_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table150:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Lfunc_begin20-Lfunc_begin20    ; >> Call Site 1 <<
	.uleb128 Ltmp122-Lfunc_begin20          ;   Call between Lfunc_begin20 and Ltmp122
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp122-Lfunc_begin20          ; >> Call Site 2 <<
	.uleb128 Ltmp123-Ltmp122                ;   Call between Ltmp122 and Ltmp123
	.uleb128 Ltmp124-Lfunc_begin20          ;     jumps to Ltmp124
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp123-Lfunc_begin20          ; >> Call Site 3 <<
	.uleb128 Lfunc_end20-Ltmp123            ;   Call between Ltmp123 and Lfunc_end20
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end20:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRKS2_EEEPS2_DpOT_ ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRKS2_EEEPS2_DpOT_
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRKS2_EEEPS2_DpOT_
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRKS2_EEEPS2_DpOT_: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRKS2_EEEPS2_DpOT_
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__recommendB9nqe210106Em
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x0, sp, #40
	add	x3, x8, #16
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEEC1EmmS5_
	ldr	x0, [sp, #56]
	bl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp125:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE9constructB9nqe210106IS3_JRKS3_ELi0EEEvRS4_PT_DpOT0_
Ltmp126:
	b	LBB151_1
LBB151_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	ldr	x8, [sp, #56]
	add	x8, x8, #32
	str	x8, [sp, #56]
Ltmp127:
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
Ltmp128:
	b	LBB151_2
LBB151_2:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB151_3:
Ltmp129:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIN3llp5OrderERNS_9allocatorIS2_EEED1Ev
	b	LBB151_4
LBB151_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table151:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Lfunc_begin21-Lfunc_begin21    ; >> Call Site 1 <<
	.uleb128 Ltmp125-Lfunc_begin21          ;   Call between Lfunc_begin21 and Ltmp125
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp125-Lfunc_begin21          ; >> Call Site 2 <<
	.uleb128 Ltmp128-Ltmp125                ;   Call between Ltmp125 and Ltmp128
	.uleb128 Ltmp129-Lfunc_begin21          ;     jumps to Ltmp129
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp128-Lfunc_begin21          ; >> Call Site 3 <<
	.uleb128 Lfunc_end21-Ltmp128            ;   Call between Ltmp128 and Lfunc_end21
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end21:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE9constructB9nqe210106IS3_JRKS3_ELi0EEEvRS4_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE9constructB9nqe210106IS3_JRKS3_ELi0EEEvRS4_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE9constructB9nqe210106IS3_JRKS3_ELi0EEEvRS4_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE9constructB9nqe210106IS3_JRKS3_ELi0EEEvRS4_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE9constructB9nqe210106IS3_JRKS3_ELi0EEEvRS4_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__114__construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	str	x9, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	ldr	x10, [sp, #8]
	add	x9, x9, x10, lsl #5
	str	x9, [x8, #16]
	ldr	x0, [x8]
	ldr	x1, [sp, #8]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	ldr	x12, [sp]                       ; 8-byte Folded Reload
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x10, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp130:
	add	x1, x11, x12, lsl #5
	add	x8, x8, x10, lsl #5
	add	x2, x8, x9, lsl #5
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
Ltmp131:
	b	LBB156_1
LBB156_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB156_2:
Ltmp132:
	bl	___clang_call_terminate
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table156:
Lexception22:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase13-Lttbaseref13
Lttbaseref13:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Ltmp130-Lfunc_begin22          ; >> Call Site 1 <<
	.uleb128 Ltmp131-Ltmp130                ;   Call between Ltmp130 and Ltmp131
	.uleb128 Ltmp132-Lfunc_begin22          ;     jumps to Ltmp132
	.byte	1                               ;   On action: 1
Lcst_end22:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_ ; -- Begin function _ZNSt3__114__construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_
	.globl	__ZNSt3__114__construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_
	.weak_definition	__ZNSt3__114__construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_
	.p2align	2
__ZNSt3__114__construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_: ; @_ZNSt3__114__construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__112construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_ ; -- Begin function _ZNSt3__112construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_
	.globl	__ZNSt3__112construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_
	.weak_definition	__ZNSt3__112construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_
	.p2align	2
__ZNSt3__112construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_: ; @_ZNSt3__112construct_atB9nqe210106IN3llp5OrderEJRKS2_EPS2_EEPT_S7_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	q0, [x8]
	str	q0, [x0]
	ldr	q0, [x8, #16]
	str	q0, [x0, #16]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
	ldr	x8, [x9, #8]
	ldr	x10, [x9]
	str	x8, [x10, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB159_2
	b	LBB159_1
LBB159_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x9]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #32                         ; =0x20
	sdiv	x1, x8, x9
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
	b	LBB159_2
LBB159_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception23
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
Ltmp134:
	add	x1, x10, x11, lsl #5
	add	x2, x8, x9, lsl #5
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
Ltmp135:
	b	LBB160_1
LBB160_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB160_2:
Ltmp136:
	bl	___clang_call_terminate
Lfunc_end23:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table160:
Lexception23:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase14-Lttbaseref14
Lttbaseref14:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end23-Lcst_begin23
Lcst_begin23:
	.uleb128 Ltmp134-Lfunc_begin23          ; >> Call Site 1 <<
	.uleb128 Ltmp135-Ltmp134                ;   Call between Ltmp134 and Ltmp135
	.uleb128 Ltmp136-Lfunc_begin23          ;     jumps to Ltmp136
	.byte	1                               ;   On action: 1
Lcst_end23:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase14:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__recommendB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__recommendB9nqe210106Em
	.globl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__recommendB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__recommendB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__recommendB9nqe210106Em: ; @_ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE11__recommendB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ls	LBB161_2
	b	LBB161_1
LBB161_1:
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
LBB161_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2                         ; =0x2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	b.lo	LBB161_4
	b	LBB161_3
LBB161_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB161_5
LBB161_4:
	ldr	x9, [sp, #24]
	mov	x8, #2                          ; =0x2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB161_5
LBB161_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106EPKc ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106EPKc
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106EPKc
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106EPKc: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [x9]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__128__char_traits_length_checkedB9nqe210106INS_11char_traitsIcEEEEmPKNT_9char_typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__char_traits_length_checkedB9nqe210106INS_11char_traitsIcEEEEmPKNT_9char_typeE ; -- Begin function _ZNSt3__128__char_traits_length_checkedB9nqe210106INS_11char_traitsIcEEEEmPKNT_9char_typeE
	.globl	__ZNSt3__128__char_traits_length_checkedB9nqe210106INS_11char_traitsIcEEEEmPKNT_9char_typeE
	.weak_definition	__ZNSt3__128__char_traits_length_checkedB9nqe210106INS_11char_traitsIcEEEEmPKNT_9char_typeE
	.p2align	2
__ZNSt3__128__char_traits_length_checkedB9nqe210106INS_11char_traitsIcEEEEmPKNT_9char_typeE: ; @_ZNSt3__128__char_traits_length_checkedB9nqe210106INS_11char_traitsIcEEEEmPKNT_9char_typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.globl	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc: ; @_ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_ ; -- Begin function _ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.globl	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.weak_definition	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.p2align	2
__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_: ; @_ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEED2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEED2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEED2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEED2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEED2B9nqe210106Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEED2B9nqe210106Ev
Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception24
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp137:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1B9nqe210106ERS3_
Ltmp138:
	b	LBB166_1
LBB166_1:
Ltmp139:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB9nqe210106Ev
Ltmp140:
	b	LBB166_2
LBB166_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB166_3:
Ltmp141:
	bl	___clang_call_terminate
Lfunc_end24:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table166:
Lexception24:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase15-Lttbaseref15
Lttbaseref15:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end24-Lcst_begin24
Lcst_begin24:
	.uleb128 Ltmp137-Lfunc_begin24          ; >> Call Site 1 <<
	.uleb128 Ltmp140-Ltmp137                ;   Call between Ltmp137 and Ltmp140
	.uleb128 Ltmp141-Lfunc_begin24          ;     jumps to Ltmp141
	.byte	1                               ;   On action: 1
Lcst_end24:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase15:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1B9nqe210106ERS3_ ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1B9nqe210106ERS3_
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1B9nqe210106ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1B9nqe210106ERS3_
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1B9nqe210106ERS3_: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1B9nqe210106ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2B9nqe210106ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB9nqe210106Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB9nqe210106Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, LBB168_2
	b	LBB168_1
LBB168_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE5clearB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB9nqe210106Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB9nqe210106ERS2_Pym
	b	LBB168_2
LBB168_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2B9nqe210106ERS3_ ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2B9nqe210106ERS3_
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2B9nqe210106ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2B9nqe210106ERS3_
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2B9nqe210106ERS3_: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2B9nqe210106ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED2B9nqe210106Ev: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEED2B9nqe210106Ev
Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception25
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp143:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_
Ltmp144:
	b	LBB170_1
LBB170_1:
Ltmp145:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev
Ltmp146:
	b	LBB170_2
LBB170_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB170_3:
Ltmp147:
	bl	___clang_call_terminate
Lfunc_end25:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table170:
Lexception25:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase16-Lttbaseref16
Lttbaseref16:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end25-Lcst_begin25
Lcst_begin25:
	.uleb128 Ltmp143-Lfunc_begin25          ; >> Call Site 1 <<
	.uleb128 Ltmp146-Ltmp143                ;   Call between Ltmp143 and Ltmp146
	.uleb128 Ltmp147-Lfunc_begin25          ;     jumps to Ltmp147
	.byte	1                               ;   On action: 1
Lcst_end25:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase16:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_ ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, LBB172_2
	b	LBB172_1
LBB172_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5clearB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE10deallocateB9nqe210106ERS4_PS3_m
	b	LBB172_2
LBB172_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_ ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5clearB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5clearB9nqe210106Ev: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_ ; -- Begin function _ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_
	.globl	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_
	.weak_definition	__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_
	.p2align	2
__ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_: ; @_ZNSt3__16vectorIN3llp5OrderENS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_
Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception26
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB175_1
LBB175_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB175_4
	b	LBB175_2
LBB175_2:                               ;   in Loop: Header=BB175_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #32
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB9nqe210106IN3llp5OrderEEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp149:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIN3llp5OrderEEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_
Ltmp150:
	b	LBB175_3
LBB175_3:                               ;   in Loop: Header=BB175_1 Depth=1
	b	LBB175_1
LBB175_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB175_5:
Ltmp151:
	bl	___clang_call_terminate
Lfunc_end26:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table175:
Lexception26:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase17-Lttbaseref17
Lttbaseref17:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end26-Lcst_begin26
Lcst_begin26:
	.uleb128 Ltmp149-Lfunc_begin26          ; >> Call Site 1 <<
	.uleb128 Ltmp150-Ltmp149                ;   Call between Ltmp149 and Ltmp150
	.uleb128 Ltmp151-Lfunc_begin26          ;     jumps to Ltmp151
	.byte	1                               ;   On action: 1
Lcst_end26:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase17:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception27
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp152:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp153:
	b	LBB176_1
LBB176_1:
Ltmp155:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp156:
	b	LBB176_2
LBB176_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB176_18
	b	LBB176_3
LBB176_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp157:
	bl	__ZNKSt3__18ios_base5flagsB9nqe210106Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp158:
	b	LBB176_4
LBB176_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB176_6
	b	LBB176_5
LBB176_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB176_7
LBB176_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB176_7
LBB176_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp159:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp160:
	b	LBB176_8
LBB176_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp161:
	bl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp162:
	b	LBB176_9
LBB176_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	tbz	w0, #0, LBB176_17
	b	LBB176_10
LBB176_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp163:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
Ltmp164:
	b	LBB176_11
LBB176_11:
	b	LBB176_17
LBB176_12:
Ltmp154:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB176_14
LBB176_13:
Ltmp165:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB176_14
LBB176_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp166:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp167:
	b	LBB176_15
LBB176_15:
	bl	___cxa_end_catch
	b	LBB176_16
LBB176_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB176_17:
	b	LBB176_18
LBB176_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB176_16
LBB176_19:
Ltmp168:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp169:
	bl	___cxa_end_catch
Ltmp170:
	b	LBB176_20
LBB176_20:
	b	LBB176_21
LBB176_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB176_22:
Ltmp171:
	bl	___clang_call_terminate
Lfunc_end27:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table176:
Lexception27:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase18-Lttbaseref18
Lttbaseref18:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end27-Lcst_begin27
Lcst_begin27:
	.uleb128 Ltmp152-Lfunc_begin27          ; >> Call Site 1 <<
	.uleb128 Ltmp153-Ltmp152                ;   Call between Ltmp152 and Ltmp153
	.uleb128 Ltmp154-Lfunc_begin27          ;     jumps to Ltmp154
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp155-Lfunc_begin27          ; >> Call Site 2 <<
	.uleb128 Ltmp164-Ltmp155                ;   Call between Ltmp155 and Ltmp164
	.uleb128 Ltmp165-Lfunc_begin27          ;     jumps to Ltmp165
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp164-Lfunc_begin27          ; >> Call Site 3 <<
	.uleb128 Ltmp166-Ltmp164                ;   Call between Ltmp164 and Ltmp166
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp166-Lfunc_begin27          ; >> Call Site 4 <<
	.uleb128 Ltmp167-Ltmp166                ;   Call between Ltmp166 and Ltmp167
	.uleb128 Ltmp168-Lfunc_begin27          ;     jumps to Ltmp168
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp167-Lfunc_begin27          ; >> Call Site 5 <<
	.uleb128 Ltmp169-Ltmp167                ;   Call between Ltmp167 and Ltmp169
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp169-Lfunc_begin27          ; >> Call Site 6 <<
	.uleb128 Ltmp170-Ltmp169                ;   Call between Ltmp169 and Ltmp170
	.uleb128 Ltmp171-Lfunc_begin27          ;     jumps to Ltmp171
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp170-Lfunc_begin27          ; >> Call Site 7 <<
	.uleb128 Lfunc_end27-Ltmp170            ;   Call between Ltmp170 and Lfunc_end27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end27:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase18:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe210106Ev ; -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe210106Ev
	.globl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe210106Ev
	.weak_definition	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe210106Ev
	.p2align	2
__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe210106Ev: ; @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe210106Ev
	.globl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe210106Ev: ; @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception28
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB180_2
	b	LBB180_1
LBB180_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB180_23
LBB180_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB9nqe210106Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.le	LBB180_4
	b	LBB180_3
LBB180_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB180_5
LBB180_4:
	str	xzr, [sp, #72]
	b	LBB180_5
LBB180_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB180_9
	b	LBB180_6
LBB180_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB180_8
	b	LBB180_7
LBB180_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB180_23
LBB180_8:
	b	LBB180_9
LBB180_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB180_18
	b	LBB180_10
LBB180_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp175:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp176:
	b	LBB180_11
LBB180_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB180_14
	b	LBB180_12
LBB180_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB180_15
LBB180_13:
Ltmp177:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB180_24
LBB180_14:
	str	wzr, [sp, #24]
	b	LBB180_15
LBB180_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB180_17
	b	LBB180_16
LBB180_16:
	b	LBB180_23
LBB180_17:
	b	LBB180_18
LBB180_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB180_22
	b	LBB180_19
LBB180_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB180_21
	b	LBB180_20
LBB180_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB180_23
LBB180_21:
	b	LBB180_22
LBB180_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB9nqe210106El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB180_23
LBB180_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB180_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end28:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table180:
Lexception28:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end28-Lcst_begin28
Lcst_begin28:
	.uleb128 Lfunc_begin28-Lfunc_begin28    ; >> Call Site 1 <<
	.uleb128 Ltmp175-Lfunc_begin28          ;   Call between Lfunc_begin28 and Ltmp175
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp175-Lfunc_begin28          ; >> Call Site 2 <<
	.uleb128 Ltmp176-Ltmp175                ;   Call between Ltmp175 and Ltmp176
	.uleb128 Ltmp177-Lfunc_begin28          ;     jumps to Ltmp177
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp176-Lfunc_begin28          ; >> Call Site 3 <<
	.uleb128 Lfunc_end28-Ltmp176            ;   Call between Ltmp176 and Lfunc_end28
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end28:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB9nqe210106Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.globl	__ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB9nqe210106Ev: ; @_ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	tbnz	w0, #0, LBB183_2
	b	LBB183_1
LBB183_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	b	LBB183_2
LBB183_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB9nqe210106Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5widthB9nqe210106Ev ; -- Begin function _ZNKSt3__18ios_base5widthB9nqe210106Ev
	.globl	__ZNKSt3__18ios_base5widthB9nqe210106Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB9nqe210106Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB9nqe210106Ev: ; @_ZNKSt3__18ios_base5widthB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	bl	__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB9nqe210106El ; -- Begin function _ZNSt3__18ios_base5widthB9nqe210106El
	.globl	__ZNSt3__18ios_base5widthB9nqe210106El
	.weak_definition	__ZNSt3__18ios_base5widthB9nqe210106El
	.p2align	2
__ZNSt3__18ios_base5widthB9nqe210106El: ; @_ZNSt3__18ios_base5widthB9nqe210106El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC1B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIcEC1B9nqe210106Ev: ; @_ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B9nqe210106Ev: ; @_ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	.globl	__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_: ; @_ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	tbz	w0, #0, LBB196_2
	b	LBB196_1
LBB196_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB196_3
LBB196_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB196_3
LBB196_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #23]
	lsr	w8, w8, #7
	subs	w8, w8, #0
	cset	w0, ne
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc ; -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc
	.globl	__ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc
	.weak_definition	__ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc
	.p2align	2
__ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc: ; @_ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception29
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp187:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp188:
	b	LBB201_1
LBB201_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB201_2:
Ltmp189:
	bl	___clang_call_terminate
Lfunc_end29:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table201:
Lexception29:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase19-Lttbaseref19
Lttbaseref19:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end29-Lcst_begin29
Lcst_begin29:
	.uleb128 Ltmp187-Lfunc_begin29          ; >> Call Site 1 <<
	.uleb128 Ltmp188-Ltmp187                ;   Call between Ltmp187 and Ltmp188
	.uleb128 Ltmp189-Lfunc_begin29          ;     jumps to Ltmp189
	.byte	1                               ;   On action: 1
Lcst_end29:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase19:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.globl	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB9nqe210106Ev: ; @_ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w0, ne
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception30
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp191:
	bl	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp192:
	b	LBB205_1
LBB205_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp193:
	bl	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp194:
	b	LBB205_2
LBB205_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB205_3:
Ltmp195:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB205_4
LBB205_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end30:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table205:
Lexception30:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end30-Lcst_begin30
Lcst_begin30:
	.uleb128 Lfunc_begin30-Lfunc_begin30    ; >> Call Site 1 <<
	.uleb128 Ltmp191-Lfunc_begin30          ;   Call between Lfunc_begin30 and Ltmp191
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp191-Lfunc_begin30          ; >> Call Site 2 <<
	.uleb128 Ltmp194-Ltmp191                ;   Call between Ltmp191 and Ltmp194
	.uleb128 Ltmp195-Lfunc_begin30          ;     jumps to Ltmp195
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp194-Lfunc_begin30          ; >> Call Site 3 <<
	.uleb128 Lfunc_end30-Ltmp194            ;   Call between Ltmp194 and Lfunc_end30
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end30:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev ; -- Begin function _ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.globl	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.weak_definition	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.p2align	2
__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev: ; @_ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec: ; @_ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB9nqe210106Ej ; -- Begin function _ZNSt3__18ios_base8setstateB9nqe210106Ej
	.globl	__ZNSt3__18ios_base8setstateB9nqe210106Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB9nqe210106Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB9nqe210106Ej: ; @_ZNSt3__18ios_base8setstateB9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev ; -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	.globl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev: ; @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception31
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #112
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #112]
Ltmp198:
	mov	x0, x8
	adrp	x9, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x9, #8
	add	x2, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE
Ltmp199:
	b	LBB212_1
LBB212_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #112]
	add	x0, x8, #8
Ltmp201:
	mov	w1, #16                         ; =0x10
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ej
Ltmp202:
	b	LBB212_2
LBB212_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB212_3:
Ltmp200:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	b	LBB212_5
LBB212_4:
Ltmp203:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	adrp	x8, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB212_5
LBB212_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #112
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB212_6
LBB212_6:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end31:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table212:
Lexception31:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end31-Lcst_begin31
Lcst_begin31:
	.uleb128 Lfunc_begin31-Lfunc_begin31    ; >> Call Site 1 <<
	.uleb128 Ltmp198-Lfunc_begin31          ;   Call between Lfunc_begin31 and Ltmp198
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp198-Lfunc_begin31          ; >> Call Site 2 <<
	.uleb128 Ltmp199-Ltmp198                ;   Call between Ltmp198 and Ltmp199
	.uleb128 Ltmp200-Lfunc_begin31          ;     jumps to Ltmp200
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp201-Lfunc_begin31          ; >> Call Site 3 <<
	.uleb128 Ltmp202-Ltmp201                ;   Call between Ltmp201 and Ltmp202
	.uleb128 Ltmp203-Lfunc_begin31          ;     jumps to Ltmp203
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp202-Lfunc_begin31          ; >> Call Site 4 <<
	.uleb128 Lfunc_end31-Ltmp202            ;   Call between Ltmp202 and Lfunc_end31
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end31:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__18ios_base5flagsB9nqe210106Ej ; -- Begin function _ZNSt3__18ios_base5flagsB9nqe210106Ej
	.globl	__ZNSt3__18ios_base5flagsB9nqe210106Ej
	.weak_definition	__ZNSt3__18ios_base5flagsB9nqe210106Ej
	.p2align	2
__ZNSt3__18ios_base5flagsB9nqe210106Ej: ; @_ZNSt3__18ios_base5flagsB9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #8]
	str	w8, [sp]
	ldr	w8, [sp, #4]
	str	w8, [x9, #8]
	ldr	w0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueB9nqe210106ERKNS_6localeE ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueB9nqe210106ERKNS_6localeE
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueB9nqe210106ERKNS_6localeE
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueB9nqe210106ERKNS_6localeE
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueB9nqe210106ERKNS_6localeE: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueB9nqe210106ERKNS_6localeE
Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception32
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	w9, #0                          ; =0x0
	and	w9, w9, #0x1
	and	w9, w9, #0x1
	sturb	w9, [x29, #-25]
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp205:
	sub	x8, x29, #40
	bl	__ZNSt3__18ios_base5imbueERKNS_6localeE
Ltmp206:
	b	LBB214_1
LBB214_1:
	sub	x0, x29, #40
	bl	__ZNSt3__16localeD1Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
Ltmp207:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp208:
	b	LBB214_2
LBB214_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	cbz	x8, LBB214_7
	b	LBB214_3
LBB214_3:
Ltmp209:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp210:
	b	LBB214_4
LBB214_4:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp211:
	add	x8, sp, #32
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueB9nqe210106ERKNS_6localeE
Ltmp212:
	b	LBB214_5
LBB214_5:
	add	x0, sp, #32
	bl	__ZNSt3__16localeD1Ev
	b	LBB214_7
LBB214_6:
Ltmp213:
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	bl	__ZNSt3__16localeD1Ev
	b	LBB214_10
LBB214_7:
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-25]
	ldurb	w8, [x29, #-25]
	tbnz	w8, #0, LBB214_9
	b	LBB214_8
LBB214_8:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16localeD1Ev
	b	LBB214_9
LBB214_9:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB214_10:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
Lfunc_end32:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table214:
Lexception32:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end32-Lcst_begin32
Lcst_begin32:
	.uleb128 Lfunc_begin32-Lfunc_begin32    ; >> Call Site 1 <<
	.uleb128 Ltmp205-Lfunc_begin32          ;   Call between Lfunc_begin32 and Ltmp205
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp205-Lfunc_begin32          ; >> Call Site 2 <<
	.uleb128 Ltmp212-Ltmp205                ;   Call between Ltmp205 and Ltmp212
	.uleb128 Ltmp213-Lfunc_begin32          ;     jumps to Ltmp213
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp212-Lfunc_begin32          ; >> Call Site 3 <<
	.uleb128 Lfunc_end32-Ltmp212            ;   Call between Ltmp212 and Lfunc_end32
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end32:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__18ios_base9precisionB9nqe210106El ; -- Begin function _ZNSt3__18ios_base9precisionB9nqe210106El
	.globl	__ZNSt3__18ios_base9precisionB9nqe210106El
	.weak_definition	__ZNSt3__18ios_base9precisionB9nqe210106El
	.p2align	2
__ZNSt3__18ios_base9precisionB9nqe210106El: ; @_ZNSt3__18ios_base9precisionB9nqe210106El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #16]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base9precisionB9nqe210106Ev ; -- Begin function _ZNKSt3__18ios_base9precisionB9nqe210106Ev
	.globl	__ZNKSt3__18ios_base9precisionB9nqe210106Ev
	.weak_definition	__ZNKSt3__18ios_base9precisionB9nqe210106Ev
	.p2align	2
__ZNKSt3__18ios_base9precisionB9nqe210106Ev: ; @_ZNKSt3__18ios_base9precisionB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chrono14__units_suffixB9nqe210106IcNS_5ratioILl1ELl1000000EEEEEDav ; -- Begin function _ZNSt3__16chrono14__units_suffixB9nqe210106IcNS_5ratioILl1ELl1000000EEEEEDav
	.globl	__ZNSt3__16chrono14__units_suffixB9nqe210106IcNS_5ratioILl1ELl1000000EEEEEDav
	.weak_definition	__ZNSt3__16chrono14__units_suffixB9nqe210106IcNS_5ratioILl1ELl1000000EEEEEDav
	.p2align	2
__ZNSt3__16chrono14__units_suffixB9nqe210106IcNS_5ratioILl1ELl1000000EEEEEDav: ; @_ZNSt3__16chrono14__units_suffixB9nqe210106IcNS_5ratioILl1ELl1000000EEEEEDav
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__118__statically_widenB9nqe210106IcEEPKT_PKcPKw
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE ; -- Begin function _ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.globl	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.p2align	2
__ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE: ; @_ZNSt3__1lsB9nqe210106IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe210106Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev ; -- Begin function _ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev
	.globl	__ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev
	.weak_definition	__ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev
	.p2align	2
__ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev: ; @_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, x8
	str	x9, [sp, #8]
	str	x0, [sp]
	ldr	x9, [sp]
	add	x0, x9, #8
	bl	__ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ; -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	2
__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ; @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	adrp	x1, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x1, [x1, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #112
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__18ios_baseC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x8, __ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B9nqe210106EPNS_15basic_streambufIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #8]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x1, [sp, #8]
	add	x0, x8, x9
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ej ; -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ej
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ej
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ej
	.p2align	2
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ej: ; @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ej
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_baseC2B9nqe210106Ev ; -- Begin function _ZNSt3__18ios_baseC2B9nqe210106Ev
	.globl	__ZNSt3__18ios_baseC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__18ios_baseC2B9nqe210106Ev
	.p2align	2
__ZNSt3__18ios_baseC2B9nqe210106Ev:     ; @_ZNSt3__18ios_baseC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, __ZTVNSt3__18ios_baseE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__18ios_baseE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0, #48]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB9nqe210106EPNS_15basic_streambufIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__18ios_base4initEPv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #136]
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	w0, [x8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ej ; -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ej
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ej
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ej
	.p2align	2
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ej: ; @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ej
Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception33
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x9, x9, #16
	str	x9, [x8]
	add	x0, x8, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0, #88]
	ldur	w8, [x29, #-12]
	str	w8, [x0, #96]
Ltmp218:
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
Ltmp219:
	b	LBB228_1
LBB228_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB228_2:
Ltmp220:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #24]
	mov	x9, x1
	str	w9, [sp, #20]
	add	x0, x8, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	b	LBB228_3
LBB228_3:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end33:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table228:
Lexception33:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end33-Lcst_begin33
Lcst_begin33:
	.uleb128 Lfunc_begin33-Lfunc_begin33    ; >> Call Site 1 <<
	.uleb128 Ltmp218-Lfunc_begin33          ;   Call between Lfunc_begin33 and Ltmp218
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp218-Lfunc_begin33          ; >> Call Site 2 <<
	.uleb128 Ltmp219-Ltmp218                ;   Call between Ltmp218 and Ltmp219
	.uleb128 Ltmp220-Lfunc_begin33          ;     jumps to Ltmp220
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp219-Lfunc_begin33          ; >> Call Site 3 <<
	.uleb128 Lfunc_end33-Ltmp219            ;   Call between Ltmp219 and Lfunc_end33
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end33:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev ; -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
	.weak_definition	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
	.p2align	2
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev: ; @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE15__init_buf_ptrsB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #88]
	add	x0, x8, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	stur	x0, [x29, #-16]
	add	x0, x8, #64
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe210106Ev
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	stur	x0, [x29, #-24]
	ldr	w8, [x8, #96]
	tbz	w8, #3, LBB230_2
	b	LBB230_1
LBB230_1:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [x0, #88]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-16]
	ldr	x3, [x0, #88]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe210106EPcS4_S4_
	b	LBB230_2
LBB230_2:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	w8, [x8, #96]
	tbz	w8, #4, LBB230_11
	b	LBB230_3
LBB230_3:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldur	x10, [x29, #-24]
	add	x9, x9, x10
	str	x9, [x8, #88]
	add	x9, x8, #64
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, x8, #64
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe210106Em
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x9, [x29, #-16]
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, x8, #64
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	add	x2, x8, x9
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe210106EPcS4_
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	w8, [x8, #96]
	and	w8, w8, #0x3
	cbz	w8, LBB230_10
	b	LBB230_4
LBB230_4:
	b	LBB230_5
LBB230_5:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]
	mov	x9, #2147483647                 ; =0x7fffffff
	subs	x8, x8, x9
	b.ls	LBB230_7
	b	LBB230_6
LBB230_6:                               ;   in Loop: Header=BB230_5 Depth=1
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	mov	w1, #2147483647                 ; =0x7fffffff
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe210106Ei
	ldur	x8, [x29, #-24]
	mov	x9, #-2147483647                ; =0xffffffff80000001
	add	x8, x8, x9
	stur	x8, [x29, #-24]
	b	LBB230_5
LBB230_7:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.ls	LBB230_9
	b	LBB230_8
LBB230_8:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	mov	x1, x8
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe210106Ei
	b	LBB230_9
LBB230_9:
	b	LBB230_10
LBB230_10:
	b	LBB230_11
LBB230_11:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	str	xzr, [x0]
	str	xzr, [x0, #8]
	str	xzr, [x0, #16]
	bl	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe210106Em
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe210106Em ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe210106Em
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe210106Em
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe210106Em
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe210106Em: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB9nqe210106Em
Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception34
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp221:
	add	x10, x10, x11
	add	x1, x10, #1
	add	x8, x8, x9
	add	x2, x8, #1
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
Ltmp222:
	b	LBB232_1
LBB232_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB232_2:
Ltmp223:
	bl	___clang_call_terminate
Lfunc_end34:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table232:
Lexception34:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase20-Lttbaseref20
Lttbaseref20:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end34-Lcst_begin34
Lcst_begin34:
	.uleb128 Ltmp221-Lfunc_begin34          ; >> Call Site 1 <<
	.uleb128 Ltmp222-Ltmp221                ;   Call between Ltmp221 and Ltmp222
	.uleb128 Ltmp223-Lfunc_begin34          ;     jumps to Ltmp223
	.byte	1                               ;   On action: 1
Lcst_end34:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase20:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe210106EPKvS7_ ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe210106EPKvS7_: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	bl	__ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	tbz	w0, #0, LBB235_2
	b	LBB235_1
LBB235_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB235_3
LBB235_2:
	mov	x8, #23                         ; =0x17
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB235_3
LBB235_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x0, x8, #1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_
	.globl	__ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_: ; @_ZNSt3__112__to_addressB9nqe210106IKcEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	tbz	w0, #0, LBB237_2
	b	LBB237_1
LBB237_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB237_3
LBB237_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB237_3
LBB237_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_ ; -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_
	.globl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_
	.weak_definition	__ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_
	.p2align	2
__ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_: ; @_ZNSt3__114pointer_traitsIPKcE10pointer_toB9nqe210106ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	and	x8, x8, #0x7fffffffffffffff
	lsr	x0, x8, #0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	tbz	w0, #0, LBB242_2
	b	LBB242_1
LBB242_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB242_3
LBB242_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB242_3
LBB242_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe210106EPcS4_S4_ ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe210106EPcS4_S4_
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe210106EPcS4_S4_
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe210106EPcS4_S4_
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe210106EPcS4_S4_: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgB9nqe210106EPcS4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x9, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9, #24]
	ldr	x8, [sp]
	str	x8, [x9, #32]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe210106Em ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe210106Em
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe210106Em
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe210106Em
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe210106Em: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	mov	w2, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe210106EPcS4_ ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe210106EPcS4_
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe210106EPcS4_
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe210106EPcS4_
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe210106EPcS4_: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpB9nqe210106EPcS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x9, #48]
	str	x8, [x9, #40]
	ldr	x8, [sp, #8]
	str	x8, [x9, #56]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe210106Ei ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe210106Ei
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe210106Ei
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe210106Ei
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe210106Ei: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpB9nqe210106Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	ldr	x8, [x9, #48]
	add	x8, x8, x10
	str	x8, [x9, #48]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #23]
	and	w9, w8, #0x7f
                                        ; implicit-def: $x8
	mov	x8, x9
	and	x0, x8, #0xff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueB9nqe210106ERKNS_6localeE ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueB9nqe210106ERKNS_6localeE
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueB9nqe210106ERKNS_6localeE
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueB9nqe210106ERKNS_6localeE
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueB9nqe210106ERKNS_6localeE: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueB9nqe210106ERKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #24]
	ldr	x8, [x0]
	ldr	x8, [x8, #16]
	blr	x8
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	mov	w10, #1                         ; =0x1
	str	w10, [sp, #16]                  ; 4-byte Folded Spill
	and	w9, w9, #0x1
	and	w9, w9, #0x1
	strb	w9, [sp, #23]
	add	x1, x8, #8
	bl	__ZNSt3__16localeC1ERKS0_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #24]
	add	x0, x8, #8
	bl	__ZNSt3__16localeaSERKS0_
	ldr	w9, [sp, #16]                   ; 4-byte Folded Reload
	and	w8, w9, #0x1
	and	w8, w8, w9
	strb	w8, [sp, #23]
	ldrb	w8, [sp, #23]
	tbnz	w8, #0, LBB249_2
	b	LBB249_1
LBB249_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__16localeD1Ev
	b	LBB249_2
LBB249_2:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__statically_widenB9nqe210106IcEEPKT_PKcPKw ; -- Begin function _ZNSt3__118__statically_widenB9nqe210106IcEEPKT_PKcPKw
	.globl	__ZNSt3__118__statically_widenB9nqe210106IcEEPKT_PKcPKw
	.weak_definition	__ZNSt3__118__statically_widenB9nqe210106IcEEPKT_PKcPKw
	.p2align	2
__ZNSt3__118__statically_widenB9nqe210106IcEEPKT_PKcPKw: ; @_ZNSt3__118__statically_widenB9nqe210106IcEEPKT_PKcPKw
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev ; -- Begin function _ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev
	.globl	__ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev
	.weak_definition	__ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev
	.p2align	2
__ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev: ; @_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, x8, #64
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe210106Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	sub	x1, x29, #17
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106IS4_EENS_12basic_stringIcS2_T_EERKS8_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106IS4_EENS_12basic_stringIcS2_T_EERKS8_ ; -- Begin function _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106IS4_EENS_12basic_stringIcS2_T_EERKS8_
	.weak_definition	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106IS4_EENS_12basic_stringIcS2_T_EERKS8_
	.p2align	2
__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106IS4_EENS_12basic_stringIcS2_T_EERKS8_: ; @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB9nqe210106IS4_EENS_12basic_stringIcS2_T_EERKS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe210106Ev
	mov	x9, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x8, x1
	add	x1, sp, #8
	str	x9, [sp, #8]
	str	x8, [sp, #16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe210106Ev ; -- Begin function _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe210106Ev
	.globl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe210106Ev
	.weak_definition	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe210106Ev
	.p2align	2
__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe210106Ev: ; @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB9nqe210106Ev
Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception35
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-32]                 ; 8-byte Folded Spill
	ldr	w8, [x8, #96]
	tbz	w8, #4, LBB254_8
	b	LBB254_1
LBB254_1:
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	ldr	x8, [x0, #88]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
Ltmp242:
	bl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe210106Ev
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp243:
	b	LBB254_2
LBB254_2:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	subs	x8, x8, x9
	b.hs	LBB254_5
	b	LBB254_3
LBB254_3:
Ltmp244:
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe210106Ev
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp245:
	b	LBB254_4
LBB254_4:
	ldur	x9, [x29, #-32]                 ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [x9, #88]
	b	LBB254_5
LBB254_5:
Ltmp246:
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe210106Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp247:
	b	LBB254_6
LBB254_6:
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	ldr	x2, [x8, #88]
Ltmp248:
	sub	x0, x29, #16
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106IPcS5_EET_T0_
Ltmp249:
	b	LBB254_7
LBB254_7:
	b	LBB254_15
LBB254_8:
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	ldr	w8, [x8, #96]
	tbz	w8, #3, LBB254_13
	b	LBB254_9
LBB254_9:
Ltmp236:
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp237:
	b	LBB254_10
LBB254_10:
Ltmp238:
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe210106Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp239:
	b	LBB254_11
LBB254_11:
Ltmp240:
	ldr	x2, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #16
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106IPcS5_EET_T0_
Ltmp241:
	b	LBB254_12
LBB254_12:
	b	LBB254_15
LBB254_13:
	b	LBB254_14
LBB254_14:
	sub	x0, x29, #16
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106Ev
	b	LBB254_15
LBB254_15:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB254_16:
Ltmp250:
	bl	___clang_call_terminate
Lfunc_end35:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table254:
Lexception35:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase21-Lttbaseref21
Lttbaseref21:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end35-Lcst_begin35
Lcst_begin35:
	.uleb128 Ltmp242-Lfunc_begin35          ; >> Call Site 1 <<
	.uleb128 Ltmp241-Ltmp242                ;   Call between Ltmp242 and Ltmp241
	.uleb128 Ltmp250-Lfunc_begin35          ;     jumps to Ltmp250
	.byte	1                               ;   On action: 1
Lcst_end35:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase21:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_ ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe210106Ev ; -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe210106Ev
	.globl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe210106Ev
	.weak_definition	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe210106Ev
	.p2align	2
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe210106Ev: ; @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #48]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe210106Ev ; -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe210106Ev
	.globl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe210106Ev
	.weak_definition	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe210106Ev
	.p2align	2
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe210106Ev: ; @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106IPcS5_EET_T0_ ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106IPcS5_EET_T0_
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106IPcS5_EET_T0_
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106IPcS5_EET_T0_: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106IPcS5_EET_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106IPcS5_EET_T0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe210106Ev ; -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe210106Ev
	.globl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe210106Ev
	.weak_definition	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe210106Ev
	.p2align	2
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe210106Ev: ; @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe210106Ev ; -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe210106Ev
	.globl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe210106Ev
	.weak_definition	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe210106Ev
	.p2align	2
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe210106Ev: ; @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #32]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106Ev ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106Ev
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106Ev: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106IPcS5_EET_T0_ ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106IPcS5_EET_T0_
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106IPcS5_EET_T0_
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106IPcS5_EET_T0_: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106IPcS5_EET_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__110to_addressB9nqe210106IcEEDaPT_
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	str	x8, [x0, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110to_addressB9nqe210106IcEEDaPT_ ; -- Begin function _ZNSt3__110to_addressB9nqe210106IcEEDaPT_
	.globl	__ZNSt3__110to_addressB9nqe210106IcEEDaPT_
	.weak_definition	__ZNSt3__110to_addressB9nqe210106IcEEDaPT_
	.p2align	2
__ZNSt3__110to_addressB9nqe210106IcEEDaPT_: ; @_ZNSt3__110to_addressB9nqe210106IcEEDaPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106Ev: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	str	xzr, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_ ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	q0, [x8]
	add	x0, sp, #32
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	str	q0, [sp, #32]
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB9nqe210106Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev ; -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.p2align	2
__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev: ; @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #24]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	add	x0, x8, #8
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ; -- Begin function _ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	2
__ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ; @_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	mov	x9, x8
	str	x9, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	add	sp, sp, #16
	b	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ; -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	2
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ; @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev ; -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.p2align	2
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev: ; @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	adrp	x9, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x9, x9, #16
	str	x9, [x8]
	add	x0, x8, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	.asciz	"\302\265s"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @.str.7
l_.str.7:
	.long	181                             ; 0xb5
	.long	115                             ; 0x73
	.long	0                               ; 0x0

.subsections_via_symbols
