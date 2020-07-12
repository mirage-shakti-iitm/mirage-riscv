	.file ""
	.section .data
	.globl	camlOS__Time__data_begin
	.type	camlOS__Time__data_begin, @object
camlOS__Time__data_begin:
	.section .text
	.globl	camlOS__Time__code_begin
	.type	camlOS__Time__code_begin, @object
camlOS__Time__code_begin:
	.section .data
	.quad	18176
	.globl	camlOS__Time
	.type	camlOS__Time, @object
camlOS__Time:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.section .data
	.globl	camlOS__Time__gc_roots
	.type	camlOS__Time__gc_roots, @object
camlOS__Time__gc_roots:
	.quad	camlOS__Time
	.quad	0
	.globl	camlOS__Time__of_nanoseconds_1106
	.type	camlOS__Time__of_nanoseconds_1106, @function
	.section .text
	.align	2
camlOS__Time__of_nanoseconds_1106:
	checkcap	-1
L100:
	ret
	.size	camlOS__Time__of_nanoseconds_1106, .-camlOS__Time__of_nanoseconds_1106
	.globl	camlOS__Time__.2b_1108
	.type	camlOS__Time__.2b_1108, @function
	.section .text
	.align	2
camlOS__Time__.2b_1108:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L101:
L103:
	addi	s10, s10, -24
	addi	a2, s10, 8
	bltu	s10, s11, L104
	li	a3, 2303
	sd	a3, -8(a2)
	la	a4, caml_int64_ops
	sd	a4, 0(a2)
	ld	a5, 8(a1)
	ld	a6, 8(a0)
	add	a7, a6, a5
	sd	a7, 8(a2)
	mv      a0, a2
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L104:
	call	caml_call_gc
L102:
	j	L103
	.size	camlOS__Time__.2b_1108, .-camlOS__Time__.2b_1108
	.globl	camlOS__Time__.2d_1147
	.type	camlOS__Time__.2d_1147, @function
	.section .text
	.align	2
camlOS__Time__.2d_1147:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L105:
L107:
	addi	s10, s10, -24
	addi	a2, s10, 8
	bltu	s10, s11, L108
	li	a3, 2303
	sd	a3, -8(a2)
	la	a4, caml_int64_ops
	sd	a4, 0(a2)
	ld	a5, 8(a1)
	ld	a6, 8(a0)
	sub	a7, a6, a5
	sd	a7, 8(a2)
	mv      a0, a2
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L108:
	call	caml_call_gc
L106:
	j	L107
	.size	camlOS__Time__.2d_1147, .-camlOS__Time__.2d_1147
	.globl	camlOS__Time__interval_1148
	.type	camlOS__Time__interval_1148, @function
	.section .text
	.align	2
camlOS__Time__interval_1148:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L109:
L111:
	addi	s10, s10, -24
	addi	a2, s10, 8
	bltu	s10, s11, L112
	li	a3, 2303
	sd	a3, -8(a2)
	la	a4, caml_int64_ops
	sd	a4, 0(a2)
	ld	a5, 8(a1)
	ld	a6, 8(a0)
	sub	a7, a6, a5
	sd	a7, 8(a2)
	mv      a0, a2
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L112:
	call	caml_call_gc
L110:
	j	L111
	.size	camlOS__Time__interval_1148, .-camlOS__Time__interval_1148
	.globl	camlOS__Time__compare_1155
	.type	camlOS__Time__compare_1155, @function
	.section .text
	.align	2
camlOS__Time__compare_1155:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L114:
	ld	a3, 0(a1)
	ld	a1, 8(a3)
	ld	a5, 0(a0)
	ld	a0, 8(a5)
	call	caml_int64_compare_unboxed
	slli	s2, a0, 1
	addi	s3, s2, 1
	li	s4, 2
	sub	a0, s4, s3
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlOS__Time__compare_1155, .-camlOS__Time__compare_1155
	.globl	camlOS__Time__invert_comparison_1158
	.type	camlOS__Time__invert_comparison_1158, @function
	.section .text
	.align	2
camlOS__Time__invert_comparison_1158:
	checkcap	-1
L115:
	li	a1, 2
	sub	a0, a1, a0
	ret
	.size	camlOS__Time__invert_comparison_1158, .-camlOS__Time__invert_comparison_1158
	.globl	camlOS__Time__sleep_ns_1807
	.type	camlOS__Time__sleep_ns_1807, @function
	.section .text
	.align	2
