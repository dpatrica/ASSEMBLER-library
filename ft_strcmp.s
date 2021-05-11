global	_ft_strcmp

section .text
_ft_strcmp:
		cmp rdi, 0
		je .error
		cmp rsi, 0
		je .error
		push rcx
.loop:
		xor rcx, rcx
		mov cl, byte [rdi]
		sub cl, byte [rsi]
		cmp cl, 0
		jl .meturn
		jg .return
		cmp byte [rdi], 0
		je .return
		inc rdi
		inc rsi
		jmp .loop

.return:
		xor rax, rax
		mov al, cl
		pop rcx
		ret

.meturn:
		neg cl
		xor rax, rax
		mov al, cl
		neg eax
		pop rcx
		ret

.error:
		mov rax, -1
		ret
