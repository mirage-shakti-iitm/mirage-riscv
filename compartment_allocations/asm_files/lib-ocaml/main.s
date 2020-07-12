	.file ""
	.section .data
	.globl	camlOS__Main__data_begin
	.type	camlOS__Main__data_begin, @object
camlOS__Main__data_begin:
	.section .text
	.globl	camlOS__Main__code_begin
	.type	camlOS__Main__code_begin, @object
camlOS__Main__code_begin:
	.section .data
	.quad	14080
	.globl	camlOS__Main
	.type	camlOS__Main, @object
camlOS__Main:
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
	.globl	camlOS__Main__gc_roots
	.type	camlOS__Main__gc_roots, @object
camlOS__Main__gc_roots:
	.quad	camlOS__Main
	.quad	0
	.globl	camlOS__Main__call_hooks_1034
	.type	camlOS__Main__call_hooks_1034, @function
	.section .text
	.align	2
camlOS__Main__call_hooks_1034:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L105:
	sd	a0, 0(sp)
	call	camlLwt_dllist__take_opt_l_1047
L100:
	li	a2, 1
	beq	a0, a2, L104
	la	a1, camlOS__Main__33
	ld	a0, 0(a0)
	call	camlLwt__catch_3902626
L102:
	ld	a0, 0(sp)
	csrwi	utailcall, 1
	j	L105
L104:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	csrwi	utailcall, 1
	tail	camlLwt__return_1102420
	.size	camlOS__Main__call_hooks_1034, .-camlOS__Main__call_hooks_1034
	.globl	camlOS__Main__fun_201818
	.type	camlOS__Main__fun_201818, @function
	.section .text
	.align	2
camlOS__Main__fun_201818:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L110:
	call	camlStdlib__printexc__to_string_1733
L106:
	sd	a0, 0(sp)
	la	a1, camlOS__Main__7
	la	a3, camlStdlib
	ld	a0, 216(a3)
	call	camlStdlib__printf__fprintf_1730
L107:
	mv      a1, a0
	ld	a6, 0(a1)
	ld	a0, 0(sp)
	jalr	a6
L108:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	csrwi	utailcall, 1
	tail	camlLwt__return_1102420
	.size	camlOS__Main__fun_201818, .-camlOS__Main__fun_201818
	.globl	camlOS__Main__wait_for_work_1207
	.type	camlOS__Main__wait_for_work_1207, @function
	.section .text
	.align	2
camlOS__Main__wait_for_work_1207:
	checkcap	-1
L112:
	la	a1, camlOS__Main
	ld	a1, 40(a1)
	li	a0, 1
	csrwi	utailcall, 1
	tail	camlLwt_condition__wait_1131
	.size	camlOS__Main__wait_for_work_1207, .-camlOS__Main__wait_for_work_1207
	.globl	camlOS__Main__err_1210
	.type	camlOS__Main__err_1210, @function
	.section .text
	.align	2
camlOS__Main__err_1210:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L115:
L117:
	addi	s10, s10, -32
	addi	a3, s10, 8
	bltu	s10, s11, L118
	li	a2, 3319
	sd	a2, -8(a3)
	la	a4, camlOS__Main__fun_201825
	sd	a4, 0(a3)
	li	a4, 3
	sd	a4, 8(a3)
	sd	a0, 16(a3)
	la	a5, camlLogs
	ld	a0, 288(a5)
	ld	a1, 40(a5)
	li	a2, 3
	call	camlLogs__kmsg_inner_303120
L113:
	li	a0, 3
	ld	ra, 8(sp)
	addi	sp, sp, 16
	csrwi	utailcall, 1
	tail	camlStdlib__exit_301402
L118:
	call	caml_call_gc
L116:
	j	L117
	.size	camlOS__Main__err_1210, .-camlOS__Main__err_1210
	.globl	camlOS__Main__fun_201825
	.type	camlOS__Main__fun_201825, @function
	.section .text
	.align	2
camlOS__Main__fun_201825:
	checkcap	-1
	addi	sp, sp, -32
	sd	ra, 24(sp)
