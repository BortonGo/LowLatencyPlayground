	.file	"benchmark_optimization_levels.cpp"
	.intel_syntax noprefix
	.text
	.section	.text$_ZSt23__is_constant_evaluatedv,"x"
	.linkonce discard
	.globl	_ZSt23__is_constant_evaluatedv
	.def	_ZSt23__is_constant_evaluatedv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt23__is_constant_evaluatedv
_ZSt23__is_constant_evaluatedv:
.LFB1:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, 0
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZnwyPv,"x"
	.linkonce discard
	.globl	_ZnwyPv
	.def	_ZnwyPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwyPv
_ZnwyPv:
.LFB165:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt21is_constant_evaluatedv,"x"
	.linkonce discard
	.globl	_ZSt21is_constant_evaluatedv
	.def	_ZSt21is_constant_evaluatedv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt21is_constant_evaluatedv
_ZSt21is_constant_evaluatedv:
.LFB182:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, 0
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6lengthEPKc
	.def	_ZNSt11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6lengthEPKc
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB377:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	call	_ZSt23__is_constant_evaluatedv
	test	al, al
	je	.L8
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L9
.L8:
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	strlen
	nop
.L9:
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8ios_base5flagsEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8ios_base5flagsEv
	.def	_ZNKSt8ios_base5flagsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8ios_base5flagsEv
