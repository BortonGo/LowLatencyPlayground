	.file	"benchmark_optimization_levels.cpp"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "----------------------------------------------------------\0"
	.text
	.p2align 4
	.globl	_Z11printModulov
	.def	_Z11printModulov;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11printModulov
_Z11printModulov:
.LFB6105:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rax, QWORD PTR [rbx]
	mov	BYTE PTR 47[rsp], 10
	mov	rax, QWORD PTR -24[rax]
	cmp	QWORD PTR 16[rbx+rax], 0
	je	.L2
	lea	rdx, 47[rsp]
	mov	r8d, 1
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L3:
	mov	r8d, 58
	lea	rdx, .LC0[rip]
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rax, QWORD PTR [rbx]
	mov	BYTE PTR 47[rsp], 10
	mov	rax, QWORD PTR -24[rax]
	cmp	QWORD PTR 16[rbx+rax], 0
	je	.L4
	lea	rdx, 47[rsp]
	mov	r8d, 1
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L5:
	mov	rax, QWORD PTR [rbx]
	mov	BYTE PTR 47[rsp], 10
	mov	rax, QWORD PTR -24[rax]
	cmp	QWORD PTR 16[rbx+rax], 0
	je	.L6
	lea	rdx, 47[rsp]
	mov	r8d, 1
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	mov	edx, 10
	mov	rcx, rbx
	call	_ZNSo3putEc
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L6:
	mov	edx, 10
	mov	rcx, rbx
	call	_ZNSo3putEc
	nop
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	edx, 10
	mov	rcx, rbx
	call	_ZNSo3putEc
	jmp	.L5
	.seh_endproc
	.section	.text$_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev
	.def	_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev
_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev:
.LFB6634:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L12
	mov	rdx, QWORD PTR 16[rcx]
	mov	rcx, rax
	sub	rdx, rax
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L12:
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIySaIyEED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIySaIyEED1Ev
	.def	_ZNSt6vectorIySaIyEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIySaIyEED1Ev
_ZNSt6vectorIySaIyEED1Ev:
.LFB6643:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L15
	mov	rdx, QWORD PTR 16[rcx]
	mov	rcx, rax
	sub	rdx, rax
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L15:
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB6681:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	lea	rdx, 16[rcx]
	cmp	rax, rdx
	je	.L18
	mov	rdx, QWORD PTR 16[rcx]
	mov	rcx, rax
	add	rdx, 1
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L18:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "us\0"
	.section	.text$_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
	.def	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE:
.LFB6613:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 536
	.seh_stackalloc	536
	vmovaps	XMMWORD PTR 496[rsp], xmm6
	.seh_savexmm	xmm6, 496
	vmovaps	XMMWORD PTR 512[rsp], xmm7
	.seh_savexmm	xmm7, 512
	.seh_endprologue
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE[rip]
	add	rax, 24
	vmovq	xmm6, rax
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	add	rax, 16
	lea	r12, 224[rsp]
	mov	rbx, rcx
	lea	r13, 112[rsp]
	mov	QWORD PTR 616[rsp], rdx
	mov	rcx, r12
	vpinsrq	xmm7, xmm6, rax, 1
	call	_ZNSt8ios_baseC2Ev
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	vpxor	xmm0, xmm0, xmm0
	xor	edx, edx
	vmovdqu	YMMWORD PTR 456[rsp], ymm0
	mov	QWORD PTR 440[rsp], 0
	add	rax, 16
	mov	QWORD PTR 224[rsp], rax
	xor	eax, eax
	mov	WORD PTR 448[rsp], ax
	mov	rax, QWORD PTR .refptr._ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE[rip]
	mov	rbp, QWORD PTR 8[rax]
	mov	r15, QWORD PTR 16[rax]
	mov	rcx, QWORD PTR -24[rbp]
	mov	QWORD PTR 112[rsp], rbp
	add	rcx, r13
	mov	QWORD PTR [rcx], r15
	vzeroupper
.LEHB0:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE0:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE[rip]
	vpxor	xmm0, xmm0, xmm0
	vmovdqa	XMMWORD PTR 112[rsp], xmm7
	lea	rsi, 208[rsp]
	vmovdqu	YMMWORD PTR 128[rsp], ymm0
	vpxor	xmm0, xmm0, xmm0
	vmovdqa	XMMWORD PTR 160[rsp], xmm0
	add	rax, 64
	mov	QWORD PTR 224[rsp], rax
	lea	rax, 176[rsp]
	mov	QWORD PTR 48[rsp], rax
	mov	rcx, rax
	vzeroupper
	call	_ZNSt6localeC1Ev
	mov	rdi, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, r12
	mov	DWORD PTR 184[rsp], 16
	lea	rax, 16[rdi]
	mov	QWORD PTR 192[rsp], rsi
	mov	QWORD PTR 120[rsp], rax
	lea	rax, 120[rsp]
	mov	rdx, rax
	mov	BYTE PTR 208[rsp], 0
	mov	QWORD PTR 200[rsp], 0
	mov	QWORD PTR 56[rsp], rax