L122:
	sd	a0, 16(sp)
	sd	a1, 0(sp)
	li	a0, 1
	call	camlStdlib__printexc__get_backtrace_401836
L119:
	sd	a0, 8(sp)
	ld	s3, 0(sp)
	ld	a0, 16(s3)
	call	camlStdlib__printexc__to_string_1733
L120:
	mv      a3, a0
	la	a2, camlOS__Main__21
	li	a1, 1
	li	a0, 1
	ld	a4, 8(sp)
	ld	a5, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	csrwi	utailcall, 1
	tail	caml_apply5
	.size	camlOS__Main__fun_201825, .-camlOS__Main__fun_201825
	.globl	camlOS__Main__run_1222
	.type	camlOS__Main__run_1222, @function
	.section .text
	.align	2
camlOS__Main__run_1222:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L126:
	sd	a0, 0(sp)
	la	a1, camlOS__Main
	ld	a0, 8(a1)
	call	camlOS__Main__call_hooks_1034
L123:
	ld	a1, 0(sp)
	call	camlLwt__.3c.26.3e_12103259
L124:
L128:
	addi	s10, s10, -32
	addi	a1, s10, 8
	bltu	s10, s11, L129
	li	a6, 3319
	sd	a6, -8(a1)
	la	a7, camlOS__Main__aux_1225
	sd	a7, 0(a1)
	li	s2, 3
	sd	s2, 8(a1)
	sd	a0, 16(a1)
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	csrwi	utailcall, 1
	tail	camlOS__Main__aux_1225
L129:
	call	caml_call_gc
L127:
	j	L128
	.size	camlOS__Main__run_1222, .-camlOS__Main__run_1222
	.globl	camlOS__Main__aux_1225
	.type	camlOS__Main__aux_1225, @function
	.section .text
	.align	2
camlOS__Main__aux_1225:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L148:
	sd	a1, 0(sp)
	la	a2, camlLwt
	ld	a1, 400(a2)
	li	a0, 1
	call	camlLwt__wakeup_paused_12103201
L130:
	la	a0, camlOS__Main__36
	call	camlOS__Time__restart_threads_1826
L131:
	addi	sp, sp, -16
	jal	L147
	call	camlOS__Main__err_1210
L133:
	j	L146
L147:
	sd	ra, 8(sp)
	sd	s1, 0(sp)
	mv	s1, sp
	ld	t3, 16(sp)
	ld	a0, 16(t3)
	call	camlLwt__poll_12003132
L132:
	ld	s1, 0(sp)
	addi	sp, sp, 16
L146:
	li	s4, 1
	beq	a0, s4, L145
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L145:
	li	a0, 1
	call	camlOS__Time__select_next_101842
L134:
	li	s7, 1
	beq	a0, s7, L144
	ld	s8, 0(a0)
	ld	s9, 8(s8)
	j	L143
L144:
	li	a0, 1
	la	t2, caml_get_monotonic_time
	call	caml_c_call
L135:
	li	t4, 86400000000000
	ld	t5, 8(a0)
	add	s9, t5, t4
L143:
L150:
	addi	s10, s10, -24
	addi	a0, s10, 8
	bltu	s10, s11, L151
	li	a1, 2303
	sd	a1, -8(a0)
	la	a2, caml_int64_ops
	sd	a2, 0(a0)
	sd	s9, 8(a0)
	la	t2, mirage_riscv_yield
	call	caml_c_call
L136:
	li	a4, 1
	beq	a0, a4, L142
	la	a6, camlOS__Main
	ld	a1, 24(a6)
	la	a0, camlOS__Main__35
	call	camlLwt_dllist__iter_l_1059
L138:
	li	a1, 1
	la	s4, camlOS__Main
	ld	a0, 40(s4)
	call	camlLwt_condition__broadcast_201152
L139:
	la	s6, camlOS__Main
	ld	a1, 16(s6)
	la	a0, camlOS__Main__34
	call	camlLwt_dllist__iter_l_1059
L140:
	li	a0, 1
	ld	a1, 0(sp)
	csrwi	utailcall, 1
	j	L148
