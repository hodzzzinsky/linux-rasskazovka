assembly

section .data
    hello: db 'Hello, World!', 0xA    ; строка + символ новой строки
    hello_len: equ $ - hello          ; длина строки

section .text
    global _start

_start:
    ; системный вызов write(1, hello, hello_len)
    mov eax, 4          ; номер системного вызова sys_write
    mov ebx, 1          ; файловый дескриптор stdout
    mov ecx, hello      ; указатель на строку
    mov edx, hello_len  ; длина строки
    int 0x80            ; вызов ядра

    ; системный вызов exit(0)
    mov eax, 1          ; номер системного вызова sys_exit
    mov ebx, 0          ; код возврата
    int 0x80            ; вызов ядра