camlOS__Time__sleep_ns_1807:
	checkcap	-1
	addi	sp, sp, -32
	sd	ra, 24(sp)
L120:
	ld	a2, 8(a0)
	slli	a3, a2, 1
	srai	a4, a3, 1
	srli	a5, a4, 63
	li	a6, 3279421168659475843
	mulh	a7, a4, a6
	srai	s2, a7, 4
	add	s3, s2, a5
	sd	s3, 0(sp)
	li	a0, 1
	call	camlLwt__task_1102478
L116:
	sd	a0, 8(sp)
	ld	s6, 0(a0)
	sd	s6, 16(sp)
	li	a0, 1
	la	t2, caml_get_monotonic_time
	call	caml_c_call
L117:
	ld	s9, 8(a0)
	ld	s7, 0(sp)
	add	t2, s9, s7
L122:
	addi	s10, s10, -80
	addi	t3, s10, 8
	bltu	s10, s11, L123
	li	t4, 2303
	sd	t4, -8(t3)
	la	t5, caml_int64_ops
	sd	t5, 0(t3)
	sd	t2, 8(t3)
	addi	s2, t3, 24
	li	t6, 3072
	sd	t6, -8(s2)
	sd	t3, 0(s2)
	li	a0, 1
	sd	a0, 8(s2)
	ld	s8, 8(sp)
	ld	a1, 8(s8)
	sd	a1, 16(s2)
	addi	a1, t3, 56
	li	a3, 2048
	sd	a3, -8(a1)
	sd	s2, 0(a1)
	la	a4, camlOS__Time
	ld	a0, 24(a4)
	ld	a6, 0(a0)
	sd	a6, 8(a1)
	call	caml_modify
L125:
	addi	s10, s10, -32
	addi	a1, s10, 8
	bltu	s10, s11, L126
	li	s4, 3319
	sd	s4, -8(a1)
	la	s5, camlOS__Time__fun_101984
	sd	s5, 0(a1)
	li	s6, 3
	sd	s6, 8(a1)
	sd	s2, 16(a1)
	ld	a0, 16(sp)
	call	camlLwt__on_cancel_6902767
L119:
	ld	a0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
L126:
	call	caml_call_gc
L124:
	j	L125
L123:
	call	caml_call_gc
L121:
	j	L122
	.size	camlOS__Time__sleep_ns_1807, .-camlOS__Time__sleep_ns_1807
	.globl	camlOS__Time__fun_101984
	.type	camlOS__Time__fun_101984, @function
	.section .text
	.align	2
camlOS__Time__fun_101984:
	checkcap	-1
L127:
	ld	a2, 16(a1)
	li	a3, 3
	sd	a3, 8(a2)
	li	a0, 1
	ret
	.size	camlOS__Time__fun_101984, .-camlOS__Time__fun_101984
	.globl	camlOS__Time__timeout_1816
	.type	camlOS__Time__timeout_1816, @function
	.section .text
	.align	2
camlOS__Time__timeout_1816:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L130:
	call	camlOS__Time__sleep_ns_1807
L128:
	la	a1, camlOS__Time__18
	ld	ra, 8(sp)
	addi	sp, sp, 16
	csrwi	utailcall, 1
	tail	camlLwt__bind_1902553
	.size	camlOS__Time__timeout_1816, .-camlOS__Time__timeout_1816
	.globl	camlOS__Time__fun_101988
	.type	camlOS__Time__fun_101988, @function
	.section .text
	.align	2
camlOS__Time__fun_101988:
	checkcap	-1
L132:
	la	a1, camlOS__Time
	ld	a0, 40(a1)
	csrwi	utailcall, 1
	tail	camlLwt__fail_1102424
	.size	camlOS__Time__fun_101988, .-camlOS__Time__fun_101988
	.globl	camlOS__Time__with_timeout_1820
	.type	camlOS__Time__with_timeout_1820, @function
	.section .text
	.align	2
camlOS__Time__with_timeout_1820:
	checkcap	-1
	addi	sp, sp, -32
	sd	ra, 24(sp)
