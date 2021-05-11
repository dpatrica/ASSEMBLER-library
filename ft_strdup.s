global _ft_strdup
extern _malloc
extern _ft_strlen
extern _ft_strcpy

section .text
_ft_strdup:
		cmp rdi, 0
		je .error

		mov rsi, rdi
		call _ft_strlen
		mov rdi, rax
		add rdi, 1
		push rsi
		call _malloc
		cmp rax, 0
		pop rsi
		je .error
		mov rdi, rax
		call _ft_strcpy
		ret

.error:
		xor rax, rax
		ret