L142:
	li	a0, 1
	ld	a1, 0(sp)
	csrwi	utailcall, 1
	j	L148
L151:
	call	caml_call_gc
L149:
	j	L150
	.size	camlOS__Main__aux_1225, .-camlOS__Main__aux_1225
	.globl	camlOS__Main__fun_201841
	.type	camlOS__Main__fun_201841, @function
	.section .text
	.align	2
camlOS__Main__fun_201841:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L153:
	la	t2, caml_get_monotonic_time
	call	caml_c_call
L152:
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlOS__Main__fun_201841, .-camlOS__Main__fun_201841
	.globl	camlOS__Main__fun_201844
	.type	camlOS__Main__fun_201844, @function
	.section .text
	.align	2
camlOS__Main__fun_201844:
	checkcap	-1
L155:
	mv      a1, a0
	li	a0, 1
	ld	a2, 0(a1)
	csrwi	utailcall, 1
	jr	a2
	.size	camlOS__Main__fun_201844, .-camlOS__Main__fun_201844
	.globl	camlOS__Main__fun_201846
	.type	camlOS__Main__fun_201846, @function
	.section .text
	.align	2
camlOS__Main__fun_201846:
	checkcap	-1
L157:
	mv      a1, a0
	li	a0, 1
	ld	a2, 0(a1)
	csrwi	utailcall, 1
	jr	a2
	.size	camlOS__Main__fun_201846, .-camlOS__Main__fun_201846
	.globl	camlOS__Main__fun_201849
	.type	camlOS__Main__fun_201849, @function
	.section .text
	.align	2
camlOS__Main__fun_201849:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L160:
	la	a1, camlOS__Main
	ld	a0, 0(a1)
	call	camlOS__Main__call_hooks_1034
L158:
	ld	ra, 8(sp)
	addi	sp, sp, 16
	csrwi	utailcall, 1
	tail	camlOS__Main__run_1222
	.size	camlOS__Main__fun_201849, .-camlOS__Main__fun_201849
	.globl	camlOS__Main__at_exit_201237
	.type	camlOS__Main__at_exit_201237, @function
	.section .text
	.align	2
camlOS__Main__at_exit_201237:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L162:
	la	a1, camlOS__Main
	ld	a1, 0(a1)
	call	camlLwt_dllist__add_l_1033
L161:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlOS__Main__at_exit_201237, .-camlOS__Main__at_exit_201237
	.globl	camlOS__Main__at_enter_201239
	.type	camlOS__Main__at_enter_201239, @function
	.section .text
	.align	2
camlOS__Main__at_enter_201239:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L164:
	la	a1, camlOS__Main
	ld	a1, 8(a1)
	call	camlLwt_dllist__add_l_1033
L163:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlOS__Main__at_enter_201239, .-camlOS__Main__at_enter_201239
	.globl	camlOS__Main__at_exit_iter_201241
	.type	camlOS__Main__at_exit_iter_201241, @function
	.section .text
	.align	2
camlOS__Main__at_exit_iter_201241:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L166:
	la	a1, camlOS__Main
	ld	a1, 16(a1)
	call	camlLwt_dllist__add_l_1033
L165:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlOS__Main__at_exit_iter_201241, .-camlOS__Main__at_exit_iter_201241
	.globl	camlOS__Main__at_enter_iter_201243
	.type	camlOS__Main__at_enter_iter_201243, @function
	.section .text
	.align	2
camlOS__Main__at_enter_iter_201243:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L168:
	la	a1, camlOS__Main
	ld	a1, 24(a1)
	call	camlLwt_dllist__add_l_1033
L167:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlOS__Main__at_enter_iter_201243, .-camlOS__Main__at_enter_iter_201243
	.section .data
	.quad	3063
camlOS__Main__33:
	.quad	camlOS__Main__fun_201818
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__34:
	.quad	camlOS__Main__fun_201846
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__35:
	.quad	camlOS__Main__fun_201844
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__36:
	.quad	camlOS__Main__fun_201841
	.quad	3
	.section .data
	.quad	7164
