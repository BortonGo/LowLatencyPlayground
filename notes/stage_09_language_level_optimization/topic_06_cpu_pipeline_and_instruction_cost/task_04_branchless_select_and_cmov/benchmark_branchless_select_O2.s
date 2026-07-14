	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"benchmark_branchless_select.cpp"
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
	leaq	.L.str.13(%rip), %rcx
	callq	_ZSt20__throw_length_errorPKc
.Ltmp4:
# %bb.8:
.LBB0_21:
	leaq	.L.str.12(%rip), %rcx
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
	.def	_Z14generate_flagsyy;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z14generate_flagsyy            # -- Begin function _Z14generate_flagsyy
	.p2align	4
_Z14generate_flagsyy:                   # @_Z14generate_flagsyy
.Lfunc_begin1:
.seh_proc _Z14generate_flagsyy
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
	subq	$2552, %rsp                     # imm = 0x9F8
	.seh_stackalloc 2552
	.seh_endprologue
	movq	%r8, %r14
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	movabsq	$6364136223846793005, %rsi      # imm = 0x5851F42D4C957F2D
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movl	$16000000, %ecx                 # imm = 0xF42400
	callq	_Znwy
	movq	%rbx, %r9
	movq	%rax, %rbx
	movq	%rax, (%r9)
	movq	%rax, 8(%r9)
	movq	%rax, %rbp
	addq	$16000000, %rbp                 # imm = 0xF42400
	movq	%rbp, 16(%r9)
	movq	%r14, 48(%rsp)
	movl	$1, %eax
	movl	$2, %ecx
	.p2align	4
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdx
	shrq	$62, %rdx
	xorq	%r14, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	decq	%rdx
	movq	%rdx, 40(%rsp,%rcx,8)
	cmpq	$312, %rcx                      # imm = 0x138
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	leaq	1(%rax), %r14
	movq	%rdx, %r8
	shrq	$62, %r8
	xorq	%rdx, %r8
	imulq	%rsi, %r8
	addq	%r8, %r14
	addq	%rcx, %r8
	movq	%r8, 48(%rsp,%rcx,8)
	addq	$2, %rax
	addq	$2, %rcx
	jmp	.LBB1_1
.LBB1_3:
	movabsq	$9223372036854775807, %r8       # imm = 0x7FFFFFFFFFFFFFFF
	movq	$312, 2544(%rsp)                # imm = 0x138
	imulq	$16000000, %rdi, %rax           # imm = 0xF42400
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rcx      # imm = 0x28F5C28F5C28F5C3
	mulq	%rcx
	movq	%rdx, %r14
	shrq	$2, %r14
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r9, 40(%rsp)                   # 8-byte Spill
	jmp	.LBB1_4
	.p2align	4
.LBB1_5:                                #   in Loop: Header=BB1_4 Depth=1
	cmpq	%rbp, %rbx
	je	.LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	movb	$0, (%rbx)
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=1
	incq	%rbx
	movq	%rbx, 8(%r9)
.LBB1_16:                               #   in Loop: Header=BB1_4 Depth=1
	incq	%rsi
	cmpq	$16000000, %rsi                 # imm = 0xF42400
	je	.LBB1_17
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	cmpq	%r14, %rsi
	jae	.LBB1_5
# %bb.22:                               #   in Loop: Header=BB1_4 Depth=1
	cmpq	%rbp, %rbx
	je	.LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_4 Depth=1
	movb	$1, (%rbx)
	jmp	.LBB1_7
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %r15
	subq	%rdi, %r15
	cmpq	%r8, %r15
	je	.LBB1_9
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	cmpq	$1, %r15
	movq	%r15, %r12
	adcq	%r15, %r12
	cmpq	%r8, %r12
	cmovaeq	%r8, %r12
.Ltmp6:
	movq	%r12, %rcx
	callq	_Znwy
.Ltmp7:
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rax, %r13
	movb	$0, (%rax,%r15)
	cmpq	%rdi, %rbx
	jne	.LBB1_14
	jmp	.LBB1_15
.LBB1_24:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %r15
	subq	%rdi, %r15
	cmpq	%r8, %r15
	je	.LBB1_25
# %bb.27:                               #   in Loop: Header=BB1_4 Depth=1
	cmpq	$1, %r15
	movq	%r15, %r12
	adcq	%r15, %r12
	cmpq	%r8, %r12
	cmovaeq	%r8, %r12
.Ltmp12:
	movq	%r12, %rcx
	callq	_Znwy
.Ltmp13:
# %bb.28:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rax, %r13
	movb	$1, (%rax,%r15)
	cmpq	%rdi, %rbx
	je	.LBB1_15
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r13, %rcx
	movq	%rdi, %rdx
	movq	%r15, %r8
	callq	memcpy
.LBB1_15:                               #   in Loop: Header=BB1_4 Depth=1
	addq	%r13, %r15
	movq	%rdi, %rcx
	callq	_ZdlPv
	incq	%r15
	movq	40(%rsp), %r9                   # 8-byte Reload
	movq	%r15, 8(%r9)
	addq	%r13, %r12
	movq	%r15, %rbx
	movq	%r13, %rdi
	movq	%r12, %rbp
	movabsq	$9223372036854775807, %r8       # imm = 0x7FFFFFFFFFFFFFFF
	jmp	.LBB1_16
.LBB1_17:
	movq	%rbp, 16(%r9)
	movq	%rdi, (%r9)
.Ltmp15:
	leaq	48(%rsp), %r8
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	movq	%r9, %rsi
	callq	_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEERSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEvT_SA_OT0_
.Ltmp16:
# %bb.18:
	movq	%rsi, %rax
	addq	$2552, %rsp                     # imm = 0x9F8
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB1_9:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rbp, 16(%rax)
	movq	%rdi, (%rax)
.Ltmp9:
	leaq	.L.str.13(%rip), %rcx
	callq	_ZSt20__throw_length_errorPKc
.Ltmp10:
# %bb.10:
.LBB1_25:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rbp, 16(%rax)
	movq	%rdi, (%rax)
.Ltmp18:
	leaq	.L.str.13(%rip), %rcx
	callq	_ZSt20__throw_length_errorPKc
.Ltmp19:
# %bb.26:
.LBB1_31:
.Ltmp17:
	jmp	.LBB1_32
.LBB1_30:
.Ltmp20:
	jmp	.LBB1_32
.LBB1_29:
.Ltmp14:
	jmp	.LBB1_20
.LBB1_21:
.Ltmp11:
.LBB1_32:
	movq	%rax, %rbx
	jmp	.LBB1_33
.LBB1_19:
.Ltmp8:
.LBB1_20:
	movq	%rax, %rbx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rbp, 16(%rax)
	movq	%rdi, (%rax)
