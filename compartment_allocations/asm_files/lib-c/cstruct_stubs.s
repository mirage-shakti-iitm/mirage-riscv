	.file	"cstruct_stubs.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	caml_blit_bigstring_to_string
	.type	caml_blit_bigstring_to_string, @function
caml_blit_bigstring_to_string:
	ld	a5,8(a0)
	srai	a3,a3,1
	mv	a0,a2
	srai	a1,a1,1
	addi	sp,sp,-16
	srai	a2,a4,1
	add	a1,a5,a1
	add	a0,a3,a0
	sd	ra,8(sp)
	call	memcpy
	ld	ra,8(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
	.size	caml_blit_bigstring_to_string, .-caml_blit_bigstring_to_string
	.align	1
	.globl	caml_blit_string_to_bigstring
	.type	caml_blit_string_to_bigstring, @function
caml_blit_string_to_bigstring:
	ld	a5,8(a2)
	srai	a3,a3,1
	srai	a1,a1,1
	addi	sp,sp,-16
	add	a1,a1,a0
	srai	a2,a4,1
	add	a0,a5,a3
	sd	ra,8(sp)
	call	memcpy
	ld	ra,8(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
	.size	caml_blit_string_to_bigstring, .-caml_blit_string_to_bigstring
	.align	1
	.globl	caml_blit_bigstring_to_bigstring
	.type	caml_blit_bigstring_to_bigstring, @function
caml_blit_bigstring_to_bigstring:
	ld	a5,8(a0)
	ld	a0,8(a2)
	srai	a3,a3,1
	srai	a1,a1,1
	addi	sp,sp,-16
	srai	a2,a4,1
	add	a1,a5,a1
	add	a0,a0,a3
	sd	ra,8(sp)
	call	memmove
	ld	ra,8(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
	.size	caml_blit_bigstring_to_bigstring, .-caml_blit_bigstring_to_bigstring
	.align	1
	.globl	caml_compare_bigstring
	.type	caml_compare_bigstring, @function
caml_compare_bigstring:
	ld	a6,8(a2)
	ld	a5,8(a0)
	srai	a3,a3,1
	srai	a0,a1,1
	addi	sp,sp,-16
	srai	a2,a4,1
	add	a1,a6,a3
	add	a0,a5,a0
	sd	ra,8(sp)
	call	memcmp
	ld	ra,8(sp)
	slli	a0,a0,1
	addi	a0,a0,1
	addi	sp,sp,16
	jr	ra
	.size	caml_compare_bigstring, .-caml_compare_bigstring
	.align	1
	.globl	caml_fill_bigstring
	.type	caml_fill_bigstring, @function
caml_fill_bigstring:
	ld	a0,8(a0)
	srai	a5,a1,1
	srai	a3,a3,1
	addi	sp,sp,-16
	srai	a2,a2,1
	sext.w	a1,a3
	add	a0,a0,a5
	sd	ra,8(sp)
	call	memset
	ld	ra,8(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
	.size	caml_fill_bigstring, .-caml_fill_bigstring
	.align	1
	.globl	caml_check_alignment_bigstring
	.type	caml_check_alignment_bigstring, @function
caml_check_alignment_bigstring:
	ld	a5,8(a0)
	srai	a1,a1,1
	srai	a2,a2,1
	add	a5,a5,a1
	sext.w	a2,a2
	remu	a5,a5,a2
	beq	a5,zero,.L14
	li	a0,1
	ret
.L14:
	li	a0,3
	ret
	.size	caml_check_alignment_bigstring, .-caml_check_alignment_bigstring
	.ident	"GCC: (GNU) 9.2.0"
