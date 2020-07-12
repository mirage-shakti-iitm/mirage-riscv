	.file	"alloc_pages_stubs.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"ERROR: Io_page: memalign(%d, %zu) failed, even after GC.\n"
	.text
	.align	1
	.globl	mirage_alloc_pages
	.type	mirage_alloc_pages, @function
mirage_alloc_pages:
	addi	sp,sp,-112
	sd	s1,88(sp)
	addi	a5,sp,16
	lla	s1,caml_local_roots
	sd	s0,96(sp)
	sd	s2,80(sp)
	srai	s0,a1,1
	ld	s2,0(s1)
	sd	a5,0(s1)
	li	a5,1
	slliw	s0,s0,12
	sd	a5,32(sp)
	li	a5,2
	sd	a0,8(sp)
	sd	a1,0(sp)
	sd	a5,24(sp)
	li	a1,1
	addi	a5,sp,8
	mv	a0,s0
	sd	ra,104(sp)
	sd	s2,16(sp)
	sd	a5,40(sp)
	sd	sp,48(sp)
	call	calloc
	beq	a0,zero,.L9
	mv	a2,a0
	mv	a3,s0
	li	a1,1
	li	a0,524
	call	caml_ba_alloc_dims
	ld	ra,104(sp)
	ld	s0,96(sp)
	sd	s2,0(s1)
	ld	s1,88(sp)
	ld	s2,80(sp)
	addi	sp,sp,112
	jr	ra
.L9:
	ld	a5,8(sp)
	srai	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L10
.L3:
	call	caml_raise_out_of_memory
.L10:
	mv	a2,s0
	li	a1,4096
	lla	a0,.LC0
	call	printf
	j	.L3
	.size	mirage_alloc_pages, .-mirage_alloc_pages
	.align	1
	.globl	mirage_get_addr
	.type	mirage_get_addr, @function
mirage_get_addr:
	addi	sp,sp,-192
	sd	s0,176(sp)
	lla	s0,caml_local_roots
	sd	s1,168(sp)
	sd	a0,8(sp)
	ld	s1,0(s0)
	ld	a0,8(a0)
	addi	a4,sp,8
	li	a5,1
	sd	a4,56(sp)
	addi	a4,sp,32
	sd	a5,48(sp)
	sd	a5,40(sp)
	sd	a5,24(sp)
	sd	a4,96(sp)
	sd	a5,112(sp)
	addi	a4,sp,96
	sd	a5,104(sp)
	addi	a5,sp,24
	sd	ra,184(sp)
	sd	s1,32(sp)
	sd	a4,0(s0)
	sd	a5,120(sp)
	call	caml_copy_nativeint
	ld	ra,184(sp)
	sd	s1,0(s0)
	ld	s0,176(sp)
	ld	s1,168(sp)
	addi	sp,sp,192
	jr	ra
	.size	mirage_get_addr, .-mirage_get_addr
	.ident	"GCC: (GNU) 9.2.0"
