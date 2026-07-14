	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"benchmark_division_strength_reduction.cpp"
	.def	_Z15generate_valuesy;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z15generate_valuesy            # -- Begin function _Z15generate_valuesy
	.p2align	4
_Z15generate_valuesy:                   # @_Z15generate_valuesy
.Lfunc_begin0:
.seh_proc _Z15generate_valuesy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	%rdx, %rax
	shrq	$60, %rax
	jne	.LBB0_21
# %bb.1:
	movq	%rdx, %rdi
	xorl	%r12d, %r12d
	testq	%rdx, %rdx
	je	.LBB0_2
# %bb.3:
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	leaq	(,%rdi,8), %rcx
	callq	_Znwy
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rbx
	movq	%rax, (%rcx)
	movq	%rax, 8(%rcx)
	leaq	(%rax,%rdi,8), %rsi
	movq	%rsi, 16(%rcx)
	movl	$1000000, %ebp                  # imm = 0xF4240
	movl	$3518437209, %edx               # imm = 0xD1B71759
	movq	%rax, %r9
	jmp	.LBB0_4
	.p2align	4
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%r13, (%rbx)
	addq	$8, %rbx
	movq	%rbx, 8(%rcx)
	movq	%r9, %r15
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	incl	%ebp
	incl	%r12d
	decq	%rdi
	je	.LBB0_16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	%r12d, %eax
	imulq	%rdx, %rax
	shrq	$45, %rax
	imull	$10000, %eax, %eax              # imm = 0x2710
	movl	%ebp, %r13d
	subl	%eax, %r13d
	cmpq	%rsi, %rbx
	jne	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%r9, 40(%rsp)                   # 8-byte Spill
	subq	%r9, %rbx
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbx
	je	.LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%rbx, %r14
	sarq	$3, %r14
	cmpq	$1, %r14
	adcq	%r14, %r14
	movabsq	$1152921504606846975, %rax      # imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rax, %r14
	cmovaeq	%rax, %r14
	leaq	(,%r14,8), %rcx
.Ltmp0:
	callq	_Znwy
.Ltmp1:
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	movq	%rax, %r15
	movq	%r13, (%rax,%rbx)
	testq	%rbx, %rbx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	jle	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	movq	%r15, %rcx
	movq	%rsi, %rdx
	movq	%rbx, %r8
	callq	memcpy
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	testq	%rsi, %rsi
	je	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	movq	%rsi, %rcx
	callq	_ZdlPv
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	addq	%r15, %rbx
	addq	$8, %rbx
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rbx, 8(%rcx)
	leaq	(%r15,%r14,8), %rsi
	movq	%r15, %r9
	movl	$3518437209, %edx               # imm = 0xD1B71759
	jmp	.LBB0_15
.LBB0_2:
	xorl	%r15d, %r15d
	xorl	%esi, %esi
.LBB0_16:
	movq	%rsi, 16(%rcx)
	movq	%r15, (%rcx)
	movq	%rcx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB0_7:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rsi, 16(%rax)
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp3:
	leaq	.L.str.11(%rip), %rcx
	callq	_ZSt20__throw_length_errorPKc
.Ltmp4:
# %bb.8:
.LBB0_21:
	leaq	.L.str.10(%rip), %rcx
	callq	_ZSt20__throw_length_errorPKc
.LBB0_17:
.Ltmp2:
	movq	%rax, %rdi
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rsi, 16(%rax)
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB0_18
.LBB0_22:
.Ltmp5:
	movq	%rax, %rdi
.LBB0_18:
	cmpq	$0, 40(%rsp)                    # 8-byte Folded Reload
	je	.LBB0_20
# %bb.19:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_20:
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end0:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_Z15sum_div_runtimeRKSt6vectorIySaIyEEy;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z15sum_div_runtimeRKSt6vectorIySaIyEEy # -- Begin function _Z15sum_div_runtimeRKSt6vectorIySaIyEEy
	.p2align	4
_Z15sum_div_runtimeRKSt6vectorIySaIyEEy: # @_Z15sum_div_runtimeRKSt6vectorIySaIyEEy
# %bb.0:
	movq	(%rcx), %r9
	movq	8(%rcx), %r10
	xorl	%ecx, %ecx
	cmpq	%r10, %r9
	je	.LBB1_6
# %bb.1:
	movq	%rdx, %r8
	jmp	.LBB1_2
	.p2align	4
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	divq	%r8
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	addq	%rax, %rcx
	addq	$8, %r9
	cmpq	%r10, %r9
	je	.LBB1_6
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%r9), %rax
	movq	%rax, %rdx
	orq	%r8, %rdx
	shrq	$32, %rdx
	jne	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB1_5
