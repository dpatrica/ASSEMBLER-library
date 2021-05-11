global	_ft_strlen

section .text
_ft_strlen:
		push rcx
		mov rcx, -1
		cmp rdi, 0
		je .return
		xor rcx, rcx

.loop:
		cmp byte [rdi + rcx], 0
		je .return
		inc rcx
		jmp .loop

.return:
		mov rax, rcx
		pop rcx
		ret
