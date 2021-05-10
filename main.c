#include "libasm.h"

int main()
{
    int i = 0;
    int k = 0;

    char lek[10] = "1253";
    char lal[10] = "1253";
    char *knull = NULL;
    i = ft_strcmp(lek, lal);
    k = strcmp(lek, lal);

    printf("or:%d\nmy:%d\n", k, i);
    return(0);
}

// global ft_strcmp

// section .text
// ft_strcmp:
// 		cmp rdi, 0
// 		je .error
// 		cmp rsi, 0
// 		je .error
// .loop:
// 		cmp byte [rdi], 0
// 		je .return 
// 		mov al, byte [rsi]
// 		push rdi
// 		sub byte [rdi], al
// 		cmp byte [rdi], 0
// 		jnz .return
// 		pop rdi
// 		inc rdi
// 		inc rsi
// 		jmp .loop

// .return:
// 		mov rax, [rdi]
// 		pop rdi
// 		ret

// .error:
// 		mov rax, -1
// 		ret