camlOS__Main__1:
	.byte	69,82,82,79,82,58,32,99,97,108,108,95,104,111,111,107
	.byte	115,40,41,58,32,85,110,104,97,110,100,108,101,100,32,101
	.byte	120,99,101,112,116,105,111,110,58,32
	.space	5
	.byte	5
	.section .data
	.quad	1802
camlOS__Main__2:
	.quad	1
	.section .data
	.quad	2828
camlOS__Main__3:
	.quad	21
	.quad	camlOS__Main__2
	.section .data
	.quad	2818
camlOS__Main__4:
	.quad	1
	.quad	camlOS__Main__3
	.section .data
	.quad	2827
camlOS__Main__5:
	.quad	camlOS__Main__1
	.quad	camlOS__Main__4
	.section .data
	.quad	7164
camlOS__Main__6:
	.byte	69,82,82,79,82,58,32,99,97,108,108,95,104,111,111,107
	.byte	115,40,41,58,32,85,110,104,97,110,100,108,101,100,32,101
	.byte	120,99,101,112,116,105,111,110,58,32,37,115,10,37,33
	.byte	0
	.section .data
	.quad	2816
camlOS__Main__7:
	.quad	camlOS__Main__5
	.quad	camlOS__Main__6
	.section .data
	.quad	2044
camlOS__Main__15:
	.byte	109,97,105,110,58,32
	.space	1
	.byte	1
	.section .data
	.quad	2818
camlOS__Main__16:
	.quad	1
	.quad	1
	.section .data
	.quad	2828
camlOS__Main__17:
	.quad	21
	.quad	camlOS__Main__16
	.section .data
	.quad	2818
camlOS__Main__18:
	.quad	1
	.quad	camlOS__Main__17
	.section .data
	.quad	2827
camlOS__Main__19:
	.quad	camlOS__Main__15
	.quad	camlOS__Main__18
	.section .data
	.quad	3068
camlOS__Main__20:
	.byte	109,97,105,110,58,32,37,115,10,37,115
	.space	4
	.byte	4
	.section .data
	.quad	2816
camlOS__Main__21:
	.quad	camlOS__Main__19
	.quad	camlOS__Main__20
	.section .data
	.quad	3071
camlOS__Main__23:
	.quad	caml_int64_ops
	.quad	86400000000000
	.section .data
	.quad	3063
camlOS__Main__24:
	.quad	camlOS__Main__at_enter_iter_201243
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__25:
	.quad	camlOS__Main__at_exit_iter_201241
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__26:
	.quad	camlOS__Main__at_enter_201239
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__27:
	.quad	camlOS__Main__at_exit_201237
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__28:
	.quad	camlOS__Main__fun_201849
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__29:
	.quad	camlOS__Main__run_1222
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__30:
	.quad	camlOS__Main__err_1210
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__31:
	.quad	camlOS__Main__wait_for_work_1207
	.quad	3
	.section .data
	.quad	3063
camlOS__Main__32:
	.quad	camlOS__Main__call_hooks_1034
	.quad	3
	.globl	camlOS__Main__entry
	.type	camlOS__Main__entry, @function
	.section .text
	.align	2
camlOS__Main__entry:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L175:
	li	a0, 1
	call	camlLwt_dllist__create_1021
L169:
	la	a2, camlOS__Main
	sd	a0, 0(a2)
	li	a0, 1
	call	camlLwt_dllist__create_1021
L170:
	la	a5, camlOS__Main
	sd	a0, 8(a5)
	li	a0, 1
	call	camlLwt_dllist__create_1021
L171:
	la	s2, camlOS__Main
	sd	a0, 16(s2)
	li	a0, 1
	call	camlLwt_dllist__create_1021
L172:
	la	s5, camlOS__Main
	sd	a0, 24(s5)
	la	s6, camlOS__Main__32
	sd	s6, 32(s5)
	li	a0, 1
	call	camlLwt_sequence__create_1021
L173:
	la	t2, camlOS__Main
	sd	a0, 40(t2)
	la	t3, camlOS__Main__31
	sd	t3, 48(t2)
	la	t5, camlOS__Main__30
	sd	t5, 56(t2)
	la	a0, camlOS__Main__29
	sd	a0, 64(t2)
	la	a0, camlOS__Main__28
	call	camlStdlib__at_exit_301395
