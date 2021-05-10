global ft_strcmp

section .text
ft_strcmp:
		cmp rdi, 0
		je .error
		cmp rsi, 0
		je .error
		push rcx
.loop:
		xor rcx, rcx
		mov cl, byte [rdi]
		sub cl, byte [rsi]
		jnz .return
		cmp byte [rdi], 0
		je .return
		inc rdi
		inc rsi
		jmp .loop

.return:
		neg cl
		xor rax, rax
		mov al, cl
		pop rcx
		ret

.error:
		mov rax, -1
		ret