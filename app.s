	.file	"app.c"
	.text
	.section	.rodata
.LC0:
	.string	"\n%s"
.LC1:
	.string	"./libAddSub.so"
.LC2:
	.string	"\n%s\tFail to load libAddSub.so"
.LC3:
	.string	"\n%s\thandleAddSub = 0x%x"
.LC4:
	.string	"add"
.LC5:
	.string	"sub"
.LC6:
	.string	"\n%s\tadd = 0x%x"
.LC7:
	.string	"\n%s\tsub = 0x%x"
.LC8:
	.string	"\n%s\tnum1 = %d"
.LC9:
	.string	"\n%s\tnum2 = %d"
.LC10:
	.string	"\n%s\tsum = %d"
.LC11:
	.string	"\n%s\tnum1 address = 0x%x"
.LC12:
	.string	"\n%s\tnum2 address = 0x%x"
.LC13:
	.string	"\n%s\tdiff address = 0x%x"
.LC14:
	.string	"\n%s\tdiff = %d"
.LC15:
	.string	"\n%s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$3, -52(%rbp)
	movl	$1, -48(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -32(%rbp)
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$2, %esi
	leaq	.LC1(%rip), %rdi
	call	dlopen@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L2:
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-32(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	dlsym@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	dlsym@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movl	%eax, %edi
	call	*%rcx
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-52(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-52(%rbp), %rax
	movq	-16(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	dlclose@PLT
	leaq	__func__.2856(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.type	__func__.2856, @object
	.size	__func__.2856, 5
__func__.2856:
	.string	"main"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
