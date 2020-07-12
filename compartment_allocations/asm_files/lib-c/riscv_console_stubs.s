	.file	"riscv_console_stubs.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	mirage_riscv_console_write
	.type	mirage_riscv_console_write, @function
mirage_riscv_console_write:
	addi	sp,sp,-112
	srai	a5,a1,1
	sd	s0,96(sp)
	sd	a0,8(sp)
	lla	s0,caml_local_roots
	ld	a0,8(a0)
	sd	a1,0(sp)
	sext.w	a1,a5
	addi	a5,sp,16
	sd	s1,88(sp)
	ld	s1,0(s0)
	sd	a5,0(s0)
	li	a5,1
	sd	a5,32(sp)
	li	a5,2
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	ra,104(sp)
	sd	s1,16(sp)
	sd	a5,40(sp)
	sd	sp,48(sp)
	call	riscv_write
	ld	ra,104(sp)
	sd	s1,0(s0)
	ld	s0,96(sp)
	ld	s1,88(sp)
	li	a0,1
	addi	sp,sp,112
	jr	ra
	.size	mirage_riscv_console_write, .-mirage_riscv_console_write
	.ident	"GCC: (GNU) 9.2.0"
