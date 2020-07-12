	.file	"checksum_stubs.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	caml_tcpip_ones_complement_checksum
	.type	caml_tcpip_ones_complement_checksum, @function
caml_tcpip_ones_complement_checksum:
	addi	sp,sp,-176
	li	a5,1
	sd	a5,24(sp)
	sd	a5,32(sp)
	sd	a5,40(sp)
	sd	a5,64(sp)
	sd	a5,56(sp)
	sd	a5,128(sp)
	li	a5,3
	sd	a0,8(sp)
	sd	a5,120(sp)
	ld	a4,0(a0)
	addi	a1,sp,8
	lla	a6,caml_local_roots
	sd	a4,24(sp)
	ld	a5,8(a0)
	ld	a4,8(a4)
	ld	a7,0(a6)
	sd	a5,32(sp)
	ld	a2,16(a0)
	sd	a1,72(sp)
	addi	a1,sp,48
	sd	a1,112(sp)
	addi	a1,sp,112
	sd	a1,0(a6)
	addi	a1,sp,24
	sd	a1,136(sp)
	addi	a1,sp,32
	srai	a3,a2,1
	srai	a5,a5,1
	sd	a1,144(sp)
	addi	a1,sp,40
	sext.w	a5,a5
	sd	a2,40(sp)
	sd	a7,48(sp)
	sd	a1,152(sp)
	sext.w	a3,a3
	li	a2,7
	add	a4,a4,a5
	li	a5,0
	bleu	a3,a2,.L3
	addi	a3,a3,-8
	srli	a2,a3,3
	addi	a1,a2,1
	addi	t1,a4,8
	slli	a1,a1,3
	ld	a5,0(a4)
	mv	a0,t1
	add	a4,a4,a1
	beq	a0,a4,.L23
.L5:
	ld	a1,0(a0)
	addi	a0,a0,8
	add	a5,a5,a1
	sgtu	a1,a1,a5
	add	a5,a5,a1
	bne	a0,a4,.L5
.L23:
	slli	a4,a2,3
	mv	a2,a4
	sub	a3,a3,a2
	add	a4,t1,a4
.L3:
	li	a2,1
	bleu	a3,a2,.L6
	mv	a1,a4
	add	t3,a4,a3
	li	t1,1
.L8:
	lhu	a2,0(a1)
	addi	a1,a1,2
	sub	a0,t3,a1
	add	a5,a5,a2
	sgtu	a2,a2,a5
	add	a5,a5,a2
	bgtu	a0,t1,.L8
	addi	a2,a3,-2
	andi	a2,a2,-2
	addi	a2,a2,2
	add	a4,a4,a2
	andi	a3,a3,1
.L6:
	beq	a3,zero,.L9
	lbu	a4,0(a4)
	add	a5,a5,a4
	bgtu	a4,a5,.L10
.L9:
	li	a3,65536
	srli	a4,a5,16
	addi	a3,a3,-1
	beq	a4,zero,.L12
.L11:
	and	a5,a5,a3
	add	a5,a5,a4
	srli	a4,a5,16
	bne	a4,zero,.L11
.L12:
	not	a5,a5
	srli	a0,a5,8
	andi	a0,a0,255
	slli	a5,a5,8
	or	a0,a5,a0
	slli	a0,a0,48
	srli	a0,a0,47
	sd	a7,0(a6)
	addi	a0,a0,1
	addi	sp,sp,176
	jr	ra
.L10:
	addi	a5,a5,1
	j	.L12
	.size	caml_tcpip_ones_complement_checksum, .-caml_tcpip_ones_complement_checksum
	.align	1
	.globl	caml_tcpip_ones_complement_checksum_list
	.type	caml_tcpip_ones_complement_checksum_list, @function
caml_tcpip_ones_complement_checksum_list:
	addi	sp,sp,-176
	addi	a4,sp,8
	sd	a4,72(sp)
	addi	a4,sp,48
	lla	a7,caml_local_roots
	sd	a4,112(sp)
	addi	a4,sp,112
	ld	t1,0(a7)
	sd	a4,0(a7)
	li	a4,4
	sd	a4,120(sp)
	addi	a4,sp,16
	sd	a4,136(sp)
	addi	a4,sp,24
	sd	a4,144(sp)
	addi	a4,sp,32
	li	a5,1
	sd	a4,152(sp)
	addi	a4,sp,40
	sd	a0,8(sp)
	sd	t1,48(sp)
	sd	a5,64(sp)
	sd	a5,56(sp)
	sd	a5,16(sp)
	sd	a5,24(sp)
	sd	a5,32(sp)
	sd	a5,40(sp)
	sd	a5,128(sp)
	sd	a4,160(sp)
	beq	a0,a5,.L61
	li	a5,0
	li	t6,0
	li	a1,0
	li	a2,159
	li	t3,7
	li	a6,1
.L57:
	ld	a3,0(a0)
	sd	a3,16(sp)
	ld	a0,8(a0)
	sd	a0,8(sp)
	ld	t5,0(a3)
	sd	t5,24(sp)
	ld	t4,8(a3)
	sd	t4,32(sp)
	ld	a4,16(a3)
	srai	a3,a4,1
	sd	a4,40(sp)
	sext.w	a3,a3
	bne	a3,zero,.L85
.L26:
	bne	a0,a6,.L57
.L87:
	beq	t6,zero,.L58
	andi	a1,a1,0xff
	add	a5,a5,a1
	bgtu	a1,a5,.L59
.L58:
	li	a3,65536
	srli	a4,a5,16
	addi	a3,a3,-1
	beq	a4,zero,.L84
