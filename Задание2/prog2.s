section .data
    nextRound equ 7
    bufferCapacity equ 20

section .bss
    buffer resb bufferCapacity

section .text
    global _start

_start:
    mov rax, nextRound
    mov rbx, buffer
    mov rcx, bufferCapacity
    
    call prog      
    call atoi
    call output
    call exit

prog:
    push rbx
    push rcx
    push rdx
    
    mov rcx, 0
    mov rbx, 2
    
    loop:
        cmp rax, 1
        jle loop_end

        mov rdx, 0
        div rbx

        add rcx, rax
        add rax, rdx
        jmp loop
    
    loop_end:
    mov rax, rcx
    
    pop rdx
    pop rcx
    pop rbx

    ret

; переводит строку в число
; регистры для работы:
;   rax - число, которое преобразуется
;   rbx - адрес первого элемента буфера
;   rcx - ёмкость (максимальное число элементов) буфера

atoi:
    push rdi
    push rdx
    push rsi
   
    mov rsi, 10
    mov rdi, rcx
    mov rcx, 0

    atoi_loop:
        cmp rdi, 0
        jle atoi_loop_end
        cmp rax, 0
        jle atoi_loop_end
        
        mov rdx, 0
        div rsi
        add rdx, '0'
        mov rbx[rcx], rdx

        inc rcx
        dec rdi
        jmp atoi_loop
        
    atoi_loop_end:
    call reverse
    mov rax, rcx

    pop rsi
    pop rdx
    pop rdi

    ret

; переворачивает строку
; регистры для работы:
;   rbx - адрес первого элемента буфера
;   rcx - длина строки
reverse:
    push rax
    push rdx
    push rsi

    mov rax, rbx
    mov rsi, rbx
    add rsi, rcx
    dec rsi

    reverse_loop:
        cmp rsi, rax
        jbe reverse_loop_end
        
        mov dl, [rax]
        mov dh, [rsi]
        mov [rax], dh
        mov [rsi], dl

        inc rax
        dec rsi
        jmp reverse_loop
        
    reverse_loop_end:
    pop rsi
    pop rdx
    pop rax

    ret  

; вывод строки
; регистры для работы:
;   rbx - адрес первого элемента буфера
;   rcx - длина строки
output:
    push rax
    push rdi
    push rsi
    push rdx

    mov rax, 1
    mov rdi, 1
    mov rsi, rbx
    mov rdx, rcx
    syscall

    pop rdx
    pop rsi
    pop rdi
    pop rax

    ret

exit:
    mov rax, 60
    mov rdi, 0
    syscall