.LBB1_33:
	testq	%rdi, %rdi
	je	.LBB1_35
# %bb.34:
	movq	%rdi, %rcx
	callq	_ZdlPv
.LBB1_35:
	movq	%rbx, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end1:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
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
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Lfunc_end1-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEERSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEvT_SA_OT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEERSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEvT_SA_OT0_,"xr",discard,_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEERSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEvT_SA_OT0_
	.globl	_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEERSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEvT_SA_OT0_ # -- Begin function _ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEERSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEvT_SA_OT0_
	.p2align	4
_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEERSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEvT_SA_OT0_: # @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEERSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEvT_SA_OT0_
.seh_proc _ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEERSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEvT_SA_OT0_
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
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rdx, %rax
	subq	%rcx, %rax
	jne	.LBB2_1
.LBB2_22:
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB2_1:
	movq	%r8, %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	movq	%rax, %rcx
	shrq	$32, %rcx
	leaq	1(%rbx), %r15
	testq	%rcx, %rcx
	jne	.LBB2_2
# %bb.7:
	testb	$1, %al
	jne	.LBB2_9
# %bb.8:
	leaq	2(%rbx), %r15
	movq	%rsi, %rcx
	callq	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
	shrq	$63, %rax
	movzbl	1(%rbx), %ecx
	movzbl	(%rbx,%rax), %edx
	movb	%dl, 1(%rbx)
	movb	%cl, (%rbx,%rax)
.LBB2_9:
	cmpq	%rdi, %r15
	jne	.LBB2_10
	jmp	.LBB2_22
	.p2align	4
.LBB2_23:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rsi, %rcx
	callq	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
	movq	%rax, %rdx
.LBB2_24:                               #   in Loop: Header=BB2_2 Depth=1
	movzbl	(%r15), %eax
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, (%r15)
	movb	%al, (%rbx,%rdx)
	incq	%r15
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	cmpq	%rdi, %r15
	je	.LBB2_22
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %r14
	subq	%rbx, %r14
	cmpq	$-1, %r14
	je	.LBB2_23
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	leaq	1(%r14), %r12
	movq	%rsi, %rcx
	callq	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
	mulq	%r12
	cmpq	%rax, %r14
	jb	.LBB2_24
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%rax, %rcx
	notq	%r14
	movq	%r14, %rax
	movq	%rdx, %r8
	xorl	%edx, %edx
	divq	%r12
	movq	%rdx, %r14
	movq	%r8, %rdx
	cmpq	%rcx, %r14
	jbe	.LBB2_24
	.p2align	4
.LBB2_6:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rcx
	callq	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
	mulq	%r12
	cmpq	%rax, %r14
	ja	.LBB2_6
	jmp	.LBB2_24
	.p2align	4
.LBB2_19:                               #   in Loop: Header=BB2_10 Depth=1
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%r12d
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
.LBB2_21:                               #   in Loop: Header=BB2_10 Depth=1
	movzbl	(%r15), %ecx
	movzbl	(%rbx,%rax), %r8d
	movb	%r8b, (%r15)
	movb	%cl, (%rbx,%rax)
	movzbl	1(%r15), %eax
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, 1(%r15)
	leaq	2(%r15), %rcx
	movb	%al, (%rbx,%rdx)
	movq	%rcx, %r15
	cmpq	%rdi, %rcx
	je	.LBB2_22
.LBB2_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_16 Depth 2
	movq	%r15, %r12
	subq	%rbx, %r12
	leaq	1(%r12), %r13
	addq	$2, %r12
	imulq	%r12, %r13
	testq	%r13, %r13
	je	.LBB2_17
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	leaq	-1(%r13), %r14
	movq	%rsi, %rcx
	callq	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
	mulq	%r13
	cmpq	%rax, %r14
	jb	.LBB2_18
# %bb.12:                               #   in Loop: Header=BB2_10 Depth=1
	movq	%rax, %rcx
	movq	%rdx, %r8
	movq	%r13, %rax
	negq	%rax
	movq	%rax, %rdx
	orq	%r13, %rdx
	shrq	$32, %rdx
	je	.LBB2_13
# %bb.14:                               #   in Loop: Header=BB2_10 Depth=1
	xorl	%edx, %edx
	divq	%r13
	movq	%rdx, %r14
	jmp	.LBB2_15
	.p2align	4
.LBB2_17:                               #   in Loop: Header=BB2_10 Depth=1
	movq	%rsi, %rcx
	callq	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
	movq	%rax, %rdx
	jmp	.LBB2_18
.LBB2_13:                               #   in Loop: Header=BB2_10 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r13d
	movl	%edx, %r14d
.LBB2_15:                               #   in Loop: Header=BB2_10 Depth=1
	cmpq	%rcx, %r14
	movq	%r8, %rdx
	jbe	.LBB2_18
	.p2align	4
.LBB2_16:                               #   Parent Loop BB2_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rcx
	callq	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
	mulq	%r13
	cmpq	%rax, %r14
	ja	.LBB2_16
	.p2align	4
.LBB2_18:                               #   in Loop: Header=BB2_10 Depth=1
	movq	%rdx, %rax
	orq	%r12, %rax
	shrq	$32, %rax
	je	.LBB2_19
# %bb.20:                               #   in Loop: Header=BB2_10 Depth=1
	movq	%rdx, %rax
	xorl	%edx, %edx
	divq	%r12
	jmp	.LBB2_21
	.seh_endproc
                                        # -- End function
	.def	_Z11sum_branchyRSt6vectorIySaIyEERS_IhSaIhEE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z11sum_branchyRSt6vectorIySaIyEERS_IhSaIhEE # -- Begin function _Z11sum_branchyRSt6vectorIySaIyEERS_IhSaIhEE
	.p2align	4
_Z11sum_branchyRSt6vectorIySaIyEERS_IhSaIhEE: # @_Z11sum_branchyRSt6vectorIySaIyEERS_IhSaIhEE
# %bb.0:
	movq	(%rdx), %rdx
	movq	(%rcx), %rcx
	movl	$1, %r8d
	xorl	%eax, %eax
	jmp	.LBB3_1
	.p2align	4
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	addq	$2, %r8
	cmpq	$16000001, %r8                  # imm = 0xF42401
	je	.LBB3_6
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%rdx,%r8)
	je	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	addq	-8(%rcx,%r8,8), %rax
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	cmpb	$0, (%rdx,%r8)
	je	.LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_1 Depth=1
	addq	(%rcx,%r8,8), %rax
	jmp	.LBB3_5
.LBB3_6:
	retq
                                        # -- End function
	.def	_Z18sum_ternary_selectRSt6vectorIySaIyEERS_IhSaIhEE;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z18sum_ternary_selectRSt6vectorIySaIyEERS_IhSaIhEE # -- Begin function _Z18sum_ternary_selectRSt6vectorIySaIyEERS_IhSaIhEE
	.p2align	4
