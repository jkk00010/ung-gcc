.global _start
.type _start, %function
_start:
	popq %rdi
	movq %rsp, %rsi
	call __main
	.size _start,.-_start
