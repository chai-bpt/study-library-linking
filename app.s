	.file	"app.c"
	.text
	.section	.rodata
.LC0:
	.string	"\n%s"
.LC1:
	.string	"./libMulDiv.so"
	.align 8
.LC2:
	.string	"\n%s\tFail to load libMulDiv.so\n"
.LC3:
	.string	"\n%s\thandleMulDiv = 0x%x"
.LC4:
	.string	"mul"
.LC5:
	.string	"div"
.LC6:
	.string	"\n%s\tmul = 0x%x"
.LC7:
	.string	"\n%s\tdiv = 0x%x"
.LC8:
	.string	"\n%s\tnum1 = %d"
.LC9:
	.string	"\n%s\tnum2 = %d"
.LC10:
	.string	"\n%s\tdivval = %d"
.LC11:
	.string	"\n%s\tmulval = %d"
.LC12:
	.string	"./libAddSub.so"
	.align 8
.LC13:
	.string	"\n%s\tFail to load libAddSub.so\n"
.LC14:
	.string	"\n%s\thandleAddSub = 0x%x"
.LC15:
	.string	"add"
.LC16:
	.string	"sub"
.LC17:
	.string	"\n%s\tadd = 0x%x"
.LC18:
	.string	"\n%s\tsub = 0x%x"
.LC19:
	.string	"\n%s\tsum = %d"
.LC20:
	.string	"\n%s\tnum1 address = 0x%x"
.LC21:
	.string	"\n%s\tnum2 address = 0x%x"
.LC22:
	.string	"\n%s\tdiff address = 0x%x"
.LC23:
	.string	"\n%s\tdiff = %d"
.LC24:
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
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$3, -84(%rbp)
	movl	$1, -80(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	dlopen@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L2
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-1, %edi
	call	exit@PLT
.L2:
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	dlsym@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	dlsym@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-80(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%edx, %esi
	movl	%eax, %edi
	call	*%rcx
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%edx, %esi
	movl	%eax, %edi
	call	*%rcx
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	dlclose@PLT
	movl	$2, %esi
	leaq	.LC12(%rip), %rdi
	call	dlopen@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L3
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-1, %edi
	call	exit@PLT
.L3:
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	dlsym@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	dlsym@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-80(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-72(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movl	%eax, %edi
	call	*%rcx
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-84(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-76(%rbp), %rax
	movq	%rax, %rdx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-84(%rbp), %rax
	movq	-16(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	dlclose@PLT
	leaq	__func__.2865(%rip), %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.type	__func__.2865, @object
	.size	__func__.2865, 5
__func__.2865:
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
