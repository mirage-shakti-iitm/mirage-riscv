	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	mirage_riscv_yield
	.type	mirage_riscv_yield, @function
mirage_riscv_yield:
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
	call	caml_Int64_val
	call	riscv_wait
	ld	ra,104(sp)
	sd	s1,0(s0)
	ld	s0,96(sp)
	ld	s1,88(sp)
	li	a0,1
	addi	sp,sp,112
	jr	ra
	.size	mirage_riscv_yield, .-mirage_riscv_yield
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	""
	.text
	.align	1
	.globl	mirage_riscv_get_cmdline
	.type	mirage_riscv_get_cmdline, @function
mirage_riscv_get_cmdline:
	addi	sp,sp,-112
	sd	s0,96(sp)
	lla	s0,caml_local_roots
	sd	s1,88(sp)
	ld	s1,0(s0)
	li	a5,1
	sd	a0,8(sp)
	addi	a4,sp,16
	sd	a5,32(sp)
	sd	a5,24(sp)
	lla	a0,.LC0
	addi	a5,sp,8
	sd	ra,104(sp)
	sd	s1,16(sp)
	sd	a4,0(s0)
	sd	a5,40(sp)
	call	caml_copy_string
	ld	ra,104(sp)
	sd	s1,0(s0)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	mirage_riscv_get_cmdline, .-mirage_riscv_get_cmdline
	.align	1
	.globl	riscv_boot_finished
	.type	riscv_boot_finished, @function
riscv_boot_finished:
	addi	sp,sp,-16
	sd	ra,8(sp)
	call	_nolibc_init
	ld	ra,8(sp)
	lla	a0,.LANCHOR0
	addi	sp,sp,16
	tail	caml_startup
	.size	riscv_boot_finished, .-riscv_boot_finished
	.section	.rodata.str1.8
	.align	3
.LC1:
	.string	"mirage"
	.data
	.align	3
	.set	.LANCHOR0,. + 0
	.type	unused_argv, @object
	.size	unused_argv, 16
unused_argv:
	.dword	.LC1
	.dword	0
	.ident	"GCC: (GNU) 9.2.0"