.LEHB1:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE1:
	mov	rax, QWORD PTR [rbx]
	lea	r14, 72[rsp]
	mov	rcx, r14
	mov	rdx, QWORD PTR -24[rax]
	add	rdx, rbx
	mov	eax, DWORD PTR 24[rdx]
	add	rdx, 208
	mov	DWORD PTR 248[rsp], eax
	call	_ZNSt6localeC1ERKS_
	lea	rax, 80[rsp]
	mov	r8, r14
	mov	rdx, r12
	mov	rcx, rax
	mov	QWORD PTR 40[rsp], rax
.LEHB2:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale
.LEHE2:
	mov	rcx, QWORD PTR 40[rsp]
	add	rdi, 16
	vpinsrq	xmm6, xmm6, rdi, 1
	call	_ZNSt6localeD1Ev
	mov	rcx, r14
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR [rbx]
	mov	rcx, r13
	mov	rax, QWORD PTR -24[rax]
	mov	rax, QWORD PTR 8[rbx+rax]
	mov	QWORD PTR 232[rsp], rax
	mov	rax, QWORD PTR 616[rsp]
	mov	rdx, QWORD PTR [rax]
.LEHB3:
	call	_ZNSo9_M_insertIxEERSoT_
	mov	r8d, 2
	lea	rdx, .LC1[rip]
	mov	rcx, r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE3:
	mov	rcx, QWORD PTR 160[rsp]
	mov	rdx, QWORD PTR 192[rsp]
	test	rcx, rcx
	je	.L23
	mov	rax, QWORD PTR 144[rsp]
	test	rax, rax
	je	.L48
	cmp	rax, rcx
	jb	.L48
.L24:
	sub	rax, QWORD PTR 152[rsp]
	lea	rdi, 96[rsp]
	mov	QWORD PTR 200[rsp], rax
	mov	BYTE PTR [rdx+rax], 0
	mov	rcx, QWORD PTR 200[rsp]
	mov	rdx, QWORD PTR 192[rsp]
	mov	QWORD PTR 80[rsp], rdi
	mov	rax, rcx
	cmp	rdx, rsi
	je	.L27
.L26:
	mov	rax, QWORD PTR 208[rsp]
	mov	QWORD PTR 80[rsp], rdx
	mov	QWORD PTR 96[rsp], rax
	mov	rax, rcx
.L28:
	mov	rcx, QWORD PTR 56[rsp]
	xor	r9d, r9d
	xor	r8d, r8d
	mov	rdx, rsi
	mov	QWORD PTR 88[rsp], rax
	mov	QWORD PTR 192[rsp], rsi
	mov	QWORD PTR 200[rsp], 0
	mov	BYTE PTR 208[rsp], 0
.LEHB4:
	call	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy
.LEHE4:
	mov	r8, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 80[rsp]
	mov	rcx, rbx
