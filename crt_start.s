.extern main
.global _start
.type _start, %function
_start:
	popq %rsi
	movq %rsp, %rdx
	lea main, %rdi
	call __main
	.size _start,.-_start
