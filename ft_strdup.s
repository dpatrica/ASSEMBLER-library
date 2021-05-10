global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy

section .text
ft_strdup:
        cmp rdi, 0
        je .error

        push rsi
        mov rsi, rdi
        call ft_strlen
        mov rdi, rax
        add rdi, 1
        push rsi
        call malloc wrt ..plt
        cmp rax, 0
        je .errpop
        mov rdi, rax
        pop rsi
        call ft_strcpy
        pop rsi
        ret

.errpop:
        pop rsi
        pop rsi

.error:
        mov rax, 0
        ret
