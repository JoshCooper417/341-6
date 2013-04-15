	.align 4
	.data
__const_str2:
	.ascii "Object\0"
__Object_vtable1:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh8:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $340, %esp
__fresh5:
	leal -340(%ebp), %eax
	movl %eax, -324(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -324(%ebp), %eax
	movl %ecx, (%eax)
	leal -336(%ebp), %eax
	movl %eax, -320(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -320(%ebp), %eax
	movl %ecx, (%eax)
	leal -332(%ebp), %eax
	movl %eax, -316(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -316(%ebp), %eax
	movl %ecx, (%eax)
	leal -328(%ebp), %eax
	movl %eax, -312(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	movl -312(%ebp), %eax
	movl %ecx, (%eax)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -308(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -304(%ebp)
	movl -308(%ebp), %eax
	movl %eax, -300(%ebp)
	movl -304(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -300(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -300(%ebp), %eax
	movl %eax, -292(%ebp)
	movl -296(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -292(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -288(%ebp)
	movl -292(%ebp), %eax
	movl %eax, -284(%ebp)
	movl -288(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -284(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -284(%ebp), %eax
	movl %eax, -276(%ebp)
	movl -280(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -276(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -272(%ebp)
	movl -276(%ebp), %eax
	movl %eax, -268(%ebp)
	movl -272(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -268(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	movl -268(%ebp), %eax
	movl %eax, -260(%ebp)
	movl -264(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -260(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -256(%ebp)
	movl -260(%ebp), %eax
	movl %eax, -252(%ebp)
	movl -256(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -252(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl -252(%ebp), %eax
	movl %eax, -244(%ebp)
	movl -248(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -244(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -240(%ebp)
	movl -244(%ebp), %eax
	movl %eax, -236(%ebp)
	movl -240(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -236(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -236(%ebp), %eax
	movl %eax, -228(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -228(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	movl -228(%ebp), %eax
	movl %eax, -220(%ebp)
	movl -224(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -220(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -220(%ebp), %eax
	movl %eax, -212(%ebp)
	movl -216(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -212(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -212(%ebp), %eax
	movl %eax, -204(%ebp)
	movl -208(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -204(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -204(%ebp), %eax
	movl %eax, -196(%ebp)
	movl -200(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -196(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -196(%ebp), %eax
	movl %eax, -188(%ebp)
	movl -192(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -188(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -188(%ebp), %eax
	movl %eax, -180(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -180(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -180(%ebp), %eax
	movl %eax, -172(%ebp)
	movl -176(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -172(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -172(%ebp), %eax
	movl %eax, -164(%ebp)
	movl -168(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -164(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -164(%ebp), %eax
	movl %eax, -156(%ebp)
	movl -160(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -156(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -156(%ebp), %eax
	movl %eax, -148(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -148(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -140(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -140(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -132(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -132(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -132(%ebp), %eax
	movl %eax, -124(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -124(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -124(%ebp), %eax
	movl %eax, -116(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -116(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -116(%ebp), %eax
	movl %eax, -108(%ebp)
	movl -112(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -108(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -108(%ebp), %eax
	movl %eax, -100(%ebp)
	movl -104(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -100(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -100(%ebp), %eax
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -92(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -92(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -84(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -84(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -76(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -68(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -68(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -60(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -60(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -52(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -44(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -36(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -36(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -28(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -20(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -12(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then4
	jmp __else3
__fresh6:
	jmp __then4
__then4:
	movl $7, %eax
	movl %eax, %ecx
	movl -312(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge2
__fresh7:
	jmp __else3
__else3:
	jmp __merge2
__merge2:
	movl $4, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh1:
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
__fresh0:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str2, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