_Z18sum_ternary_selectRSt6vectorIySaIyEERS_IhSaIhEE: # @_Z18sum_ternary_selectRSt6vectorIySaIyEERS_IhSaIhEE
# %bb.0:
	movq	(%rdx), %rdx
	movq	(%rcx), %rcx
	movl	$1, %r8d
	xorl	%eax, %eax
	jmp	.LBB4_1
	.p2align	4
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	movq	(%rcx,%r8,8), %r10
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	addq	%r9, %rax
	addq	%r10, %rax
	addq	$2, %r8
	cmpq	$16000001, %r8                  # imm = 0xF42401
	je	.LBB4_8
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%rdx,%r8)
	je	.LBB4_2
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rcx,%r8,8), %r9
	cmpb	$0, (%rdx,%r8)
	jne	.LBB4_6
	jmp	.LBB4_5
	.p2align	4
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	xorl	%r9d, %r9d
	cmpb	$0, (%rdx,%r8)
	jne	.LBB4_6
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	xorl	%r10d, %r10d
	jmp	.LBB4_7
.LBB4_8:
	retq
                                        # -- End function
	.def	_Z19sum_arithmetic_maskRSt6vectorIySaIyEERS_IhSaIhEE;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z19sum_arithmetic_maskRSt6vectorIySaIyEERS_IhSaIhEE # -- Begin function _Z19sum_arithmetic_maskRSt6vectorIySaIyEERS_IhSaIhEE
	.p2align	4
_Z19sum_arithmetic_maskRSt6vectorIySaIyEERS_IhSaIhEE: # @_Z19sum_arithmetic_maskRSt6vectorIySaIyEERS_IhSaIhEE
# %bb.0:
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movl	$4, %r8d
	xorl	%eax, %eax
	.p2align	4
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	-4(%rdx,%r8), %r9d
	imulq	-32(%rcx,%r8,8), %r9
	movzbl	-3(%rdx,%r8), %r10d
	imulq	-24(%rcx,%r8,8), %r10
	addq	%rax, %r9
	movzbl	-2(%rdx,%r8), %r11d
	imulq	-16(%rcx,%r8,8), %r11
	addq	%r10, %r11
	movzbl	-1(%rdx,%r8), %r10d
	imulq	-8(%rcx,%r8,8), %r10
	addq	%r9, %r11
	movzbl	(%rdx,%r8), %eax
	imulq	(%rcx,%r8,8), %rax
	addq	%r10, %rax
	addq	%r11, %rax
	addq	$5, %r8
	cmpq	$16000004, %r8                  # imm = 0xF42404
	jne	.LBB5_1
# %bb.2:
	retq
                                        # -- End function
	.def	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	4, 0x0                          # -- Begin function _Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.LCPI6_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.zero	8
.LCPI6_1:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI6_2:
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
	unpcklps	.LCPI6_1(%rip), %xmm8           # xmm8 = xmm8[0],mem[0],xmm8[1],mem[1]
	subpd	.LCPI6_2(%rip), %xmm8
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
	je	.LBB6_2