L136:
	sd	a0, 0(sp)
	mv      a0, a1
	li	a1, 1
	call	camlLwt__apply_12103138
L133:
L138:
	addi	s10, s10, -24
	addi	a4, s10, 8
	bltu	s10, s11, L139
	sd	a4, 8(sp)
	li	a5, 2048
	sd	a5, -8(a4)
	sd	a0, 0(a4)
	li	a6, 1
	sd	a6, 8(a4)
	ld	a0, 0(sp)
	call	camlOS__Time__timeout_1816
L134:
L141:
	addi	s10, s10, -24
	addi	s2, s10, 8
	bltu	s10, s11, L142
	li	s3, 2048
	sd	s3, -8(s2)
	sd	a0, 0(s2)
	ld	s5, 8(sp)
	sd	s5, 8(s2)
	mv      a0, s2
	ld	ra, 24(sp)
	addi	sp, sp, 32
	csrwi	utailcall, 1
	tail	camlLwt__pick_9803004
L142:
	call	caml_call_gc
L140:
	j	L141
L139:
	call	caml_call_gc
L137:
	j	L138
	.size	camlOS__Time__with_timeout_1820, .-camlOS__Time__with_timeout_1820
	.globl	camlOS__Time__in_the_past_1823
	.type	camlOS__Time__in_the_past_1823, @function
	.section .text
	.align	2
camlOS__Time__in_the_past_1823:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L145:
	mv      a2, a0
	li	a3, 0
	ld	a4, 8(a1)
	beq	a4, a3, L144
	sd	a1, 0(sp)
	li	a0, 1
	ld	a5, 0(a2)
	mv      a1, a2
	jalr	a5
L143:
	addi	a7, a0, 8
	ld	s2, 0(a7)
	ld	s8, 0(sp)
	ld	s3, 8(s8)
	slt	s4, s2, s3
	xori	s4, s4, 1
	slli	s5, s4, 1
	addi	a0, s5, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L144:
	li	a0, 3
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlOS__Time__in_the_past_1823, .-camlOS__Time__in_the_past_1823
	.globl	camlOS__Time__restart_threads_1826
	.type	camlOS__Time__restart_threads_1826, @function
	.section .text
	.align	2
camlOS__Time__restart_threads_1826:
	checkcap	-1
	addi	sp, sp, -32
	sd	ra, 24(sp)
L158:
	sd	a0, 8(sp)
	addi	sp, sp, -16
	jal	L156
	la	a7, camlBinary_heap
	ld	s2, 0(a7)
	bne	a0, s2, L157
	li	a0, 1
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
L157:
	call	caml_raise_exn
L159:
L156:
	sd	ra, 8(sp)
	sd	s1, 0(sp)
	mv	s1, sp
	la	a2, camlOS__Time
	ld	a0, 16(a2)
	call	camlBinary_heap__maximum_1074
L146:
	sd	a0, 16(sp)
	ld	s1, 0(sp)
	addi	sp, sp, 16
	j	L153
	sd	ra, 8(sp)
	sd	s1, 0(sp)
	mv	s1, sp
	ld	s1, 0(sp)
	addi	sp, sp, 16
L153:
	ld	s4, 8(a0)
	li	s5, 1
	beq	s4, s5, L155
	la	a3, camlOS__Time
	ld	a4, 8(a3)
	ld	a1, 32(a4)
	ld	a0, 16(a3)
	call	camlBinary_heap__remove_1076
L151:
	ld	a0, 8(sp)
	csrwi	utailcall, 1
	j	L158
L155:
	ld	a1, 0(a0)
	ld	a0, 8(sp)
	call	camlOS__Time__in_the_past_1823
L147:
	li	s8, 1
	beq	a0, s8, L154
	la	t2, camlOS__Time
	ld	t3, 8(t2)
	ld	a1, 32(t3)
	ld	a0, 16(t2)
	call	camlBinary_heap__remove_1076
L148:
	ld	s4, 0(sp)
	ld	a1, 16(s4)
	la	a2, camlOS__Time__3
	la	a0, camlLwt__23
	call	camlLwt__wakeup_general_402349
L149:
	ld	a0, 8(sp)
	csrwi	utailcall, 1
	j	L158