.L60:
	and	a5,a5,a3
	add	a5,a5,a4
	srli	a4,a5,16
	bne	a4,zero,.L60
.L84:
	not	a5,a5
	srli	a0,a5,8
	andi	a0,a0,255
	slli	a5,a5,8
.L83:
	or	a0,a5,a0
	slli	a0,a0,48
	srli	a0,a0,47
	sd	t1,0(a7)
	addi	a0,a0,1
	addi	sp,sp,176
	jr	ra
.L85:
	ld	a4,8(t5)
	srai	t4,t4,1
	sext.w	t4,t4
	add	a4,a4,t4
	beq	t6,zero,.L82
	lbu	t4,0(a4)
	slliw	a1,a1,8
	addi	a4,a4,1
	addw	a1,a1,t4
	srli	t4,a1,8
	andi	t4,t4,255
	slliw	a1,a1,8
	or	a1,a1,t4
	slli	a1,a1,48
	srli	a1,a1,48
	add	a5,a5,a1
	sgtu	t4,a1,a5
	add	a5,a5,t4
	addi	a3,a3,-1
.L82:
	bleu	a3,a2,.L86
.L50:
	ld	t6,0(a4)
	ld	t4,8(a4)
	ld	t5,16(a4)
	add	a5,t6,a5
	sgtu	t6,t6,a5
	add	a5,a5,t6
	add	a5,a5,t4
	sgtu	t4,t4,a5
	add	a5,a5,t4
	add	a5,a5,t5
	ld	t4,24(a4)
	sgtu	t5,t5,a5
	add	a5,a5,t5
	add	a5,a5,t4
	ld	t5,32(a4)
	sgtu	t4,t4,a5
	add	a5,a5,t4
	add	a5,a5,t5
	ld	t4,40(a4)
	sgtu	t5,t5,a5
	add	a5,a5,t5
	add	a5,a5,t4
	ld	t5,48(a4)
	sgtu	t4,t4,a5
	add	a5,a5,t4
	add	a5,a5,t5
	ld	t4,56(a4)
	sgtu	t5,t5,a5
	add	a5,a5,t5
	add	a5,a5,t4
	ld	t5,64(a4)
	sgtu	t4,t4,a5
	add	a5,a5,t4
	add	a5,a5,t5
	ld	t4,72(a4)
	sgtu	t5,t5,a5
	add	a5,a5,t5
	add	a5,a5,t4
	ld	t5,80(a4)
	sgtu	t4,t4,a5
	add	a5,a5,t4
	add	a5,a5,t5
	ld	t4,88(a4)
	sgtu	t5,t5,a5
	add	a5,a5,t5
	add	a5,a5,t4
	ld	t5,96(a4)
	sgtu	t4,t4,a5
	add	a5,a5,t4
	add	a5,a5,t5
	ld	t4,104(a4)
	sgtu	t5,t5,a5
	add	a5,a5,t5
	add	a5,a5,t4
	ld	t5,112(a4)
	sgtu	t4,t4,a5
	add	a5,a5,t4
	add	a5,a5,t5
	ld	t4,120(a4)
	sgtu	t5,t5,a5
	add	a5,a5,t5
	add	a5,a5,t4
	ld	t5,128(a4)
	sgtu	t4,t4,a5
	add	a5,a5,t4
	add	a5,a5,t5
	ld	t4,136(a4)
	sgtu	t5,t5,a5
	add	a5,a5,t5
	add	a5,a5,t4
	ld	t5,144(a4)
	sgtu	t4,t4,a5
	add	a5,a5,t4
	add	a5,a5,t5
	ld	t4,152(a4)
	sgtu	t5,t5,a5
	add	a5,a5,t5
	add	a5,a5,t4
	sgtu	t4,t4,a5
	addi	a3,a3,-160
	addi	a4,a4,160
	add	a5,a5,t4
	bgtu	a3,a2,.L50
.L86:
	bleu	a3,t3,.L62
	addi	t5,a3,-8
	andi	t5,t5,-8
	addi	t5,t5,8
	add	t5,a4,t5
.L53:
	ld	t4,0(a4)
	addi	a4,a4,8
	add	a5,a5,t4
	sgtu	t4,t4,a5
	add	a5,a5,t4
	bne	a4,t5,.L53
	andi	a3,a3,7
.L51:
	mv	t4,a3
	bleu	a3,a6,.L54
	mv	t4,t5
	add	t0,t5,a3
.L56:
	lhu	a4,0(t4)
	addi	t4,t4,2
	sub	t6,t0,t4
	add	a5,a5,a4
	sgtu	a4,a4,a5
	add	a5,a5,a4
	bgtu	t6,a6,.L56
	addi	a4,a3,-2
	andi	a4,a4,-2
	addi	a4,a4,2
	andi	t4,a3,1
	add	t5,t5,a4
.L54:
	li	t6,0
	beq	t4,zero,.L26
	lbu	a1,0(t5)
	li	t6,1
	bne	a0,a6,.L57
	j	.L87
.L59:
	addi	a5,a5,1
	not	a5,a5
	srli	a4,a5,8
	slli	a0,a5,8
	andi	a5,a4,255
	j	.L83
.L62:
	mv	t5,a4
	j	.L51
.L61:
	li	a0,131072
	sd	t1,0(a7)
	addi	a0,a0,-1
	addi	sp,sp,176
	jr	ra
	.size	caml_tcpip_ones_complement_checksum_list, .-caml_tcpip_ones_complement_checksum_list
	.ident	"GCC: (GNU) 9.2.0"