# %bb.1:
	leaq	36(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB6_3
.LBB6_2:
	movq	%rax, %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB6_3:
	divsd	.LCPI6_0(%rip), %xmm7
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
	je	.LBB6_5
# %bb.4:
	leaq	37(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB6_6
.LBB6_5:
	movq	%rax, %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB6_6:
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
	je	.LBB6_8
# %bb.7:
	leaq	38(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB6_9
.LBB6_8:
	movq	%rax, %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB6_9:
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
	je	.LBB6_11
# %bb.10:
	leaq	39(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB6_12
.LBB6_11:
	movq	%rax, %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB6_12:
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
.Lfunc_begin2:
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
.Ltmp21:
	leaq	64(%rsp), %rcx
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale
.Ltmp22:
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
.Ltmp24:
	leaq	72(%rsp), %rcx
	callq	_ZNSo9_M_insertIxEERSoT_
.Ltmp25:
# %bb.2:
	movq	72(%rsp), %rax
	movq	-24(%rax), %rax
	movq	304(%rsp,%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB7_12
# %bb.3:
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jae	.LBB7_5
# %bb.4:
	movb	$117, (%rax)
	movq	40(%rdi), %rax
	incq	%rax
	movq	%rax, 40(%rdi)
	cmpq	48(%rdi), %rax
	jae	.LBB7_9
.LBB7_11:
	movb	$115, (%rax)
	incq	40(%rdi)
.LBB7_12:
	movq	120(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB7_15
# %bb.13:
	movq	104(%rsp), %rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	testq	%rax, %rax
	je	.LBB7_15
# %bb.14:
	subq	112(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	152(%rsp), %rcx
	movb	$0, (%rcx,%rax)
.LBB7_15:
	leaq	80(%rsp), %r14
	leaq	48(%rsp), %rbx
	movq	%rbx, 32(%rsp)
	movq	152(%rsp), %rax
	leaq	168(%rsp), %rdi
	cmpq	%rdi, %rax
	je	.LBB7_16
# %bb.17:
	movq	%rax, 32(%rsp)
	movq	160(%rsp), %r15
	movq	168(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB7_18
.LBB7_16:
	movq	160(%rsp), %r15
	leaq	1(%r15), %r8
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	memcpy
.LBB7_18:
	movq	%r15, 40(%rsp)
	movq	%rdi, 152(%rsp)
	movq	$0, 160(%rsp)
	movb	$0, 168(%rsp)
.Ltmp32:
	movq	%r14, %rcx
	movq	%rdi, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy
.Ltmp33:
# %bb.19:
	movq	32(%rsp), %rdx
	movq	40(%rsp), %r8
.Ltmp35:
	movq	%rsi, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp36:
# %bb.20:
	movq	32(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.LBB7_22
# %bb.21:
	callq	_ZdlPv
.LBB7_22:
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
	je	.LBB7_24
# %bb.23:
	callq	_ZdlPv
.LBB7_24:
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
.LBB7_5:
	movq	(%rdi), %rax
.Ltmp27:
	movq	%rdi, %rcx
	movl	$117, %edx
	callq	*104(%rax)
.Ltmp28:
# %bb.6:
	cmpl	$-1, %eax
	je	.LBB7_12
# %bb.7:
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jb	.LBB7_11
.LBB7_9:
	movq	(%rdi), %rax
.Ltmp29:
	movq	%rdi, %rcx
	movl	$115, %edx
	callq	*104(%rax)
.Ltmp30:
	jmp	.LBB7_12
.LBB7_10:
.Ltmp31:
	movq	%rax, %rcx
	callq	__clang_call_terminate
.LBB7_28:
.Ltmp37:
	jmp	.LBB7_29
.LBB7_25:
.Ltmp34:
.LBB7_29:
	movq	%rax, %rsi
	movq	32(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.LBB7_31
# %bb.30:
	callq	_ZdlPv
	jmp	.LBB7_31
.LBB7_26:
.Ltmp26:
	movq	%rax, %rsi
	jmp	.LBB7_31
.LBB7_27:
.Ltmp23:
	movq	%rax, %rsi
	leaq	32(%rsp), %rcx
	callq	_ZNSt6localeD1Ev
.LBB7_31:
	leaq	72(%rsp), %rcx
	callq	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	movq	%rsi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end2:
	.seh_handlerdata
	.section	.text$_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE,"xr",discard,_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE
	.seh_endproc
	.section	.xdata$_ZNSt6chronolsIcSt11char_traitsIcExSt5ratioILx1ELx1000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table7:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp21-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin2          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin2          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp32-.Ltmp25                #   Call between .Ltmp25 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin2          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin2          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp30-.Ltmp27                #   Call between .Ltmp27 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin2          #     jumps to .Ltmp31
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp30-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Lfunc_end2-.Ltmp30            #   Call between .Ltmp30 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
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
	je	.LBB8_2
# %bb.1:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	45(%rsp), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB8_3
.LBB8_2:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB8_3:
	leaq	.L.str.3(%rip), %rdx
	movl	$58, %r8d
	movq	%rsi, %rcx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movb	$10, 46(%rsp)
	movq	(%rsi), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rsi,%rax)
	je	.LBB8_5
# %bb.4:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	46(%rsp), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB8_6
.LBB8_5:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB8_6:
	movb	$10, 47(%rsp)
	movq	(%rsi), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rsi,%rax)
	je	.LBB8_8
# %bb.7:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	jmp	.LBB8_9
.LBB8_8:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movb	$10, %dl
	callq	_ZNSo3putEc
.LBB8_9:
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
.Lfunc_begin3:
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
	subq	$280, %rsp                      # imm = 0x118
	.seh_stackalloc 280
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	callq	__main
	leaq	-88(%rbp), %rcx
	movl	$16000000, %edx                 # imm = 0xF42400
	callq	_Z15generate_valuesy
.Ltmp38:
	leaq	-64(%rbp), %rcx
	movl	$99, %edx
	movl	$42, %r8d
	callq	_Z14generate_flagsyy
.Ltmp39:
# %bb.1:
.Ltmp41:
	leaq	-40(%rbp), %rcx
	movl	$90, %edx
	movl	$42, %r8d
	callq	_Z14generate_flagsyy
.Ltmp42:
# %bb.2:
.Ltmp44:
	leaq	-16(%rbp), %rcx
	movl	$50, %edx
	movl	$42, %r8d
	callq	_Z14generate_flagsyy
.Ltmp45:
# %bb.3:
.Ltmp47:
	callq	_Z11printModulov
.Ltmp48:
# %bb.4:
.Ltmp49:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.4(%rip), %rdx
	movl	$80, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp50:
# %bb.5:
	movq	-64(%rbp), %rdi
	movl	$1, %ecx
	movq	-88(%rbp), %rsi
	xorl	%eax, %eax
	jmp	.LBB9_6
	.p2align	4
.LBB9_10:                               #   in Loop: Header=BB9_6 Depth=1
	addq	$2, %rcx
	cmpq	$16000001, %rcx                 # imm = 0xF42401
	je	.LBB9_11
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%rdi,%rcx)
	je	.LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=1
	addq	-8(%rsi,%rcx,8), %rax
.LBB9_8:                                #   in Loop: Header=BB9_6 Depth=1
	cmpb	$0, (%rdi,%rcx)
	je	.LBB9_10
# %bb.9:                                #   in Loop: Header=BB9_6 Depth=1
	addq	(%rsi,%rcx,8), %rax
	jmp	.LBB9_10
.LBB9_11:
	movl	$1, %edx
	xorl	%ecx, %ecx
	jmp	.LBB9_12
	.p2align	4
.LBB9_17:                               #   in Loop: Header=BB9_12 Depth=1
	movq	(%rsi,%rdx,8), %r9
.LBB9_18:                               #   in Loop: Header=BB9_12 Depth=1
	addq	%r8, %rcx
	addq	%r9, %rcx
	addq	$2, %rdx
	cmpq	$16000001, %rdx                 # imm = 0xF42401
	je	.LBB9_19
.LBB9_12:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%rdi,%rdx)
	je	.LBB9_13
# %bb.14:                               #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rsi,%rdx,8), %r8
	cmpb	$0, (%rdi,%rdx)
	jne	.LBB9_17
	jmp	.LBB9_16
	.p2align	4
.LBB9_13:                               #   in Loop: Header=BB9_12 Depth=1
	xorl	%r8d, %r8d
	cmpb	$0, (%rdi,%rdx)
	jne	.LBB9_17
.LBB9_16:                               #   in Loop: Header=BB9_12 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB9_18
.LBB9_19:
	movl	$4, %edx
	xorl	%r8d, %r8d
	.p2align	4
.LBB9_20:                               # =>This Inner Loop Header: Depth=1
	movzbl	-4(%rdi,%rdx), %r9d
	imulq	-32(%rsi,%rdx,8), %r9
	movzbl	-3(%rdi,%rdx), %r10d
	imulq	-24(%rsi,%rdx,8), %r10
	addq	%r8, %r9
	movzbl	-2(%rdi,%rdx), %r11d
	imulq	-16(%rsi,%rdx,8), %r11
	addq	%r10, %r11
	movzbl	-1(%rdi,%rdx), %r10d
	imulq	-8(%rsi,%rdx,8), %r10
	addq	%r9, %r11
	movzbl	(%rdi,%rdx), %r8d
	imulq	(%rsi,%rdx,8), %r8
	addq	%r10, %r8
	addq	%r11, %r8
	addq	$5, %rdx
	cmpq	$16000004, %rdx                 # imm = 0xF42404
	jne	.LBB9_20
# %bb.21:
	cmpq	%rcx, %rax
	jne	.LBB9_23
# %bb.22:
	cmpq	%r8, %rax
	jne	.LBB9_23
# %bb.28:
	movl	$1, %r15d
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r14
	jmp	.LBB9_29
	.p2align	4
.LBB9_33:                               #   in Loop: Header=BB9_29 Depth=1
	addq	$2, %r15
	cmpq	$16000001, %r15                 # imm = 0xF42401
	je	.LBB9_34
.LBB9_29:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%rdi,%r15)
	je	.LBB9_31
# %bb.30:                               #   in Loop: Header=BB9_29 Depth=1
	addq	-8(%rsi,%r15,8), %rbx
.LBB9_31:                               #   in Loop: Header=BB9_29 Depth=1
	cmpb	$0, (%rdi,%r15)
	je	.LBB9_33
# %bb.32:                               #   in Loop: Header=BB9_29 Depth=1
	addq	(%rsi,%r15,8), %rbx
	jmp	.LBB9_33
.LBB9_23:
	movl	$1, %ebx
.Ltmp52:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.5(%rip), %rdx
	movl	$17, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp53:
	jmp	.LBB9_138
.LBB9_34:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$11, 8(%rbp)
	leaq	.L.str.6(%rip), %rcx
	movq	%rcx, 16(%rbp)
.Ltmp55:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	8(%rbp), %rcx
	movq	%r14, %rdx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp56:
# %bb.35:
.Ltmp57:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	movl	$1, %r15d
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp58:
# %bb.36:
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r14
	jmp	.LBB9_37
	.p2align	4
.LBB9_42:                               #   in Loop: Header=BB9_37 Depth=1
	movq	(%rsi,%r15,8), %rcx
.LBB9_43:                               #   in Loop: Header=BB9_37 Depth=1
	addq	%rax, %rbx
	addq	%rcx, %rbx
	addq	$2, %r15
	cmpq	$16000001, %r15                 # imm = 0xF42401
	je	.LBB9_44
.LBB9_37:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%rdi,%r15)
	je	.LBB9_38
# %bb.39:                               #   in Loop: Header=BB9_37 Depth=1
	movq	-8(%rsi,%r15,8), %rax
	cmpb	$0, (%rdi,%r15)
	jne	.LBB9_42
	jmp	.LBB9_41
	.p2align	4
.LBB9_38:                               #   in Loop: Header=BB9_37 Depth=1
	xorl	%eax, %eax
	cmpb	$0, (%rdi,%r15)
	jne	.LBB9_42
.LBB9_41:                               #   in Loop: Header=BB9_37 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB9_43
.LBB9_44:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$11, 24(%rbp)
	leaq	.L.str.8(%rip), %rcx
	movq	%rcx, 32(%rbp)
.Ltmp60:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	24(%rbp), %rcx
	movq	%r14, %rdx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp61:
# %bb.45:
.Ltmp62:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp63:
# %bb.46:
	movl	$4, %r15d
	xorl	%r14d, %r14d
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rbx
	.p2align	4
.LBB9_47:                               # =>This Inner Loop Header: Depth=1
	movzbl	-4(%rdi,%r15), %eax
	imulq	-32(%rsi,%r15,8), %rax
	movzbl	-3(%rdi,%r15), %ecx
	imulq	-24(%rsi,%r15,8), %rcx
	addq	%r14, %rax
	movzbl	-2(%rdi,%r15), %edx
	imulq	-16(%rsi,%r15,8), %rdx
	addq	%rcx, %rdx
	movzbl	-1(%rdi,%r15), %ecx
	imulq	-8(%rsi,%r15,8), %rcx
	addq	%rax, %rdx
	movzbl	(%rdi,%r15), %r14d
	imulq	(%rsi,%r15,8), %r14
	addq	%rcx, %r14
	addq	%rdx, %r14
	addq	$5, %r15
	cmpq	$16000004, %r15                 # imm = 0xF42404
	jne	.LBB9_47
# %bb.48:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$8, 40(%rbp)
	leaq	.L.str.9(%rip), %r13
	movq	%r13, 48(%rbp)
.Ltmp65:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	40(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	%r14, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp66:
# %bb.49:
.Ltmp67:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp68:
# %bb.50:
.Ltmp69:
	callq	_Z11printModulov
.Ltmp70:
# %bb.51:
.Ltmp71:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.10(%rip), %rdx
	movl	$80, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp72:
# %bb.52:
	movl	$1, %ecx
	movq	-40(%rbp), %r15
	xorl	%eax, %eax
	jmp	.LBB9_53
	.p2align	4
.LBB9_57:                               #   in Loop: Header=BB9_53 Depth=1
	addq	$2, %rcx
	cmpq	$16000001, %rcx                 # imm = 0xF42401
	je	.LBB9_58
.LBB9_53:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%r15,%rcx)
	je	.LBB9_55
# %bb.54:                               #   in Loop: Header=BB9_53 Depth=1
	addq	-8(%rsi,%rcx,8), %rax
.LBB9_55:                               #   in Loop: Header=BB9_53 Depth=1
	cmpb	$0, (%r15,%rcx)
	je	.LBB9_57
# %bb.56:                               #   in Loop: Header=BB9_53 Depth=1
	addq	(%rsi,%rcx,8), %rax
	jmp	.LBB9_57
.LBB9_58:
	movl	$1, %edx
	xorl	%ecx, %ecx
	jmp	.LBB9_59
	.p2align	4
.LBB9_64:                               #   in Loop: Header=BB9_59 Depth=1
	movq	(%rsi,%rdx,8), %r9
.LBB9_65:                               #   in Loop: Header=BB9_59 Depth=1
	addq	%r8, %rcx
	addq	%r9, %rcx
	addq	$2, %rdx
	cmpq	$16000001, %rdx                 # imm = 0xF42401
	je	.LBB9_66
.LBB9_59:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%r15,%rdx)
	je	.LBB9_60
# %bb.61:                               #   in Loop: Header=BB9_59 Depth=1
	movq	-8(%rsi,%rdx,8), %r8
	cmpb	$0, (%r15,%rdx)
	jne	.LBB9_64
	jmp	.LBB9_63
	.p2align	4
.LBB9_60:                               #   in Loop: Header=BB9_59 Depth=1
	xorl	%r8d, %r8d
	cmpb	$0, (%r15,%rdx)
	jne	.LBB9_64
.LBB9_63:                               #   in Loop: Header=BB9_59 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB9_65
.LBB9_66:
	movl	$4, %edx
	xorl	%r8d, %r8d
	.p2align	4
.LBB9_67:                               # =>This Inner Loop Header: Depth=1
	movzbl	-4(%r15,%rdx), %r9d
	imulq	-32(%rsi,%rdx,8), %r9
	movzbl	-3(%r15,%rdx), %r10d
	imulq	-24(%rsi,%rdx,8), %r10
	addq	%r8, %r9
	movzbl	-2(%r15,%rdx), %r11d
	imulq	-16(%rsi,%rdx,8), %r11
	addq	%r10, %r11
	movzbl	-1(%r15,%rdx), %r10d
	imulq	-8(%rsi,%rdx,8), %r10
	addq	%r9, %r11
	movzbl	(%r15,%rdx), %r8d
	imulq	(%rsi,%rdx,8), %r8
	addq	%r10, %r8
	addq	%r11, %r8
	addq	$5, %rdx
	cmpq	$16000004, %rdx                 # imm = 0xF42404
	jne	.LBB9_67
# %bb.68:
	cmpq	%rcx, %rax
	jne	.LBB9_115
# %bb.69:
	cmpq	%r8, %rax
	jne	.LBB9_115
# %bb.70:
	movl	$1, %r12d
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r14
	jmp	.LBB9_71
	.p2align	4
.LBB9_75:                               #   in Loop: Header=BB9_71 Depth=1
	addq	$2, %r12
	cmpq	$16000001, %r12                 # imm = 0xF42401
	je	.LBB9_76
.LBB9_71:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%r15,%r12)
	je	.LBB9_73
# %bb.72:                               #   in Loop: Header=BB9_71 Depth=1
	addq	-8(%rsi,%r12,8), %rbx
.LBB9_73:                               #   in Loop: Header=BB9_71 Depth=1
	cmpb	$0, (%r15,%r12)
	je	.LBB9_75
# %bb.74:                               #   in Loop: Header=BB9_71 Depth=1
	addq	(%rsi,%r12,8), %rbx
	jmp	.LBB9_75
.LBB9_76:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$11, 56(%rbp)
	leaq	.L.str.6(%rip), %rcx
	movq	%rcx, 64(%rbp)
.Ltmp73:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	56(%rbp), %rcx
	movq	%r14, %rdx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp74:
# %bb.77:
.Ltmp75:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	movl	$1, %r12d
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp76:
# %bb.78:
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r14
	jmp	.LBB9_79
	.p2align	4
.LBB9_87:                               #   in Loop: Header=BB9_79 Depth=1
	movq	(%rsi,%r12,8), %rcx
.LBB9_88:                               #   in Loop: Header=BB9_79 Depth=1
	addq	%rax, %rbx
	addq	%rcx, %rbx
	addq	$2, %r12
	cmpq	$16000001, %r12                 # imm = 0xF42401
	je	.LBB9_89
.LBB9_79:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%r15,%r12)
	je	.LBB9_80
# %bb.84:                               #   in Loop: Header=BB9_79 Depth=1
	movq	-8(%rsi,%r12,8), %rax
	cmpb	$0, (%r15,%r12)
	jne	.LBB9_87
	jmp	.LBB9_86
	.p2align	4
.LBB9_80:                               #   in Loop: Header=BB9_79 Depth=1
	xorl	%eax, %eax
	cmpb	$0, (%r15,%r12)
	jne	.LBB9_87
.LBB9_86:                               #   in Loop: Header=BB9_79 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB9_88
.LBB9_89:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$11, 72(%rbp)
	leaq	.L.str.8(%rip), %rcx
	movq	%rcx, 80(%rbp)
.Ltmp77:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	72(%rbp), %rcx
	movq	%r14, %rdx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp78:
# %bb.90:
.Ltmp79:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp80:
# %bb.91:
	movl	$4, %r12d
	xorl	%r14d, %r14d
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rbx
	.p2align	4
.LBB9_92:                               # =>This Inner Loop Header: Depth=1
	movzbl	-4(%r15,%r12), %eax
	imulq	-32(%rsi,%r12,8), %rax
	movzbl	-3(%r15,%r12), %ecx
	imulq	-24(%rsi,%r12,8), %rcx
	addq	%r14, %rax
	movzbl	-2(%r15,%r12), %edx
	imulq	-16(%rsi,%r12,8), %rdx
	addq	%rcx, %rdx
	movzbl	-1(%r15,%r12), %ecx
	imulq	-8(%rsi,%r12,8), %rcx
	addq	%rax, %rdx
	movzbl	(%r15,%r12), %r14d
	imulq	(%rsi,%r12,8), %r14
	addq	%rcx, %r14
	addq	%rdx, %r14
	addq	$5, %r12
	cmpq	$16000004, %r12                 # imm = 0xF42404
	jne	.LBB9_92
# %bb.93:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$8, 88(%rbp)
	movq	%r13, 96(%rbp)
.Ltmp81:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	88(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	%r14, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp82:
# %bb.94:
.Ltmp83:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp84:
# %bb.95:
.Ltmp85:
	callq	_Z11printModulov
.Ltmp86:
# %bb.96:
.Ltmp87:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.11(%rip), %rdx
	movl	$80, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp88:
# %bb.97:
	movl	$1, %ecx
	movq	-16(%rbp), %r15
	xorl	%eax, %eax
	jmp	.LBB9_98
	.p2align	4
.LBB9_102:                              #   in Loop: Header=BB9_98 Depth=1
	addq	$2, %rcx
	cmpq	$16000001, %rcx                 # imm = 0xF42401
	je	.LBB9_103
.LBB9_98:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%r15,%rcx)
	je	.LBB9_100
# %bb.99:                               #   in Loop: Header=BB9_98 Depth=1
	addq	-8(%rsi,%rcx,8), %rax
.LBB9_100:                              #   in Loop: Header=BB9_98 Depth=1
	cmpb	$0, (%r15,%rcx)
	je	.LBB9_102
# %bb.101:                              #   in Loop: Header=BB9_98 Depth=1
	addq	(%rsi,%rcx,8), %rax
	jmp	.LBB9_102
.LBB9_103:
	movl	$1, %edx
	xorl	%ecx, %ecx
	jmp	.LBB9_104
	.p2align	4
.LBB9_108:                              #   in Loop: Header=BB9_104 Depth=1
	xorl	%r9d, %r9d
.LBB9_110:                              #   in Loop: Header=BB9_104 Depth=1
	addq	%r8, %rcx
	addq	%r9, %rcx
	addq	$2, %rdx
	cmpq	$16000001, %rdx                 # imm = 0xF42401
	je	.LBB9_111
.LBB9_104:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%r15,%rdx)
	je	.LBB9_105
