; Assembly program to convert a letter from upper to lower or lower to upper
.model small
.stack 100h
.data
    prompt db "Enter a character: $"
    result db "Converted character: $"
    newline db 0Dh,0Ah, "$"

.code
main:
    mov ax, @data     
    mov ds, ax

    ; Display prompt
    lea dx, prompt
    mov ah, 09h       
    int 21h

    ; Take input character
    mov ah, 01h       
    int 21h
    mov bl, al       

    ; Check if the character is an alphabet (A-Z or a-z)
    cmp bl, 'A'
    jl not_letter   
    cmp bl, 'Z'
    jg check_lower
    jmp convert      

check_lower:
    cmp bl, 'a'
    jl not_letter     
    cmp bl, 'z'
    jg not_letter     

convert:
    xor bl, 0010_0000b 

    ; Display result
    lea dx, newline
    mov ah, 09h
    int 21h

    lea dx, result
    mov ah, 09h
    int 21h

    mov dl, bl
    mov ah, 02h      
    int 21h
    jmp exit          

not_letter:
    lea dx, newline
    mov ah, 09h
    int 21h

    lea dx, newline
    mov ah, 09h
    int 21h
    mov dx, offset newline
    mov ah, 09h       
    int 21h

    mov dx, offset newline
    mov ah, 09h
    int 21h

    mov dx, offset newline
    mov ah, 09h
    int 21h

exit:
    mov ax, 4C00h      
    int 21h
end main