L174:
	la	a4, camlOS__Main__27
	la	a5, camlOS__Main
	sd	a4, 72(a5)
	la	a6, camlOS__Main__26
	sd	a6, 80(a5)
	la	s2, camlOS__Main__25
	sd	s2, 88(a5)
	la	s4, camlOS__Main__24
	sd	s4, 96(a5)
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlOS__Main__entry, .-camlOS__Main__entry
	.section .data
	.quad	mirage_riscv_yield
	.section .text
	.globl	camlOS__Main__code_end
	.type	camlOS__Main__code_end, @object
camlOS__Main__code_end:
	.long	0
	.section .data
	.globl	camlOS__Main__data_end
	.type	camlOS__Main__data_end, @object
camlOS__Main__data_end:
	.quad	0
	.section .rodata
	.globl	camlOS__Main__frametable
	.type	camlOS__Main__frametable, @object
camlOS__Main__frametable:
	.quad	35
	.quad	L174
	.short	17
	.short	0
	.align	3
	.quad	L176
	.quad	L173
	.short	17
	.short	0
	.align	3
	.quad	L177
	.quad	L172
	.short	17
	.short	0
	.align	3
	.quad	L178
	.quad	L171
	.short	17
	.short	0
	.align	3
	.quad	L179
	.quad	L170
	.short	17
	.short	0
	.align	3
	.quad	L180
	.quad	L169
	.short	17
	.short	0
	.align	3
	.quad	L181
	.quad	L167
	.short	17
	.short	0
	.align	3
	.quad	L182
	.quad	L165
	.short	17
	.short	0
	.align	3
	.quad	L183
	.quad	L163
	.short	17
	.short	0
	.align	3
	.quad	L184
	.quad	L161
	.short	17
	.short	0
	.align	3
	.quad	L185
	.quad	L158
	.short	17
	.short	0
	.align	3
	.quad	L186
	.quad	L152
	.short	17
	.short	0
	.align	3
	.quad	L187
	.quad	L140
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L188
	.quad	L139
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L189
	.quad	L138
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L190
	.quad	L136
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L191
	.quad	L149
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L192
	.quad	L135
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L194
	.quad	L134
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L195
	.quad	L132
	.short	33
	.short	1
	.short	16
	.align	3
	.quad	L196
	.quad	L133
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L197
	.quad	L131
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L198
	.quad	L130
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L199
	.quad	L127
	.short	17
	.short	1
	.short	1
	.align	3
	.quad	L200
	.quad	L124
	.short	17
	.short	0
	.align	3
	.quad	L201
	.quad	L123
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L202
	.quad	L120
	.short	33
	.short	2
	.short	8
	.short	16
	.align	3
	.quad	L203
	.quad	L119
	.short	33
	.short	2
	.short	0
	.short	16
	.align	3
	.quad	L204
	.quad	L113
	.short	17
	.short	0
	.align	3
	.quad	L205
	.quad	L116
	.short	17
	.short	1
	.short	1
	.align	3
	.quad	L207
	.quad	L108
	.short	17
	.short	0
	.align	3
	.quad	L208
	.quad	L107
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L209
	.quad	L106
	.short	17
	.short	0
	.align	3
	.quad	L210
	.quad	L102
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L211
	.quad	L100
	.short	17
	.short	1
	.short	0
	.align	3
	.quad	L212
	.align	3
L203:
	.long	(L213 - .) + 0xf8000000
	.long	0x37260
	.quad	0
	.align	3
L192:
	.long	(L214 - .) + 0x6c000000
	.long	0x260e0
	.quad	L193
	.align	3
L189:
	.long	(L213 - .) + 0xa4000000
	.long	0x4d0a0
	.quad	0
	.align	3
L211:
	.long	(L213 - .) + 0xa4000000
	.long	0x280a2
	.quad	0
	.align	3
L202:
	.long	(L213 - .) + 0x80000000
	.long	0x3c0a0
	.quad	0
	.align	3
