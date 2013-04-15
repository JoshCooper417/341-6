	.align 4
	.data
_l651:
	.long 0
__const_str650:
	.ascii "failed null\0"
__const_str649:
	.ascii "failed cast\0"
__const_str648:
	.ascii "Foo\0"
__const_str647:
	.ascii "invalid list\0"
__const_str646:
	.ascii "List\0"
__const_str645:
	.ascii "ListItem\0"
__const_str644:
	.ascii "Object\0"
__Foo_vtable643:
	.long __Object_vtable640
	.long __Object_get_name
	.long __Foo_print

__List_vtable642:
	.long __Object_vtable640
	.long __Object_get_name
	.long __List_is_empty
	.long __List_insert
	.long __List_remove

__ListItem_vtable641:
	.long __Object_vtable640
	.long __Object_get_name

__Object_vtable640:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1844:
	call _l651.init652
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $176, %esp
__fresh1837:
	leal -168(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -164(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -12(%ebp)
	leal -160(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -156(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1830
__cond1830:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl $10, %eax
	cmpl %eax, %ecx
	setL -24(%ebp)
	andl $1, -24(%ebp)
	movl -24(%ebp), %eax
	cmpl $0, %eax
	jNE __body1829
	jmp __post1828
__fresh1838:
	jmp __body1829
__body1829:
	movl $_l651, %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	addl $12, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl $12, %eax
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
	call __Foo_ctor
	movl %eax, -44(%ebp)
	addl $8, %esp
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1830
__fresh1839:
	jmp __post1828
__post1828:
	movl $_l651, %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	pushl %eax
	call _printFooList
	addl $4, %esp
	movl $_l651, %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	addl $8, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	leal -172(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __then1836
	jmp __else1835
__fresh1840:
	jmp __then1836
__then1836:
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	addl $16, %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	leal -176(%ebp), %eax
	movl %eax, -112(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -108(%ebp)
	andl $1, -108(%ebp)
	movl -108(%ebp), %eax
	cmpl $0, %eax
	jNE __then1833
	jmp __else1832
__fresh1841:
	jmp __then1833
__then1833:
	movl $_l651, %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	addl $0, %eax
	movl %eax, -144(%ebp)
	movl -144(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	addl $16, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	pushl %eax
	movl -148(%ebp), %eax
	pushl %eax
	movl -132(%ebp), %eax
	call *%eax
	addl $8, %esp
	jmp __merge1831
__fresh1842:
	jmp __else1832
__else1832:
	jmp __merge1831
__merge1831:
	jmp __merge1834
__fresh1843:
	jmp __else1835
__else1835:
	jmp __merge1834
__merge1834:
	movl $_l651, %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -152(%ebp), %eax
	pushl %eax
	call _printFooList
	addl $4, %esp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _l651.init652
_l651.init652:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh1827:
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __List_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %eax, _l651
	movl %ebp, %esp
	popl %ebp
	ret
.globl _printFooList
_printFooList:
	pushl %ebp
	movl %esp, %ebp
	subl $180, %esp
__fresh1816:
	leal -164(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -16(%ebp), %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	leal -160(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1803
__cond1803:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl $0, %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -36(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -28(%ebp)
	addl $8, %esp
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -24(%ebp)
	andl $1, -24(%ebp)
	movl -24(%ebp), %eax
	cmpl $0, %eax
	jNE __body1802
	jmp __post1801
__fresh1817:
	jmp __body1802
__body1802:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	leal -168(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -44(%ebp)
	andl $1, -44(%ebp)
	movl -44(%ebp), %eax
	cmpl $0, %eax
	jNE __then1815
	jmp __else1814
__fresh1818:
	jmp __then1815
__then1815:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	addl $8, %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	leal -172(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -56(%ebp)
	andl $1, -56(%ebp)
	movl -56(%ebp), %eax
	cmpl $0, %eax
	jNE __then1812
	jmp __else1811
__fresh1819:
	jmp __then1812
__then1812:
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	movl %eax, -88(%ebp)
	movl $__Foo_vtable643, %eax
	movl %eax, -84(%ebp)
	leal -176(%ebp), %eax
	movl %eax, -80(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	jmp __loop1809
__loop1809:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	cmpl %eax, %ecx
	setE -100(%ebp)
	andl $1, -100(%ebp)
	movl -100(%ebp), %eax
	cmpl $0, %eax
	jNE __then1806
	jmp __fall11808
__fresh1820:
	jmp __fall11808
__fall11808:
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -108(%ebp)
	andl $1, -108(%ebp)
	movl -108(%ebp), %eax
	cmpl $0, %eax
	jNE __else1805
	jmp __fall21807
__fresh1821:
	jmp __fall21807
__fall21807:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, -116(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	jmp __loop1809
__fresh1822:
	jmp __then1806
__then1806:
	leal -180(%ebp), %eax
	movl %eax, -144(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	movl %ecx, (%eax)
	movl -144(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	addl $0, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	addl $8, %eax
	movl %eax, -128(%ebp)
	movl -128(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -140(%ebp), %eax
	pushl %eax
	movl -124(%ebp), %eax
	call *%eax
	addl $4, %esp
	jmp __done1804
__fresh1823:
	jmp __else1805
__else1805:
	movl $__const_str649, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	jmp __done1804
__done1804:
	jmp __merge1810
__fresh1824:
	jmp __else1811
__else1811:
	movl $__const_str650, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	jmp __merge1810
__merge1810:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -156(%ebp), %eax
	addl $16, %eax
	movl %eax, -152(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1813
__fresh1825:
	jmp __else1814
__else1814:
	jmp __merge1813
__merge1813:
	jmp __cond1803
__fresh1826:
	jmp __post1801
__post1801:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Foo_print
__Foo_print:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh1800:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Foo_ctor
__Foo_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $32, %esp
__fresh1799:
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
	movl $__const_str648, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $__Foo_vtable643, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __List_remove
__List_remove:
	pushl %ebp
	movl %esp, %ebp
	subl $164, %esp
__fresh1790:
	leal -152(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -4(%ebp)
	addl $8, %esp
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then1789
	jmp __else1788
__fresh1791:
	jmp __then1789
__then1789:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -64(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	addl $16, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	addl $16, %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	leal -156(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __then1780
	jmp __else1779
__fresh1792:
	jmp __then1780
__then1780:
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	addl $12, %eax
	movl %eax, -72(%ebp)
	movl $0, %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1778
__fresh1793:
	jmp __else1779
__else1779:
	jmp __merge1778
__merge1778:
	jmp __merge1787
__fresh1794:
	jmp __else1788
__else1788:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	addl $12, %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	leal -160(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __then1786
	jmp __else1785
__fresh1795:
	jmp __then1786
__then1786:
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	addl $16, %eax
	movl %eax, -132(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	addl $16, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	addl $16, %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	leal -164(%ebp), %eax
	movl %eax, -104(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -100(%ebp)
	andl $1, -100(%ebp)
	movl -100(%ebp), %eax
	cmpl $0, %eax
	jNE __then1783
	jmp __else1782
__fresh1796:
	jmp __then1783
__then1783:
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	addl $12, %eax
	movl %eax, -144(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1781
__fresh1797:
	jmp __else1782
__else1782:
	jmp __merge1781
__merge1781:
	jmp __merge1784
__fresh1798:
	jmp __else1785
__else1785:
	movl $__const_str647, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge1784
__merge1784:
	jmp __merge1787
__merge1787:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __List_insert
__List_insert:
	pushl %ebp
	movl %esp, %ebp
	subl $88, %esp
__fresh1775:
	leal -88(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -48(%ebp)
	addl $4, %esp
	movl -48(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -52(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	call __ListItem_ctor
	movl %eax, -40(%ebp)
	addl $8, %esp
	leal -84(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	addl $16, %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
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
	jNE __then1774
	jmp __else1773
__fresh1776:
	jmp __then1774
__then1774:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	addl $12, %eax
	movl %eax, -64(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1772
__fresh1777:
	jmp __else1773
__else1773:
	jmp __merge1772
__merge1772:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -76(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl __List_is_empty
__List_is_empty:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh1771:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl $0, %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -4(%ebp)
	addl $8, %esp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __List_ctor
__List_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh1770:
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
	movl $__const_str646, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $__List_vtable642, %eax
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
.globl __ListItem_ctor
__ListItem_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh1769:
	leal -48(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -36(%ebp)
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -32(%ebp)
	movl $__const_str645, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl $__ListItem_vtable641, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $16, %eax
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
.globl _equals
_equals:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh1768:
	leal -28(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -24(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	cmpl %eax, %ecx
	setE -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh1767:
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
__fresh1766:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str644, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable640, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