# %bb.106:                              #   in Loop: Header=BB9_104 Depth=1
	movq	-8(%rsi,%rdx,8), %r8
	cmpb	$0, (%r15,%rdx)
	jne	.LBB9_109
	jmp	.LBB9_108
	.p2align	4
.LBB9_105:                              #   in Loop: Header=BB9_104 Depth=1
	xorl	%r8d, %r8d
	cmpb	$0, (%r15,%rdx)
	je	.LBB9_108
.LBB9_109:                              #   in Loop: Header=BB9_104 Depth=1
	movq	(%rsi,%rdx,8), %r9
	jmp	.LBB9_110
.LBB9_111:
	movl	$4, %edx
	xorl	%r8d, %r8d
	.p2align	4
.LBB9_112:                              # =>This Inner Loop Header: Depth=1
	movzbl	-4(%r15,%rdx), %r9d
	imulq	-32(%rsi,%rdx,8), %r9
	movzbl	-3(%r15,%rdx), %r10d
	imulq	-24(%rsi,%rdx,8), %r10
	addq	%r8, %r9
	movzbl	-2(%r15,%rdx), %r11d
	imulq	-16(%rsi,%rdx,8), %r11
	addq	%r10, %r11
	movzbl	-1(%r15,%rdx), %r10d
	imulq	-8(%rsi,%rdx,8), %r10
	addq	%r9, %r11
	movzbl	(%r15,%rdx), %r8d
	imulq	(%rsi,%rdx,8), %r8
	addq	%r10, %r8
	addq	%r11, %r8
	addq	$5, %rdx
	cmpq	$16000004, %rdx                 # imm = 0xF42404
	jne	.LBB9_112