L154:
	li	a0, 1
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
	.size	camlOS__Time__restart_threads_1826, .-camlOS__Time__restart_threads_1826
	.globl	camlOS__Time__min_timeout_1830
	.type	camlOS__Time__min_timeout_1830, @function
	.section .text
	.align	2
camlOS__Time__min_timeout_1830:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L163:
	li	a2, 1
	beq	a0, a2, L161
	li	a3, 1
	beq	a1, a3, L162
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	call	camlStdlib__min_1028
L160:
L165:
	addi	s10, s10, -16
	addi	a7, s10, 8
	bltu	s10, s11, L166
	li	s2, 1024
	sd	s2, -8(a7)
	sd	a0, 0(a7)
	mv      a0, a7
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L162:
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L161:
	mv      a0, a1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L166:
	call	caml_call_gc
L164:
	j	L165
	.size	camlOS__Time__min_timeout_1830, .-camlOS__Time__min_timeout_1830
	.globl	camlOS__Time__get_next_timeout_1837
	.type	camlOS__Time__get_next_timeout_1837, @function
	.section .text
	.align	2
camlOS__Time__get_next_timeout_1837:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L174:
	addi	sp, sp, -16
	jal	L172
	la	a7, camlBinary_heap
	ld	s2, 0(a7)
	bne	a0, s2, L173
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L173:
	call	caml_raise_exn
L175:
L172:
	sd	ra, 8(sp)
	sd	s1, 0(sp)
	mv	s1, sp
	la	a2, camlOS__Time
	ld	a0, 16(a2)
	call	camlBinary_heap__maximum_1074
L167:
	ld	s1, 0(sp)
	addi	sp, sp, 16
	j	L170
	sd	ra, 8(sp)
	sd	s1, 0(sp)
	mv	s1, sp
	ld	s1, 0(sp)
	addi	sp, sp, 16
L170:
	ld	s4, 8(a0)
	li	s5, 1
	beq	s4, s5, L171
	la	s9, camlOS__Time
	ld	t2, 8(s9)
	ld	a1, 32(t2)
	ld	a0, 16(s9)
	call	camlBinary_heap__remove_1076
L168:
	li	a0, 1
	csrwi	utailcall, 1
	j	L174
L171:
L177:
	addi	s10, s10, -16
	addi	s6, s10, 8
	bltu	s10, s11, L178
	li	s7, 1024
	sd	s7, -8(s6)
	ld	s8, 0(a0)
	sd	s8, 0(s6)
	mv      a0, s6
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L178:
	call	caml_call_gc
L176:
	j	L177
	.size	camlOS__Time__get_next_timeout_1837, .-camlOS__Time__get_next_timeout_1837
	.globl	camlOS__Time__select_next_101842
	.type	camlOS__Time__select_next_101842, @function
	.section .text
	.align	2
camlOS__Time__select_next_101842:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L182:
	la	a1, camlOS__Time
	ld	a2, 24(a1)
	ld	a1, 0(a2)
	la	a0, camlOS__Time__17
	call	camlStdlib__list__iter_1151
L179:
	li	a1, 1
	la	a6, camlOS__Time
	ld	a0, 24(a6)
	call	caml_modify
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	csrwi	utailcall, 1
	tail	camlOS__Time__get_next_timeout_1837
	.size	camlOS__Time__select_next_101842, .-camlOS__Time__select_next_101842
	.globl	camlOS__Time__fun_101999
	.type	camlOS__Time__fun_101999, @function
	.section .text
	.align	2
camlOS__Time__fun_101999:
	checkcap	-1
L184:
	mv      a1, a0
	la	a3, camlOS__Time
	ld	a2, 8(a3)
	ld	a2, 16(a2)
	ld	a0, 16(a3)
	csrwi	utailcall, 1
	tail	camlBinary_heap__add_1066
	.size	camlOS__Time__fun_101999, .-camlOS__Time__fun_101999
	.section .data
	.quad	3063
camlOS__Time__17:
	.quad	camlOS__Time__fun_101999
	.quad	3
	.section .data
	.quad	3063
camlOS__Time__18:
	.quad	camlOS__Time__fun_101988
	.quad	3
	.section .data
	.quad	3063
camlOS__Time__19:
	.quad	camlOS__Time__invert_comparison_1158
	.quad	3
	.section .data
	.quad	3068
	.globl	camlOS__Time__1
	.type	camlOS__Time__1, @object