.LBB1_6:
	movq	%rcx, %rax
	retq
                                        # -- End function
	.def	_Z16sum_div_const_10RKSt6vectorIySaIyEE;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z16sum_div_const_10RKSt6vectorIySaIyEE # -- Begin function _Z16sum_div_const_10RKSt6vectorIySaIyEE
	.p2align	4
_Z16sum_div_const_10RKSt6vectorIySaIyEE: # @_Z16sum_div_const_10RKSt6vectorIySaIyEE
# %bb.0:
	movq	(%rcx), %r9
	movq	8(%rcx), %r10
	xorl	%ecx, %ecx
	cmpq	%r10, %r9
	je	.LBB2_3
# %bb.1:
	movabsq	$-3689348814741910323, %r8      # imm = 0xCCCCCCCCCCCCCCCD
	.p2align	4
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r8, %rax
	mulq	(%r9)
	shrq	$3, %rdx
	addq	%rdx, %rcx
	addq	$8, %r9
	cmpq	%r10, %r9
	jne	.LBB2_2
.LBB2_3:
	movq	%rcx, %rax
	retq
                                        # -- End function
	.def	_Z15sum_div_const_8RKSt6vectorIySaIyEE;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z15sum_div_const_8RKSt6vectorIySaIyEE # -- Begin function _Z15sum_div_const_8RKSt6vectorIySaIyEE
	.p2align	4
_Z15sum_div_const_8RKSt6vectorIySaIyEE: # @_Z15sum_div_const_8RKSt6vectorIySaIyEE
# %bb.0:
	movq	(%rcx), %r8
	movq	8(%rcx), %rcx
	cmpq	%rcx, %r8
	je	.LBB3_1
# %bb.2:
	movq	%rcx, %r9
	subq	%r8, %r9
	addq	$-8, %r9
	cmpq	$24, %r9
	jae	.LBB3_4
# %bb.3:
	xorl	%eax, %eax
	movq	%r8, %rdx
	jmp	.LBB3_7
.LBB3_1:
	xorl	%eax, %eax
	retq
.LBB3_4:
	shrq	$3, %r9
	incq	%r9
	movq	%r9, %r10
	andq	$-4, %r10
	leaq	(%r8,%r10,8), %rdx
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%r8,%rax,8), %xmm2
	movdqu	16(%r8,%rax,8), %xmm3
	psrlq	$3, %xmm2
	paddq	%xmm2, %xmm0
	psrlq	$3, %xmm3
	paddq	%xmm3, %xmm1
	addq	$4, %rax
	cmpq	%rax, %r10
	jne	.LBB3_5
# %bb.6:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %rax
	cmpq	%r10, %r9
	je	.LBB3_8
	.p2align	4
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %r8
	shrq	$3, %r8
	addq	%r8, %rax
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.LBB3_7
.LBB3_8:
	retq
                                        # -- End function
	.def	_Z11sum_shift_3RKSt6vectorIySaIyEE;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z11sum_shift_3RKSt6vectorIySaIyEE # -- Begin function _Z11sum_shift_3RKSt6vectorIySaIyEE
	.p2align	4
_Z11sum_shift_3RKSt6vectorIySaIyEE:     # @_Z11sum_shift_3RKSt6vectorIySaIyEE
# %bb.0:
	movq	(%rcx), %r8
	movq	8(%rcx), %rcx
	cmpq	%rcx, %r8
	je	.LBB4_1
# %bb.2:
	movq	%rcx, %r9
	subq	%r8, %r9
	addq	$-8, %r9
	cmpq	$24, %r9
	jae	.LBB4_4
# %bb.3:
	xorl	%eax, %eax
	movq	%r8, %rdx
	jmp	.LBB4_7
.LBB4_1:
	xorl	%eax, %eax
	retq
.LBB4_4:
	shrq	$3, %r9
	incq	%r9
	movq	%r9, %r10
	andq	$-4, %r10
	leaq	(%r8,%r10,8), %rdx
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%r8,%rax,8), %xmm2
	movdqu	16(%r8,%rax,8), %xmm3
	psrlq	$3, %xmm2
	paddq	%xmm2, %xmm0
	psrlq	$3, %xmm3
	paddq	%xmm3, %xmm1
	addq	$4, %rax
	cmpq	%rax, %r10
	jne	.LBB4_5
