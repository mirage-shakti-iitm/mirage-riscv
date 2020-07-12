	.file	"atomic_stubs.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"idx"
	.text
	.align	1
	.globl	stub_atomic_or_fetch_uint8
	.type	stub_atomic_or_fetch_uint8, @function
stub_atomic_or_fetch_uint8:
	addi	sp,sp,-128
	ld	a3,8(a0)
	sd	s0,112(sp)
	srai	a4,a2,1
	lla	s0,caml_local_roots
	sd	a2,8(sp)
	addi	a2,sp,32
	sd	s1,104(sp)
	ld	s1,0(s0)
	sd	a2,0(s0)
	li	a2,1
	sd	a2,48(sp)
	li	a2,3
	sd	a2,40(sp)
	addi	a2,sp,24
	ld	a6,40(a0)
	sd	a2,56(sp)
	addi	a2,sp,16
	srai	a5,a1,1
	sd	a2,64(sp)
	addi	a2,sp,8
	sext.w	a5,a5
	sd	a0,24(sp)
	sd	ra,120(sp)
	sd	a1,16(sp)
	sd	s1,32(sp)
	sd	a2,72(sp)
	add	a0,a3,a5
	bge	a5,a6,.L5
	andi	a1,a4,0xff
	call	__sync_or_and_fetch_1
	ld	ra,120(sp)
	sd	s1,0(s0)
	ld	s0,112(sp)
	slli	a0,a0,1
	ld	s1,104(sp)
	addi	a0,a0,1
	addi	sp,sp,128
	jr	ra
.L5:
	lla	a0,.LC0
	call	caml_invalid_argument
	.size	stub_atomic_or_fetch_uint8, .-stub_atomic_or_fetch_uint8
	.align	1
	.globl	stub_atomic_fetch_and_uint8
	.type	stub_atomic_fetch_and_uint8, @function
stub_atomic_fetch_and_uint8:
	addi	sp,sp,-128
	ld	a3,8(a0)
	sd	s0,112(sp)
	srai	a4,a2,1
	lla	s0,caml_local_roots
	sd	a2,8(sp)
	addi	a2,sp,32
	sd	s1,104(sp)
	ld	s1,0(s0)
	sd	a2,0(s0)
	li	a2,1
	sd	a2,48(sp)
	li	a2,3
	sd	a2,40(sp)
	addi	a2,sp,24
	ld	a6,40(a0)
	sd	a2,56(sp)
	addi	a2,sp,16
	srai	a5,a1,1
	sd	a2,64(sp)
	addi	a2,sp,8
	sext.w	a5,a5
	sd	a0,24(sp)
	sd	ra,120(sp)
	sd	a1,16(sp)
	sd	s1,32(sp)
	sd	a2,72(sp)
	add	a0,a3,a5
	bge	a5,a6,.L9
	andi	a1,a4,0xff
	call	__sync_fetch_and_and_1
	ld	ra,120(sp)
	sd	s1,0(s0)
	ld	s0,112(sp)
	slli	a0,a0,1
	ld	s1,104(sp)
	addi	a0,a0,1
	addi	sp,sp,128
	jr	ra
.L9:
	lla	a0,.LC0
	call	caml_invalid_argument
	.size	stub_atomic_fetch_and_uint8, .-stub_atomic_fetch_and_uint8
	.ident	"GCC: (GNU) 9.2.0"
