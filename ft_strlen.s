global  ft_strlen

section .text
ft_strlen:
		push rcx
		mov rcx, 0

.loop:
		cmp byte [rdi + rcx], 0
		je .return
		inc rcx

.return:
		mov rax, rcx
		pop rcx
		ret