L201:
	.long	(L213 - .) + 0x98000000
	.long	0x3c0a0
	.quad	0
	.align	3
L187:
	.long	(L213 - .) + 0xb0000000
	.long	0x3f190
	.quad	0
	.align	3
L185:
	.long	(L213 - .) + 0xd8000000
	.long	0x57170
	.quad	0
	.align	3
L183:
	.long	(L213 - .) + 0x0
	.long	0x591c1
	.quad	0
	.align	3
L206:
	.long	(L213 - .) + 0x6c000000
	.long	0x37021
	.quad	0
	.align	3
L191:
	.long	(L213 - .) + 0x78000000
	.long	0x490b0
	.quad	0
	.align	3
L179:
	.long	(L213 - .) + 0xa8000000
	.long	0x1e160
	.quad	0
	.align	3
L196:
	.long	(L213 - .) + 0x64000000
	.long	0x400f0
	.quad	0
	.align	3
L193:
	.long	(L213 - .) + 0x3c000000
	.long	0x46231
	.quad	0
	.align	3
L190:
	.long	(L213 - .) + 0xf0000000
	.long	0x4b0a0
	.quad	0
	.align	3
L188:
	.long	(L213 - .) + 0xec000000
	.long	0x4f0a0
	.quad	0
	.align	3
L208:
	.long	(L213 - .) + 0x94000000
	.long	0x2a0c1
	.quad	0
	.align	3
L177:
	.long	(L213 - .) + 0x88000000
	.long	0x330b0
	.quad	0
	.align	3
L209:
	.long	(L215 - .) + 0x8c000000
	.long	0x1d110
	.quad	L208
	.align	3
L199:
	.long	(L213 - .) + 0x60000000
	.long	0x3e040
	.quad	0
	.align	3
L182:
	.long	(L213 - .) + 0x8000000
	.long	0x5a1d1
	.quad	0
	.align	3
L210:
	.long	(L213 - .) + 0x94000000
	.long	0x2a4d1
	.quad	0
	.align	3
L204:
	.long	(L213 - .) + 0x68000000
	.long	0x373f1
	.quad	0
	.align	3
L212:
	.long	(L213 - .) + 0x8c000000
	.long	0x22080
	.quad	0
	.align	3
L197:
	.long	(L213 - .) + 0xb4000000
	.long	0x40260
	.quad	0
	.align	3
L194:
	.long	(L213 - .) + 0xa8000000
	.long	0x46230
	.quad	0
	.align	3
L184:
	.long	(L213 - .) + 0xe0000000
	.long	0x58180
	.quad	0
	.align	3
L195:
	.long	(L213 - .) + 0x8c000000
	.long	0x45100
	.quad	0
	.align	3
L186:
	.long	(L213 - .) + 0xdc000000
	.long	0x56200
	.quad	0
	.align	3
L176:
	.long	(L213 - .) + 0xe0000000
	.long	0x56090
	.quad	0
	.align	3
L180:
	.long	(L213 - .) + 0x98000000
	.long	0x1d120
	.quad	0
	.align	3
L207:
	.long	(L213 - .) + 0x6c000000
	.long	0x370b1
	.quad	0
	.align	3
L181:
	.long	(L213 - .) + 0x94000000
	.long	0x1c110
	.quad	0
	.align	3
L200:
	.long	(L213 - .) + 0xa0000000
	.long	0x3d0ec
	.quad	0
	.align	3
L198:
	.long	(L213 - .) + 0xb0000000
	.long	0x3f040
	.quad	0
	.align	3
L205:
	.long	(L216 - .) + 0xb8000000
	.long	0xfc140
	.quad	L206
	.align	3
L178:
	.long	(L213 - .) + 0xac000000
	.long	0x1f170
	.quad	0
L216:
	.byte	115,114,99,47,108,111,103,115,46,109,108,0
	.align	3
L215:
	.byte	112,114,105,110,116,102,46,109,108,0
	.align	3
L214:
	.byte	108,105,98,47,116,105,109,101,46,109,108,0
	.align	3
L213:
	.byte	108,105,98,47,109,97,105,110,46,109,108,0
	.align	3
