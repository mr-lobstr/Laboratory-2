section .data
    countMatch db 0
    nextRound db 0

section .text
    global _start

_start:
    mov eax, 3
    mov ebx, 0
    mov ecx, nextRound
    mov edx, 1
    int 0x80

    sub ecx, '0'

    loop:
        cmp ecx, 1
        jle print_result

        mov eax, ecx
        and eax, 1
        cmp eax, 0
        jne odd

        shr ecx, 1
        add countMatch, ecx
        jmp loop

    odd:
        sub ecx, 1
        shr ecx, 1
        add ecx, 1
        add countMatch, ecx
        jmp loop

    print_result:
        mov eax, 4
        mov ebx, 1
        mov ecx, countMatch
        mov edx, 1
        int 0x80

        mov eax, 1
        xor ebx, ebx
        int 0x80