# %bb.113:
	cmpq	%rcx, %rax
	jne	.LBB9_115
# %bb.114:
	cmpq	%r8, %rax
	jne	.LBB9_115
# %bb.116:
	movl	$1, %r12d
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r14
	jmp	.LBB9_117
	.p2align	4
.LBB9_121:                              #   in Loop: Header=BB9_117 Depth=1
	addq	$2, %r12
	cmpq	$16000001, %r12                 # imm = 0xF42401
	je	.LBB9_122
.LBB9_117:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%r15,%r12)
	je	.LBB9_119
# %bb.118:                              #   in Loop: Header=BB9_117 Depth=1
	addq	-8(%rsi,%r12,8), %rbx
.LBB9_119:                              #   in Loop: Header=BB9_117 Depth=1
	cmpb	$0, (%r15,%r12)
	je	.LBB9_121
# %bb.120:                              #   in Loop: Header=BB9_117 Depth=1
	addq	(%rsi,%r12,8), %rbx
	jmp	.LBB9_121
.LBB9_115:
	movl	$1, %ebx
.Ltmp89:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.5(%rip), %rdx
	movl	$17, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp90:
	jmp	.LBB9_138
.LBB9_122:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$11, 104(%rbp)
	leaq	.L.str.6(%rip), %rcx
	movq	%rcx, 112(%rbp)