# %bb.6:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %rax
	cmpq	%r10, %r9
	je	.LBB4_8
	.p2align	4
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %r8
	shrq	$3, %r8
	addq	%r8, %rax
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.LBB4_7
.LBB4_8:
	retq
                                        # -- End function
	.def	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	4, 0x0                          # -- Begin function _Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.LCPI5_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.zero	8
.LCPI5_1:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI5_2:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.text
	.globl	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
	.p2align	4
_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy: # @_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.seh_proc _Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$96, %rsp
	.seh_stackalloc 96
	movaps	%xmm8, 80(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm8, 80
	movaps	%xmm7, 64(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm7, 64
	movaps	%xmm6, 48(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 48
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rsi
	subq	%rdx, %rsi
	xorps	%xmm7, %xmm7
	cvtsi2sd	%rsi, %xmm7
	movsd	160(%rsp), %xmm8                # xmm8 = mem[0],zero
	unpcklps	.LCPI5_1(%rip), %xmm8           # xmm8 = xmm8[0],mem[0],xmm8[1],mem[1]
	subpd	.LCPI5_2(%rip), %xmm8
	movapd	%xmm8, %xmm6
	unpckhpd	%xmm8, %xmm6                    # xmm6 = xmm6[1],xmm8[1]
	movq	(%rcx), %r8
	movq	8(%rcx), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movb	$10, 36(%rsp)
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	cmpq	$0, 16(%rax,%rcx)
	je	.LBB5_2
# %bb.1:
	leaq	36(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB5_3
.LBB5_2:
	movq	%rax, %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB5_3:
	divsd	.LCPI5_0(%rip), %xmm7
	addsd	%xmm8, %xmm6
	movq	.refptr._ZSt4cout(%rip), %rbx
	leaq	.L.str(%rip), %rdx
	movl	$11, %r8d
	movq	%rbx, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	_ZNSo9_M_insertIyEERSoT_
	movb	$10, 37(%rsp)
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	cmpq	$0, 16(%rax,%rcx)
	je	.LBB5_5
# %bb.4:
	leaq	37(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB5_6
.LBB5_5:
	movq	%rax, %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB5_6:
	divsd	%xmm7, %xmm6
	movq	.refptr._ZSt4cout(%rip), %rdi
	leaq	.L.str.1(%rip), %rdx
	movl	$10, %r8d
	movq	%rdi, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movabsq	$2361183241434822607, %rcx      # imm = 0x20C49BA5E353F7CF
	movq	%rsi, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movq	%rdx, 40(%rsp)
	leaq	40(%rsp), %rdx
	movq	%rdi, %rcx
	callq	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
	movb	$10, 38(%rsp)
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	cmpq	$0, 16(%rax,%rcx)
	je	.LBB5_8
# %bb.7:
	leaq	38(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB5_9
.LBB5_8:
	movq	%rax, %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB5_9:
	movq	.refptr._ZSt4cout(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	movl	$21, %r8d
	movq	%rsi, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rcx
	movapd	%xmm6, %xmm1
	callq	_ZNSo9_M_insertIdEERSoT_
	movb	$10, 39(%rsp)
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	cmpq	$0, 16(%rax,%rcx)
	je	.LBB5_11
# %bb.10:
	leaq	39(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB5_12
.LBB5_11:
	movq	%rax, %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB5_12:
	movaps	48(%rsp), %xmm6                 # 16-byte Reload
	movaps	64(%rsp), %xmm7                 # 16-byte Reload
	movaps	80(%rsp), %xmm8                 # 16-byte Reload
	addq	$96, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE,"xr",discard,_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
	.globl	_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE # -- Begin function _ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
	.p2align	4
_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE: # @_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
.Lfunc_begin1:
.seh_proc _ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$448, %rsp                      # imm = 0x1C0
	.seh_stackalloc 448
	.seh_endprologue
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	leaq	72(%rsp), %rbx
	movq	%rbx, %rcx
	callq	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev
	movq	72(%rsp), %rax
	movq	-24(%rax), %rcx
	movq	(%rsi), %rdx
	movq	-24(%rdx), %r8
	movl	24(%rsi,%r8), %r8d
	movl	%r8d, 96(%rsp,%rcx)
	addq	-24(%rax), %rbx
	movq	-24(%rdx), %rax
	leaq	(%rsi,%rax), %rdx
	addq	$208, %rdx
	leaq	32(%rsp), %r14
	movq	%r14, %rcx
	callq	_ZNSt6localeC1ERKS_
.Ltmp6:
	leaq	64(%rsp), %rcx
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale
.Ltmp7:
# %bb.1:
	leaq	64(%rsp), %rcx
	callq	_ZNSt6localeD1Ev
	leaq	32(%rsp), %rcx
	callq	_ZNSt6localeD1Ev
	movq	72(%rsp), %rax
	movq	-24(%rax), %rax
	movq	(%rsi), %rcx
	movq	-24(%rcx), %rcx
	movq	8(%rsi,%rcx), %rcx
	movq	%rcx, 80(%rsp,%rax)
	movq	(%rdi), %rdx
.Ltmp9:
	leaq	72(%rsp), %rcx
	callq	_ZNSo9_M_insertIxEERSoT_
.Ltmp10:
# %bb.2:
	movq	72(%rsp), %rax
	movq	-24(%rax), %rax
	movq	304(%rsp,%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB6_12
# %bb.3:
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jae	.LBB6_5
# %bb.4:
	movb	$117, (%rax)
	movq	40(%rdi), %rax
	incq	%rax
	movq	%rax, 40(%rdi)
	cmpq	48(%rdi), %rax
	jae	.LBB6_9
.LBB6_11:
	movb	$115, (%rax)
	incq	40(%rdi)
.LBB6_12:
	movq	120(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB6_15
# %bb.13:
	movq	104(%rsp), %rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	testq	%rax, %rax
	je	.LBB6_15
# %bb.14:
	subq	112(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	152(%rsp), %rcx
	movb	$0, (%rcx,%rax)
.LBB6_15:
	leaq	80(%rsp), %r14
	leaq	48(%rsp), %rbx
	movq	%rbx, 32(%rsp)
	movq	152(%rsp), %rax
	leaq	168(%rsp), %rdi
	cmpq	%rdi, %rax
	je	.LBB6_16
# %bb.17:
	movq	%rax, 32(%rsp)
	movq	160(%rsp), %r15
	movq	168(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB6_18
.LBB6_16:
	movq	160(%rsp), %r15
	leaq	1(%r15), %r8
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	memcpy
.LBB6_18:
	movq	%r15, 40(%rsp)
	movq	%rdi, 152(%rsp)
	movq	$0, 160(%rsp)
	movb	$0, 168(%rsp)
.Ltmp17:
	movq	%r14, %rcx
	movq	%rdi, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy
.Ltmp18:
# %bb.19:
	movq	32(%rsp), %rdx
	movq	40(%rsp), %r8
.Ltmp20:
	movq	%rsi, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp21:
# %bb.20:
	movq	32(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.LBB6_22
# %bb.21:
	callq	_ZdlPv
.LBB6_22:
	movq	.refptr._ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	(%rax), %rcx
	movq	24(%rax), %rax
	movq	%rcx, 72(%rsp)
	movq	-24(%rcx), %rcx
	movq	%rax, 72(%rsp,%rcx)
	movq	.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 80(%rsp)
	movq	152(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.LBB6_24
# %bb.23:
	callq	_ZdlPv
.LBB6_24:
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 80(%rsp)
	leaq	136(%rsp), %rcx
	callq	_ZNSt6localeD1Ev
	leaq	184(%rsp), %rcx
	callq	_ZNSt8ios_baseD2Ev
	movq	%rsi, %rax
	addq	$448, %rsp                      # imm = 0x1C0
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
.LBB6_5:
	movq	(%rdi), %rax
.Ltmp12:
	movq	%rdi, %rcx
	movl	$117, %edx
	callq	*104(%rax)
.Ltmp13:
# %bb.6:
	cmpl	$-1, %eax
	je	.LBB6_12
# %bb.7:
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jb	.LBB6_11
.LBB6_9:
	movq	(%rdi), %rax
.Ltmp14:
	movq	%rdi, %rcx
	movl	$115, %edx
	callq	*104(%rax)
.Ltmp15:
	jmp	.LBB6_12
.LBB6_10:
.Ltmp16:
	movq	%rax, %rcx
	callq	__clang_call_terminate
.LBB6_28:
.Ltmp22:
	jmp	.LBB6_29
.LBB6_25:
.Ltmp19:
.LBB6_29:
	movq	%rax, %rsi
	movq	32(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.LBB6_31
# %bb.30:
	callq	_ZdlPv
	jmp	.LBB6_31
.LBB6_26:
.Ltmp11:
	movq	%rax, %rsi
	jmp	.LBB6_31
.LBB6_27:
.Ltmp8:
	movq	%rax, %rsi
	leaq	32(%rsp), %rcx
	callq	_ZNSt6localeD1Ev
.LBB6_31:
	leaq	72(%rsp), %rcx
	callq	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	movq	%rsi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE,"xr",discard,_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
	.seh_endproc
	.section	.xdata$_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp17-.Ltmp10                #   Call between .Ltmp10 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin1          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp15-.Ltmp12                #   Call between .Ltmp12 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin1          #     jumps to .Ltmp16
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Lfunc_end1-.Ltmp15            #   Call between .Ltmp15 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
	.section	.text$_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE,"xr",discard,_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
                                        # -- End function
	.def	_Z11printModulov;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z11printModulov                # -- Begin function _Z11printModulov
	.p2align	4
_Z11printModulov:                       # @_Z11printModulov
.seh_proc _Z11printModulov
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movb	$10, 45(%rsp)
	movq	.refptr._ZSt4cout(%rip), %rsi
	movq	(%rsi), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rsi,%rax)
	je	.LBB7_2
# %bb.1:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	45(%rsp), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB7_3
.LBB7_2:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB7_3:
	leaq	.L.str.3(%rip), %rdx
	movl	$58, %r8d
	movq	%rsi, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movb	$10, 46(%rsp)
	movq	(%rsi), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rsi,%rax)
	je	.LBB7_5
# %bb.4:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	46(%rsp), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB7_6
.LBB7_5:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB7_6:
	movb	$10, 47(%rsp)
	movq	(%rsi), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rsi,%rax)
	je	.LBB7_8
# %bb.7:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB7_9
.LBB7_8:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB7_9:
	nop
	addq	$48, %rsp
	popq	%rsi
	retq
	.seh_endproc
                                        # -- End function
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4
main:                                   # @main
.Lfunc_begin2:
.seh_proc main
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	callq	__main
	leaq	-88(%rbp), %rcx
	movl	$16000000, %edx                 # imm = 0xF42400
	callq	_Z15generate_valuesy
.Ltmp23:
	callq	_Z11printModulov
.Ltmp24:
# %bb.1:
.Ltmp25:
	movq	.refptr._ZSt4cout(%rip), %rdi
	leaq	.L.str.4(%rip), %rdx
	movl	$64, %r8d
	movq	%rdi, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp26:
# %bb.2:
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %r15
	cmpq	%r15, %rsi
	je	.LBB8_10
# %bb.3:
	xorl	%r8d, %r8d
	movabsq	$-3689348814741910323, %rcx     # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rsi, %r9
	.p2align	4
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	mulq	(%r9)
	shrq	$3, %rdx
	addq	%rdx, %r8
	addq	$8, %r9
	cmpq	%r15, %r9
	jne	.LBB8_4
# %bb.5:
	xorl	%r9d, %r9d
	movabsq	$-3689348814741910323, %rcx     # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rsi, %r10
	.p2align	4
.LBB8_6:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	mulq	(%r10)
	shrq	$3, %rdx
	addq	%rdx, %r9
	addq	$8, %r10
	cmpq	%r15, %r10
	jne	.LBB8_6
# %bb.7:
	cmpq	%r9, %r8
	jne	.LBB8_14
# %bb.8:
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r14
	movabsq	$-3689348814741910323, %rcx     # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rsi, %r8
	.p2align	4
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	mulq	(%r8)
	shrq	$3, %rdx
	addq	%rdx, %rbx
	addq	$8, %r8
	cmpq	%r15, %r8
	jne	.LBB8_9
	jmp	.LBB8_11
.LBB8_10:
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r14
.LBB8_11:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$7, -64(%rbp)
	leaq	.L.str.6(%rip), %r13
	movq	%r13, -56(%rbp)
.Ltmp31:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	-64(%rbp), %rcx
	movq	%r14, %rdx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp32:
# %bb.12:
	movb	$10, 23(%rbp)
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rdi,%rax)
	je	.LBB8_15
# %bb.13:
.Ltmp33:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	23(%rbp), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp34:
	jmp	.LBB8_16
.LBB8_14:
	movl	$1, %edi
.Ltmp28:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.L.str.5(%rip), %rdx
	movl	$17, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp29:
	jmp	.LBB8_78
.LBB8_15:
.Ltmp35:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.Ltmp36:
.LBB8_16:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rdi
	xorl	%ebx, %ebx
	cmpq	%r15, %rsi
	je	.LBB8_19
# %bb.17:
	movabsq	$-3689348814741910323, %rcx     # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rsi, %r8
	.p2align	4
.LBB8_18:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	mulq	(%r8)
	shrq	$3, %rdx
	addq	%rdx, %rbx
	addq	$8, %r8
	cmpq	%r15, %r8
	jne	.LBB8_18
.LBB8_19:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$5, -48(%rbp)
	leaq	.L.str.7(%rip), %r14
	movq	%r14, -40(%rbp)
.Ltmp38:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	-48(%rbp), %rcx
	movq	%rdi, %rdx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp39:
# %bb.20:
.Ltmp40:
	callq	_Z11printModulov
.Ltmp41:
# %bb.21:
.Ltmp42:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.8(%rip), %rdx
	movl	$63, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp43:
# %bb.22:
	movabsq	$4611686018427387900, %r12      # imm = 0x3FFFFFFFFFFFFFFC
	cmpq	%r15, %rsi
	je	.LBB8_25
# %bb.23:
	movq	%r15, %rdx
	subq	%rsi, %rdx
	addq	$-8, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	incq	%rcx
	cmpq	$24, %rdx
	jae	.LBB8_26
# %bb.24:
	xorl	%eax, %eax
	movq	%rsi, %r8
	jmp	.LBB8_29
.LBB8_25:
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	jmp	.LBB8_42
.LBB8_26:
	movq	%rcx, %r9
	andq	%r12, %r9
	leaq	(%rsi,%r9,8), %r8
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB8_27:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%rax,8), %xmm2
	movdqu	16(%rsi,%rax,8), %xmm3
	psrlq	$3, %xmm2
	paddq	%xmm2, %xmm0
	psrlq	$3, %xmm3
	paddq	%xmm3, %xmm1
	addq	$4, %rax
	cmpq	%rax, %r9
	jne	.LBB8_27
# %bb.28:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %rax
	cmpq	%r9, %rcx
	je	.LBB8_30
	.p2align	4
.LBB8_29:                               # =>This Inner Loop Header: Depth=1
	movq	(%r8), %r9
	shrq	$3, %r9
	addq	%r9, %rax
	addq	$8, %r8
	cmpq	%r15, %r8
	jne	.LBB8_29
.LBB8_30:
	cmpq	$24, %rdx
	jae	.LBB8_32
# %bb.31:
	xorl	%r8d, %r8d
	movq	%rsi, %r9
	jmp	.LBB8_35
.LBB8_32:
	movq	%rcx, %r10
	andq	%r12, %r10
	leaq	(%rsi,%r10,8), %r9
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB8_33:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%r8,8), %xmm2
	movdqu	16(%rsi,%r8,8), %xmm3
	psrlq	$3, %xmm2
	paddq	%xmm2, %xmm0
	psrlq	$3, %xmm3
	paddq	%xmm3, %xmm1
	addq	$4, %r8
	cmpq	%r8, %r10
	jne	.LBB8_33
# %bb.34:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %r8
	cmpq	%r10, %rcx
	je	.LBB8_36
	.p2align	4
.LBB8_35:                               # =>This Inner Loop Header: Depth=1
	movq	(%r9), %r10
	shrq	$3, %r10
	addq	%r10, %r8
	addq	$8, %r9
	cmpq	%r15, %r9
	jne	.LBB8_35
.LBB8_36:
	cmpq	$24, %rdx
	jae	.LBB8_38
# %bb.37:
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	jmp	.LBB8_41
.LBB8_38:
	movq	%rcx, %r10
	andq	%r12, %r10
	leaq	(%rsi,%r10,8), %rdx
	pxor	%xmm0, %xmm0
	xorl	%r9d, %r9d
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB8_39:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%r9,8), %xmm2
	movdqu	16(%rsi,%r9,8), %xmm3
	psrlq	$3, %xmm2
	paddq	%xmm2, %xmm0
	psrlq	$3, %xmm3
	paddq	%xmm3, %xmm1
	addq	$4, %r9
	cmpq	%r9, %r10
	jne	.LBB8_39
# %bb.40:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %r9
	cmpq	%r10, %rcx
	je	.LBB8_42
	.p2align	4
.LBB8_41:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rcx
	shrq	$3, %rcx
	addq	%rcx, %r9
	addq	$8, %rdx
	cmpq	%r15, %rdx
	jne	.LBB8_41
.LBB8_42:
	cmpq	%r8, %rax
	jne	.LBB8_47
# %bb.43:
	cmpq	%r9, %rax
	jne	.LBB8_47
# %bb.44:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rbx
	cmpq	%r15, %rsi
	je	.LBB8_48
# %bb.45:
	movq	%r15, %rcx
	subq	%rsi, %rcx
	addq	$-8, %rcx
	movq	%r14, %rdi
	cmpq	$24, %rcx
	jae	.LBB8_49
# %bb.46:
	xorl	%r14d, %r14d
	movq	%rsi, %rax
	jmp	.LBB8_52
.LBB8_47:
	movl	$1, %edi
.Ltmp45:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.L.str.5(%rip), %rdx
	movl	$17, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp46:
	jmp	.LBB8_78
.LBB8_48:
	movq	%r14, %rdi
	xorl	%r14d, %r14d
	jmp	.LBB8_53
.LBB8_49:
	shrq	$3, %rcx
	incq	%rcx
	movq	%rcx, %rdx
	andq	%r12, %rdx
	leaq	(%rsi,%rdx,8), %rax
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB8_50:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%r8,8), %xmm2
	movdqu	16(%rsi,%r8,8), %xmm3
	psrlq	$3, %xmm2
	paddq	%xmm2, %xmm0
	psrlq	$3, %xmm3
	paddq	%xmm3, %xmm1
	addq	$4, %r8
	cmpq	%r8, %rdx
	jne	.LBB8_50
# %bb.51:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %r14
	cmpq	%rdx, %rcx
	je	.LBB8_53
	.p2align	4
.LBB8_52:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	shrq	$3, %rcx
	addq	%rcx, %r14
	addq	$8, %rax
	cmpq	%r15, %rax
	jne	.LBB8_52
.LBB8_53:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$7, -32(%rbp)
	movq	%r13, -24(%rbp)
.Ltmp47:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	-32(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	%r14, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp48:
	movq	.refptr._ZSt4cout(%rip), %r13
# %bb.54:
	movb	$10, 23(%rbp)
	movq	(%r13), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%r13,%rax)
	je	.LBB8_56
# %bb.55:
.Ltmp49:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	23(%rbp), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp50:
	jmp	.LBB8_57
.LBB8_56:
.Ltmp51:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.Ltmp52:
.LBB8_57:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rbx
	cmpq	%r15, %rsi
	je	.LBB8_60
# %bb.58:
	movq	%r15, %rcx
	subq	%rsi, %rcx
	addq	$-8, %rcx
	cmpq	$24, %rcx
	jae	.LBB8_61
# %bb.59:
	xorl	%r14d, %r14d
	movq	%rsi, %rax
	jmp	.LBB8_64
.LBB8_60:
	xorl	%r14d, %r14d
	jmp	.LBB8_65
.LBB8_61:
	shrq	$3, %rcx
	incq	%rcx
	movq	%rcx, %rdx
	andq	%r12, %rdx
	leaq	(%rsi,%rdx,8), %rax
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB8_62:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%r8,8), %xmm2
	movdqu	16(%rsi,%r8,8), %xmm3
	psrlq	$3, %xmm2
	paddq	%xmm2, %xmm0
	psrlq	$3, %xmm3
	paddq	%xmm3, %xmm1
	addq	$4, %r8
	cmpq	%r8, %rdx
	jne	.LBB8_62
# %bb.63:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %r14
	cmpq	%rdx, %rcx
	je	.LBB8_65
	.p2align	4
.LBB8_64:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	shrq	$3, %rcx
	addq	%rcx, %r14
	addq	$8, %rax
	cmpq	%r15, %rax
	jne	.LBB8_64
.LBB8_65:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$5, -16(%rbp)
	movq	%rdi, -8(%rbp)
.Ltmp53:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	-16(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	%r14, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp54:
# %bb.66:
	movb	$10, 23(%rbp)
	movq	(%r13), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%r13,%rax)
	je	.LBB8_68
# %bb.67:
.Ltmp55:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	23(%rbp), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp56:
	jmp	.LBB8_69
.LBB8_68:
.Ltmp57:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.Ltmp58:
.LBB8_69:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rbx
	xorl	%edi, %edi
	cmpq	%r15, %rsi
	je	.LBB8_72
# %bb.70:
	movq	%r15, %rcx
	subq	%rsi, %rcx
	addq	$-8, %rcx
	cmpq	$24, %rcx
	jae	.LBB8_73
# %bb.71:
	xorl	%r14d, %r14d
	movq	%rsi, %rax
	jmp	.LBB8_76
.LBB8_72:
	xorl	%r14d, %r14d
	jmp	.LBB8_77
.LBB8_73:
	shrq	$3, %rcx
	incq	%rcx
	andq	%rcx, %r12
	leaq	(%rsi,%r12,8), %rax
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB8_74:                               # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%rdx,8), %xmm2
	movdqu	16(%rsi,%rdx,8), %xmm3
	psrlq	$3, %xmm2
	paddq	%xmm2, %xmm0
	psrlq	$3, %xmm3
	paddq	%xmm3, %xmm1
	addq	$4, %rdx
	cmpq	%rdx, %r12
	jne	.LBB8_74
# %bb.75:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %r14
	cmpq	%r12, %rcx
	je	.LBB8_77
	.p2align	4
.LBB8_76:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	shrq	$3, %rcx
	addq	%rcx, %r14
	addq	$8, %rax
	cmpq	%r15, %rax
	jne	.LBB8_76
.LBB8_77:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$5, (%rbp)
	leaq	.L.str.9(%rip), %rcx
	movq	%rcx, 8(%rbp)
.Ltmp60:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	%r14, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp61:
.LBB8_78:
	testq	%rsi, %rsi
	je	.LBB8_80
# %bb.79:
	movq	%rsi, %rcx
	callq	_ZdlPv
.LBB8_80:
	movl	%edi, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_81:
.Ltmp30:
	jmp	.LBB8_87
.LBB8_82:
.Ltmp62:
	jmp	.LBB8_87
.LBB8_83:
.Ltmp37:
	jmp	.LBB8_87
.LBB8_84:
.Ltmp59:
	jmp	.LBB8_87
.LBB8_85:
.Ltmp27:
	movq	%rax, %rdi
	movq	-88(%rbp), %rsi
	jmp	.LBB8_88
.LBB8_86:
.Ltmp44:
.LBB8_87:
	movq	%rax, %rdi
.LBB8_88:
	testq	%rsi, %rsi
	je	.LBB8_90
# %bb.89:
	movq	%rsi, %rcx
	callq	_ZdlPv
.LBB8_90:
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end2:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp23                #   Call between .Ltmp23 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin2          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp34-.Ltmp31                #   Call between .Ltmp31 and .Ltmp34
	.uleb128 .Ltmp37-.Lfunc_begin2          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin2          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin2          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp43-.Ltmp38                #   Call between .Ltmp38 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin2          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp58-.Ltmp45                #   Call between .Ltmp45 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin2          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin2          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Lfunc_end2-.Ltmp61            #   Call between .Ltmp61 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	__clang_call_terminate;
	.scl	2;
	.type	32;
	.endef
	.section	.text$__clang_call_terminate,"xr",discard,__clang_call_terminate
	.globl	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.p2align	4
__clang_call_terminate:                 # @__clang_call_terminate
.seh_proc __clang_call_terminate
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
	int3
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"checksum = "

.L.str.1:                               # @.str.1
	.asciz	"elapsed = "

.L.str.2:                               # @.str.2
	.asciz	"throughput_ops_sec = "

.L.str.3:                               # @.str.3
	.asciz	"----------------------------------------------------------"

.L.str.4:                               # @.str.4
	.asciz	"-------------------------- Div 10 -----------------------------\n"

.L.str.5:                               # @.str.5
	.asciz	"results mismatch\n"

.L.str.6:                               # @.str.6
	.asciz	"RUNTIME"

.L.str.7:                               # @.str.7
	.asciz	"CONST"

.L.str.8:                               # @.str.8
	.asciz	"-------------------------- Div 8 -----------------------------\n"

.L.str.9:                               # @.str.9
	.asciz	"SHIFT"

.L.str.10:                              # @.str.10
	.asciz	"vector::reserve"

.L.str.11:                              # @.str.11
	.asciz	"vector::_M_realloc_append"

	.section	.drectve,"yni"
	.ascii	" -exclude-symbols:__clang_call_terminate"
	.section	.rdata$.refptr._ZSt4cerr,"dr",discard,.refptr._ZSt4cerr
	.p2align	3, 0x0
	.globl	.refptr._ZSt4cerr
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
	.section	.rdata$.refptr._ZSt4cout,"dr",discard,.refptr._ZSt4cout
	.p2align	3, 0x0
	.globl	.refptr._ZSt4cout
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE,"dr",discard,.refptr._ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE
	.p2align	3, 0x0
	.globl	.refptr._ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE
.refptr._ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE,"dr",discard,.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE
	.p2align	3, 0x0
	.globl	.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE
.refptr._ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE
	.section	.rdata$.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE,"dr",discard,.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.p2align	3, 0x0
	.globl	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE
.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE:
	.quad	_ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.addrsig
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
