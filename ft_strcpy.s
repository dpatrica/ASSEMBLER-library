global	_ft_strcpy

section .text
_ft_strcpy:
		cmp rdi, 0
		je .error
		cmp rsi, 0
		je .error
		push rdi
		push rdx

.loop:
		mov dl, byte [rsi]
		mov byte [rdi], dl
		cmp byte [rsi], 0
		je .return
		inc rdi
		inc rsi
		jmp .loop

.return:
		pop rdx
		pop rdi
		mov rax, rdi
		ret

.error:
		xor rax, rax
		ret