.Ltmp91:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	104(%rbp), %rcx
	movq	%r14, %rdx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp92:
# %bb.123:
.Ltmp93:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	movl	$1, %r12d
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp94:
# %bb.124:
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %r14
	jmp	.LBB9_125
	.p2align	4
.LBB9_130:                              #   in Loop: Header=BB9_125 Depth=1
	movq	(%rsi,%r12,8), %rcx
.LBB9_131:                              #   in Loop: Header=BB9_125 Depth=1
	addq	%rax, %rbx
	addq	%rcx, %rbx
	addq	$2, %r12
	cmpq	$16000001, %r12                 # imm = 0xF42401
	je	.LBB9_132
.LBB9_125:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%r15,%r12)
	je	.LBB9_126
# %bb.127:                              #   in Loop: Header=BB9_125 Depth=1
	movq	-8(%rsi,%r12,8), %rax
	cmpb	$0, (%r15,%r12)
	jne	.LBB9_130
	jmp	.LBB9_129
	.p2align	4
.LBB9_126:                              #   in Loop: Header=BB9_125 Depth=1
	xorl	%eax, %eax
	cmpb	$0, (%r15,%r12)
	jne	.LBB9_130
.LBB9_129:                              #   in Loop: Header=BB9_125 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB9_131
.LBB9_132:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$11, 120(%rbp)
	leaq	.L.str.8(%rip), %rcx
	movq	%rcx, 128(%rbp)
.Ltmp95:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	120(%rbp), %rcx
	movq	%r14, %rdx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp96:
# %bb.133:
.Ltmp97:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp98:
# %bb.134:
	movl	$4, %r12d
	xorl	%r14d, %r14d
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	%rax, %rbx
	.p2align	4
.LBB9_135:                              # =>This Inner Loop Header: Depth=1
	movzbl	-4(%r15,%r12), %eax
	imulq	-32(%rsi,%r12,8), %rax
	movzbl	-3(%r15,%r12), %ecx
	imulq	-24(%rsi,%r12,8), %rcx
	addq	%r14, %rax
	movzbl	-2(%r15,%r12), %edx
	imulq	-16(%rsi,%r12,8), %rdx
	addq	%rcx, %rdx
	movzbl	-1(%r15,%r12), %ecx
	imulq	-8(%rsi,%r12,8), %rcx
	addq	%rax, %rdx
	movzbl	(%r15,%r12), %r14d
	imulq	(%rsi,%r12,8), %r14
	addq	%rcx, %r14
	addq	%rdx, %r14
	addq	$5, %r12
	cmpq	$16000004, %r12                 # imm = 0xF42404
	jne	.LBB9_135
# %bb.136:
	callq	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	$8, 136(%rbp)
	movq	%r13, 144(%rbp)
