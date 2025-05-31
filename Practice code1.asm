.model small
.stack 100h
.data
    prompt db "Enter a byte value (0-255): $"
    all_set_msg db 0Dh, 0Ah, "All even bits are set.$"
    not_all_set_msg db 0Dh, 0Ah, "Not all even bits are set.$"
    input db ?

.code
main:
    mov ax, @data
    mov ds, ax


    lea dx, prompt
    mov ah, 09h
    int 21h


    mov ah, 01h
    int 21h
    sub al, '0'        


    mov input, al

  
    mov al, input
    and al, 55h      

    cmp al, 55h          
    je AllSet

NotAllSet:
    lea dx, not_all_set_msg
    mov ah, 09h
    int 21h
    jmp Exit

AllSet:
    lea dx, all_set_msg
    mov ah, 09h
    int 21h

Exit:
    mov ax, 4C00h
    int 21h
end main
