	.file	"main2.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	input
	.type	input, @function
input:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12			#r12 = int *a
	pushq	%r13			#r13 = int N
	pushq	%r14			#r14 = int i
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12		#int *a
	movq	%rsi, %r13		#int N
	movq	$0, %r14		#int i = 0
	jmp	.L2
.L3:
	movq	%r14, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addq	$1, %r14
.L2:
	movq	%r14, %rax
	cmpq	%r13, %rax
	jl	.L3
	nop
	movq	%rbp, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	input, .-input
	.globl	f1
	.type	f1, @function
f1:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12			#r12 = int *a
	pushq	%r13			#r13 = int *b
	pushq	%r14			#r14 = int N
	pushq	%r15			#r15 = count
	pushq	%rbx			#rbx = int i
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12		#int *a
	movq	%rsi, %r13		#int *b
	movq	%rdx, %r14		#int N
	movq	$0, %r15		#count = 0
	movq	$0, %rbx		#int i = 0
	jmp	.L5
.L7:
	movq	%rbx, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L6
	movq	%rbx, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movq	%r15, %rdx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	%r13, %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addq	$1, %r15
.L6:
	addq	$1, %rbx
.L5:
	movq	%rbx, %rax
	cmpq	%r14, %rax
	jl	.L7
	movq	%r15, %rax		#return count
	movq	%rbp, %rsp
	popq	%rbx
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	f1, .-f1
	.section	.rodata
.LC1:
	.string	"%d "
	.text
	.globl	out
	.type	out, @function
out:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12			#r12 = int *b
	pushq	%r13			#r13 = count
	pushq	%r14			#r14 = int i
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12		#int *b
	movq	%rsi, %r13		#int count
	movq	$0, %r14		#int i = 0
	jmp	.L10
.L11:
	movq	%r14, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$1, %r14
.L10:
	movq	%r14, %rax
	cmpq	%r13, %rax
	jl	.L11
	nop
	movq	%rbp, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	out, .-out
	.globl	main
	.type	main, @function