.Ltmp99:
	movq	$16000000, 32(%rsp)             # imm = 0xF42400
	leaq	136(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	%r14, %r9
	callq	_Z10printStatsSt17basic_string_viewIcSt11char_traitsIcEENSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIxSt5ratioILx1ELx1000000000EEEEEESB_yy
.Ltmp100:
# %bb.137:
	xorl	%ebx, %ebx
.Ltmp101:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.L.str.7(%rip), %rdx
	movl	$1, %r8d
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.Ltmp102:
.LBB9_138:
	movq	-16(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB9_140
# %bb.139:
	callq	_ZdlPv
.LBB9_140:
	movq	-40(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB9_142
# %bb.141:
	callq	_ZdlPv
.LBB9_142:
	testq	%rdi, %rdi
	je	.LBB9_144
# %bb.143:
	movq	%rdi, %rcx
	callq	_ZdlPv
.LBB9_144:
	movq	%rsi, %rcx
	callq	_ZdlPv
	movl	%ebx, %eax
	addq	$280, %rsp                      # imm = 0x118
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_27:
.Ltmp54:
	jmp	.LBB9_146
.LBB9_82:
.Ltmp64:
	jmp	.LBB9_146
.LBB9_81:
.Ltmp59:
	jmp	.LBB9_146
.LBB9_26:
.Ltmp46:
	movq	%rax, %rsi
	jmp	.LBB9_148
.LBB9_25:
.Ltmp43:
	movq	%rax, %rsi
	jmp	.LBB9_150
.LBB9_24:
.Ltmp40:
	movq	%rax, %rsi
	jmp	.LBB9_152
.LBB9_145:
.Ltmp51:
	jmp	.LBB9_146
.LBB9_83:
.Ltmp103:
.LBB9_146:
	movq	%rax, %rsi
	movq	-16(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB9_148
# %bb.147:
	callq	_ZdlPv
.LBB9_148:
	movq	-40(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB9_150
# %bb.149:
	callq	_ZdlPv
.LBB9_150:
	movq	-64(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB9_152
# %bb.151:
	callq	_ZdlPv
.LBB9_152:
	movq	-88(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB9_154
# %bb.153:
	callq	_ZdlPv
.LBB9_154:
	movq	%rsi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end3:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table9:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp38-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin3          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin3          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin3          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp50-.Ltmp47                #   Call between .Ltmp47 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin3          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin3          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp58-.Ltmp55                #   Call between .Ltmp55 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin3          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp63-.Ltmp60                #   Call between .Ltmp60 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin3          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp102-.Ltmp65               #   Call between .Ltmp65 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin3         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Lfunc_end3-.Ltmp102           #   Call between .Ltmp102 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
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
	.def	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	4, 0x0                          # -- Begin function _ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
.LCPI11_0:
	.quad	-2147483648                     # 0xffffffff80000000
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI11_1:
	.quad	2147483646                      # 0x7ffffffe
	.quad	2147483646                      # 0x7ffffffe
.LCPI11_2:
	.quad	-5403634167711393303            # 0xb5026f5aa96619e9
	.quad	-5403634167711393303            # 0xb5026f5aa96619e9
	.section	.text$_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv,"xr",discard,_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
	.globl	_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
	.p2align	4
_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv: # @_ZNSt23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEclEv
# %bb.0:
	movq	2496(%rcx), %rax
	cmpq	$312, %rax                      # imm = 0x138
	jb	.LBB11_6
# %bb.1:
	movq	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	pshufd	$68, %xmm0, %xmm3               # xmm3 = xmm0[0,1,0,1]
	xorl	%eax, %eax
	movaps	.LCPI11_0(%rip), %xmm0          # xmm0 = [18446744071562067968,18446744071562067968]
	movaps	.LCPI11_1(%rip), %xmm1          # xmm1 = [2147483646,2147483646]
	movdqa	.LCPI11_2(%rip), %xmm2          # xmm2 = [13043109905998158313,13043109905998158313]
	.p2align	4
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movups	8(%rcx,%rax,8), %xmm4
	shufps	$78, %xmm4, %xmm3               # xmm3 = xmm3[2,3],xmm4[0,1]
	andps	%xmm0, %xmm3
	movaps	%xmm4, %xmm5
	andps	%xmm1, %xmm5
	orps	%xmm3, %xmm5
	movdqu	1248(%rcx,%rax,8), %xmm3
	psrlq	$1, %xmm5
	pxor	%xmm3, %xmm5
	pshufd	$160, %xmm4, %xmm3              # xmm3 = xmm4[0,0,2,2]
	pslld	$31, %xmm3
	psrad	$31, %xmm3
	pand	%xmm2, %xmm3
	pxor	%xmm5, %xmm3
	movdqu	%xmm3, (%rcx,%rax,8)
	addq	$2, %rax
	movdqa	%xmm4, %xmm3
	cmpq	$156, %rax
	jne	.LBB11_2
# %bb.3:
	movq	1248(%rcx), %xmm3               # xmm3 = mem[0],zero
	pshufd	$68, %xmm3, %xmm3               # xmm3 = xmm3[0,1,0,1]
	movl	$157, %eax
	.p2align	4
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm4
	movups	(%rcx,%rax,8), %xmm3
	shufps	$78, %xmm3, %xmm4               # xmm4 = xmm4[2,3],xmm3[0,1]
	andps	%xmm0, %xmm4
	movaps	%xmm3, %xmm5
	andps	%xmm1, %xmm5
	orps	%xmm4, %xmm5
	movdqu	-1256(%rcx,%rax,8), %xmm4
	psrlq	$1, %xmm5
	pxor	%xmm4, %xmm5
	pshufd	$160, %xmm3, %xmm4              # xmm4 = xmm3[0,0,2,2]
	pslld	$31, %xmm4
	psrad	$31, %xmm4
	pand	%xmm2, %xmm4
	pxor	%xmm5, %xmm4
	movdqu	%xmm4, -8(%rcx,%rax,8)
	addq	$2, %rax
	cmpq	$311, %rax                      # imm = 0x137
	jne	.LBB11_4
# %bb.5:
	pshufd	$238, %xmm3, %xmm0              # xmm0 = xmm3[2,3,2,3]
	movq	%xmm0, %rax
	andq	$-2147483648, %rax              # imm = 0x80000000
	movq	2488(%rcx), %rdx
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	orq	%rax, %r8
	shrq	%r8
	xorq	1232(%rcx), %r8
	movl	%edx, %eax
	andl	$1, %eax
	negq	%rax
	movabsq	$-5403634167711393303, %r9      # imm = 0xB5026F5AA96619E9
	andq	%r9, %rax
	xorq	%r8, %rax
	movq	%rax, 2480(%rcx)
	andq	$-2147483648, %rdx              # imm = 0x80000000
	movq	(%rcx), %rax
	movl	%eax, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	orq	%rdx, %r8
	shrq	%r8
	xorq	1240(%rcx), %r8
	andl	$1, %eax
	negq	%rax
	andq	%r9, %rax
	xorq	%r8, %rax
	movq	%rax, 2488(%rcx)
	xorl	%eax, %eax
.LBB11_6:
	leaq	1(%rax), %rdx
	movq	%rdx, 2496(%rcx)
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rcx
	shrq	$29, %rcx
	movabsq	$22906492245, %rdx              # imm = 0x555555555
	andq	%rcx, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	shlq	$17, %rax
	movabsq	$8202884508482404352, %rcx      # imm = 0x71D67FFFEDA60000
	andq	%rax, %rcx
	xorq	%rdx, %rcx
	movl	%ecx, %edx
	andl	$134201207, %edx                # imm = 0x7FFBF77
	shlq	$37, %rdx
	xorq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$43, %rax
	xorq	%rdx, %rax
	retq
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
	.asciz	"------------------------------------- 99% -------------------------------------\n"

.L.str.5:                               # @.str.5
	.asciz	"Results mismatch\n"

.L.str.6:                               # @.str.6
	.asciz	"SUM BRANCHY"

.L.str.7:                               # @.str.7
	.asciz	"\n"

.L.str.8:                               # @.str.8
	.asciz	"SUM TERNARY"

.L.str.9:                               # @.str.9
	.asciz	"SUM MASK"

.L.str.10:                              # @.str.10
	.asciz	"------------------------------------- 90% -------------------------------------\n"

.L.str.11:                              # @.str.11
	.asciz	"------------------------------------- 50% -------------------------------------\n"

.L.str.12:                              # @.str.12
	.asciz	"vector::reserve"

.L.str.13:                              # @.str.13
	.asciz	"vector::_M_realloc_append"

	.section	.drectve,"yni"
	.ascii	" -exclude-symbols:__clang_call_terminate"
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
