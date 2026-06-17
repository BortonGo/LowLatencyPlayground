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
	je	.L9
	mov	rdx, QWORD PTR 16[rcx]
	mov	rcx, rax
	add	rdx, 1
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L9:
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
	movaps	XMMWORD PTR 496[rsp], xmm6
	.seh_savexmm	xmm6, 496
	movaps	XMMWORD PTR 512[rsp], xmm7
	.seh_savexmm	xmm7, 512
	.seh_endprologue
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE[rip]
	add	rax, 24
	movq	xmm6, rax
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	movdqa	xmm7, xmm6
	add	rax, 16
	movq	xmm1, rax
	mov	rbx, rcx
	lea	r13, 112[rsp]
	mov	rdi, rdx
	lea	r12, 224[rsp]
	punpcklqdq	xmm7, xmm1
	mov	rcx, r12
	call	_ZNSt8ios_baseC2Ev
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	pxor	xmm0, xmm0
	xor	edx, edx
	movups	XMMWORD PTR 456[rsp], xmm0
	add	rax, 16
	movups	XMMWORD PTR 472[rsp], xmm0
	mov	QWORD PTR 224[rsp], rax
	xor	eax, eax
	mov	WORD PTR 448[rsp], ax
	mov	rax, QWORD PTR .refptr._ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE[rip]
	mov	QWORD PTR 440[rsp], 0
	mov	rbp, QWORD PTR 8[rax]
	mov	r15, QWORD PTR 16[rax]
	mov	rcx, QWORD PTR -24[rbp]
	mov	QWORD PTR 112[rsp], rbp
	add	rcx, r13
	mov	QWORD PTR [rcx], r15
.LEHB0:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE0:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE[rip]
	pxor	xmm0, xmm0
	movaps	XMMWORD PTR 112[rsp], xmm7
	lea	rsi, 208[rsp]
	movaps	XMMWORD PTR 128[rsp], xmm0
	add	rax, 64
	movaps	XMMWORD PTR 144[rsp], xmm0
	mov	QWORD PTR 224[rsp], rax
	lea	rax, 176[rsp]
	mov	rcx, rax
	mov	QWORD PTR 48[rsp], rax
	movaps	XMMWORD PTR 160[rsp], xmm0
	call	_ZNSt6localeC1Ev
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, r12
	mov	DWORD PTR 184[rsp], 16
	mov	QWORD PTR 192[rsp], rsi
	add	rax, 16
	mov	BYTE PTR 208[rsp], 0
	mov	QWORD PTR 120[rsp], rax
	lea	rax, 120[rsp]
	mov	rdx, rax
	mov	QWORD PTR 56[rsp], rax
	mov	QWORD PTR 200[rsp], 0
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
	mov	rdx, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, QWORD PTR 40[rsp]
	lea	rax, 16[rdx]
	movq	xmm2, rax
	punpcklqdq	xmm6, xmm2
	call	_ZNSt6localeD1Ev
	mov	rcx, r14
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR [rdi]
	mov	rcx, r13
	mov	rax, QWORD PTR -24[rax]
	mov	rax, QWORD PTR 8[rbx+rax]
	mov	QWORD PTR 232[rsp], rax
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
	je	.L16
	mov	rax, QWORD PTR 144[rsp]
	test	rax, rax
	je	.L41
	cmp	rax, rcx
	jb	.L41
.L17:
	sub	rax, QWORD PTR 152[rsp]
	lea	rdi, 96[rsp]
	mov	QWORD PTR 200[rsp], rax
	mov	BYTE PTR [rdx+rax], 0
	mov	rcx, QWORD PTR 200[rsp]
	mov	rdx, QWORD PTR 192[rsp]
	mov	QWORD PTR 80[rsp], rdi
	mov	rax, rcx
	cmp	rdx, rsi
	je	.L20
.L19:
	mov	rax, QWORD PTR 208[rsp]
	mov	QWORD PTR 80[rsp], rdx
	mov	QWORD PTR 96[rsp], rax
	mov	rax, rcx
