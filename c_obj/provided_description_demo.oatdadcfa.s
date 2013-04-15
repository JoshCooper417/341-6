	.align 4
	.data
__const_str696:
	.ascii "This dog is stray!\0"
__const_str695:
	.ascii "Timmy\0"
__const_str694:
	.ascii "This dog is owned by \0"
__const_str693:
	.ascii "Example Cow\0"
__const_str692:
	.ascii "Spot\0"
__const_str691:
	.ascii "moo\0"
__const_str690:
	.ascii "Cow\0"
__const_str689:
	.ascii "arf\0"
__const_str688:
	.ascii "Dog\0"
__const_str687:
	.ascii "???\0"
__const_str686:
	.ascii "???\0"
__const_str685:
	.ascii "Animal\0"
__const_str684:
	.ascii "Object\0"
__Cow_vtable683:
	.long __Animal_vtable681
	.long __Object_get_name
	.long __Cow_noise

__Dog_vtable682:
	.long __Animal_vtable681
	.long __Object_get_name
	.long __Dog_noise

__Animal_vtable681:
	.long __Object_vtable680
	.long __Object_get_name
	.long __Animal_noise

__Object_vtable680:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1899:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $208, %esp
__fresh1892:
	leal -200(%ebp), %eax
	movl %eax, -120(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	movl %ecx, (%eax)
	leal -196(%ebp), %eax
	movl %eax, -116(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	movl $16, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -112(%ebp)
	addl $4, %esp
	movl -112(%ebp), %eax
	movl %eax, -108(%ebp)
	movl $__const_str692, %eax
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	call __Dog_ctor
	movl %eax, -104(%ebp)
	addl $8, %esp
	movl -104(%ebp), %eax
	movl %eax, -100(%ebp)
	leal -192(%ebp), %eax
	movl %eax, -96(%ebp)
	movl -100(%ebp), %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	movl %ecx, (%eax)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -92(%ebp)
	addl $4, %esp
	movl -92(%ebp), %eax
	movl %eax, -88(%ebp)
	movl $__const_str693, %eax
	pushl %eax
	movl -88(%ebp), %eax
	pushl %eax
	call __Cow_ctor
	movl %eax, -84(%ebp)
	addl $8, %esp
	movl -84(%ebp), %eax
	movl %eax, -80(%ebp)
	leal -188(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	addl $8, %eax
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
	movl -52(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	addl $8, %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -48(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	call *%eax
	movl %eax, -28(%ebp)
	addl $4, %esp
	movl -28(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $__Dog_vtable682, %eax
	movl %eax, -12(%ebp)
	leal -184(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __loop1888
__loop1888:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	cmpl %eax, %ecx
	setE -124(%ebp)
	andl $1, -124(%ebp)
	movl -124(%ebp), %eax
	cmpl $0, %eax
	jNE __then1885
	jmp __fall11887
__fresh1893:
	jmp __fall11887
__fall11887:
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -132(%ebp)
	andl $1, -132(%ebp)
	movl -132(%ebp), %eax
	cmpl $0, %eax
	jNE __else1884
	jmp __fall21886
__fresh1894:
	jmp __fall21886
__fall21886:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	movl %eax, -140(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __loop1888
__fresh1895:
	jmp __then1885
__then1885:
	leal -208(%ebp), %eax
	movl %eax, -168(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -168(%ebp), %eax
	movl %ecx, (%eax)
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -164(%ebp), %eax
	addl $12, %eax
	movl %eax, -160(%ebp)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	leal -204(%ebp), %eax
	movl %eax, -152(%ebp)
	movl -156(%ebp), %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	movl %ecx, (%eax)
	movl -156(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -148(%ebp)
	andl $1, -148(%ebp)
	movl -148(%ebp), %eax
	cmpl $0, %eax
	jNE __then1891
	jmp __else1890
__fresh1896:
	jmp __then1891
__then1891:
	movl $__const_str694, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -172(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	jmp __merge1889
__fresh1897:
	jmp __else1890
__else1890:
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	addl $12, %eax
	movl %eax, -176(%ebp)
	movl $__const_str695, %eax
	movl %eax, %ecx
	movl -176(%ebp), %eax
	movl %ecx, (%eax)
	movl $__const_str696, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	jmp __merge1889
__merge1889:
	jmp __done1883
__fresh1898:
	jmp __else1884
__else1884:
	jmp __done1883
__done1883:
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Cow_noise
__Cow_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1882:
	movl $__const_str691, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Cow_ctor
__Cow_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh1881:
	leal -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	pushl %eax
	call __Animal_ctor
	movl %eax, -12(%ebp)
	addl $8, %esp
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str690, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Cow_vtable683, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Dog_noise
__Dog_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1880:
	movl $__const_str689, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Dog_ctor
__Dog_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh1879:
	leal -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	pushl %eax
	call __Animal_ctor
	movl %eax, -12(%ebp)
	addl $8, %esp
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str688, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Dog_vtable682, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Animal_noise
__Animal_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1878:
	movl $__const_str686, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	movl $__const_str687, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Animal_ctor
__Animal_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $32, %esp
__fresh1877:
	leal -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
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
	movl $__const_str685, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Animal_vtable681, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
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
__fresh1876:
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
__fresh1875:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str684, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable680, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
