global _ft_strdup
extern _malloc
extern _ft_strlen
extern _ft_strcpy

section .text
ft_strdup:
		cmp rdi, 0
		je .error

		push rsi
		mov rsi, rdi
		call _ft_strlen
		mov rdi, rax
		add rdi, 1
		push rsi
		call _malloc
		cmp rax, 0
		je .errpop
		mov rdi, rax
		pop rsi
		call _ft_strcpy
		pop rsi
		ret

.errpop:
		pop rsi
		pop rsi

.error:
		mov rax, 0
		ret
