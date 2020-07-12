	.file ""
	.section .data
	.globl	camlOS__Lifecycle__data_begin
	.type	camlOS__Lifecycle__data_begin, @object
camlOS__Lifecycle__data_begin:
	.section .text
	.globl	camlOS__Lifecycle__code_begin
	.type	camlOS__Lifecycle__code_begin, @object
camlOS__Lifecycle__code_begin:
	.section .data
	.quad	1792
	.globl	camlOS__Lifecycle
	.type	camlOS__Lifecycle, @object
camlOS__Lifecycle:
	.quad	1
	.section .data
	.globl	camlOS__Lifecycle__gc_roots
	.type	camlOS__Lifecycle__gc_roots, @object
camlOS__Lifecycle__gc_roots:
	.quad	camlOS__Lifecycle
	.quad	0
	.globl	camlOS__Lifecycle__await_shutdown_request_1002
	.type	camlOS__Lifecycle__await_shutdown_request_1002, @function
	.section .text
	.align	2
camlOS__Lifecycle__await_shutdown_request_1002:
	checkcap	-1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L101:
	li	a0, 1
	call	camlLwt__wait_1102474
L100:
	ld	a0, 0(a0)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlOS__Lifecycle__await_shutdown_request_1002, .-camlOS__Lifecycle__await_shutdown_request_1002
	.section .data
	.quad	4087
camlOS__Lifecycle__1:
	.quad	caml_curry3
	.quad	7
	.quad	camlOS__Lifecycle__await_shutdown_request_1002
	.globl	camlOS__Lifecycle__entry
	.type	camlOS__Lifecycle__entry, @function
	.section .text
	.align	2
camlOS__Lifecycle__entry:
	checkcap	-1
L102:
	la	a0, camlOS__Lifecycle__1
	la	a1, camlOS__Lifecycle
	sd	a0, 0(a1)
	li	a0, 1
	ret
	.size	camlOS__Lifecycle__entry, .-camlOS__Lifecycle__entry
	.section .data
	.section .text
	.globl	camlOS__Lifecycle__code_end
	.type	camlOS__Lifecycle__code_end, @object
camlOS__Lifecycle__code_end:
	.long	0
	.section .data
	.globl	camlOS__Lifecycle__data_end
	.type	camlOS__Lifecycle__data_end, @object
camlOS__Lifecycle__data_end:
	.quad	0
	.section .rodata
	.globl	camlOS__Lifecycle__frametable
	.type	camlOS__Lifecycle__frametable, @object
camlOS__Lifecycle__frametable:
	.quad	1
	.quad	L100
	.short	17
	.short	0
	.align	3
	.quad	L103
	.align	3
L103:
	.long	(L104 - .) + 0x4c000000
	.long	0x3060
	.quad	0
L104:
	.byte	108,105,98,47,108,105,102,101,99,121,99,108,101,46,109,108
	.byte	0
	.align	3
