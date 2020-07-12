	.file	"mm_stubs.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"STUB: %s unimplemented, aborting\n"
	.text
	.align	1
	.globl	stub_heap_get_pages_total
	.type	stub_heap_get_pages_total, @function
stub_heap_get_pages_total:
	addi	sp,sp,-16
	lla	a1,.LANCHOR0
	lla	a0,.LC0
	sd	ra,8(sp)
	call	printf
	call	abort
	.size	stub_heap_get_pages_total, .-stub_heap_get_pages_total
	.align	1
	.globl	stub_heap_get_pages_used
	.type	stub_heap_get_pages_used, @function
stub_heap_get_pages_used:
	addi	sp,sp,-16
	lla	a1,.LANCHOR0+32
	lla	a0,.LC0
	sd	ra,8(sp)
	call	printf
	call	abort
	.size	stub_heap_get_pages_used, .-stub_heap_get_pages_used
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	__func__.2448, @object
	.size	__func__.2448, 26
__func__.2448:
	.string	"stub_heap_get_pages_total"
	.zero	6
	.type	__func__.2452, @object
	.size	__func__.2452, 25
__func__.2452:
	.string	"stub_heap_get_pages_used"
	.ident	"GCC: (GNU) 9.2.0"
