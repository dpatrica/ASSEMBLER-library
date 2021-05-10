global ft_write

section .text
ft_write:
        mov rax, 1
        syscall
        cmp rax, 0
        jl .error
        jmp .return

.error:
        mov rax, -1
.return:
        ret