_ZNKSt8ios_base5flagsEv:
.LFB2296:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	eax, DWORD PTR 24[rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8ios_base5flagsESt13_Ios_Fmtflags,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8ios_base5flagsESt13_Ios_Fmtflags
	.def	_ZNSt8ios_base5flagsESt13_Ios_Fmtflags;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8ios_base5flagsESt13_Ios_Fmtflags
_ZNSt8ios_base5flagsESt13_Ios_Fmtflags:
.LFB2297:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	rax, QWORD PTR 16[rbp]
	mov	eax, DWORD PTR 24[rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR 16[rbp]
	mov	edx, DWORD PTR 24[rbp]
	mov	DWORD PTR 24[rax], edx
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8ios_base9precisionEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8ios_base9precisionEv
	.def	_ZNKSt8ios_base9precisionEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8ios_base9precisionEv
_ZNKSt8ios_base9precisionEv:
.LFB2301:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8ios_base9precisionEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8ios_base9precisionEx
	.def	_ZNSt8ios_base9precisionEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8ios_base9precisionEx
_ZNSt8ios_base9precisionEx:
.LFB2302:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8ios_base6getlocEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8ios_base6getlocEv
	.def	_ZNKSt8ios_base6getlocEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8ios_base6getlocEv
_ZNKSt8ios_base6getlocEv:
.LFB2305:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	lea	rdx, 208[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt6localeC1ERKS_
	mov	rax, QWORD PTR 16[rbp]
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	.def	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv:
.LFB3011:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_
	.def	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_
_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_:
.LFB3017:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
_ZL10orders_cnt:
	.quad	1000000
	.section	.text$_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.def	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB6038:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
	.def	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv
_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv:
.LFB6039:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	.def	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE:
.LFB6043:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	xmm0, rax
	movsd	QWORD PTR -8[rbp], xmm0
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	movq	rax, xmm0
	mov	rdx, QWORD PTR 16[rbp]
	mov	QWORD PTR [rdx], rax
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.def	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILx1ELx1EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB6044:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE
	.def	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILx1ELx1EEEES2_ILx1ELx1000000000EEdLb1ELb0EE6__castIxS5_EES4_RKNS1_IT_T0_EE:
.LFB6045:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC0[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_
	movsd	xmm0, QWORD PTR -16[rbp]
	movq	rax, xmm0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "checksum = \0"
.LC2:
	.ascii "elapsed = \0"
.LC3:
	.ascii "throughput_ops_sec = \0"
	.text
	.globl	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	.def	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy:
.LFB6037:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 120
	.seh_stackalloc	120
	lea	rbp, 112[rsp]
	.seh_setframe	rbp, 112
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR 56[rbp], r9
	lea	rdx, 40[rbp]
	lea	rax, 48[rbp]
	mov	rcx, rax
	call	_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	mov	QWORD PTR -40[rbp], rax
	lea	rdx, -40[rbp]
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IxS1_ILx1ELx1000000000EEvEERKNS0_IT_T0_EE
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 64[rbp]
	test	rax, rax
	js	.L33
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.L34
.L33:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
.L34:
	divsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	lea	rax, -80[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rcx, rax
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E
	mov	edx, 10
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	lea	rax, .LC1[rip]
	mov	rdx, rax
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rcx, rax
	mov	rax, QWORD PTR 56[rbp]
	mov	rdx, rax
	call	_ZNSolsEy
	mov	edx, 10
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	lea	rax, .LC2[rip]
	mov	rdx, rax
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rbx, rax
	lea	rax, -40[rbp]
	mov	rcx, rax
	call	_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	mov	QWORD PTR -24[rbp], rax
	lea	rax, -24[rbp]
	mov	rdx, rax
	mov	rcx, rbx
	call	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
	mov	edx, 10
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	lea	rax, .LC3[rip]
	mov	rdx, rax
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	xmm0, QWORD PTR -16[rbp]
	movapd	xmm1, xmm0
	mov	rcx, rax
	call	_ZNSolsEd
	mov	edx, 10
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	nop
	add	rsp, 120
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxeqIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxeqIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.def	_ZN9__gnu_cxxeqIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxeqIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
_ZN9__gnu_cxxeqIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_:
.LFB6047:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	sete	al
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB6048:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEdeEv:
.LFB6049:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.text
	.globl	_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
	.def	_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE:
.LFB6046:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 184
	.seh_stackalloc	184
	lea	rbp, 176[rsp]
	.seh_setframe	rbp, 176
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -112[rbp], rcx
	mov	QWORD PTR -104[rbp], rbx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR -8[rbp], 0
	mov	QWORD PTR -16[rbp], 0
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR 40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE5beginEv
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE3endEv
	mov	QWORD PTR -56[rbp], rax
	jmp	.L42
.L43:
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEdeEv
	mov	rcx, rax
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR 16[rcx]
	mov	rdx, QWORD PTR 24[rcx]
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR -80[rbp]
	add	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -96[rbp]
	add	QWORD PTR -8[rbp], rax
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEppEv
.L42:
	lea	rdx, -56[rbp]
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxeqIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	xor	eax, 1
	test	al, al
	jne	.L43
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -112[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], rdx
	mov	r8, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -128[rbp]
	mov	QWORD PTR 32[rsp], 1000000
	mov	r9, r8
	mov	r8, rcx
	mov	rcx, rax
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 184
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	_Z17count_price_aboveSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEy
	.def	_Z17count_price_aboveSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17count_price_aboveSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEy
_Z17count_price_aboveSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEy:
.LFB6051:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 184
	.seh_stackalloc	184
	lea	rbp, 176[rsp]
	.seh_setframe	rbp, 176
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -112[rbp], rcx
	mov	QWORD PTR -104[rbp], rbx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR -8[rbp], 0
	mov	QWORD PTR -16[rbp], 0
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR 40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE5beginEv
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE3endEv
	mov	QWORD PTR -56[rbp], rax
	jmp	.L46
.L48:
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEdeEv
	mov	rcx, rax
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR 16[rcx]
	mov	rdx, QWORD PTR 24[rcx]
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR -80[rbp]
	cmp	QWORD PTR 48[rbp], rax
	jnb	.L47
	add	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -96[rbp]
	add	QWORD PTR -8[rbp], rax
.L47:
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEppEv
.L46:
	lea	rdx, -56[rbp]
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxeqIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	xor	eax, 1
	test	al, al
	jne	.L48
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -112[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], rdx
	mov	r8, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -128[rbp]
	mov	QWORD PTR 32[rsp], 1000000
	mov	r9, r8
	mov	r8, rcx
	mov	rcx, rax
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 184
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	_Z18count_valid_ordersSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
	.def	_Z18count_valid_ordersSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18count_valid_ordersSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
_Z18count_valid_ordersSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE:
.LFB6052:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 184
	.seh_stackalloc	184
	lea	rbp, 176[rsp]
	.seh_setframe	rbp, 176
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -112[rbp], rcx
	mov	QWORD PTR -104[rbp], rbx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR -8[rbp], 0
	mov	QWORD PTR -16[rbp], 0
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR 40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE5beginEv
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE3endEv
	mov	QWORD PTR -56[rbp], rax
	jmp	.L51
.L53:
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEdeEv
	mov	rcx, rax
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR 16[rcx]
	mov	rdx, QWORD PTR 24[rcx]
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR -96[rbp]
	test	rax, rax
	je	.L52
	mov	rax, QWORD PTR -80[rbp]
	test	rax, rax
	je	.L52
	add	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -96[rbp]
	add	QWORD PTR -8[rbp], rax
.L52:
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEppEv
.L51:
	lea	rdx, -56[rbp]
	lea	rax, -48[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxeqIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	xor	eax, 1
	test	al, al
	jne	.L53
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -112[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], rdx
	mov	r8, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -128[rbp]
	mov	QWORD PTR 32[rsp], 1000000
	mov	r9, r8
	mov	r8, rcx
	mov	rcx, rax
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 184
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	_Z17copy_matching_idsSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEyRS3_IySaIyEE
	.def	_Z17copy_matching_idsSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEyRS3_IySaIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17copy_matching_idsSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEyRS3_IySaIyEE
_Z17copy_matching_idsSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEyRS3_IySaIyEE:
.LFB6053:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 168
	.seh_stackalloc	168
	lea	rbp, 160[rsp]
	.seh_setframe	rbp, 160
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -96[rbp], rcx
	mov	QWORD PTR -88[rbp], rbx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR 56[rbp], r9
	mov	QWORD PTR -8[rbp], 0
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE5clearEv
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 40[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE5beginEv
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE3endEv
	mov	QWORD PTR -48[rbp], rax
	jmp	.L56
.L58:
	lea	rax, -40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEdeEv
	mov	rcx, rax
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR 16[rcx]
	mov	rdx, QWORD PTR 24[rcx]
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	cmp	QWORD PTR 48[rbp], rax
	jnb	.L57
	lea	rdx, -80[rbp]
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE9push_backERKy
	mov	rax, QWORD PTR -80[rbp]
	add	QWORD PTR -8[rbp], rax
.L57:
	lea	rax, -40[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEppEv
.L56:
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxeqIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	xor	eax, 1
	test	al, al
	jne	.L58
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], rdx
	mov	r8, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -112[rbp]
	mov	QWORD PTR 32[rsp], 1000000
	mov	r9, r8
	mov	r8, rcx
	mov	rcx, rax
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	add	rsp, 168
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "----------------------------------------------------------\0"
	.text
	.globl	_Z11printModulov
	.def	_Z11printModulov;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11printModulov
_Z11printModulov:
.LFB6054:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	edx, 10
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	lea	rax, .LC4[rip]
	mov	rdx, rax
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	edx, 10
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	mov	edx, 10
	mov	rax, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE12_Vector_implD1Ev:
.LFB6061:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	nop
	nop
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIySaIyEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIySaIyEE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIySaIyEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIySaIyEE12_Vector_implD1Ev
_ZNSt12_Vector_baseIySaIyEE12_Vector_implD1Ev:
.LFB6083:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	nop
	nop
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC5:
	.ascii "SUM PRICES\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6055:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 184
	.seh_stackalloc	184
	lea	rbp, 176[rsp]
	.seh_setframe	rbp, 176
	.seh_endprologue
	call	__main
	pxor	xmm0, xmm0
	movaps	XMMWORD PTR -64[rbp], xmm0
	movq	QWORD PTR -48[rbp], xmm0
	pxor	xmm0, xmm0
	movaps	XMMWORD PTR -96[rbp], xmm0
	movq	QWORD PTR -80[rbp], xmm0
	lea	rax, -64[rbp]
	mov	edx, 1000000
	mov	rcx, rax
.LEHB0:
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EE7reserveEy
	lea	rax, -96[rbp]
	mov	edx, 1000000
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE7reserveEy
	mov	QWORD PTR -8[rbp], 0
	jmp	.L64
.L67:
	mov	QWORD PTR -128[rbp], 0
	mov	QWORD PTR -120[rbp], 0
	mov	QWORD PTR -112[rbp], 0
	mov	DWORD PTR -104[rbp], 0
	mov	BYTE PTR -100[rbp], 1
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 1
	mov	QWORD PTR -128[rbp], rax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, rcx
	shr	rax, 3
	movabs	rdx, 2361183241434822607
	mul	rdx
	mov	rax, rdx
	shr	rax, 4
	imul	rdx, rax, 1000
	mov	rax, rcx
	sub	rax, rdx
	add	rax, 100
	mov	QWORD PTR -112[rbp], rax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, rcx
	shr	rax, 2
	movabs	rdx, 2951479051793528259
	mul	rdx
	shr	rdx, 2
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	sub	rcx, rax
	mov	rdx, rcx
	mov	eax, edx
	add	eax, 1
	mov	DWORD PTR -104[rbp], eax
	mov	rax, QWORD PTR -8[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L65
	mov	eax, 1
	jmp	.L66
.L65:
	mov	eax, 2
.L66:
	mov	BYTE PTR -100[rbp], al
	lea	rdx, -128[rbp]
	lea	rax, -64[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EE9push_backERKS1_
	add	QWORD PTR -8[rbp], 1
.L64:
	cmp	QWORD PTR -8[rbp], 999999
	jbe	.L67
	lea	rax, -32[rbp]
	lea	rdx, .LC5[rip]
	mov	rcx, rax
	call	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], rdx
	lea	rdx, -64[rbp]
	lea	rax, -144[rbp]
	mov	rcx, rax
	call	_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
.LEHE0:
	mov	ebx, 0
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEED1Ev
	lea	rax, -64[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev
	mov	eax, ebx
	jmp	.L71
.L70:
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEED1Ev
	lea	rax, -64[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L71:
	add	rsp, 184
	pop	rbx
	pop	rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6055:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6055-.LLSDACSB6055
.LLSDACSB6055:
	.uleb128 .LEHB0-.LFB6055
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L70-.LFB6055
	.uleb128 0
	.uleb128 .LEHB1-.LFB6055
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE6055:
	.text
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.def	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB6101:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR -8[rbp], 0
	jmp	.L73
.L74:
	add	QWORD PTR -8[rbp], 1
.L73:
	mov	BYTE PTR -9[rbp], 0
	mov	rdx, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, [rdx+rax]
	lea	rax, -9[rbp]
	mov	rdx, rax
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xor	eax, 1
	test	al, al
	jne	.L74
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
	.def	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv:
.LFB6134:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev:
.LFB6242:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	nop
	nop
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev:
.LFB6247:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6247:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6247-.LLSDACSB6247
.LLSDACSB6247:
.LLSDACSE6247:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
	.def	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv:
.LFB6471:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
	.def	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc:
.LFB6483:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNSt11char_traitsIcE6lengthEPKc
	mov	rdx, QWORD PTR 16[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6483:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6483-.LLSDACSB6483
.LLSDACSB6483:
.LLSDACSE6483:
	.section	.text$_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"x"
	.linkonce discard
	.globl	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.def	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB6569:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	lea	rbp, 64[rsp]
	.seh_setframe	rbp, 64
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	mov	rbx, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	QWORD PTR -24[rbp], rdx
	lea	rdx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_
	mov	rax, QWORD PTR -32[rbp]
	add	rsp, 72
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
	.def	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv
_ZNKSt6chrono8durationIdSt5ratioILx1ELx1EEE5countEv:
.LFB6570:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movq	rax, xmm0
	movq	xmm0, rax
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_
	.def	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_
_ZNSt6chrono8durationIdSt5ratioILx1ELx1EEEC1IdvEERKT_:
.LFB6573:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	movsd	xmm0, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	movsd	QWORD PTR [rax], xmm0
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E,"x"
	.linkonce discard
	.globl	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E
	.def	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E
_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E:
.LFB6574:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	rbx, rdx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
	mov	rbx, rax
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
	mov	rdx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rbx
	mov	rcx, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.def	_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB6578:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILx1ELx1000000EEEES2_ILx1ELx1000EExLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "us\0"
	.section	.text$_ZNSt6chrono8__detail14__units_suffixISt5ratioILx1ELx1000000EEcEEDaPcy,"x"
	.linkonce discard
	.globl	_ZNSt6chrono8__detail14__units_suffixISt5ratioILx1ELx1000000EEcEEDaPcy
	.def	_ZNSt6chrono8__detail14__units_suffixISt5ratioILx1ELx1000000EEcEEDaPcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono8__detail14__units_suffixISt5ratioILx1ELx1000000EEcEEDaPcy
_ZNSt6chrono8__detail14__units_suffixISt5ratioILx1ELx1000000EEcEEDaPcy:
.LFB6580:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	lea	rax, .LC6[rip]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
	.def	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE:
.LFB6579:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 520
	.seh_stackalloc	520
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	QWORD PTR 416[rbp], rcx
	mov	QWORD PTR 424[rbp], rdx
	lea	rax, -96[rbp]
	mov	rcx, rax
.LEHB2:
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev
.LEHE2:
	mov	rax, QWORD PTR 416[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rax, 24
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rax, QWORD PTR 416[rbp]
	add	rax, rdx
	mov	rcx, rax
	call	_ZNKSt8ios_base5flagsEv
	mov	edx, eax
	lea	rax, -96[rbp]
	add	rax, 112
	mov	rcx, rax
	call	_ZNSt8ios_base5flagsESt13_Ios_Fmtflags
	mov	rax, QWORD PTR 416[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rax, 24
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rax, QWORD PTR 416[rbp]
	add	rdx, rax
	lea	rax, 344[rbp]
	mov	rcx, rax
	call	_ZNKSt8ios_base6getlocEv
	lea	rax, 336[rbp]
	lea	rcx, 344[rbp]
	lea	rdx, -96[rbp]
	add	rdx, 112
	mov	r8, rcx
	mov	rcx, rax
.LEHB3:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale
.LEHE3:
	lea	rax, 336[rbp]
	mov	rcx, rax
	call	_ZNSt6localeD1Ev
	lea	rax, 344[rbp]
	mov	rcx, rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR 416[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rax, 24
	mov	rax, QWORD PTR [rax]
	mov	rdx, rax
	mov	rax, QWORD PTR 416[rbp]
	add	rax, rdx
	mov	rcx, rax
	call	_ZNKSt8ios_base9precisionEv
	mov	rdx, rax
	lea	rax, -96[rbp]
	add	rax, 112
	mov	rcx, rax
	call	_ZNSt8ios_base9precisionEx
	mov	rax, QWORD PTR 424[rbp]
	mov	rcx, rax
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv
	mov	rdx, rax
	lea	rax, -96[rbp]
	mov	rcx, rax
.LEHB4:
	call	_ZNSolsEx
	lea	rax, 288[rbp]
	mov	edx, 41
	mov	rcx, rax
	call	_ZNSt6chrono8__detail14__units_suffixISt5ratioILx1ELx1000000EEcEEDaPcy
	mov	rdx, rax
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZSt4moveIRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	mov	rdx, rax
	lea	rax, 352[rbp]
	mov	rcx, rax
	call	_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv
.LEHE4:
	lea	rdx, 352[rbp]
	mov	rax, QWORD PTR 416[rbp]
	mov	rcx, rax
.LEHB5:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
.LEHE5:
	lea	rax, 352[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	rbx, QWORD PTR 416[rbp]
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	mov	rax, rbx
	jmp	.L102
.L99:
	mov	rbx, rax
	lea	rax, 344[rbp]
	mov	rcx, rax
	call	_ZNSt6localeD1Ev
	jmp	.L97
.L101:
	mov	rbx, rax
	lea	rax, 352[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L97
.L100:
	mov	rbx, rax
.L97:
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB6:
	call	_Unwind_Resume
.LEHE6:
.L102:
	add	rsp, 520
	pop	rbx
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6579:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6579-.LLSDACSB6579
.LLSDACSB6579:
	.uleb128 .LEHB2-.LFB6579
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB6579
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L99-.LFB6579
	.uleb128 0
	.uleb128 .LEHB4-.LFB6579
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L100-.LFB6579
	.uleb128 0
	.uleb128 .LEHB5-.LFB6579
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L101-.LFB6579
	.uleb128 0
	.uleb128 .LEHB6-.LFB6579
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE6579:
	.section	.text$_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN3llp5OrderESaIS1_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN3llp5OrderESaIS1_EE5beginEv
	.def	_ZNKSt6vectorIN3llp5OrderESaIS1_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN3llp5OrderESaIS1_EE5beginEv
_ZNKSt6vectorIN3llp5OrderESaIS1_EE5beginEv:
.LFB6583:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rdx, QWORD PTR 16[rbp]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS4_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN3llp5OrderESaIS1_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN3llp5OrderESaIS1_EE3endEv
	.def	_ZNKSt6vectorIN3llp5OrderESaIS1_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN3llp5OrderESaIS1_EE3endEv
_ZNKSt6vectorIN3llp5OrderESaIS1_EE3endEv:
.LFB6584:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	lea	rdx, 8[rax]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS4_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEppEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEppEv
_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEppEv:
.LFB6585:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 32[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIySaIyEE5clearEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIySaIyEE5clearEv
	.def	_ZNSt6vectorIySaIyEE5clearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEE5clearEv
_ZNSt6vectorIySaIyEE5clearEv:
.LFB6586:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIySaIyEE9push_backERKy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIySaIyEE9push_backERKy
	.def	_ZNSt6vectorIySaIyEE9push_backERKy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEE9push_backERKy
_ZNSt6vectorIySaIyEE9push_backERKy:
.LFB6587:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	je	.L111
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rdx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, rax
	call	_ZSt12construct_atIyJRKyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_
	nop
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L113
.L111:
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE3endEv
	mov	rdx, rax
	mov	rcx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_
.L113:
	nop
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIySaIyEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIySaIyEE4sizeEv
	.def	_ZNKSt6vectorIySaIyEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIySaIyEE4sizeEv
_ZNKSt6vectorIySaIyEE4sizeEv:
.LFB6589:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 3
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EED2Ev
	.def	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EED2Ev
_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EED2Ev:
.LFB6594:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 5
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE13_M_deallocateEPS1_y
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE12_Vector_implD1Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6594:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6594-.LLSDACSB6594
.LLSDACSB6594:
.LLSDACSE6594:
	.section	.text$_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev
	.def	_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev
_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev:
.LFB6598:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdx, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	rcx, QWORD PTR 16[rbp]
	mov	rcx, QWORD PTR [rcx]
	mov	QWORD PTR -8[rbp], rcx
	mov	QWORD PTR -16[rbp], rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, rax
	call	_ZSt8_DestroyIPN3llp5OrderEEvT_S3_
	nop
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EED2Ev
	nop
	add	rsp, 64
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6598:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6598-.LLSDACSB6598
.LLSDACSB6598:
.LLSDACSE6598:
	.section	.text$_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIySaIyEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIySaIyEED2Ev
	.def	_ZNSt12_Vector_baseIySaIyEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIySaIyEED2Ev
_ZNSt12_Vector_baseIySaIyEED2Ev:
.LFB6603:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 3
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPyy
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE12_Vector_implD1Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6603:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6603-.LLSDACSB6603
.LLSDACSB6603:
.LLSDACSE6603:
	.section	.text$_ZNSt12_Vector_baseIySaIyEED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIySaIyEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIySaIyEED1Ev
	.def	_ZNSt6vectorIySaIyEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEED1Ev
_ZNSt6vectorIySaIyEED1Ev:
.LFB6607:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	mov	rdx, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	rcx, QWORD PTR 16[rbp]
	mov	rcx, QWORD PTR [rcx]
	mov	QWORD PTR -8[rbp], rcx
	mov	QWORD PTR -16[rbp], rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, rax
	call	_ZSt8_DestroyIPyEvT_S1_
	nop
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEED2Ev
	nop
	add	rsp, 64
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6607:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6607-.LLSDACSB6607
.LLSDACSB6607:
.LLSDACSE6607:
	.section	.text$_ZNSt6vectorIySaIyEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN3llp5OrderESaIS1_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN3llp5OrderESaIS1_EE4sizeEv
	.def	_ZNKSt6vectorIN3llp5OrderESaIS1_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN3llp5OrderESaIS1_EE4sizeEv
_ZNKSt6vectorIN3llp5OrderESaIS1_EE4sizeEv:
.LFB6609:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 5
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC7:
	.ascii "vector::reserve\0"
	.section	.text$_ZNSt6vectorIN3llp5OrderESaIS1_EE7reserveEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN3llp5OrderESaIS1_EE7reserveEy
	.def	_ZNSt6vectorIN3llp5OrderESaIS1_EE7reserveEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN3llp5OrderESaIS1_EE7reserveEy
_ZNSt6vectorIN3llp5OrderESaIS1_EE7reserveEy:
.LFB6608:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8max_sizeEv
	cmp	rax, QWORD PTR 24[rbp]
	setb	al
	test	al, al
	je	.L123
	lea	rax, .LC7[rip]
	mov	rcx, rax
	call	_ZSt20__throw_length_errorPKc
.L123:
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8capacityEv
	cmp	rax, QWORD PTR 24[rbp]
	setb	al
	test	al, al
	je	.L125
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE4sizeEv
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE11_M_allocateEy
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, QWORD PTR -16[rbp]
	mov	r9, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rdx]
	sub	rcx, rdx
	sar	rcx, 5
	mov	rdx, rcx
	mov	rcx, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE13_M_deallocateEPS1_y
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rbp]
	sal	rdx, 5
	add	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], rdx
.L125:
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIySaIyEE7reserveEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIySaIyEE7reserveEy
	.def	_ZNSt6vectorIySaIyEE7reserveEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEE7reserveEy
_ZNSt6vectorIySaIyEE7reserveEy:
.LFB6614:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE8max_sizeEv
	cmp	rax, QWORD PTR 24[rbp]
	setb	al
	test	al, al
	je	.L127
	lea	rax, .LC7[rip]
	mov	rcx, rax
	call	_ZSt20__throw_length_errorPKc
.L127:
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE8capacityEv
	cmp	rax, QWORD PTR 24[rbp]
	setb	al
	test	al, al
	je	.L129
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE11_M_allocateEy
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	r8, QWORD PTR -16[rbp]
	mov	r9, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rdx]
	sub	rcx, rdx
	sar	rcx, 3
	mov	rdx, rcx
	mov	rcx, rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPyy
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rbp]
	sal	rdx, 3
	add	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], rdx
.L129:
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN3llp5OrderESaIS1_EE9push_backERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN3llp5OrderESaIS1_EE9push_backERKS1_
	.def	_ZNSt6vectorIN3llp5OrderESaIS1_EE9push_backERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN3llp5OrderESaIS1_EE9push_backERKS1_
_ZNSt6vectorIN3llp5OrderESaIS1_EE9push_backERKS1_:
.LFB6618:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	je	.L131
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rdx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRKN3llp5OrderEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, rax
	call	_ZSt12construct_atIN3llp5OrderEJRKS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_
	nop
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 32[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L133
.L131:
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EE3endEv
	mov	rdx, rax
	mov	rcx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.L133:
	nop
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.def	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB6620:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	sete	al
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv:
.LFB6637:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB6646:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	xor	eax, 1
	test	al, al
	je	.L140
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy
.L140:
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
.LFB6647:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv:
.LFB6652:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	rbx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L144
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	rax, 15
	mov	eax, 1
	jmp	.L146
.L144:
	mov	eax, 0
.L146:
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3minIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3minIyERKT_S2_S2_
	.def	_ZSt3minIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3minIyERKT_S2_S2_
_ZSt3minIyERKT_S2_S2_:
.LFB6791:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L148
	mov	rax, QWORD PTR 24[rbp]
	jmp	.L149
.L148:
	mov	rax, QWORD PTR 16[rbp]
.L149:
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILx1ELx1000000EEEES2_ILx1ELx1000EExLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE,"x"
	.linkonce discard
	.globl	_ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILx1ELx1000000EEEES2_ILx1ELx1000EExLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE
	.def	_ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILx1ELx1000000EEEES2_ILx1ELx1000EExLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILx1ELx1000000EEEES2_ILx1ELx1000EExLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE
_ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILx1ELx1000000EEEES2_ILx1ELx1000EExLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE:
.LFB6861:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv
	mov	rcx, rax
	movabs	rdx, 2361183241434822607
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax, 7
	sar	rcx, 63
	mov	rdx, rcx
	sub	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000EEEC1IxvEERKT_
	mov	rax, QWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv
	.def	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv
_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv:
.LFB6873:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.def	_ZSt4moveIRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
_ZSt4moveIRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB6875:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS4_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS4_
_ZN9__gnu_cxx17__normal_iteratorIPKN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS4_:
.LFB6880:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy
	.def	_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy
_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy:
.LFB6881:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR 24[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L159
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	mov	rdx, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	rcx, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rcx
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, rax
	call	_ZSt8_DestroyIPyEvT_S1_
	nop
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	QWORD PTR 8[rax], rdx
.L159:
	nop
	add	rsp, 64
	pop	rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6881:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6881-.LLSDACSB6881
.LLSDACSB6881:
.LLSDACSE6881:
	.section	.text$_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIySaIyEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIySaIyEE3endEv
	.def	_ZNSt6vectorIySaIyEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEE3endEv
_ZNSt6vectorIySaIyEE3endEv:
.LFB6883:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	lea	rdx, 8[rax]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC1ERKS1_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3maxIyERKT_S2_S2_
	.def	_ZSt3maxIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3maxIyERKT_S2_S2_
_ZSt3maxIyERKT_S2_S2_:
.LFB6886:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L163
	mov	rax, QWORD PTR 24[rbp]
	jmp	.L164
.L163:
	mov	rax, QWORD PTR 16[rbp]
.L164:
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIySaIyEE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIySaIyEE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorIySaIyEE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIySaIyEE12_M_check_lenEyPKc
_ZNKSt6vectorIySaIyEE12_M_check_lenEyPKc:
.LFB6885:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE8max_sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR 40[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L166
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt20__throw_length_errorPKc
.L166:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, 40[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZSt3maxIyERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	cmp	QWORD PTR -8[rbp], rax
	jb	.L167
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE8max_sizeEv
	cmp	rax, QWORD PTR -8[rbp]
	jnb	.L168
.L167:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE8max_sizeEv
	jmp	.L169
.L168:
	mov	rax, QWORD PTR -8[rbp]
.L169:
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.def	_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB6887:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv
	mov	rax, QWORD PTR [rax]
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, rdx
	sar	rax, 3
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIySaIyEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIySaIyEE5beginEv
	.def	_ZNSt6vectorIySaIyEE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEE5beginEv
_ZNSt6vectorIySaIyEE5beginEv:
.LFB6888:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rdx, QWORD PTR 16[rbp]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC1ERKS1_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "vector::_M_realloc_insert\0"
	.section	.text$_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_
	.def	_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_
_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_:
.LFB6884:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 120
	.seh_stackalloc	120
	lea	rbp, 112[rsp]
	.seh_setframe	rbp, 112
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	lea	r8, .LC8[rip]
	mov	edx, 1
	mov	rcx, rax
	call	_ZNKSt6vectorIySaIyEE12_M_check_lenEyPKc
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE5beginEv
	mov	QWORD PTR -80[rbp], rax
	lea	rdx, -80[rbp]
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE11_M_allocateEy
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, QWORD PTR -32[rbp]
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -40[rbp]
	add	rcx, rdx
	mov	rdx, QWORD PTR 32[rbp]
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rax
	call	_ZSt12construct_atIyJRKyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_
	nop
	mov	QWORD PTR -48[rbp], 0
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_
	mov	QWORD PTR -48[rbp], rax
	add	QWORD PTR -48[rbp], 8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	sub	rdx, QWORD PTR -16[rbp]
	sar	rdx, 3
	mov	rcx, rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPyy
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	add	rsp, 120
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE13_M_deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE13_M_deallocateEPS1_y
	.def	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE13_M_deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE13_M_deallocateEPS1_y
_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE13_M_deallocateEPS1_y:
.LFB6889:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	cmp	QWORD PTR 24[rbp], 0
	je	.L180
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -48[rbp], rax
	call	_ZSt23__is_constant_evaluatedv
	test	al, al
	je	.L178
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rax
	call	_ZdlPv
	jmp	.L179
.L178:
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt15__new_allocatorIN3llp5OrderEE10deallocateEPS1_y
.L179:
	nop
.L180:
	nop
	add	rsp, 80
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB6890:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPyy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPyy
	.def	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPyy
_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPyy:
.LFB6892:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	cmp	QWORD PTR 24[rbp], 0
	je	.L187
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -48[rbp], rax
	call	_ZSt23__is_constant_evaluatedv
	test	al, al
	je	.L185
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rax
	call	_ZdlPv
	jmp	.L186
.L185:
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt15__new_allocatorIyE10deallocateEPyy
.L186:
	nop
.L187:
	nop
	add	rsp, 80
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv:
.LFB6893:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN3llp5OrderESaIS1_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8max_sizeEv
	.def	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8max_sizeEv
_ZNKSt6vectorIN3llp5OrderESaIS1_EE8max_sizeEv:
.LFB6895:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_max_sizeERKS2_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN3llp5OrderESaIS1_EE8capacityEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8capacityEv
	.def	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8capacityEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8capacityEv
_ZNKSt6vectorIN3llp5OrderESaIS1_EE8capacityEv:
.LFB6896:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 5
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE11_M_allocateEy
_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE11_M_allocateEy:
.LFB6897:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	cmp	QWORD PTR 24[rbp], 0
	je	.L195
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -32[rbp], rax
	call	_ZSt23__is_constant_evaluatedv
	test	al, al
	je	.L196
	mov	rax, QWORD PTR -32[rbp]
	mov	ecx, 0
	mov	rdx, rax
	sal	rdx, 5
	shr	rax, 59
	test	rax, rax
	je	.L197
	mov	ecx, 1
.L197:
	mov	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, rcx
	and	eax, 1
	test	al, al
	je	.L199
	call	_ZSt28__throw_bad_array_new_lengthv
.L199:
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, rax
	call	_Znwy
	jmp	.L200
.L196:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r8d, 0
	mov	rcx, rax
	call	_ZNSt15__new_allocatorIN3llp5OrderEE8allocateEyPKv
	nop
.L200:
	nop
	jmp	.L202
.L195:
	mov	eax, 0
.L202:
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.def	_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_:
.LFB6898:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	r8, QWORD PTR 40[rbp]
	mov	rcx, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	r9, r8
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt12__relocate_aIPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIySaIyEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIySaIyEE8max_sizeEv
	.def	_ZNKSt6vectorIySaIyEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIySaIyEE8max_sizeEv
_ZNKSt6vectorIySaIyEE8max_sizeEv:
.LFB6899:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	call	_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIySaIyEE8capacityEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIySaIyEE8capacityEv
	.def	_ZNKSt6vectorIySaIyEE8capacityEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIySaIyEE8capacityEv
_ZNKSt6vectorIySaIyEE8capacityEv:
.LFB6900:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	sub	rdx, rax
	mov	rax, rdx
	sar	rax, 3
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIySaIyEE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIySaIyEE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIySaIyEE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIySaIyEE11_M_allocateEy
_ZNSt12_Vector_baseIySaIyEE11_M_allocateEy:
.LFB6901:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	cmp	QWORD PTR 24[rbp], 0
	je	.L211
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -32[rbp], rax
	call	_ZSt23__is_constant_evaluatedv
	test	al, al
	je	.L212
	mov	rax, QWORD PTR -32[rbp]
	mov	ecx, 0
	lea	rdx, 0[0+rax*8]
	shr	rax, 61
	test	rax, rax
	je	.L213
	mov	ecx, 1
.L213:
	mov	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, rcx
	and	eax, 1
	test	al, al
	je	.L215
	call	_ZSt28__throw_bad_array_new_lengthv
.L215:
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, rax
	call	_Znwy
	jmp	.L216
.L212:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r8d, 0
	mov	rcx, rax
	call	_ZNSt15__new_allocatorIyE8allocateEyPKv
	nop
.L216:
	nop
	jmp	.L218
.L211:
	mov	eax, 0
.L218:
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_
	.def	_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_
_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_:
.LFB6902:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	r8, QWORD PTR 40[rbp]
	mov	rcx, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	r9, r8
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN3llp5OrderESaIS1_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN3llp5OrderESaIS1_EE3endEv
	.def	_ZNSt6vectorIN3llp5OrderESaIS1_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN3llp5OrderESaIS1_EE3endEv
_ZNSt6vectorIN3llp5OrderESaIS1_EE3endEv:
.LFB6904:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	lea	rdx, 8[rax]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS3_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN3llp5OrderESaIS1_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN3llp5OrderESaIS1_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorIN3llp5OrderESaIS1_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN3llp5OrderESaIS1_EE12_M_check_lenEyPKc
_ZNKSt6vectorIN3llp5OrderESaIS1_EE12_M_check_lenEyPKc:
.LFB6906:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8max_sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE4sizeEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR 40[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L225
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt20__throw_length_errorPKc
.L225:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE4sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE4sizeEv
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, 40[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZSt3maxIyERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE4sizeEv
	cmp	QWORD PTR -8[rbp], rax
	jb	.L226
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8max_sizeEv
	cmp	rax, QWORD PTR -8[rbp]
	jnb	.L227
.L226:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE8max_sizeEv
	jmp	.L228
.L227:
	mov	rax, QWORD PTR -8[rbp]
.L228:
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPN3llp5OrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPN3llp5OrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.def	_ZN9__gnu_cxxmiIPN3llp5OrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPN3llp5OrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
_ZN9__gnu_cxxmiIPN3llp5OrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB6907:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, rdx
	sar	rax, 5
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN3llp5OrderESaIS1_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN3llp5OrderESaIS1_EE5beginEv
	.def	_ZNSt6vectorIN3llp5OrderESaIS1_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN3llp5OrderESaIS1_EE5beginEv
_ZNSt6vectorIN3llp5OrderESaIS1_EE5beginEv:
.LFB6908:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rdx, QWORD PTR 16[rbp]
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS3_
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN3llp5OrderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN3llp5OrderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.def	_ZNSt6vectorIN3llp5OrderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN3llp5OrderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
_ZNSt6vectorIN3llp5OrderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB6905:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 120
	.seh_stackalloc	120
	lea	rbp, 112[rsp]
	.seh_setframe	rbp, 112
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	lea	r8, .LC8[rip]
	mov	edx, 1
	mov	rcx, rax
	call	_ZNKSt6vectorIN3llp5OrderESaIS1_EE12_M_check_lenEyPKc
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EE5beginEv
	mov	QWORD PTR -80[rbp], rax
	lea	rdx, -80[rbp]
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxxmiIPN3llp5OrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE11_M_allocateEy
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRKN3llp5OrderEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, rdx
	sal	rcx, 5
	mov	rdx, QWORD PTR -40[rbp]
	add	rcx, rdx
	mov	rdx, QWORD PTR 32[rbp]
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRKN3llp5OrderEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rax
	call	_ZSt12construct_atIN3llp5OrderEJRKS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_
	nop
	mov	QWORD PTR -48[rbp], 0
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	mov	QWORD PTR -48[rbp], rax
	add	QWORD PTR -48[rbp], 32
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, 40[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	r9, rbx
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	sub	rdx, QWORD PTR -16[rbp]
	sar	rdx, 5
	mov	rcx, rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt12_Vector_baseIN3llp5OrderESaIS1_EE13_M_deallocateEPS1_y
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	add	rsp, 120
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy:
.LFB6918:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 80
	.seh_stackalloc	80
	lea	rbp, 80[rsp]
	.seh_setframe	rbp, 80
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	rax, QWORD PTR 40[rbp]
	lea	rsi, 1[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	mov	rbx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	mov	QWORD PTR -8[rbp], rax
	mov	QWORD PTR -16[rbp], rbx
	mov	QWORD PTR -24[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -48[rbp], rax
	call	_ZSt23__is_constant_evaluatedv
	test	al, al
	je	.L236
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rax
	call	_ZdlPv
	jmp	.L237
.L236:
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	_ZNSt15__new_allocatorIcE10deallocateEPcy
.L237:
	nop
	nop
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
.LFB6919:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	add	rax, 16
	mov	rcx, rax
	call	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000EEEC1IxvEERKT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000EEEC1IxvEERKT_
	.def	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000EEEC1IxvEERKT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000EEEC1IxvEERKT_
_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000EEEC1IxvEERKT_:
.LFB7101:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE
	.def	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE
_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB7125:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12construct_atIyJRKyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_,"x"
	.linkonce discard
	.globl	_ZSt12construct_atIyJRKyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_
	.def	_ZSt12construct_atIyJRKyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12construct_atIyJRKyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_
_ZSt12construct_atIyJRKyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_:
.LFB7126:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, rax
	mov	ecx, 8
	call	_ZnwyPv
	mov	rbx, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbx], rax
	mov	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC1ERKS1_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC1ERKS1_
_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC1ERKS1_:
.LFB7129:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv:
.LFB7130:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPN3llp5OrderEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPN3llp5OrderEEvT_S3_
	.def	_ZSt8_DestroyIPN3llp5OrderEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPN3llp5OrderEEvT_S3_
_ZSt8_DestroyIPN3llp5OrderEEvT_S3_:
.LFB7133:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	call	_ZSt23__is_constant_evaluatedv
	test	al, al
	je	.L249
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPN3llp5OrderEEEvT_S5_
	jmp	.L248
.L249:
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPN3llp5OrderEEEvT_S5_
	nop
.L248:
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPyEvT_S1_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPyEvT_S1_
	.def	_ZSt8_DestroyIPyEvT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPyEvT_S1_
_ZSt8_DestroyIPyEvT_S1_:
.LFB7135:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	call	_ZSt23__is_constant_evaluatedv
	test	al, al
	je	.L252
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPyEEvT_S3_
	jmp	.L251
.L252:
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_
	nop
.L251:
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_max_sizeERKS2_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_max_sizeERKS2_
	.def	_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_max_sizeERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_max_sizeERKS2_
_ZNSt6vectorIN3llp5OrderESaIS1_EE11_S_max_sizeERKS2_:
.LFB7136:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	movabs	rax, 288230376151711743
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	movabs	rax, 576460752303423487
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZSt3minIyERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIN3llp5OrderESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB7138:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__relocate_aIPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_,"x"
	.linkonce discard
	.globl	_ZSt12__relocate_aIPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_
	.def	_ZSt12__relocate_aIPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__relocate_aIPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_
_ZSt12__relocate_aIPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB7140:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR 56[rbp], r9
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPN3llp5OrderEET_S3_
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPN3llp5OrderEET_S3_
	mov	rbx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPN3llp5OrderEET_S3_
	mov	rdx, QWORD PTR 56[rbp]
	mov	r9, rdx
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt14__relocate_a_1IPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_
	.def	_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_
_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_:
.LFB7141:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	movabs	rax, 1152921504606846975
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	movabs	rax, 2305843009213693951
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZSt3minIyERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv:
.LFB7143:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_,"x"
	.linkonce discard
	.globl	_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_
	.def	_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_
_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_:
.LFB7145:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR 56[rbp], r9
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPyET_S1_
	mov	rsi, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPyET_S1_
	mov	rbx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt12__niter_baseIPyET_S1_
	mov	rdx, QWORD PTR 56[rbp]
	mov	r9, rdx
	mov	r8, rsi
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt14__relocate_a_1IyyENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRKN3llp5OrderEEOT_RNSt16remove_referenceIS4_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKN3llp5OrderEEOT_RNSt16remove_referenceIS4_E4typeE
	.def	_ZSt7forwardIRKN3llp5OrderEEOT_RNSt16remove_referenceIS4_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKN3llp5OrderEEOT_RNSt16remove_referenceIS4_E4typeE
_ZSt7forwardIRKN3llp5OrderEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB7146:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12construct_atIN3llp5OrderEJRKS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_,"x"
	.linkonce discard
	.globl	_ZSt12construct_atIN3llp5OrderEJRKS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_
	.def	_ZSt12construct_atIN3llp5OrderEJRKS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12construct_atIN3llp5OrderEJRKS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_
_ZSt12construct_atIN3llp5OrderEJRKS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_:
.LFB7147:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, rax
	mov	ecx, 32
	call	_ZnwyPv
	mov	rbx, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIRKN3llp5OrderEEOT_RNSt16remove_referenceIS4_E4typeE
	mov	rcx, rax
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR [rbx], rax
	mov	QWORD PTR 8[rbx], rdx
	mov	rax, QWORD PTR 16[rcx]
	mov	rdx, QWORD PTR 24[rcx]
	mov	QWORD PTR 16[rbx], rax
	mov	QWORD PTR 24[rbx], rdx
	mov	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS3_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS3_
_ZN9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEEC1ERKS3_:
.LFB7150:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPN3llp5OrderESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB7151:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_,"x"
	.linkonce discard
	.globl	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	.def	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_:
.LFB7160:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt9addressofIKcEPT_RS1_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10destroy_atIyEvPT_,"x"
	.linkonce discard
	.globl	_ZSt10destroy_atIyEvPT_
	.def	_ZSt10destroy_atIyEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10destroy_atIyEvPT_
_ZSt10destroy_atIyEvPT_:
.LFB7303:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb0EE9__destroyIPN3llp5OrderEEEvT_S5_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb0EE9__destroyIPN3llp5OrderEEEvT_S5_
	.def	_ZNSt12_Destroy_auxILb0EE9__destroyIPN3llp5OrderEEEvT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb0EE9__destroyIPN3llp5OrderEEEvT_S5_
_ZNSt12_Destroy_auxILb0EE9__destroyIPN3llp5OrderEEEvT_S5_:
.LFB7305:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	jmp	.L279
.L280:
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt11__addressofIN3llp5OrderEEPT_RS2_
	mov	rcx, rax
	call	_ZSt8_DestroyIN3llp5OrderEEvPT_
	add	QWORD PTR 16[rbp], 32
.L279:
	mov	rax, QWORD PTR 16[rbp]
	cmp	rax, QWORD PTR 24[rbp]
	jne	.L280
	nop
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPN3llp5OrderEEEvT_S5_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPN3llp5OrderEEEvT_S5_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPN3llp5OrderEEEvT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPN3llp5OrderEEEvT_S5_
_ZNSt12_Destroy_auxILb1EE9__destroyIPN3llp5OrderEEEvT_S5_:
.LFB7306:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb0EE9__destroyIPyEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb0EE9__destroyIPyEEvT_S3_
	.def	_ZNSt12_Destroy_auxILb0EE9__destroyIPyEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb0EE9__destroyIPyEEvT_S3_
_ZNSt12_Destroy_auxILb0EE9__destroyIPyEEvT_S3_:
.LFB7308:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	jmp	.L283
.L284:
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt11__addressofIyEPT_RS0_
	mov	rcx, rax
	call	_ZSt8_DestroyIyEvPT_
	add	QWORD PTR 16[rbp], 8
.L283:
	mov	rax, QWORD PTR 16[rbp]
	cmp	rax, QWORD PTR 24[rbp]
	jne	.L284
	nop
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_
_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_:
.LFB7309:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPN3llp5OrderEET_S3_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPN3llp5OrderEET_S3_
	.def	_ZSt12__niter_baseIPN3llp5OrderEET_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPN3llp5OrderEET_S3_
_ZSt12__niter_baseIPN3llp5OrderEET_S3_:
.LFB7311:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__relocate_a_1IPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_,"x"
	.linkonce discard
	.globl	_ZSt14__relocate_a_1IPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_
	.def	_ZSt14__relocate_a_1IPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__relocate_a_1IPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_
_ZSt14__relocate_a_1IPN3llp5OrderES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB7312:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR 56[rbp], r9
	mov	rax, QWORD PTR 48[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L289
.L290:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt11__addressofIN3llp5OrderEEPT_RS2_
	mov	rbx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, rax
	call	_ZSt11__addressofIN3llp5OrderEEPT_RS2_
	mov	rdx, QWORD PTR 56[rbp]
	mov	r8, rdx
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt19__relocate_object_aIN3llp5OrderES1_SaIS1_EEvPT_PT0_RT1_
	add	QWORD PTR 32[rbp], 32
	add	QWORD PTR -8[rbp], 32
.L289:
	mov	rax, QWORD PTR 32[rbp]
	cmp	rax, QWORD PTR 40[rbp]
	jne	.L290
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPyET_S1_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPyET_S1_
	.def	_ZSt12__niter_baseIPyET_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPyET_S1_
_ZSt12__niter_baseIPyET_S1_:
.LFB7314:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPyvEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPyvEC1ERKS1_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPyvEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPyvEC1ERKS1_
_ZN9__gnu_cxx17__normal_iteratorIPyvEC1ERKS1_:
.LFB7318:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__relocate_a_1IyyENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt14__relocate_a_1IyyENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.def	_ZSt14__relocate_a_1IyyENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__relocate_a_1IyyENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
_ZSt14__relocate_a_1IyyENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB7315:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	rax, QWORD PTR 24[rbp]
	sub	rax, QWORD PTR 16[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jle	.L296
	call	_ZSt21is_constant_evaluatedv
	test	al, al
	je	.L297
	lea	rdx, 32[rbp]
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPyvEC1ERKS1_
	mov	r8, QWORD PTR 40[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	r9, r8
	mov	r8, rcx
	mov	rcx, rax
	call	_ZSt14__relocate_a_1IPyN9__gnu_cxx17__normal_iteratorIS0_vEESaIyEET0_T_S6_S5_RT1_
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -16[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPyvE4baseEv
	mov	rax, QWORD PTR [rax]
	jmp	.L298
.L297:
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	memmove
.L296:
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sal	rdx, 3
	add	rax, rdx
.L298:
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10destroy_atIN3llp5OrderEEvPT_,"x"
	.linkonce discard
	.globl	_ZSt10destroy_atIN3llp5OrderEEvPT_
	.def	_ZSt10destroy_atIN3llp5OrderEEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10destroy_atIN3llp5OrderEEvPT_
_ZSt10destroy_atIN3llp5OrderEEvPT_:
.LFB7319:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	nop
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9addressofIKcEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt9addressofIKcEPT_RS1_
	.def	_ZSt9addressofIKcEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofIKcEPT_RS1_
_ZSt9addressofIKcEPT_RS1_:
.LFB7324:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt11__addressofIKcEPT_RS1_
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIN3llp5OrderEE10deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIN3llp5OrderEE10deallocateEPS1_y
	.def	_ZNSt15__new_allocatorIN3llp5OrderEE10deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIN3llp5OrderEE10deallocateEPS1_y
_ZNSt15__new_allocatorIN3llp5OrderEE10deallocateEPS1_y:
.LFB7415:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZdlPvy
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofIN3llp5OrderEEPT_RS2_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIN3llp5OrderEEPT_RS2_
	.def	_ZSt11__addressofIN3llp5OrderEEPT_RS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIN3llp5OrderEEPT_RS2_
_ZSt11__addressofIN3llp5OrderEEPT_RS2_:
.LFB7416:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIN3llp5OrderEEvPT_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIN3llp5OrderEEvPT_
	.def	_ZSt8_DestroyIN3llp5OrderEEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIN3llp5OrderEEvPT_
_ZSt8_DestroyIN3llp5OrderEEvPT_:
.LFB7417:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt10destroy_atIN3llp5OrderEEvPT_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIyE10deallocateEPyy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIyE10deallocateEPyy
	.def	_ZNSt15__new_allocatorIyE10deallocateEPyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIyE10deallocateEPyy
_ZNSt15__new_allocatorIyE10deallocateEPyy:
.LFB7418:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZdlPvy
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofIyEPT_RS0_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIyEPT_RS0_
	.def	_ZSt11__addressofIyEPT_RS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIyEPT_RS0_
_ZSt11__addressofIyEPT_RS0_:
.LFB7419:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIyEvPT_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIyEvPT_
	.def	_ZSt8_DestroyIyEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIyEvPT_
_ZSt8_DestroyIyEvPT_:
.LFB7420:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	_ZSt10destroy_atIyEvPT_
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIN3llp5OrderEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIN3llp5OrderEE8allocateEyPKv
	.def	_ZNSt15__new_allocatorIN3llp5OrderEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIN3llp5OrderEE8allocateEyPKv
_ZNSt15__new_allocatorIN3llp5OrderEE8allocateEyPKv:
.LFB7421:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	movabs	rax, 288230376151711743
	cmp	rax, QWORD PTR 24[rbp]
	setb	al
	movzx	eax, al
	test	eax, eax
	setne	al
	test	al, al
	je	.L314
	movabs	rax, 576460752303423487
	cmp	rax, QWORD PTR 24[rbp]
	jnb	.L315
	call	_ZSt28__throw_bad_array_new_lengthv
.L315:
	call	_ZSt17__throw_bad_allocv
.L314:
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 5
	mov	rcx, rax
	call	_Znwy
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt19__relocate_object_aIN3llp5OrderES1_SaIS1_EEvPT_PT0_RT1_,"x"
	.linkonce discard
	.globl	_ZSt19__relocate_object_aIN3llp5OrderES1_SaIS1_EEvPT_PT0_RT1_
	.def	_ZSt19__relocate_object_aIN3llp5OrderES1_SaIS1_EEvPT_PT0_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__relocate_object_aIN3llp5OrderES1_SaIS1_EEvPT_PT0_RT1_
_ZSt19__relocate_object_aIN3llp5OrderES1_SaIS1_EEvPT_PT0_RT1_:
.LFB7422:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZSt4moveIRN3llp5OrderEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rdx, QWORD PTR 32[rbp]
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	QWORD PTR -32[rbp], rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIN3llp5OrderEEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, rax
	call	_ZSt12construct_atIN3llp5OrderEJS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_
	nop
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZSt11__addressofIN3llp5OrderEEPT_RS2_
	mov	rdx, QWORD PTR 32[rbp]
	mov	QWORD PTR -8[rbp], rdx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, rax
	call	_ZSt10destroy_atIN3llp5OrderEEvPT_
	nop
	nop
	add	rsp, 80
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIyE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIyE8allocateEyPKv
	.def	_ZNSt15__new_allocatorIyE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIyE8allocateEyPKv
_ZNSt15__new_allocatorIyE8allocateEyPKv:
.LFB7423:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	movabs	rax, 1152921504606846975
	cmp	rax, QWORD PTR 24[rbp]
	setb	al
	movzx	eax, al
	test	eax, eax
	setne	al
	test	al, al
	je	.L320
	movabs	rax, 2305843009213693951
	cmp	rax, QWORD PTR 24[rbp]
	jnb	.L321
	call	_ZSt28__throw_bad_array_new_lengthv
.L321:
	call	_ZSt17__throw_bad_allocv
.L320:
	mov	rax, QWORD PTR 24[rbp]
	sal	rax, 3
	mov	rcx, rax
	call	_Znwy
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__relocate_a_1IPyN9__gnu_cxx17__normal_iteratorIS0_vEESaIyEET0_T_S6_S5_RT1_,"x"
	.linkonce discard
	.globl	_ZSt14__relocate_a_1IPyN9__gnu_cxx17__normal_iteratorIS0_vEESaIyEET0_T_S6_S5_RT1_
	.def	_ZSt14__relocate_a_1IPyN9__gnu_cxx17__normal_iteratorIS0_vEESaIyEET0_T_S6_S5_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__relocate_a_1IPyN9__gnu_cxx17__normal_iteratorIS0_vEESaIyEET0_T_S6_S5_RT1_
_ZSt14__relocate_a_1IPyN9__gnu_cxx17__normal_iteratorIS0_vEESaIyEET0_T_S6_S5_RT1_:
.LFB7424:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR 56[rbp], r9
	mov	rax, QWORD PTR 48[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L324
.L325:
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, rax
	call	_ZSt11__addressofIyEPT_RS0_
	mov	rbx, rax
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPyvEdeEv
	mov	rcx, rax
	call	_ZSt11__addressofIyEPT_RS0_
	mov	rdx, QWORD PTR 56[rbp]
	mov	r8, rdx
	mov	rdx, rbx
	mov	rcx, rax
	call	_ZSt19__relocate_object_aIyySaIyEEvPT_PT0_RT1_
	add	QWORD PTR 32[rbp], 8
	lea	rax, -8[rbp]
	mov	rcx, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPyvEppEv
.L324:
	mov	rax, QWORD PTR 32[rbp]
	cmp	rax, QWORD PTR 40[rbp]
	jne	.L325
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPyvE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPyvE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPyvE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPyvE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPyvE4baseEv:
.LFB7425:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIcE10deallocateEPcy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIcE10deallocateEPcy
	.def	_ZNSt15__new_allocatorIcE10deallocateEPcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIcE10deallocateEPcy
_ZNSt15__new_allocatorIcE10deallocateEPcy:
.LFB7427:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rdx, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZdlPvy
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofIKcEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIKcEPT_RS1_
	.def	_ZSt11__addressofIKcEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIKcEPT_RS1_
_ZSt11__addressofIKcEPT_RS1_:
.LFB7428:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRN3llp5OrderEEONSt16remove_referenceIT_E4typeEOS4_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRN3llp5OrderEEONSt16remove_referenceIT_E4typeEOS4_
	.def	_ZSt4moveIRN3llp5OrderEEONSt16remove_referenceIT_E4typeEOS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRN3llp5OrderEEONSt16remove_referenceIT_E4typeEOS4_
_ZSt4moveIRN3llp5OrderEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB7477:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPyvEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPyvEppEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPyvEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPyvEppEv
_ZN9__gnu_cxx17__normal_iteratorIPyvEppEv:
.LFB7480:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPyvEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPyvEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPyvEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPyvEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPyvEdeEv:
.LFB7481:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt19__relocate_object_aIyySaIyEEvPT_PT0_RT1_,"x"
	.linkonce discard
	.globl	_ZSt19__relocate_object_aIyySaIyEEvPT_PT0_RT1_
	.def	_ZSt19__relocate_object_aIyySaIyEEvPT_PT0_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__relocate_object_aIyySaIyEEvPT_PT0_RT1_
_ZSt19__relocate_object_aIyySaIyEEvPT_PT0_RT1_:
.LFB7482:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_
	mov	rdx, QWORD PTR 32[rbp]
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR 16[rbp]
	mov	QWORD PTR -32[rbp], rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, rax
	call	_ZSt12construct_atIyJyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS1_DpOS2_
	nop
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	_ZSt11__addressofIyEPT_RS0_
	mov	rdx, QWORD PTR 32[rbp]
	mov	QWORD PTR -8[rbp], rdx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, rax
	call	_ZSt10destroy_atIyEvPT_
	nop
	nop
	add	rsp, 80
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIN3llp5OrderEEOT_RNSt16remove_referenceIS2_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIN3llp5OrderEEOT_RNSt16remove_referenceIS2_E4typeE
	.def	_ZSt7forwardIN3llp5OrderEEOT_RNSt16remove_referenceIS2_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIN3llp5OrderEEOT_RNSt16remove_referenceIS2_E4typeE
_ZSt7forwardIN3llp5OrderEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB7502:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12construct_atIN3llp5OrderEJS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_,"x"
	.linkonce discard
	.globl	_ZSt12construct_atIN3llp5OrderEJS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_
	.def	_ZSt12construct_atIN3llp5OrderEJS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12construct_atIN3llp5OrderEJS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_
_ZSt12construct_atIN3llp5OrderEJS1_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_:
.LFB7503:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, rax
	mov	ecx, 32
	call	_ZnwyPv
	mov	rbx, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIN3llp5OrderEEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rcx, rax
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR [rbx], rax
	mov	QWORD PTR 8[rbx], rdx
	mov	rax, QWORD PTR 16[rcx]
	mov	rdx, QWORD PTR 24[rcx]
	mov	QWORD PTR 16[rbx], rax
	mov	QWORD PTR 24[rbx], rdx
	mov	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_
	.def	_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_
_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_:
.LFB7504:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	.def	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB7513:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12construct_atIyJyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS1_DpOS2_,"x"
	.linkonce discard
	.globl	_ZSt12construct_atIyJyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS1_DpOS2_
	.def	_ZSt12construct_atIyJyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS1_DpOS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12construct_atIyJyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS1_DpOS2_
_ZSt12construct_atIyJyEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS1_DpOS2_:
.LFB7514:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, rax
	mov	ecx, 8
	call	_ZnwyPv
	mov	rbx, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	rcx, rax
	call	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbx], rax
	mov	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
_ZNSt8__detail14__destructibleISt13_Bit_iteratorEE:
	.byte	1
_ZNSt8__detail19__destructible_implISt13_Bit_iteratorEE:
	.byte	1
_ZNSt8__detail14__destructibleISt19_Bit_const_iteratorEE:
	.byte	1
_ZNSt8__detail19__destructible_implISt19_Bit_const_iteratorEE:
	.byte	1
_ZNSt8__detail14__destructibleIN9__gnu_cxx17__normal_iteratorIPcSt4spanIcLy18446744073709551615EEEEEE:
	.byte	1
_ZNSt8__detail19__destructible_implIN9__gnu_cxx17__normal_iteratorIPcSt4spanIcLy18446744073709551615EEEEEE:
	.byte	1
_ZNSt8__detail14__destructibleISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSt4spanIcLy18446744073709551615EEEEEEE:
	.byte	1
_ZNSt8__detail19__destructible_implISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSt4spanIcLy18446744073709551615EEEEEEE:
	.byte	1
_ZNSt8__detail14__destructibleINSt8__format10_Sink_iterIcEEEE:
	.byte	1
_ZNSt8__detail19__destructible_implINSt8__format10_Sink_iterIcEEEE:
	.byte	1
_ZNSt8__detail14__destructibleIN9__gnu_cxx17__normal_iteratorIPwSt4spanIwLy18446744073709551615EEEEEE:
	.byte	1
_ZNSt8__detail19__destructible_implIN9__gnu_cxx17__normal_iteratorIPwSt4spanIwLy18446744073709551615EEEEEE:
	.byte	1
_ZNSt8__detail14__destructibleISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPwSt4spanIwLy18446744073709551615EEEEEEE:
	.byte	1
_ZNSt8__detail19__destructible_implISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPwSt4spanIwLy18446744073709551615EEEEEEE:
	.byte	1
_ZNSt8__detail14__destructibleINSt8__format10_Sink_iterIwEEEE:
	.byte	1
_ZNSt8__detail19__destructible_implINSt8__format10_Sink_iterIwEEEE:
	.byte	1
_ZNSt8__detail14__destructibleIPcEE:
	.byte	1
_ZNSt8__detail19__destructible_implIPcEE:
	.byte	1
_ZNSt8__detail14__destructibleIPwEE:
	.byte	1
_ZNSt8__detail19__destructible_implIPwEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
_ZSt22__is_specialization_ofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_E:
	.byte	1
_ZSt22__is_specialization_ofINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES1_E:
	.byte	1
_ZNSt8__detail14__destructibleIyEE:
	.byte	1
_ZNSt8__detail19__destructible_implIyEE:
	.byte	1
_ZNSt8__detail14__destructibleIPKcEE:
	.byte	1
_ZNSt8__detail19__destructible_implIPKcEE:
	.byte	1
_ZNSt8__detail14__destructibleIPKwEE:
	.byte	1
_ZNSt8__detail19__destructible_implIPKwEE:
	.byte	1
_ZNSt8__detail14__destructibleIiEE:
	.byte	1
_ZNSt8__detail19__destructible_implIiEE:
	.byte	1
_ZNSt8__detail14__destructibleIjEE:
	.byte	1
_ZNSt8__detail19__destructible_implIjEE:
	.byte	1
_ZNSt8__detail14__destructibleIxEE:
	.byte	1
_ZNSt8__detail19__destructible_implIxEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIoEE:
	.byte	1
	.align 8
.LC0:
	.long	0
	.long	1104006501
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r8) 13.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeC1ERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEx;	.scl	2;	.type	32;	.endef
	.def	_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