.LEHB5:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE5:
	mov	rcx, QWORD PTR 80[rsp]
	cmp	rcx, rdi
	je	.L38
	mov	rax, QWORD PTR 96[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L38:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, QWORD PTR 192[rsp]
	vmovdqa	XMMWORD PTR 112[rsp], xmm6
	add	rax, 64
	mov	QWORD PTR 224[rsp], rax
	cmp	rcx, rsi
	je	.L39
	mov	rax, QWORD PTR 208[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L39:
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 48[rsp]
	add	rax, 16
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 112[rsp], rbp
	mov	rcx, r12
	mov	QWORD PTR 112[rsp+rax], r15
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	add	rax, 16
	mov	QWORD PTR 224[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	mov	rax, rbx
	vmovaps	xmm6, XMMWORD PTR 496[rsp]
	vmovaps	xmm7, XMMWORD PTR 512[rsp]
	add	rsp, 536
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	mov	rax, rcx
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L23:
	mov	rcx, QWORD PTR 200[rsp]
	lea	rdi, 96[rsp]
	mov	QWORD PTR 80[rsp], rdi
	mov	rax, rcx
	cmp	rdx, rsi
	jne	.L26
.L27:
	lea	rcx, 1[rax]
	mov	r9, rdi
	mov	rdx, rsi
	cmp	ecx, 8
	jnb	.L67
.L29:
	xor	r8d, r8d
	test	cl, 4
	je	.L32
	mov	r8d, DWORD PTR [rdx]
	mov	DWORD PTR [r9], r8d
	mov	r8d, 4
.L32:
	test	cl, 2
	je	.L33
	movzx	r10d, WORD PTR [rdx+r8]
	mov	WORD PTR [r9+r8], r10w
	add	r8, 2
.L33:
	and	ecx, 1
	je	.L28
	movzx	edx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [r9+r8], dl
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L67:
	mov	r10d, ecx
	xor	edx, edx
	and	r10d, -8
.L30:
	mov	r8d, edx
	add	edx, 8
	mov	r9, QWORD PTR [rsi+r8]
	mov	QWORD PTR [rdi+r8], r9
	cmp	edx, r10d
	jb	.L30
	lea	r9, [rdi+rdx]
	add	rdx, rsi
	jmp	.L29
.L42:
	mov	rbx, rax
	jmp	.L40
.L46:
	mov	rbx, rax
	jmp	.L21
.L40:
	mov	rcx, r14
	vzeroupper
	call	_ZNSt6localeD1Ev
.L37:
	mov	rcx, r13
	vzeroupper
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	mov	rcx, rbx
.LEHB6:
	call	_Unwind_Resume
.L21:
	add	rdi, 16
	lea	rcx, 192[rsp]
	mov	QWORD PTR 120[rsp], rdi
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 48[rsp]
	add	rax, 16
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 112[rsp], rbp
	mov	QWORD PTR 112[rsp+rax], r15
.L22:
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	rcx, r12
	add	rax, 16
	mov	QWORD PTR 224[rsp], rax
	vzeroupper
	call	_ZNSt8ios_baseD2Ev
	mov	rcx, rbx
	call	_Unwind_Resume
.LEHE6:
.L43:
	mov	rbx, rax
	jmp	.L37
.L45:
	mov	rbx, rax
	jmp	.L22
.L44:
.L66:
	mov	rbx, rax
	jmp	.L41
.L47:
	jmp	.L66
.L41:
	mov	rcx, QWORD PTR 40[rsp]
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L37
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6613:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6613-.LLSDACSB6613
.LLSDACSB6613:
	.uleb128 .LEHB0-.LFB6613
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L45-.LFB6613
	.uleb128 0
	.uleb128 .LEHB1-.LFB6613
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L46-.LFB6613
	.uleb128 0
	.uleb128 .LEHB2-.LFB6613
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L42-.LFB6613
	.uleb128 0
	.uleb128 .LEHB3-.LFB6613
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L43-.LFB6613
	.uleb128 0
	.uleb128 .LEHB4-.LFB6613
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L47-.LFB6613
	.uleb128 0
	.uleb128 .LEHB5-.LFB6613
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L44-.LFB6613
	.uleb128 0
	.uleb128 .LEHB6-.LFB6613
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE6613:
	.section	.text$_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "checksum = \0"
.LC4:
	.ascii "elapsed = \0"
.LC5:
	.ascii "throughput_ops_sec = \0"
	.text
	.p2align 4
	.globl	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	.def	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy:
.LFB6085:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	vmovaps	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	.seh_endprologue
	vxorps	xmm0, xmm0, xmm0
	mov	rax, QWORD PTR 144[rsp]
	mov	r10, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	rsi, r8
	mov	rbp, r9
	sub	rsi, rdx
	test	rax, rax
	js	.L69
	vcvtsi2sd	xmm6, xmm0, rax
.L70:
	mov	rbx, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rdx, rcx
	vcvtsi2sd	xmm0, xmm0, rsi
	mov	r8, r10
	vdivsd	xmm0, xmm0, QWORD PTR .LC2[rip]
	vdivsd	xmm6, xmm6, xmm0
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	BYTE PTR 40[rsp], 10
	mov	rcx, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	cmp	QWORD PTR 16[rcx+rax], 0
	je	.L71
	lea	rdi, 40[rsp]
	mov	r8d, 1
	mov	rdx, rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L72:
	mov	r8d, 11
	lea	rdx, .LC3[rip]
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, rbx
	mov	rdx, rbp
	call	_ZNSo9_M_insertIyEERSoT_
	mov	BYTE PTR 40[rsp], 10
	mov	rcx, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	cmp	QWORD PTR 16[rcx+rax], 0
	je	.L73
	mov	r8d, 1
	mov	rdx, rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L74:
	mov	r8d, 10
	lea	rdx, .LC4[rip]
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, rbx
	movabs	rax, 2361183241434822607
	imul	rsi
	sar	rsi, 63
	sar	rdx, 7
	sub	rdx, rsi
	mov	QWORD PTR 40[rsp], rdx
	mov	rdx, rdi
	call	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
	mov	BYTE PTR 39[rsp], 10
	mov	rcx, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	cmp	QWORD PTR 16[rcx+rax], 0
	je	.L75
	lea	rdx, 39[rsp]
	mov	r8d, 1
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L76:
	mov	r8d, 21
	lea	rdx, .LC5[rip]
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, rbx
	vmovsd	xmm1, xmm6, xmm6
	call	_ZNSo9_M_insertIdEERSoT_
	mov	BYTE PTR 40[rsp], 10
	mov	rcx, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	cmp	QWORD PTR 16[rcx+rax], 0
	je	.L77
	mov	r8d, 1
	mov	rdx, rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	vmovaps	xmm6, XMMWORD PTR 48[rsp]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	mov	edx, 10
	lea	rdi, 40[rsp]
	call	_ZNSo3putEc
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L77:
	mov	edx, 10
	call	_ZNSo3putEc
	nop
	vmovaps	xmm6, XMMWORD PTR 48[rsp]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	mov	edx, 10
	call	_ZNSo3putEc
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L73:
	mov	edx, 10
	call	_ZNSo3putEc
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L69:
	mov	rdx, rax
	and	eax, 1
	shr	rdx
	or	rdx, rax
	vcvtsi2sd	xmm6, xmm0, rdx
	vaddsd	xmm6, xmm6, xmm6
	jmp	.L70
	.seh_endproc
	.p2align 4
	.globl	_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
	.def	_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE:
.LFB6096:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 80
	.seh_stackalloc	80
	vmovaps	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	.seh_endprologue
	vmovdqu	xmm6, XMMWORD PTR [rcx]
	mov	rbx, rdx
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	rcx, QWORD PTR [rbx]
	mov	r9, QWORD PTR 8[rbx]
	mov	rsi, rax
	cmp	r9, rcx
	je	.L86
	lea	rdx, -32[r9]
	mov	rax, rcx
	sub	rdx, rcx
	mov	r8, rdx
	shr	r8, 5
	cmp	rdx, 32
	jbe	.L87
	and	rdx, -64
	vpxor	xmm1, xmm1, xmm1
	add	rdx, rcx
	.p2align 4,,10
	.p2align 3
.L83:
	vmovdqu	ymm2, YMMWORD PTR [rax]
	vpunpcklqdq	ymm0, ymm2, YMMWORD PTR 32[rax]
	add	rax, 64
	vpermq	ymm0, ymm0, 114
	vpaddq	ymm1, ymm1, ymm0
	cmp	rax, rdx
	jne	.L83
	and	r8, -2
	vmovdqa	xmm0, xmm1
	vextracti128	xmm1, ymm1, 0x1
	sal	r8, 5
	vpaddq	xmm0, xmm0, xmm1
	add	rcx, r8
	vmovq	rdi, xmm0
	vpextrq	rbx, xmm0, 1
	vzeroupper
.L82:
	lea	rax, 32[rcx]
	add	rdi, QWORD PTR 16[rcx]
	add	rbx, QWORD PTR [rcx]
	cmp	r9, rax
	je	.L81
	add	rdi, QWORD PTR 48[rcx]
	add	rbx, QWORD PTR 32[rcx]
.L81:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	lea	rcx, 48[rsp]
	mov	r9, rbx
	mov	rdx, rsi
	mov	QWORD PTR 32[rsp], 1000000
	mov	r8, rax
	vmovdqa	XMMWORD PTR 48[rsp], xmm6
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	nop
	vmovaps	xmm6, XMMWORD PTR 64[rsp]
	mov	rax, rdi
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L86:
	xor	edi, edi
	xor	ebx, ebx
	jmp	.L81
.L87:
	xor	edi, edi
	xor	ebx, ebx
	jmp	.L82
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC6:
	.ascii "vector::_M_realloc_insert\0"
.LC7:
	.ascii "SUM PRICES\0"
	.section	.text.unlikely,"x"
.LCOLDB8:
	.section	.text.startup,"x"
.LHOTB8:
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6106:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 152
	.seh_stackalloc	152
	.seh_endprologue
	call	__main
	vpxor	xmm0, xmm0, xmm0
	lea	rax, 80[rsp]
	mov	ecx, 32000000
	mov	QWORD PTR 96[rsp], 0
	mov	QWORD PTR 128[rsp], 0
	mov	QWORD PTR 56[rsp], rax
	vmovdqa	XMMWORD PTR 80[rsp], xmm0
	vmovdqa	XMMWORD PTR 112[rsp], xmm0
.LEHB7:
	call	_Znwy
	vmovq	xmm4, rax
	lea	r13, 32000000[rax]
	mov	rsi, rax
	mov	ecx, 8000000
	vpunpcklqdq	xmm0, xmm4, xmm4
	lea	rax, 80[rsp]
	mov	QWORD PTR 96[rsp], r13
	mov	QWORD PTR 56[rsp], rax
	vmovdqa	XMMWORD PTR 80[rsp], xmm0
	call	_Znwy
	vmovq	xmm3, rax
	add	rax, 8000000
	xor	edi, edi
	movabs	r15, 2951479051793528259
	vpunpcklqdq	xmm0, xmm3, xmm3
	mov	QWORD PTR 128[rsp], rax
	vmovdqa	XMMWORD PTR 112[rsp], xmm0
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L114:
	mov	QWORD PTR [rsi], rdi
	add	rsi, 32
	mov	QWORD PTR -24[rsi], 0
	mov	QWORD PTR -16[rsi], r12
	mov	DWORD PTR -8[rsi], ebp
	mov	BYTE PTR -4[rsi], bl
	mov	QWORD PTR 88[rsp], rsi
	cmp	rdi, 1000000
	je	.L113
.L102:
	movabs	rax, 2361183241434822607
	mov	rbx, rdi
	add	rdi, 1
	mov	rdx, rbx
	mov	r12, rbx
	mov	rbp, rbx
	shr	rdx, 3
	mul	rdx
	shr	rdx, 4
	imul	rdx, rdx, 1000
	sub	r12, rdx
	mov	rdx, rbx
	and	ebx, 1
	shr	rdx, 2
	add	r12, 100
	add	rbx, 1
	mov	rax, rdx
	mul	r15
	mov	rax, rdx
	and	rdx, -4
	shr	rax, 2
	add	rdx, rax
	lea	rax, [rdx+rdx*4]
	sal	rax, 2
	sub	rbp, rax
	add	ebp, 1
	cmp	r13, rsi
	jne	.L114
	mov	r14, QWORD PTR 80[rsp]
	mov	rax, r13
	movabs	rcx, 288230376151711743
	sub	rax, r14
	mov	QWORD PTR 40[rsp], rax
	sar	rax, 5
	cmp	rax, rcx
	je	.L115
	cmp	r13, r14
	je	.L116
	lea	rdx, [rax+rax]
	cmp	rdx, rax
	jb	.L105
	test	rdx, rdx
	jne	.L117
	mov	rax, QWORD PTR 40[rsp]
	xor	r8d, r8d
	mov	BYTE PTR 28[rax], bl
	xor	ebx, ebx
	mov	QWORD PTR [rax], rdi
	mov	QWORD PTR 8[rax], 0
	mov	QWORD PTR 16[rax], r12
	mov	DWORD PTR 24[rax], ebp
	xor	eax, eax
.L98:
	mov	rdx, r14
	.p2align 4,,10
	.p2align 3
.L100:
	vmovdqu	xmm1, XMMWORD PTR [rdx]
	add	rdx, 32
	add	rax, 32
	vmovdqu	XMMWORD PTR -32[rax], xmm1
	vmovdqu	xmm2, XMMWORD PTR -16[rdx]
	vmovdqu	XMMWORD PTR -16[rax], xmm2
	cmp	rsi, rdx
	jne	.L100
	sub	rsi, r14
	lea	rsi, 32[rbx+rsi]
	test	r14, r14
	jne	.L99
	mov	r13, r8
.L101:
	mov	QWORD PTR 80[rsp], rbx
	mov	QWORD PTR 88[rsp], rsi
	mov	QWORD PTR 96[rsp], r8
	cmp	rdi, 1000000
	jne	.L102
.L113:
	lea	rdi, 80[rsp]
	lea	rax, .LC7[rip]
	mov	QWORD PTR 64[rsp], 10
	lea	rcx, 64[rsp]
	mov	rdx, rdi
	mov	QWORD PTR 72[rsp], rax
	mov	QWORD PTR 56[rsp], rdi
	call	_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
	lea	rcx, 112[rsp]
	call	_ZNSt6vectorIySaIyEED1Ev
	mov	rcx, rdi
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev
	xor	eax, eax
	add	rsp, 152
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L116:
	add	rax, 1
	jc	.L105
	movabs	rdx, 288230376151711743
	cmp	rax, rdx
	cmova	rax, rdx
	sal	rax, 5
	mov	QWORD PTR 48[rsp], rax
	mov	rcx, rax
.L96:
	lea	rax, 80[rsp]
	mov	QWORD PTR 56[rsp], rax
	call	_Znwy
	mov	rdx, QWORD PTR 40[rsp]
	mov	r8, QWORD PTR 48[rsp]
	add	rdx, rax
	add	r8, rax
	mov	BYTE PTR 28[rdx], bl
	mov	rbx, rax
	mov	QWORD PTR [rdx], rdi
	mov	QWORD PTR 8[rdx], 0
	mov	QWORD PTR 16[rdx], r12
	mov	DWORD PTR 24[rdx], ebp
	cmp	rsi, r14
	jne	.L98
	lea	rsi, 32[rax]
.L99:
	mov	rdx, r13
	mov	rcx, r14
	mov	QWORD PTR 40[rsp], r8
	sub	rdx, r14
	call	_ZdlPvy
	mov	r8, QWORD PTR 40[rsp]
	mov	r13, r8
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L105:
	movabs	rax, 9223372036854775776
	mov	QWORD PTR 48[rsp], rax
	mov	rcx, rax
	jmp	.L96
.L117:
	movabs	rax, 288230376151711743
	cmp	rdx, rax
	cmova	rdx, rax
	sal	rdx, 5
	mov	QWORD PTR 48[rsp], rdx
	mov	rcx, rdx
	jmp	.L96
.L115:
	lea	rax, 80[rsp]
	lea	rcx, .LC6[rip]
	mov	QWORD PTR 56[rsp], rax
	call	_ZSt20__throw_length_errorPKc
.LEHE7:
.L108:
	mov	rbx, rax
	jmp	.L103
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6106:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6106-.LLSDACSB6106
.LLSDACSB6106:
	.uleb128 .LEHB7-.LFB6106
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L108-.LFB6106
	.uleb128 0
.LLSDACSE6106:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	216
	.seh_savereg	rbx, 152
	.seh_savereg	rsi, 160
	.seh_savereg	rdi, 168
	.seh_savereg	rbp, 176
	.seh_savereg	r12, 184
	.seh_savereg	r13, 192
	.seh_savereg	r14, 200
	.seh_savereg	r15, 208
	.seh_endprologue
main.cold:
.L103:
	lea	rcx, 112[rsp]
	vzeroupper
	call	_ZNSt6vectorIySaIyEED1Ev
	mov	rcx, QWORD PTR 56[rsp]
	call	_ZNSt6vectorIN3llp5OrderESaIS1_EED1Ev
	mov	rcx, rbx
.LEHB8:
	call	_Unwind_Resume
	nop
.LEHE8:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6106:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6106-.LLSDACSBC6106
.LLSDACSBC6106:
	.uleb128 .LEHB8-.LCOLDB8
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC6106:
	.section	.text.unlikely,"x"
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE8:
	.section	.text.startup,"x"
.LHOTE8:
	.text
	.p2align 4
	.globl	_Z17count_price_aboveSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEy
	.def	_Z17count_price_aboveSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17count_price_aboveSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEy
_Z17count_price_aboveSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEy:
.LFB6102:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	vmovaps	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	vmovaps	XMMWORD PTR 80[rsp], xmm8
	.seh_savexmm	xmm8, 80
	.seh_endprologue
	vmovdqu	xmm8, XMMWORD PTR [rcx]
	mov	rsi, rdx
	mov	rbp, r8
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	rcx, QWORD PTR [rsi]
	mov	r8, QWORD PTR 8[rsi]
	mov	rbx, rax
	cmp	r8, rcx
	je	.L129
	lea	rdx, -32[r8]
	mov	rax, rcx
	sub	rdx, rcx
	mov	r9, rdx
	shr	r9, 5
	cmp	rdx, 96
	jbe	.L130
	vmovq	xmm6, rbp
	and	rdx, -128
	vpxor	xmm4, xmm4, xmm4
	movabs	rdi, -9223372036854775808
	vmovq	xmm5, rdi
	vpbroadcastq	ymm6, xmm6
	vmovdqa	ymm3, ymm4
	add	rdx, rcx
	vpbroadcastq	ymm5, xmm5
	vpsubq	ymm6, ymm6, ymm5
	.p2align 4,,10
	.p2align 3
.L121:
	vmovdqu	ymm2, YMMWORD PTR [rax]
	vpunpcklqdq	ymm0, ymm2, YMMWORD PTR 32[rax]
	sub	rax, -128
	vmovdqu	ymm2, YMMWORD PTR -64[rax]
	vpunpcklqdq	ymm2, ymm2, YMMWORD PTR -32[rax]
	vpermq	ymm0, ymm0, 216
	vpermq	ymm2, ymm2, 216
	vpunpckhqdq	ymm1, ymm0, ymm2
	vpunpcklqdq	ymm0, ymm0, ymm2
	vpermq	ymm1, ymm1, 216
	vpermq	ymm0, ymm0, 216
	vpsubq	ymm1, ymm1, ymm5
	vpcmpgtq	ymm1, ymm1, ymm6
	vpand	ymm0, ymm1, ymm0
	vpsubq	ymm4, ymm4, ymm1
	vpaddq	ymm3, ymm3, ymm0
	cmp	rdx, rax
	jne	.L121
	vmovdqa	xmm0, xmm4
	vextracti128	xmm4, ymm4, 0x1
	and	r9, -4
	vpaddq	xmm0, xmm0, xmm4
	sal	r9, 5
	vpsrldq	xmm1, xmm0, 8
	add	rcx, r9
	vpaddq	xmm0, xmm0, xmm1
	vmovq	rsi, xmm0
	vmovdqa	xmm0, xmm3
	vextracti128	xmm3, ymm3, 0x1
	vpaddq	xmm0, xmm0, xmm3
	vpsrldq	xmm1, xmm0, 8
	vpaddq	xmm0, xmm0, xmm1
	vmovq	rdi, xmm0
	vzeroupper
.L120:
	cmp	rbp, QWORD PTR 16[rcx]
	jb	.L132
.L123:
	lea	rax, 32[rcx]
	cmp	r8, rax
	je	.L119
	cmp	rbp, QWORD PTR 48[rcx]
	jb	.L133
.L125:
	lea	rax, 64[rcx]
	cmp	r8, rax
	je	.L119
	cmp	rbp, QWORD PTR 80[rcx]
	jb	.L134
.L126:
	lea	rax, 96[rcx]
	cmp	r8, rax
	je	.L119
	cmp	rbp, QWORD PTR 112[rcx]
	jnb	.L119
	add	rsi, 1
	add	rdi, QWORD PTR 96[rcx]
.L119:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	lea	rcx, 48[rsp]
	mov	r9, rdi
	mov	rdx, rbx
	mov	QWORD PTR 32[rsp], 1000000
	mov	r8, rax
	vmovdqa	XMMWORD PTR 48[rsp], xmm8
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	nop
	vmovaps	xmm6, XMMWORD PTR 64[rsp]
	vmovaps	xmm8, XMMWORD PTR 80[rsp]
	mov	rax, rsi
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L132:
	add	rsi, 1
	add	rdi, QWORD PTR [rcx]
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L133:
	add	rsi, 1
	add	rdi, QWORD PTR 32[rcx]
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L134:
	add	rsi, 1
	add	rdi, QWORD PTR 64[rcx]
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L129:
	xor	esi, esi
	xor	edi, edi
	jmp	.L119
.L130:
	xor	esi, esi
	xor	edi, edi
	jmp	.L120
	.seh_endproc
	.p2align 4
	.globl	_Z18count_valid_ordersSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
	.def	_Z18count_valid_ordersSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18count_valid_ordersSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
_Z18count_valid_ordersSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE:
.LFB6103:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 80
	.seh_stackalloc	80
	vmovaps	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	.seh_endprologue
	vmovdqu	xmm6, XMMWORD PTR [rcx]
	mov	rsi, rdx
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	rcx, QWORD PTR [rsi]
	mov	r8, QWORD PTR 8[rsi]
	mov	rbx, rax
	cmp	r8, rcx
	je	.L147
	lea	rdx, -32[r8]
	mov	rax, rcx
	sub	rdx, rcx
	mov	r9, rdx
	shr	r9, 5
	cmp	rdx, 96
	jbe	.L148
	vpxor	xmm5, xmm5, xmm5
	and	rdx, -128
	add	rdx, rcx
	vmovdqa	ymm4, ymm5
	vmovdqa	ymm3, ymm5
	.p2align 4,,10
	.p2align 3
.L138:
	vmovdqu	ymm1, YMMWORD PTR [rax]
	vmovdqu	ymm2, YMMWORD PTR 64[rax]
	sub	rax, -128
	vpunpcklqdq	ymm0, ymm1, YMMWORD PTR -96[rax]
	vpunpcklqdq	ymm2, ymm2, YMMWORD PTR -32[rax]
	vpermq	ymm0, ymm0, 216
	vpermq	ymm2, ymm2, 216
	vpunpcklqdq	ymm1, ymm0, ymm2
	vpunpckhqdq	ymm0, ymm0, ymm2
	vpermq	ymm1, ymm1, 216
	vpermq	ymm0, ymm0, 216
	vpcmpeqq	ymm2, ymm1, ymm3
	vpcmpeqq	ymm0, ymm0, ymm3
	vpcmpeqq	ymm2, ymm2, ymm3
	vpcmpeqq	ymm0, ymm0, ymm3
	vpand	ymm0, ymm0, ymm2
	vpand	ymm1, ymm0, ymm1
	vpsubq	ymm5, ymm5, ymm0
	vpaddq	ymm4, ymm4, ymm1
	cmp	rdx, rax
	jne	.L138
	vmovdqa	xmm0, xmm5
	vextracti128	xmm5, ymm5, 0x1
	and	r9, -4
	vpaddq	xmm0, xmm0, xmm5
	sal	r9, 5
	vpsrldq	xmm1, xmm0, 8
	add	rcx, r9
	vpaddq	xmm0, xmm0, xmm1
	vmovq	rsi, xmm0
	vmovdqa	xmm0, xmm4
	vextracti128	xmm4, ymm4, 0x1
	vpaddq	xmm0, xmm0, xmm4
	vpsrldq	xmm1, xmm0, 8
	vpaddq	xmm0, xmm0, xmm1
	vmovq	rdi, xmm0
	vzeroupper
.L137:
	cmp	QWORD PTR 16[rcx], 0
	mov	rax, QWORD PTR [rcx]
	je	.L140
	test	rax, rax
	jne	.L171
.L140:
	lea	rax, 32[rcx]
	cmp	r8, rax
	je	.L136
	cmp	QWORD PTR 48[rcx], 0
	mov	rax, QWORD PTR 32[rcx]
	je	.L142
	test	rax, rax
	jne	.L172
.L142:
	lea	rax, 64[rcx]
	cmp	r8, rax
	je	.L136
	cmp	QWORD PTR 80[rcx], 0
	mov	rax, QWORD PTR 64[rcx]
	je	.L143
	test	rax, rax
	jne	.L173
.L143:
	lea	rax, 96[rcx]
	cmp	r8, rax
	je	.L136
	cmp	QWORD PTR 112[rcx], 0
	mov	rax, QWORD PTR 96[rcx]
	je	.L136
	test	rax, rax
	jne	.L174
.L136:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	lea	rcx, 48[rsp]
	mov	r9, rdi
	mov	rdx, rbx
	mov	QWORD PTR 32[rsp], 1000000
	mov	r8, rax
	vmovdqa	XMMWORD PTR 48[rsp], xmm6
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	nop
	vmovaps	xmm6, XMMWORD PTR 64[rsp]
	mov	rax, rsi
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	add	rsi, 1
	add	rdi, rax
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L172:
	add	rsi, 1
	add	rdi, rax
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L173:
	add	rsi, 1
	add	rdi, rax
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L174:
	add	rsi, 1
	add	rdi, rax
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L147:
	xor	esi, esi
	xor	edi, edi
	jmp	.L136
.L148:
	xor	esi, esi
	xor	edi, edi
	jmp	.L137
	.seh_endproc
	.p2align 4
	.globl	_Z17copy_matching_idsSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEyRS3_IySaIyEE
	.def	_Z17copy_matching_idsSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEyRS3_IySaIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17copy_matching_idsSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEyRS3_IySaIyEE
_Z17copy_matching_idsSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EEyRS3_IySaIyEE:
.LFB6104:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 120
	.seh_stackalloc	120
	vmovaps	XMMWORD PTR 96[rsp], xmm6
	.seh_savexmm	xmm6, 96
	.seh_endprologue
	vmovdqu	xmm6, XMMWORD PTR [rcx]
	mov	rax, QWORD PTR [r9]
	mov	rdi, rdx
	mov	rbp, r8
	mov	rsi, r9
	cmp	rax, QWORD PTR 8[r9]
	je	.L176
	mov	QWORD PTR 8[r9], rax
.L176:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	rbx, QWORD PTR [rdi]
	mov	r12, QWORD PTR 8[rdi]
	xor	r14d, r14d
	mov	r13, rax
	cmp	rbx, r12
	je	.L177
	mov	QWORD PTR 56[rsp], rax
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L178:
	add	rbx, 32
	cmp	r12, rbx
	je	.L199
.L190:
	mov	rdi, QWORD PTR [rbx]
	cmp	rbp, QWORD PTR 16[rbx]
	jnb	.L178
	mov	rax, QWORD PTR 8[rsi]
	cmp	rax, QWORD PTR 16[rsi]
	je	.L179
	mov	QWORD PTR [rax], rdi
	add	rax, 8
	mov	QWORD PTR 8[rsi], rax
.L180:
	add	rbx, 32
	add	r14, rdi
	cmp	r12, rbx
	jne	.L190
.L199:
	mov	r13, QWORD PTR 56[rsp]
.L177:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	lea	rcx, 80[rsp]
	mov	r9, r14
	mov	rdx, r13
	mov	QWORD PTR 32[rsp], 1000000
	mov	r8, rax
	vmovdqa	XMMWORD PTR 80[rsp], xmm6
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	mov	rax, QWORD PTR 8[rsi]
	vmovaps	xmm6, XMMWORD PTR 96[rsp]
	sub	rax, QWORD PTR [rsi]
	sar	rax, 3
	add	rsp, 120
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L179:
	movabs	rcx, 1152921504606846975
	mov	r10, QWORD PTR [rsi]
	mov	r8, rax
	sub	r8, r10
	mov	rdx, r8
	sar	rdx, 3
	cmp	rdx, rcx
	je	.L200
	cmp	rax, r10
	je	.L201
	lea	rax, [rdx+rdx]
	cmp	rax, rdx
	jb	.L193
	test	rax, rax
	jne	.L202
	xor	r13d, r13d
	xor	r15d, r15d
	mov	QWORD PTR 0[r13+r8], rdi
	lea	r11, 8[r13+r8]
	test	r8, r8
	jg	.L203
.L187:
	test	r10, r10
	jne	.L204
.L189:
	mov	QWORD PTR [rsi], r13
	mov	QWORD PTR 8[rsi], r11
	mov	QWORD PTR 16[rsi], r15
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L193:
	movabs	r15, 9223372036854775800
.L185:
	mov	rcx, r15
	mov	QWORD PTR 72[rsp], r8
	mov	QWORD PTR 64[rsp], r10
	call	_Znwy
	mov	r8, QWORD PTR 72[rsp]
	mov	r10, QWORD PTR 64[rsp]
	mov	r13, rax
	add	r15, rax
	mov	QWORD PTR 0[r13+r8], rdi
	lea	r11, 8[r13+r8]
	test	r8, r8
	jle	.L187
.L203:
	mov	rdx, r10
	mov	rcx, r13
	mov	QWORD PTR 72[rsp], r11
	mov	QWORD PTR 64[rsp], r10
	call	memmove
	mov	rdx, QWORD PTR 16[rsi]
	mov	r10, QWORD PTR 64[rsp]
	mov	r11, QWORD PTR 72[rsp]
	sub	rdx, r10
.L188:
	mov	rcx, r10
	mov	QWORD PTR 64[rsp], r11
	call	_ZdlPvy
	mov	r11, QWORD PTR 64[rsp]
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L201:
	add	rdx, 1
	jc	.L193
	movabs	rax, 1152921504606846975
	cmp	rdx, rax
	cmovbe	rax, rdx
	mov	r15, rax
	sal	r15, 3
	jmp	.L185
.L204:
	mov	rdx, QWORD PTR 16[rsi]
	sub	rdx, r10
	jmp	.L188
.L202:
	movabs	rdx, 1152921504606846975
	cmp	rax, rdx
	cmova	rax, rdx
	lea	r15, 0[0+rax*8]
	jmp	.L185
.L200:
	lea	rcx, .LC6[rip]
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.long	0
	.long	1104006501
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r8) 13.2.0"
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseC2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeC1ERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseD2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, "dr"
	.globl	.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE
	.linkonce	discard
.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr._ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, "dr"
	.globl	.refptr._ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE
	.linkonce	discard
.refptr._ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE:
	.quad	_ZTVSt9basic_iosIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE:
	.quad	_ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, "dr"
	.globl	.refptr._ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE
	.linkonce	discard
.refptr._ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
