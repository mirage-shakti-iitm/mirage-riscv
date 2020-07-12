	.file	"clock_stubs.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"gettimeofday"
	.text
	.align	1
	.globl	unix_gettimeofday
	.type	unix_gettimeofday, @function
unix_gettimeofday:
	addi	sp,sp,-128
	sd	s0,112(sp)
	lla	s0,caml_local_roots
	sd	s1,104(sp)
	ld	s1,0(s0)
	li	a5,1
	sd	a0,8(sp)
	addi	a4,sp,32
	sd	a5,48(sp)
	sd	a5,40(sp)
	li	a1,0
	addi	a5,sp,8
	addi	a0,sp,16
	sd	a5,56(sp)
	sd	ra,120(sp)
	sd	s1,32(sp)
	sd	a4,0(s0)
	call	gettimeofday
	li	a5,-1
	beq	a0,a5,.L5
	fld	fa4,.LC1,a5
	ld	a5,24(sp)
	ld	a4,16(sp)
	fcvt.d.l	fa5,a5
	fcvt.d.l	fa0,a4
	fdiv.d	fa5,fa5,fa4
	fadd.d	fa0,fa5,fa0
	call	caml_copy_double
	ld	ra,120(sp)
	sd	s1,0(s0)
	ld	s0,112(sp)
	ld	s1,104(sp)
	addi	sp,sp,128
	jr	ra
.L5:
	lla	a0,.LC0
	call	caml_failwith
	.size	unix_gettimeofday, .-unix_gettimeofday
	.align	1
	.globl	caml_get_monotonic_time
	.type	caml_get_monotonic_time, @function
caml_get_monotonic_time:
	addi	sp,sp,-112
	sd	s0,96(sp)
	lla	s0,caml_local_roots
	sd	s1,88(sp)
	ld	s1,0(s0)
	li	a5,1
	addi	a4,sp,16
	sd	a5,32(sp)
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	ra,104(sp)
	sd	s1,16(sp)
	sd	a4,0(s0)
	sd	a5,40(sp)
	sd	a0,8(sp)
	call	riscv_clock_monotonic
	call	caml_copy_int64
	ld	ra,104(sp)
	sd	s1,0(s0)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	caml_get_monotonic_time, .-caml_get_monotonic_time
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC1:
	.word	0
	.word	1093567616
	.ident	"GCC: (GNU) 9.2.0"
