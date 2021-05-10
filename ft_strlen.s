global  ft_strlen

section .text
ft_strlen:
		push rcx
		mov rcx, 0
		cmp rdi, 0
		je .return

.loop:
		cmp byte [rdi + rcx], 0
		je .return
		inc rcx
		jmp .loop

.return:
		mov rax, rcx
		pop rcx
		ret
