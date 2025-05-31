.model small
.stack 100h
.data
    str db 'Hello World!$', 0
    msg db 0Dh,0Ah, "Converted string: $"

.code
main:
    mov ax, @data
    mov ds, ax

    lea si, str
convert_loop:
    mov al, [si]
    cmp al, '$'          
    je done


    cmp al, 'A'
    jb check_lower
    cmp al, 'Z'
    ja check_lower


    xor al, 20h
    mov [si], al
    inc si
    jmp convert_loop

check_lower:

    cmp al, 'a'
    jb next_char
    cmp al, 'z'
    ja next_char

 
    xor al, 20h
    mov [si], al

next_char:
    inc si
    jmp convert_loop

done:
    lea dx, msg
    mov ah, 09h
    int 21h

    lea dx, str
    mov ah, 09h
    int 21h

    mov ax, 4C00h
    int 21h
end main