camlOS__Time__1:
	.byte	79,83,46,84,105,109,101,46,84,105,109,101,111,117,116
	.byte	0
	.section .data
	.quad	3071
camlOS__Time__2:
	.quad	caml_int64_ops
	.quad	0
	.section .data
	.quad	1792
camlOS__Time__3:
	.quad	1
	.section .data
	.quad	3063
camlOS__Time__4:
	.quad	camlOS__Time__select_next_101842
	.quad	3
	.section .data
	.quad	3063
camlOS__Time__5:
	.quad	camlOS__Time__get_next_timeout_1837
	.quad	3
	.section .data
	.quad	4087
camlOS__Time__6:
	.quad	caml_curry2
	.quad	5
	.quad	camlOS__Time__min_timeout_1830
	.section .data
	.quad	3063
camlOS__Time__7:
	.quad	camlOS__Time__restart_threads_1826
	.quad	3
	.section .data
	.quad	4087
camlOS__Time__8:
	.quad	caml_curry2
	.quad	5
	.quad	camlOS__Time__in_the_past_1823
	.section .data
	.quad	4087
camlOS__Time__9:
	.quad	caml_curry2
	.quad	5
	.quad	camlOS__Time__with_timeout_1820
	.section .data
	.quad	3063
camlOS__Time__10:
	.quad	camlOS__Time__timeout_1816
	.quad	3
	.section .data
	.quad	3063
camlOS__Time__11:
	.quad	camlOS__Time__sleep_ns_1807
	.quad	3
	.section .data
	.quad	4087
camlOS__Time__12:
	.quad	caml_curry2
	.quad	5
	.quad	camlOS__Time__compare_1155
	.section .data
	.quad	4087
camlOS__Time__13:
	.quad	caml_curry2
	.quad	5
	.quad	camlOS__Time__interval_1148
	.section .data
	.quad	4087
camlOS__Time__14:
	.quad	caml_curry2
	.quad	5
	.quad	camlOS__Time__.2d_1147
	.section .data
	.quad	4087
camlOS__Time__15:
	.quad	caml_curry2
	.quad	5
	.quad	camlOS__Time__.2b_1108
	.section .data
	.quad	3063
camlOS__Time__16:
	.quad	camlOS__Time__of_nanoseconds_1106
	.quad	3
	.globl	camlOS__Time__entry
	.type	camlOS__Time__entry, @function
	.section .text
	.align	2
camlOS__Time__entry:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L188:
	la	a0, camlOS__Time__16
	la	a1, camlOS__Time
	sd	a0, 104(a1)
	la	a2, camlOS__Time__15
	sd	a2, 112(a1)
	la	a4, camlOS__Time__14
	sd	a4, 120(a1)
	la	a6, camlOS__Time__13
	sd	a6, 128(a1)
L190:
	addi	s10, s10, -56
	addi	s2, s10, 8
	bltu	s10, s11, L191
	li	s3, 4096
	sd	s3, -8(s2)
	ld	s5, 104(a1)
	sd	s5, 0(s2)
	ld	s7, 112(a1)
	sd	s7, 8(s2)
	ld	s9, 120(a1)
	sd	s9, 16(s2)
	ld	t3, 128(a1)
	sd	t3, 24(s2)
	sd	s2, 0(a1)
	la	t5, camlOS__Time__12
	addi	a0, s2, 40
	li	a1, 1024
	sd	a1, -8(a0)
	sd	t5, 0(a0)
	call	camlBinary_heap__fun_1588
L185:
	la	a2, camlOS__Time
	sd	a0, 8(a2)
	li	a0, 3
	call	camlBinary_heap__create_1011
L186:
	la	a5, camlOS__Time
	sd	a0, 16(a5)
L193:
	addi	s10, s10, -16
	addi	a6, s10, 8
	bltu	s10, s11, L194
	li	a7, 1024
	sd	a7, -8(a6)
	li	s2, 1
	sd	s2, 0(a6)
	sd	a6, 24(a5)
	la	s4, camlOS__Time__11
	sd	s4, 32(a5)
	li	a0, 1
	call	caml_fresh_oo_id
