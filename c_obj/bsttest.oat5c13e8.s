	.align 4
	.data
_t638:
	.long 0
__const_str637:
	.ascii "Unexpected\0"
__const_str636:
	.ascii "Unexpected\0"
__const_str635:
	.ascii "Fatal Error: Inconsistent node state.\0"
__const_str634:
	.ascii "Element not found\0"
__const_str633:
	.ascii "BST\0"
__const_str632:
	.ascii "Node\0"
__const_str631:
	.ascii "Object\0"
__BST_vtable630:
	.long __Object_vtable628
	.long __Object_get_name
	.long __BST_insert
	.long __BST_find
	.long __BST_remove
	.long __BST_remove_node

__Node_vtable629:
	.long __Object_vtable628
	.long __Object_get_name

__Object_vtable628:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1765:
	call _t638.init639
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $292, %esp
__fresh1764:
	leal -292(%ebp), %eax
	movl %eax, -268(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -268(%ebp), %eax
	movl %ecx, (%eax)
	leal -288(%ebp), %eax
	movl %eax, -264(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -264(%ebp), %eax
	movl %ecx, (%eax)
	leal -284(%ebp), %eax
	movl %eax, -260(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -260(%ebp), %eax
	movl %ecx, (%eax)
	movl $_t638, %eax
	movl (%eax), %ecx
	movl %ecx, -256(%ebp)
	movl -256(%ebp), %eax
	addl $0, %eax
	movl %eax, -252(%ebp)
	movl -252(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl -248(%ebp), %eax
	addl $8, %eax
	movl %eax, -244(%ebp)
	movl -244(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -240(%ebp)
	movl $3, %eax
	pushl %eax
	movl -256(%ebp), %eax
	pushl %eax
	movl -240(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_t638, %eax
	movl (%eax), %ecx
	movl %ecx, -236(%ebp)
	movl -236(%ebp), %eax
	addl $0, %eax
	movl %eax, -232(%ebp)
	movl -232(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	addl $8, %eax
	movl %eax, -224(%ebp)
	movl -224(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	movl $1, %eax
	pushl %eax
	movl -236(%ebp), %eax
	pushl %eax
	movl -220(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_t638, %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -216(%ebp), %eax
	addl $0, %eax
	movl %eax, -212(%ebp)
	movl -212(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -208(%ebp), %eax
	addl $8, %eax
	movl %eax, -204(%ebp)
	movl -204(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl $0, %eax
	pushl %eax
	movl -216(%ebp), %eax
	pushl %eax
	movl -200(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_t638, %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -196(%ebp), %eax
	addl $0, %eax
	movl %eax, -192(%ebp)
	movl -192(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	addl $8, %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl $5, %eax
	pushl %eax
	movl -196(%ebp), %eax
	pushl %eax
	movl -180(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_t638, %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	addl $0, %eax
	movl %eax, -172(%ebp)
	movl -172(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	addl $8, %eax
	movl %eax, -164(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl $2, %eax
	pushl %eax
	movl -176(%ebp), %eax
	pushl %eax
	movl -160(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_t638, %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -156(%ebp), %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	addl $8, %eax
	movl %eax, -144(%ebp)
	movl -144(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl $4, %eax
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	movl -140(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_t638, %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	addl $0, %eax
	movl %eax, -132(%ebp)
	movl -132(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	addl $12, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl $0, %eax
	pushl %eax
	movl -136(%ebp), %eax
	pushl %eax
	movl -120(%ebp), %eax
	call *%eax
	movl %eax, -116(%ebp)
	addl $8, %esp
	leal -280(%ebp), %eax
	movl %eax, -112(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl $_t638, %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	addl $16, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl $3, %eax
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	movl -92(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_t638, %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	addl $12, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl $5, %eax
	pushl %eax
	movl -88(%ebp), %eax
	pushl %eax
	movl -72(%ebp), %eax
	call *%eax
	movl %eax, -68(%ebp)
	addl $8, %esp
	leal -276(%ebp), %eax
	movl %eax, -64(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl $_t638, %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	addl $12, %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl $3, %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	call *%eax
	movl %eax, -40(%ebp)
	addl $8, %esp
	leal -272(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl $100, %eax
	movl %eax, -28(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -28(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl $10, %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -20(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -16(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -260(%ebp), %eax
	movl %ecx, (%eax)
	movl -260(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _t638.init639
_t638.init639:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh1763:
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __BST_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %eax, _t638
	movl %ebp, %esp
	popl %ebp
	ret
.globl __BST_remove_node
__BST_remove_node:
	pushl %ebp
	movl %esp, %ebp
	subl $528, %esp
__fresh1738:
	leal -508(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	addl $16, %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl $0, %eax
	movl %eax, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -32(%ebp)
	addl $8, %esp
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	addl $20, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl $0, %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -8(%ebp)
	addl $8, %esp
	movl -32(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then1737
	jmp __else1736
__fresh1739:
	jmp __then1737
__then1737:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	addl $12, %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	leal -512(%ebp), %eax
	movl %eax, -64(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -60(%ebp)
	andl $1, -60(%ebp)
	movl -60(%ebp), %eax
	cmpl $0, %eax
	jNE __then1707
	jmp __else1706
__fresh1740:
	jmp __then1707
__then1707:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	addl $16, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -104(%ebp), %eax
	movl %eax, -88(%ebp)
	movl -92(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -88(%ebp), %eax
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -80(%ebp)
	addl $8, %esp
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __then1704
	jmp __else1703
__fresh1741:
	jmp __then1704
__then1704:
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	addl $16, %eax
	movl %eax, -112(%ebp)
	movl $0, %eax
	movl %eax, -108(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1702
__fresh1742:
	jmp __else1703
__else1703:
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	addl $20, %eax
	movl %eax, -124(%ebp)
	movl $0, %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1702
__merge1702:
	jmp __merge1705
__fresh1743:
	jmp __else1706
__else1706:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -136(%ebp)
	movl $0, %eax
	movl %eax, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1705
__merge1705:
	jmp __merge1735
__fresh1744:
	jmp __else1736
__else1736:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -160(%ebp), %eax
	addl $16, %eax
	movl %eax, -156(%ebp)
	movl -156(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl $0, %eax
	movl %eax, -148(%ebp)
	movl -152(%ebp), %eax
	movl %eax, -144(%ebp)
	movl -148(%ebp), %eax
	pushl %eax
	movl -144(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -140(%ebp)
	addl $8, %esp
	movl -140(%ebp), %eax
	cmpl $0, %eax
	jNE __then1734
	jmp __else1733
__fresh1745:
	jmp __then1734
__then1734:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	addl $12, %eax
	movl %eax, -176(%ebp)
	movl -176(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	leal -516(%ebp), %eax
	movl %eax, -168(%ebp)
	movl -172(%ebp), %eax
	movl %eax, %ecx
	movl -168(%ebp), %eax
	movl %ecx, (%eax)
	movl -172(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -164(%ebp)
	andl $1, -164(%ebp)
	movl -164(%ebp), %eax
	cmpl $0, %eax
	jNE __then1713
	jmp __else1712
__fresh1746:
	jmp __then1713
__then1713:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -204(%ebp), %eax
	addl $16, %eax
	movl %eax, -200(%ebp)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -208(%ebp), %eax
	movl %eax, -192(%ebp)
	movl -196(%ebp), %eax
	movl %eax, -188(%ebp)
	movl -192(%ebp), %eax
	pushl %eax
	movl -188(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -184(%ebp)
	addl $8, %esp
	movl -184(%ebp), %eax
	cmpl $0, %eax
	jNE __then1710
	jmp __else1709
__fresh1747:
	jmp __then1710
__then1710:
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	addl $16, %eax
	movl %eax, -224(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	movl -220(%ebp), %eax
	addl $20, %eax
	movl %eax, -216(%ebp)
	movl -216(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	movl %eax, %ecx
	movl -224(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1708
__fresh1748:
	jmp __else1709
__else1709:
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl -248(%ebp), %eax
	addl $20, %eax
	movl %eax, -244(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -240(%ebp)
	movl -240(%ebp), %eax
	addl $20, %eax
	movl %eax, -236(%ebp)
	movl -236(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	movl -244(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1708
__merge1708:
	jmp __merge1711
__fresh1749:
	jmp __else1712
__else1712:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -264(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -260(%ebp)
	movl -260(%ebp), %eax
	addl $20, %eax
	movl %eax, -256(%ebp)
	movl -256(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -252(%ebp), %eax
	movl %eax, %ecx
	movl -264(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1711
__merge1711:
	jmp __merge1732
__fresh1750:
	jmp __else1733
__else1733:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -288(%ebp)
	movl -288(%ebp), %eax
	addl $20, %eax
	movl %eax, -284(%ebp)
	movl -284(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl $0, %eax
	movl %eax, -276(%ebp)
	movl -280(%ebp), %eax
	movl %eax, -272(%ebp)
	movl -276(%ebp), %eax
	pushl %eax
	movl -272(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -268(%ebp)
	addl $8, %esp
	movl -268(%ebp), %eax
	cmpl $0, %eax
	jNE __then1731
	jmp __else1730
__fresh1751:
	jmp __then1731
__then1731:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -308(%ebp)
	movl -308(%ebp), %eax
	addl $12, %eax
	movl %eax, -304(%ebp)
	movl -304(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -300(%ebp)
	leal -520(%ebp), %eax
	movl %eax, -296(%ebp)
	movl -300(%ebp), %eax
	movl %eax, %ecx
	movl -296(%ebp), %eax
	movl %ecx, (%eax)
	movl -300(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -292(%ebp)
	andl $1, -292(%ebp)
	movl -292(%ebp), %eax
	cmpl $0, %eax
	jNE __then1719
	jmp __else1718
__fresh1752:
	jmp __then1719
__then1719:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -336(%ebp)
	movl -296(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -332(%ebp)
	movl -332(%ebp), %eax
	addl $16, %eax
	movl %eax, -328(%ebp)
	movl -328(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -324(%ebp)
	movl -336(%ebp), %eax
	movl %eax, -320(%ebp)
	movl -324(%ebp), %eax
	movl %eax, -316(%ebp)
	movl -320(%ebp), %eax
	pushl %eax
	movl -316(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -312(%ebp)
	addl $8, %esp
	movl -312(%ebp), %eax
	cmpl $0, %eax
	jNE __then1716
	jmp __else1715
__fresh1753:
	jmp __then1716
__then1716:
	movl -296(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -356(%ebp)
	movl -356(%ebp), %eax
	addl $16, %eax
	movl %eax, -352(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -348(%ebp)
	movl -348(%ebp), %eax
	addl $16, %eax
	movl %eax, -344(%ebp)
	movl -344(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -340(%ebp)
	movl -340(%ebp), %eax
	movl %eax, %ecx
	movl -352(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1714
__fresh1754:
	jmp __else1715
__else1715:
	movl -296(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -376(%ebp)
	movl -376(%ebp), %eax
	addl $20, %eax
	movl %eax, -372(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -368(%ebp)
	movl -368(%ebp), %eax
	addl $16, %eax
	movl %eax, -364(%ebp)
	movl -364(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -360(%ebp)
	movl -360(%ebp), %eax
	movl %eax, %ecx
	movl -372(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1714
__merge1714:
	jmp __merge1717
__fresh1755:
	jmp __else1718
__else1718:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -392(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -388(%ebp)
	movl -388(%ebp), %eax
	addl $16, %eax
	movl %eax, -384(%ebp)
	movl -384(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -380(%ebp)
	movl -380(%ebp), %eax
	movl %eax, %ecx
	movl -392(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1717
__merge1717:
	jmp __merge1729
__fresh1756:
	jmp __else1730
__else1730:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -412(%ebp)
	movl -412(%ebp), %eax
	addl $20, %eax
	movl %eax, -408(%ebp)
	movl -408(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -404(%ebp)
	leal -524(%ebp), %eax
	movl %eax, -400(%ebp)
	movl -404(%ebp), %eax
	movl %eax, %ecx
	movl -400(%ebp), %eax
	movl %ecx, (%eax)
	movl -404(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -396(%ebp)
	andl $1, -396(%ebp)
	movl -396(%ebp), %eax
	cmpl $0, %eax
	jNE __then1728
	jmp __else1727
__fresh1757:
	jmp __then1728
__then1728:
	jmp __cond1722
__cond1722:
	movl -400(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -440(%ebp)
	movl -440(%ebp), %eax
	addl $16, %eax
	movl %eax, -436(%ebp)
	movl -436(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -432(%ebp)
	movl $0, %eax
	movl %eax, -428(%ebp)
	movl -432(%ebp), %eax
	movl %eax, -424(%ebp)
	movl -428(%ebp), %eax
	pushl %eax
	movl -424(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -420(%ebp)
	addl $8, %esp
	movl -420(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -416(%ebp)
	andl $1, -416(%ebp)
	movl -416(%ebp), %eax
	cmpl $0, %eax
	jNE __body1721
	jmp __post1720
__fresh1758:
	jmp __body1721
__body1721:
	movl -400(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -460(%ebp)
	movl -460(%ebp), %eax
	addl $16, %eax
	movl %eax, -456(%ebp)
	movl -456(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -452(%ebp)
	leal -528(%ebp), %eax
	movl %eax, -448(%ebp)
	movl -452(%ebp), %eax
	movl %eax, %ecx
	movl -448(%ebp), %eax
	movl %ecx, (%eax)
	movl -452(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -444(%ebp)
	andl $1, -444(%ebp)
	movl -444(%ebp), %eax
	cmpl $0, %eax
	jNE __then1725
	jmp __else1724
__fresh1759:
	jmp __then1725
__then1725:
	movl -448(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -464(%ebp)
	movl -464(%ebp), %eax
	movl %eax, %ecx
	movl -400(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1723
__fresh1760:
	jmp __else1724
__else1724:
	movl $__const_str636, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge1723
__merge1723:
	jmp __cond1722
__fresh1761:
	jmp __post1720
__post1720:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -504(%ebp)
	movl -504(%ebp), %eax
	addl $8, %eax
	movl %eax, -500(%ebp)
	movl -400(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -496(%ebp)
	movl -496(%ebp), %eax
	addl $8, %eax
	movl %eax, -492(%ebp)
	movl -492(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -488(%ebp)
	movl -488(%ebp), %eax
	movl %eax, %ecx
	movl -500(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -484(%ebp)
	movl -484(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -480(%ebp)
	movl -480(%ebp), %eax
	addl $20, %eax
	movl %eax, -476(%ebp)
	movl -476(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -472(%ebp)
	movl -400(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -468(%ebp)
	movl -468(%ebp), %eax
	pushl %eax
	movl 8(%ebp), %eax
	pushl %eax
	movl -472(%ebp), %eax
	call *%eax
	addl $8, %esp
	jmp __merge1726
__fresh1762:
	jmp __else1727
__else1727:
	movl $__const_str637, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge1726
__merge1726:
	jmp __merge1729
__merge1729:
	jmp __merge1732
__merge1732:
	jmp __merge1735
__merge1735:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __BST_remove
__BST_remove:
	pushl %ebp
	movl %esp, %ebp
	subl $208, %esp
__fresh1689:
	leal -200(%ebp), %eax
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
	leal -196(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -12(%ebp)
	leal -192(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -188(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1673
__cond1673:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -56(%ebp)
	andl $1, -56(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl $0, %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -40(%ebp)
	addl $8, %esp
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -36(%ebp)
	andl $1, -36(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body1672
	jmp __post1671
__fresh1690:
	jmp __body1672
__body1672:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	leal -204(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -64(%ebp)
	andl $1, -64(%ebp)
	movl -64(%ebp), %eax
	cmpl $0, %eax
	jNE __then1682
	jmp __else1681
__fresh1691:
	jmp __then1682
__then1682:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	addl $8, %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	cmpl %eax, %ecx
	setE -76(%ebp)
	andl $1, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __then1679
	jmp __else1678
__fresh1692:
	jmp __then1679
__then1679:
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1677
__fresh1693:
	jmp __else1678
__else1678:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	addl $8, %eax
	movl %eax, -104(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -112(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	cmpl %eax, %ecx
	setL -96(%ebp)
	andl $1, -96(%ebp)
	movl -96(%ebp), %eax
	cmpl $0, %eax
	jNE __then1676
	jmp __else1675
__fresh1694:
	jmp __then1676
__then1676:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	addl $16, %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1674
__fresh1695:
	jmp __else1675
__else1675:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	addl $20, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1674
__merge1674:
	jmp __merge1677
__merge1677:
	jmp __merge1680
__fresh1696:
	jmp __else1681
__else1681:
	jmp __merge1680
__merge1680:
	jmp __cond1673
__fresh1697:
	jmp __post1671
__post1671:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -148(%ebp)
	andl $1, -148(%ebp)
	movl -148(%ebp), %eax
	cmpl $0, %eax
	jNE __then1688
	jmp __else1687
__fresh1698:
	jmp __then1688
__then1688:
	movl $__const_str634, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge1686
__fresh1699:
	jmp __else1687
__else1687:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	leal -208(%ebp), %eax
	movl %eax, -160(%ebp)
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -156(%ebp)
	andl $1, -156(%ebp)
	movl -156(%ebp), %eax
	cmpl $0, %eax
	jNE __then1685
	jmp __else1684
__fresh1700:
	jmp __then1685
__then1685:
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	addl $20, %eax
	movl %eax, -176(%ebp)
	movl -176(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	pushl %eax
	movl 8(%ebp), %eax
	pushl %eax
	movl -172(%ebp), %eax
	call *%eax
	addl $8, %esp
	jmp __merge1683
__fresh1701:
	jmp __else1684
__else1684:
	movl $__const_str635, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge1683
__merge1683:
	jmp __merge1686
__merge1686:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __BST_find
__BST_find:
	pushl %ebp
	movl %esp, %ebp
	subl $148, %esp
__fresh1662:
	leal -144(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -140(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -136(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1652
__cond1652:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -48(%ebp)
	andl $1, -48(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl $0, %eax
	movl %eax, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -32(%ebp)
	addl $8, %esp
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -28(%ebp)
	andl $1, -28(%ebp)
	movl -48(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	cmpl $0, %eax
	jNE __body1651
	jmp __post1650
__fresh1663:
	jmp __body1651
__body1651:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	leal -148(%ebp), %eax
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
	jNE __then1661
	jmp __else1660
__fresh1664:
	jmp __then1661
__then1661:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	addl $8, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	cmpl %eax, %ecx
	setE -68(%ebp)
	andl $1, -68(%ebp)
	movl -68(%ebp), %eax
	cmpl $0, %eax
	jNE __then1658
	jmp __else1657
__fresh1665:
	jmp __then1658
__then1658:
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1656
__fresh1666:
	jmp __else1657
__else1657:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	addl $8, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	cmpl %eax, %ecx
	setL -88(%ebp)
	andl $1, -88(%ebp)
	movl -88(%ebp), %eax
	cmpl $0, %eax
	jNE __then1655
	jmp __else1654
__fresh1667:
	jmp __then1655
__then1655:
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	addl $16, %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1653
__fresh1668:
	jmp __else1654
__else1654:
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	addl $20, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1653
__merge1653:
	jmp __merge1656
__merge1656:
	jmp __merge1659
__fresh1669:
	jmp __else1660
__else1660:
	jmp __merge1659
__merge1659:
	jmp __cond1652
__fresh1670:
	jmp __post1650
__post1650:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __BST_insert
__BST_insert:
	pushl %ebp
	movl %esp, %ebp
	subl $276, %esp
__fresh1635:
	leal -264(%ebp), %eax
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
	leal -260(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -12(%ebp)
	leal -256(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -252(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1616
__cond1616:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -56(%ebp)
	andl $1, -56(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl $0, %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	call _equals
	movl %eax, -40(%ebp)
	addl $8, %esp
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -36(%ebp)
	andl $1, -36(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body1615
	jmp __post1614
__fresh1636:
	jmp __body1615
__body1615:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	leal -268(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -64(%ebp)
	andl $1, -64(%ebp)
	movl -64(%ebp), %eax
	cmpl $0, %eax
	jNE __then1625
	jmp __else1624
__fresh1637:
	jmp __then1625
__then1625:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	addl $8, %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	cmpl %eax, %ecx
	setE -76(%ebp)
	andl $1, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __then1622
	jmp __else1621
__fresh1638:
	jmp __then1622
__then1622:
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1620
__fresh1639:
	jmp __else1621
__else1621:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	addl $8, %eax
	movl %eax, -104(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -112(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	cmpl %eax, %ecx
	setL -96(%ebp)
	andl $1, -96(%ebp)
	movl -96(%ebp), %eax
	cmpl $0, %eax
	jNE __then1619
	jmp __else1618
__fresh1640:
	jmp __then1619
__then1619:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	addl $16, %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1617
__fresh1641:
	jmp __else1618
__else1618:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	addl $20, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1617
__merge1617:
	jmp __merge1620
__merge1620:
	jmp __merge1623
__fresh1642:
	jmp __else1624
__else1624:
	jmp __merge1623
__merge1623:
	jmp __cond1616
__fresh1643:
	jmp __post1614
__post1614:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -148(%ebp)
	andl $1, -148(%ebp)
	movl -148(%ebp), %eax
	cmpl $0, %eax
	jNE __then1634
	jmp __else1633
__fresh1644:
	jmp __then1634
__then1634:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl $24, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -192(%ebp)
	addl $4, %esp
	movl -192(%ebp), %eax
	movl %eax, -188(%ebp)
	movl -196(%ebp), %eax
	pushl %eax
	movl -188(%ebp), %eax
	pushl %eax
	call __Node_ctor
	movl %eax, -184(%ebp)
	addl $8, %esp
	leal -276(%ebp), %eax
	movl %eax, -180(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl -180(%ebp), %eax
	movl %ecx, (%eax)
	movl -180(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	addl $12, %eax
	movl %eax, -172(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	movl %eax, %ecx
	movl -172(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	leal -272(%ebp), %eax
	movl %eax, -160(%ebp)
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -156(%ebp)
	andl $1, -156(%ebp)
	movl -156(%ebp), %eax
	cmpl $0, %eax
	jNE __then1631
	jmp __else1630
__fresh1645:
	jmp __then1631
__then1631:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	addl $8, %eax
	movl %eax, -208(%ebp)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -216(%ebp), %eax
	movl %eax, %ecx
	movl -204(%ebp), %eax
	cmpl %eax, %ecx
	setL -200(%ebp)
	andl $1, -200(%ebp)
	movl -200(%ebp), %eax
	cmpl $0, %eax
	jNE __then1628
	jmp __else1627
__fresh1646:
	jmp __then1628
__then1628:
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	addl $16, %eax
	movl %eax, -224(%ebp)
	movl -180(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	movl -220(%ebp), %eax
	movl %eax, %ecx
	movl -224(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1626
__fresh1647:
	jmp __else1627
__else1627:
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -240(%ebp)
	movl -240(%ebp), %eax
	addl $20, %eax
	movl %eax, -236(%ebp)
	movl -180(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	movl -236(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1626
__merge1626:
	jmp __merge1629
__fresh1648:
	jmp __else1630
__else1630:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -248(%ebp)
	movl -180(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl -248(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1629
__merge1629:
	jmp __merge1632
__fresh1649:
	jmp __else1633
__else1633:
	jmp __merge1632
__merge1632:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __BST_ctor
__BST_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh1613:
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
	movl $__const_str633, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $__BST_vtable630, %eax
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
.globl __Node_ctor
__Node_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $56, %esp
__fresh1612:
	leal -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -44(%ebp)
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -40(%ebp)
	movl $__const_str632, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	movl $__Node_vtable629, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -32(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -24(%ebp)
	movl $0, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $20, %eax
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
__fresh1611:
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
__fresh1610:
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
__fresh1609:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str631, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable628, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
