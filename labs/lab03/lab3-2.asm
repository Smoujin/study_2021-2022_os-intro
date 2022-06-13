section .data
msg:    DB 'Введите строку:',10

msgLen:   EQU $-msg

SECTION .bss
buf1: RESB 80

SECTION .text
    GLOBAL _start

_start: 

    mov ecx,msg 
    call sprintLF

    mov ecx, buf1
    mov edx, 80
    call sread

    mov ecx, buf1
    call sprint

    call quit