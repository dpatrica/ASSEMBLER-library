global ft_read

section .text
ft_write:
        mov rax, 0
        syscall
        cmp rax, 0
        jl .error
        jmp .return

.error:
        mov rax, -1
.return:
        ret
