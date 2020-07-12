	.file	"barrier_stubs.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	caml_memory_barrier
	.type	caml_memory_barrier, @function
caml_memory_barrier:
 #APP
# 34 "barrier_stubs.c" 1
	fence
# 0 "" 2
 #NO_APP
	li	a0,1
	ret
	.size	caml_memory_barrier, .-caml_memory_barrier
	.align	1
	.globl	caml_write_memory_barrier
	.type	caml_write_memory_barrier, @function
caml_write_memory_barrier:
 #APP
# 34 "barrier_stubs.c" 1
	fence
# 0 "" 2
 #NO_APP
	li	a0,1
	ret
	.size	caml_write_memory_barrier, .-caml_write_memory_barrier
	.align	1
	.globl	caml_cstruct_unsafe_load_uint32
	.type	caml_cstruct_unsafe_load_uint32, @function
caml_cstruct_unsafe_load_uint32:
	ld	a5,0(a0)
	ld	a4,8(a0)
	srai	a1,a1,1
	ld	a5,8(a5)
	srai	a4,a4,1
	sext.w	a4,a4
	sext.w	a1,a1
	add	a5,a5,a4
	andi	a1,a1,-4
	add	a1,a5,a1
	lwu	a0,0(a1)
	slli	a0,a0,1
	addi	a0,a0,1
	ret
	.size	caml_cstruct_unsafe_load_uint32, .-caml_cstruct_unsafe_load_uint32
	.align	1
	.globl	caml_cstruct_unsafe_save_uint32
	.type	caml_cstruct_unsafe_save_uint32, @function
caml_cstruct_unsafe_save_uint32:
	ld	a5,0(a0)
	ld	a4,8(a0)
	srai	a1,a1,1
	ld	a5,8(a5)
	srai	a4,a4,1
	lla	a3,caml_local_roots
	sext.w	a4,a4
	sext.w	a1,a1
	ld	a0,0(a3)
	add	a5,a5,a4
	andi	a1,a1,-4
	add	a1,a5,a1
	srai	a2,a2,1
	sw	a2,0(a1)
	sd	a0,0(a3)
	li	a0,1
	ret
	.size	caml_cstruct_unsafe_save_uint32, .-caml_cstruct_unsafe_save_uint32
	.ident	"GCC: (GNU) 9.2.0"