L196:
	addi	s10, s10, -24
	addi	s8, s10, 8
	bltu	s10, s11, L197
	li	s9, 2296
	sd	s9, -8(s8)
	la	t2, camlOS__Time__1
	sd	t2, 0(s8)
	sd	a0, 8(s8)
	la	t3, camlOS__Time
	sd	s8, 40(t3)
	la	t4, camlOS__Time__10
	sd	t4, 48(t3)
	la	t6, camlOS__Time__9
	sd	t6, 56(t3)
	la	a1, camlOS__Time__8
	sd	a1, 64(t3)
	la	a3, camlOS__Time__7
	sd	a3, 72(t3)
	la	a5, camlOS__Time__6
	sd	a5, 80(t3)
	la	a7, camlOS__Time__5
	sd	a7, 88(t3)
	la	s3, camlOS__Time__4
	sd	s3, 96(t3)
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L197:
	call	caml_call_gc
L195:
	j	L196
L194:
	call	caml_call_gc
L192:
	j	L193
L191:
	call	caml_call_gc
L189:
	j	L190
	.size	camlOS__Time__entry, .-camlOS__Time__entry
	.section .data
	.quad	caml_get_monotonic_time
	.section .text
	.globl	camlOS__Time__code_end
	.type	camlOS__Time__code_end, @object
camlOS__Time__code_end:
	.long	0
	.section .data
	.globl	camlOS__Time__data_end
	.type	camlOS__Time__data_end, @object
camlOS__Time__data_end:
	.quad	0
	.section .rodata
	.globl	camlOS__Time__frametable
	.type	camlOS__Time__frametable, @object
camlOS__Time__frametable:
	.quad	32
	.quad	L195
	.short	17
	.short	1
	.short	1
	.align	3
	.quad	L198
	.quad	L192
	.short	17
	.short	1
	.short	11
	.align	3
	.quad	L199
	.quad	L186
	.short	17
	.short	0
	.align	3
	.quad	L200
	.quad	L185
	.short	17
	.short	0
	.align	3
	.quad	L201
	.quad	L189
	.short	17
	.short	1
	.short	3
	.align	3
	.quad	L202
	.quad	L179
	.short	17
	.short	0
	.align	3
	.quad	L203
	.quad	L176
	.short	17
	.short	1
	.short	1
	.align	3
	.quad	L204
	.quad	L168
	.short	17
	.short	0
	.align	3
	.quad	L205
	.quad	L167
	.short	33
	.short	0
	.align	3
	.quad	L206
	.quad	L175
	.short	16
	.short	0
	.align	3
	.quad	L164
	.short	17
	.short	1
	.short	1
	.align	3
	.quad	L207
	.quad	L160
	.short	17
	.short	0
	.align	3
	.quad	L208
	.quad	L149
	.short	33
	.short	1
	.short	8
	.align	3
	.quad	L209
	.quad	L148
	.short	33
	.short	2
	.short	0
	.short	8
	.align	3
	.quad	L211
	.quad	L147
	.short	33
	.short	2
	.short	0
	.short	8
	.align	3
	.quad	L212
	.quad	L151
	.short	33
	.short	1
	.short	8
	.align	3
	.quad	L213
	.quad	L146
	.short	49
	.short	1
	.short	24
	.align	3
	.quad	L214
	.quad	L159
	.short	32
	.short	0
	.align	3
	.quad	L143
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L215
	.quad	L140
	.short	33
	.short	2
	.short	1
	.short	8
	.align	3
	.quad	L216
	.quad	L134
	.short	33
	.short	1
	.short	8
	.align	3
	.quad	L217
	.quad	L137
	.short	33
	.short	2
	.short	0
	.short	1
	.align	3
	.quad	L218
	.quad	L133
	.short	33
	.short	1
	.short	0
	.align	3
	.quad	L219
	.quad	L128
	.short	17
	.short	0
	.align	3
	.quad	L220
	.quad	L119
	.short	33
	.short	1
	.short	16
	.align	3
	.quad	L221
	.quad	L124
	.short	33
	.short	2
	.short	16
	.short	17
	.align	3
	.quad	L222
	.quad	L121
	.short	33
	.short	2
	.short	8
	.short	16
	.align	3
	.quad	L223
	.quad	L117
	.short	33
	.short	2
	.short	8
	.short	16
	.align	3
	.quad	L225
	.quad	L116
	.short	33
	.short	0
	.align	3
	.quad	L226
	.quad	L110
	.short	17
	.short	2
	.short	1
	.short	3
	.align	3
	.quad	L227
	.quad	L106
	.short	17
	.short	2
	.short	1
	.short	3
	.align	3
	.quad	L228
	.quad	L102
	.short	17
	.short	2
	.short	1
	.short	3
	.align	3
	.quad	L229
	.align	3
