	.file ""
	.section .data
	.globl	camlOS__MM__data_begin
	.type	camlOS__MM__data_begin, @object
camlOS__MM__data_begin:
	.section .text
	.globl	camlOS__MM__code_begin
	.type	camlOS__MM__code_begin, @object
camlOS__MM__code_begin:
	.section .data
	.quad	1792
	.globl	camlOS__MM
	.type	camlOS__MM, @object
camlOS__MM:
	.quad	1
	.section .data
	.globl	camlOS__MM__gc_roots
	.type	camlOS__MM__gc_roots, @object
camlOS__MM__gc_roots:
	.quad	camlOS__MM
	.quad	0
	.section .data
	.quad	768
	.globl	camlOS__MM__1
	.type	camlOS__MM__1, @object
camlOS__MM__1:
	.globl	camlOS__MM__entry
	.type	camlOS__MM__entry, @function
	.section .text
	.align	2
camlOS__MM__entry:
	checkcap	-1
L100:
	la	a0, camlOS__MM
	la	a1, camlOS__MM__1
	sd	a1, 0(a0)
	li	a0, 1
	ret
	.size	camlOS__MM__entry, .-camlOS__MM__entry
	.section .data
	.quad	stub_heap_get_pages_used
	.quad	stub_heap_get_pages_total
	.section .text
	.globl	camlOS__MM__code_end
	.type	camlOS__MM__code_end, @object
camlOS__MM__code_end:
	.long	0
	.section .data
	.globl	camlOS__MM__data_end
	.type	camlOS__MM__data_end, @object
camlOS__MM__data_end:
	.quad	0
	.section .rodata
	.globl	camlOS__MM__frametable
	.type	camlOS__MM__frametable, @object
camlOS__MM__frametable:
	.quad	0