.L21:
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
	je	.L31
	mov	rax, QWORD PTR 96[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L31:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, QWORD PTR 192[rsp]
	movaps	XMMWORD PTR 112[rsp], xmm6
	add	rax, 64
	mov	QWORD PTR 224[rsp], rax
	cmp	rcx, rsi
	je	.L32
	mov	rax, QWORD PTR 208[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L32:
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
	nop
	movaps	xmm6, XMMWORD PTR 496[rsp]
	movaps	xmm7, XMMWORD PTR 512[rsp]
	mov	rax, rbx
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
.L41:
	mov	rax, rcx
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L16:
	mov	rcx, QWORD PTR 200[rsp]
	lea	rdi, 96[rsp]
	mov	QWORD PTR 80[rsp], rdi
	mov	rax, rcx
	cmp	rdx, rsi
	jne	.L19
.L20:
	lea	rcx, 1[rax]
	mov	r9, rdi
	mov	rdx, rsi
	cmp	ecx, 8
	jnb	.L60
.L22:
	xor	r8d, r8d
	test	cl, 4
	je	.L25
	mov	r8d, DWORD PTR [rdx]
	mov	DWORD PTR [r9], r8d
	mov	r8d, 4
.L25:
	test	cl, 2
	je	.L26
	movzx	r10d, WORD PTR [rdx+r8]
	mov	WORD PTR [r9+r8], r10w
	add	r8, 2
.L26:
	and	ecx, 1
	je	.L21
	movzx	edx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [r9+r8], dl
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L60:
	mov	r10d, ecx
	xor	edx, edx
	and	r10d, -8
.L23:
	mov	r8d, edx
	add	edx, 8
	mov	r9, QWORD PTR [rsi+r8]
	mov	QWORD PTR [rdi+r8], r9
	cmp	edx, r10d
	jb	.L23
	lea	r9, [rdi+rdx]
	add	rdx, rsi
	jmp	.L22
.L35:
	mov	rbx, rax
	jmp	.L33
.L39:
	mov	rbx, rax
	jmp	.L13
.L33:
	mov	rcx, r14
	call	_ZNSt6localeD1Ev
.L30:
	mov	rcx, r13
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	mov	rcx, rbx
.LEHB6:
	call	_Unwind_Resume
.L13:
	mov	rax, QWORD PTR .refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE[rip]
	mov	rcx, QWORD PTR 192[rsp]
	lea	rdi, 16[rax]
	mov	QWORD PTR 120[rsp], rdi
	cmp	rcx, rsi
	je	.L14
	mov	rax, QWORD PTR 208[rsp]
	lea	rdx, 1[rax]
	call	_ZdlPvy
.L14:
	mov	rax, QWORD PTR .refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE[rip]
	mov	rcx, QWORD PTR 48[rsp]
	add	rax, 16
	mov	QWORD PTR 120[rsp], rax
	call	_ZNSt6localeD1Ev
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 112[rsp], rbp
	mov	QWORD PTR 112[rsp+rax], r15
.L15:
	mov	rax, QWORD PTR .refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE[rip]
	mov	rcx, r12
	add	rax, 16
	mov	QWORD PTR 224[rsp], rax
	call	_ZNSt8ios_baseD2Ev
	mov	rcx, rbx
	call	_Unwind_Resume
.LEHE6:
.L36:
	mov	rbx, rax
	jmp	.L30
.L40:
.L59:
	mov	rbx, rax
	jmp	.L34
.L38:
	mov	rbx, rax
	jmp	.L15
.L37:
	jmp	.L59
.L34:
	mov	rcx, QWORD PTR 40[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L30
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
	.uleb128 .L38-.LFB6613
	.uleb128 0
	.uleb128 .LEHB1-.LFB6613
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L39-.LFB6613
	.uleb128 0
	.uleb128 .LEHB2-.LFB6613
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L35-.LFB6613
	.uleb128 0
	.uleb128 .LEHB3-.LFB6613
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L36-.LFB6613
	.uleb128 0
	.uleb128 .LEHB4-.LFB6613
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L40-.LFB6613
	.uleb128 0
	.uleb128 .LEHB5-.LFB6613
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L37-.LFB6613
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
	movaps	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	.seh_endprologue
	mov	rax, QWORD PTR 144[rsp]
	mov	r10, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	rsi, r8
	mov	rbp, r9
	sub	rsi, rdx
	test	rax, rax
	js	.L62
	pxor	xmm6, xmm6
	cvtsi2sd	xmm6, rax
.L63:
	mov	rbx, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rdx, rcx
	pxor	xmm0, xmm0
	mov	r8, r10
	cvtsi2sd	xmm0, rsi
	divsd	xmm0, QWORD PTR .LC2[rip]
	divsd	xmm6, xmm0
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	BYTE PTR 40[rsp], 10
	mov	rcx, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	cmp	QWORD PTR 16[rcx+rax], 0
	je	.L64
	lea	rdi, 40[rsp]
	mov	r8d, 1
	mov	rdx, rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L65:
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
	je	.L66
	mov	r8d, 1
	mov	rdx, rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L67:
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
	je	.L68
	lea	rdx, 39[rsp]
	mov	r8d, 1
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L69:
	mov	r8d, 21
	lea	rdx, .LC5[rip]
	mov	rcx, rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, rbx
	movapd	xmm1, xmm6
	call	_ZNSo9_M_insertIdEERSoT_
	mov	BYTE PTR 40[rsp], 10
	mov	rcx, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	cmp	QWORD PTR 16[rcx+rax], 0
	je	.L70
	mov	r8d, 1
	mov	rdx, rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	movaps	xmm6, XMMWORD PTR 48[rsp]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	mov	edx, 10
	lea	rdi, 40[rsp]
	call	_ZNSo3putEc
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L70:
	mov	edx, 10
	call	_ZNSo3putEc
	nop
	movaps	xmm6, XMMWORD PTR 48[rsp]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	mov	edx, 10
	call	_ZNSo3putEc
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L66:
	mov	edx, 10
	call	_ZNSo3putEc
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L62:
	mov	rdx, rax
	and	eax, 1
	pxor	xmm6, xmm6
	shr	rdx
	or	rdx, rax
	cvtsi2sd	xmm6, rdx
	addsd	xmm6, xmm6
	jmp	.L63
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
	movaps	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	.seh_endprologue
	xor	esi, esi
	movdqu	xmm6, XMMWORD PTR [rcx]
	mov	rbx, rdx
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	rdx, QWORD PTR 8[rbx]
	mov	rdi, rax
	mov	rax, QWORD PTR [rbx]
	xor	ebx, ebx
	cmp	rdx, rax
	je	.L73
	.p2align 4,,10
	.p2align 3
.L74:
	add	rbx, QWORD PTR 16[rax]
	add	rsi, QWORD PTR [rax]
	add	rax, 32
	cmp	rax, rdx
	jne	.L74
.L73:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	lea	rcx, 48[rsp]
	mov	r9, rsi
	mov	rdx, rdi
	mov	QWORD PTR 32[rsp], 1000000
	mov	r8, rax
	movaps	XMMWORD PTR 48[rsp], xmm6
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	nop
	movaps	xmm6, XMMWORD PTR 64[rsp]
	mov	rax, rbx
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
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
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	call	__main
	pxor	xmm0, xmm0
	mov	ecx, 32000000
	mov	QWORD PTR 80[rsp], 0
	movaps	XMMWORD PTR 64[rsp], xmm0
.LEHB7:
	call	_Znwy
	movq	xmm0, rax
	lea	r13, 32000000[rax]
	mov	ecx, 8000000
	mov	rsi, rax
	punpcklqdq	xmm0, xmm0
	mov	QWORD PTR 80[rsp], r13
	movaps	XMMWORD PTR 64[rsp], xmm0
	call	_Znwy
.LEHE7:
	mov	QWORD PTR 40[rsp], rax
	mov	r14, rsi
	xor	ebx, ebx
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L114:
	mov	QWORD PTR [rsi], r12
	add	rsi, 32
	mov	QWORD PTR -24[rsi], 0
	mov	QWORD PTR -16[rsi], rbp
	mov	DWORD PTR -8[rsi], edi
	mov	BYTE PTR -4[rsi], bl
	mov	QWORD PTR 72[rsp], rsi
	cmp	r12, 1000000
	je	.L93
.L118:
	mov	rsi, QWORD PTR 72[rsp]
	mov	rbx, r12
.L78:
	mov	rdx, rbx
	mov	rbp, rbx
	mov	rdi, rbx
	mov	r15, r13
	shr	rdx, 3
	lea	r12, 1[rbx]
	sub	r15, r14
	movabs	rax, 2361183241434822607
	mul	rdx
	movabs	rax, 2951479051793528259
	shr	rdx, 4
	imul	rdx, rdx, 1000
	sub	rbp, rdx
	mov	rdx, rbx
	and	ebx, 1
	shr	rdx, 2
	add	rbp, 100
	add	rbx, 1
	mul	rdx
	mov	rax, rdx
	and	rdx, -4
	shr	rax, 2
	add	rdx, rax
	lea	rax, [rdx+rdx*4]
	sal	rax, 2
	sub	rdi, rax
	add	edi, 1
	cmp	rsi, r13
	jne	.L114
	movabs	rcx, 288230376151711743
	mov	rax, r15
	sar	rax, 5
	cmp	rax, rcx
	je	.L115
	cmp	rsi, r14
	je	.L116
	lea	rdx, [rax+rax]
	cmp	rdx, rax
	jb	.L99
	test	rdx, rdx
	jne	.L117
	mov	QWORD PTR [r15], r12
	xor	r13d, r13d
	xor	r8d, r8d
	xor	eax, eax
	mov	QWORD PTR 8[r15], 0
	mov	QWORD PTR 16[r15], rbp
	mov	DWORD PTR 24[r15], edi
	mov	BYTE PTR 28[r15], bl
	xor	ebx, ebx
.L89:
	mov	rdx, r14
	.p2align 4,,10
	.p2align 3
.L91:
	movdqu	xmm1, XMMWORD PTR [rdx]
	add	rdx, 32
	add	rax, 32
	movups	XMMWORD PTR -32[rax], xmm1
	movdqu	xmm2, XMMWORD PTR -16[rdx]
	movups	XMMWORD PTR -16[rax], xmm2
	cmp	rdx, rsi
	jne	.L91
	sub	rdx, r14
	lea	rsi, 32[rbx+rdx]
.L90:
	test	r14, r14
	je	.L92
	mov	rdx, r15
	mov	rcx, r14
	mov	QWORD PTR 32[rsp], r8
	call	_ZdlPvy
	mov	r8, QWORD PTR 32[rsp]
.L92:
	mov	QWORD PTR 64[rsp], rbx
	mov	r15, r8
	mov	r14, rbx
	mov	QWORD PTR 72[rsp], rsi
	mov	QWORD PTR 80[rsp], r13
	cmp	r12, 1000000
	jne	.L118
.L93:
	lea	rax, .LC7[rip]
	lea	rdx, 64[rsp]
	mov	QWORD PTR 48[rsp], 10
	lea	rcx, 48[rsp]
	mov	QWORD PTR 56[rsp], rax
.LEHB8:
	call	_Z10sum_pricesSt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorIN3llp5OrderESaIS5_EE
	mov	rcx, QWORD PTR 40[rsp]
	mov	edx, 8000000
	call	_ZdlPvy
	test	r14, r14
	je	.L106
	mov	rdx, r15
	mov	rcx, r14
	call	_ZdlPvy
.L106:
	xor	eax, eax
	add	rsp, 104
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
	jc	.L99
	movabs	rdx, 288230376151711743
	cmp	rax, rdx
	cmova	rax, rdx
	sal	rax, 5
.L87:
	mov	rcx, rax
	mov	r13, rax
	call	_Znwy
	lea	rdx, [rax+r15]
	mov	r8, r13
	lea	r13, [rax+r13]
	mov	BYTE PTR 28[rdx], bl
	mov	rbx, rax
	mov	QWORD PTR [rdx], r12
	mov	QWORD PTR 8[rdx], 0
	mov	QWORD PTR 16[rdx], rbp
	mov	DWORD PTR 24[rdx], edi
	cmp	rsi, r14
	jne	.L89
	lea	rsi, 32[rax]
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L99:
	movabs	rax, 9223372036854775776
	jmp	.L87
.L117:
	movabs	rax, 288230376151711743
	cmp	rdx, rax
	cmova	rdx, rax
	sal	rdx, 5
	mov	rax, rdx
	jmp	.L87
.L115:
	lea	rcx, .LC6[rip]
	call	_ZSt20__throw_length_errorPKc
.LEHE8:
.L102:
	mov	rbx, rax
	jmp	.L80
.L101:
	mov	rbx, rax
	jmp	.L95
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
	.uleb128 .L102-.LFB6106
	.uleb128 0
	.uleb128 .LEHB8-.LFB6106
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L101-.LFB6106
	.uleb128 0
.LLSDACSE6106:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	168
	.seh_savereg	rbx, 104
	.seh_savereg	rsi, 112
	.seh_savereg	rdi, 120
	.seh_savereg	rbp, 128
	.seh_savereg	r12, 136
	.seh_savereg	r13, 144
	.seh_savereg	r14, 152
	.seh_savereg	r15, 160
	.seh_endprologue
main.cold:
.L95:
	mov	rcx, QWORD PTR 40[rsp]
	mov	edx, 8000000
	call	_ZdlPvy
.L80:
	mov	rcx, QWORD PTR 64[rsp]
	mov	rdx, QWORD PTR 80[rsp]
	sub	rdx, rcx
	test	rcx, rcx
	je	.L96
	call	_ZdlPvy
.L96:
	mov	rcx, rbx
.LEHB9:
	call	_Unwind_Resume
	nop
.LEHE9:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6106:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6106-.LLSDACSBC6106
.LLSDACSBC6106:
	.uleb128 .LEHB9-.LCOLDB8
	.uleb128 .LEHE9-.LEHB9
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
	sub	rsp, 88
	.seh_stackalloc	88
	movaps	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	.seh_endprologue
	xor	edi, edi
	movdqu	xmm6, XMMWORD PTR [rcx]
	mov	rsi, rdx
	mov	rbx, r8
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	rdx, QWORD PTR 8[rsi]
	mov	rbp, rax
	mov	rax, QWORD PTR [rsi]
	xor	esi, esi
	cmp	rdx, rax
	je	.L120
	.p2align 4,,10
	.p2align 3
.L122:
	cmp	rbx, QWORD PTR 16[rax]
	jnb	.L121
	add	rsi, 1
	add	rdi, QWORD PTR [rax]
.L121:
	add	rax, 32
	cmp	rdx, rax
	jne	.L122
.L120:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	lea	rcx, 48[rsp]
	mov	r9, rdi
	mov	rdx, rbp
	mov	QWORD PTR 32[rsp], 1000000
	mov	r8, rax
	movaps	XMMWORD PTR 48[rsp], xmm6
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	nop
	movaps	xmm6, XMMWORD PTR 64[rsp]
	mov	rax, rsi
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
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
	movaps	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	.seh_endprologue
	xor	esi, esi
	movdqu	xmm6, XMMWORD PTR [rcx]
	mov	rbx, rdx
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	rcx, QWORD PTR 8[rbx]
	mov	rdi, rax
	mov	rax, QWORD PTR [rbx]
	xor	ebx, ebx
	cmp	rcx, rax
	je	.L126
	.p2align 4,,10
	.p2align 3
.L128:
	cmp	QWORD PTR 16[rax], 0
	mov	rdx, QWORD PTR [rax]
	je	.L127
	test	rdx, rdx
	je	.L127
	add	rbx, 1
	add	rsi, rdx
.L127:
	add	rax, 32
	cmp	rcx, rax
	jne	.L128
.L126:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	lea	rcx, 48[rsp]
	mov	r9, rsi
	mov	rdx, rdi
	mov	QWORD PTR 32[rsp], 1000000
	mov	r8, rax
	movaps	XMMWORD PTR 48[rsp], xmm6
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	nop
	movaps	xmm6, XMMWORD PTR 64[rsp]
	mov	rax, rbx
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
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
	movaps	XMMWORD PTR 96[rsp], xmm6
	.seh_savexmm	xmm6, 96
	.seh_endprologue
	movdqu	xmm6, XMMWORD PTR [rcx]
	mov	rax, QWORD PTR [r9]
	mov	rdi, rdx
	mov	rbp, r8
	mov	rsi, r9
	cmp	rax, QWORD PTR 8[r9]
	je	.L138
	mov	QWORD PTR 8[r9], rax
.L138:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	mov	rbx, QWORD PTR [rdi]
	mov	r12, QWORD PTR 8[rdi]
	xor	r14d, r14d
	mov	r13, rax
	cmp	rbx, r12
	je	.L139
	mov	QWORD PTR 56[rsp], rax
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L140:
	add	rbx, 32
	cmp	r12, rbx
	je	.L161
.L152:
	mov	rdi, QWORD PTR [rbx]
	cmp	rbp, QWORD PTR 16[rbx]
	jnb	.L140
	mov	rax, QWORD PTR 8[rsi]
	cmp	rax, QWORD PTR 16[rsi]
	je	.L141
	mov	QWORD PTR [rax], rdi
	add	rax, 8
	mov	QWORD PTR 8[rsi], rax
.L142:
	add	rbx, 32
	add	r14, rdi
	cmp	r12, rbx
	jne	.L152
.L161:
	mov	r13, QWORD PTR 56[rsp]
.L139:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	lea	rcx, 80[rsp]
	mov	r9, r14
	mov	rdx, r13
	mov	QWORD PTR 32[rsp], 1000000
	mov	r8, rax
	movaps	XMMWORD PTR 80[rsp], xmm6
	call	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	mov	rax, QWORD PTR 8[rsi]
	movaps	xmm6, XMMWORD PTR 96[rsp]
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
.L141:
	movabs	rcx, 1152921504606846975
	mov	r10, QWORD PTR [rsi]
	mov	r8, rax
	sub	r8, r10
	mov	rdx, r8
	sar	rdx, 3
	cmp	rdx, rcx
	je	.L162
	cmp	rax, r10
	je	.L163
	lea	rax, [rdx+rdx]
	cmp	rax, rdx
	jb	.L155
	test	rax, rax
	jne	.L164
	xor	r13d, r13d
	xor	r15d, r15d
	mov	QWORD PTR 0[r13+r8], rdi
	lea	r11, 8[r13+r8]
	test	r8, r8
	jg	.L165
.L149:
	test	r10, r10
	jne	.L166
.L151:
	mov	QWORD PTR [rsi], r13
	mov	QWORD PTR 8[rsi], r11
	mov	QWORD PTR 16[rsi], r15
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L155:
	movabs	r15, 9223372036854775800
.L147:
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
	jle	.L149
.L165:
	mov	rdx, r10
	mov	rcx, r13
	mov	QWORD PTR 72[rsp], r11
	mov	QWORD PTR 64[rsp], r10
	call	memmove
	mov	rdx, QWORD PTR 16[rsi]
	mov	r10, QWORD PTR 64[rsp]
	mov	r11, QWORD PTR 72[rsp]
	sub	rdx, r10
.L150:
	mov	rcx, r10
	mov	QWORD PTR 64[rsp], r11
	call	_ZdlPvy
	mov	r11, QWORD PTR 64[rsp]
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L163:
	add	rdx, 1
	jc	.L155
	movabs	rax, 1152921504606846975
	cmp	rdx, rax
	cmovbe	rax, rdx
	mov	r15, rax
	sal	r15, 3
	jmp	.L147
.L166:
	mov	rdx, QWORD PTR 16[rsi]
	sub	rdx, r10
	jmp	.L150
.L164:
	movabs	rdx, 1152921504606846975
	cmp	rax, rdx
	cmova	rax, rdx
	lea	r15, 0[0+rax*8]
	jmp	.L147
.L162:
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