L222:
	.long	(L230 - .) + 0xdc000000
	.long	0x50140
	.quad	0
	.align	3
L221:
	.long	(L230 - .) + 0xdc000000
	.long	0x50020
	.quad	0
	.align	3
L223:
	.long	(L230 - .) + 0x6c000000
	.long	0x260e0
	.quad	L224
	.align	3
L214:
	.long	(L230 - .) + 0x98000000
	.long	0x5d080
	.quad	0
	.align	3
L212:
	.long	(L230 - .) + 0x4000000
	.long	0x622d1
	.quad	0
	.align	3
L201:
	.long	(L230 - .) + 0x60000000
	.long	0x36026
	.quad	0
	.align	3
L229:
	.long	(L230 - .) + 0x6c000000
	.long	0x260e0
	.quad	0
	.align	3
L220:
	.long	(L230 - .) + 0x68000000
	.long	0x55100
	.quad	0
	.align	3
L213:
	.long	(L230 - .) + 0x8c000000
	.long	0x60060
	.quad	0
	.align	3
L207:
	.long	(L230 - .) + 0x8c000000
	.long	0x6f160
	.quad	0
	.align	3
L205:
	.long	(L230 - .) + 0x8c000000
	.long	0x75060
	.quad	0
	.align	3
L203:
	.long	(L230 - .) + 0x14000000
	.long	0x7d021
	.quad	0
	.align	3
L198:
	.long	(L230 - .) + 0x44000000
	.long	0x53000
	.quad	0
	.align	3
L215:
	.long	(L230 - .) + 0x5c000000
	.long	0x5a110
	.quad	0
	.align	3
L208:
	.long	(L230 - .) + 0x8c000000
	.long	0x6f1a0
	.quad	0
	.align	3
L227:
	.long	(L230 - .) + 0x78000000
	.long	0x28110
	.quad	0
	.align	3
L211:
	.long	(L230 - .) + 0x8c000000
	.long	0x63060
	.quad	0
	.align	3
L204:
	.long	(L230 - .) + 0x3c000000
	.long	0x78060
	.quad	0
	.align	3
L225:
	.long	(L230 - .) + 0x70000000
	.long	0x4d150
	.quad	0
	.align	3
L219:
	.long	(L230 - .) + 0xe8000000
	.long	0x572c0
	.quad	0
	.align	3
L210:
	.long	(L230 - .) + 0x68000000
	.long	0x64060
	.quad	0
	.align	3
L228:
	.long	(L230 - .) + 0x6c000000
	.long	0x270e0
	.quad	0
	.align	3
L209:
	.long	(L231 - .) + 0xe8000000
	.long	0x56d130
	.quad	L210
	.align	3
L224:
	.long	(L230 - .) + 0xe4000000
	.long	0x4d150
	.quad	0
	.align	3
L206:
	.long	(L230 - .) + 0x98000000
	.long	0x72080
	.quad	0
	.align	3
L226:
	.long	(L230 - .) + 0x70000000
	.long	0x4c110
	.quad	0
	.align	3
L218:
	.long	(L230 - .) + 0xec000000
	.long	0x572c0
	.quad	0
	.align	3
L200:
	.long	(L230 - .) + 0x94000000
	.long	0x41120
	.quad	0
	.align	3
L199:
	.long	(L230 - .) + 0x5c000000
	.long	0x48110
	.quad	0
	.align	3
L202:
	.long	(L230 - .) + 0x9c000000
	.long	0x1e004
	.quad	0
	.align	3
L217:
	.long	(L230 - .) + 0xa8000000
	.long	0x57210
	.quad	0
	.align	3
L216:
	.long	(L230 - .) + 0xec000000
	.long	0x57200
	.quad	0
L231:
	.byte	115,114,99,47,99,111,114,101,47,108,119,116,46,109,108,0
	.align	3
L230:
	.byte	108,105,98,47,116,105,109,101,46,109,108,0
	.align	3
