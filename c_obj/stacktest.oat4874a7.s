	.align 4
	.data
_s660:
	.long 0
__const_str659:
	.ascii "Empty Stack! Returned -1\n\0"
__const_str658:
	.ascii "Stack\0"
__const_str657:
	.ascii "Node\0"
__const_str656:
	.ascii "Object\0"
__Stack_vtable655:
	.long __Object_vtable653
	.long __Object_get_name
	.long __Stack_push
	.long __Stack_pop

__Node_vtable654:
	.long __Object_vtable653
	.long __Object_get_name
	.long __Node_setnext
	.long __Node_getitem

__Object_vtable653:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1860:
	call _s660.init661
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $356, %esp
__fresh1859:
	leal -356(%ebp), %eax
	movl %eax, -344(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -344(%ebp), %eax
	movl %ecx, (%eax)
	leal -352(%ebp), %eax
	movl %eax, -340(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -340(%ebp), %eax
	movl %ecx, (%eax)
	leal -348(%ebp), %eax
	movl %eax, -336(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -336(%ebp), %eax
	movl %ecx, (%eax)
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -332(%ebp)
	movl -332(%ebp), %eax
	addl $0, %eax
	movl %eax, -328(%ebp)
	movl -328(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -324(%ebp)
	movl -324(%ebp), %eax
	addl $8, %eax
	movl %eax, -320(%ebp)
	movl -320(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -316(%ebp)
	movl $7, %eax
	pushl %eax
	movl -332(%ebp), %eax
	pushl %eax
	movl -316(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -312(%ebp)
	movl -312(%ebp), %eax
	addl $0, %eax
	movl %eax, -308(%ebp)
	movl -308(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -304(%ebp)
	movl -304(%ebp), %eax
	addl $8, %eax
	movl %eax, -300(%ebp)
	movl -300(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl $3, %eax
	pushl %eax
	movl -312(%ebp), %eax
	pushl %eax
	movl -296(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -292(%ebp)
	movl -292(%ebp), %eax
	addl $0, %eax
	movl %eax, -288(%ebp)
	movl -288(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -284(%ebp)
	movl -284(%ebp), %eax
	addl $8, %eax
	movl %eax, -280(%ebp)
	movl -280(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -276(%ebp)
	movl $9, %eax
	pushl %eax
	movl -292(%ebp), %eax
	pushl %eax
	movl -276(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl -336(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -272(%ebp)
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -268(%ebp)
	movl -268(%ebp), %eax
	addl $0, %eax
	movl %eax, -264(%ebp)
	movl -264(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -260(%ebp)
	movl -260(%ebp), %eax
	addl $12, %eax
	movl %eax, -256(%ebp)
	movl -256(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -268(%ebp), %eax
	pushl %eax
	movl -252(%ebp), %eax
	call *%eax
	movl %eax, -248(%ebp)
	addl $4, %esp
	movl -272(%ebp), %eax
	movl %eax, -244(%ebp)
	movl -248(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -244(%ebp)
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl -336(%ebp), %eax
	movl %ecx, (%eax)
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -240(%ebp)
	movl -240(%ebp), %eax
	addl $0, %eax
	movl %eax, -236(%ebp)
	movl -236(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -232(%ebp), %eax
	addl $8, %eax
	movl %eax, -228(%ebp)
	movl -228(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	movl $3, %eax
	pushl %eax
	movl -240(%ebp), %eax
	pushl %eax
	movl -224(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	movl -220(%ebp), %eax
	addl $0, %eax
	movl %eax, -216(%ebp)
	movl -216(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	addl $8, %eax
	movl %eax, -208(%ebp)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl $17, %eax
	pushl %eax
	movl -220(%ebp), %eax
	pushl %eax
	movl -204(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -200(%ebp), %eax
	addl $0, %eax
	movl %eax, -196(%ebp)
	movl -196(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -192(%ebp), %eax
	addl $8, %eax
	movl %eax, -188(%ebp)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl $2, %eax
	pushl %eax
	movl -200(%ebp), %eax
	pushl %eax
	movl -184(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl -336(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	addl $0, %eax
	movl %eax, -172(%ebp)
	movl -172(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	addl $12, %eax
	movl %eax, -164(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -176(%ebp), %eax
	pushl %eax
	movl -160(%ebp), %eax
	call *%eax
	movl %eax, -156(%ebp)
	addl $4, %esp
	movl -180(%ebp), %eax
	movl %eax, -152(%ebp)
	movl -156(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -152(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl -336(%ebp), %eax
	movl %ecx, (%eax)
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	addl $0, %eax
	movl %eax, -144(%ebp)
	movl -144(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	addl $8, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl $1, %eax
	pushl %eax
	movl -148(%ebp), %eax
	pushl %eax
	movl -132(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	addl $0, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	addl $8, %eax
	movl %eax, -116(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl $98, %eax
	pushl %eax
	movl -128(%ebp), %eax
	pushl %eax
	movl -112(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl -336(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	addl $12, %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -104(%ebp), %eax
	pushl %eax
	movl -88(%ebp), %eax
	call *%eax
	movl %eax, -84(%ebp)
	addl $4, %esp
	movl -108(%ebp), %eax
	movl %eax, -80(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -336(%ebp), %eax
	movl %ecx, (%eax)
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	addl $8, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl $43, %eax
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	addl $8, %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl $11, %eax
	pushl %eax
	movl -56(%ebp), %eax
	pushl %eax
	movl -40(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl -336(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl $_s660, %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	addl $12, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -32(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	call *%eax
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -36(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -336(%ebp), %eax
	movl %ecx, (%eax)
	movl -336(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _s660.init661
_s660.init661:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh1858:
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __Stack_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %eax, _s660
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Stack_pop
__Stack_pop:
	pushl %ebp
	movl %esp, %ebp
	subl $88, %esp
__fresh1855:
	movl $0, %eax
	movl %eax, -24(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -24(%ebp)
	leal -84(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -80(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then1854
	jmp __else1853
__fresh1856:
	jmp __then1854
__then1854:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	addl $12, %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -72(%ebp), %eax
	pushl %eax
	movl -56(%ebp), %eax
	call *%eax
	movl %eax, -52(%ebp)
	addl $4, %esp
	leal -88(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -44(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	addl $12, %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1852
__fresh1857:
	jmp __else1853
__else1853:
	movl $__const_str659, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	jmp __merge1852
__merge1852:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Stack_push
__Stack_push:
	pushl %ebp
	movl %esp, %ebp
	subl $68, %esp
__fresh1851:
	leal -68(%ebp), %eax
	movl %eax, -60(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl $16, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -52(%ebp)
	addl $4, %esp
	movl -52(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -56(%ebp), %eax
	pushl %eax
	movl -48(%ebp), %eax
	pushl %eax
	call __Node_ctor
	movl %eax, -44(%ebp)
	addl $8, %esp
	leal -64(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -20(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Stack_ctor
__Stack_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh1850:
	movl 8(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $__const_str658, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $__Stack_vtable655, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Node_getitem
__Node_getitem:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh1849:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Node_setnext
__Node_setnext:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh1848:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Node_ctor
__Node_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
__fresh1847:
	leal -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -28(%ebp)
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -24(%ebp)
	movl $__const_str657, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl $__Node_vtable654, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh1846:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_ctor
__Object_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh1845:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str656, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable653, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
