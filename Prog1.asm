; Assembly program to check if a number is odd or even using TEST instruction
.model small
.stack 100h
.data
    prompt db "Enter a single digit (0-9): $"
    not_number db 0Dh, 0Ah, "Not a digit! $"
    even_msg db 0Dh, 0Ah, "The number is even. $"
    odd_msg db 0Dh, 0Ah, "The number is odd. $"

.code
main:
    mov ax, @data     
    mov ds, ax

    ; Display prompt for input
    lea dx, prompt   
    mov ah, 09h        
    int 21h            

    ; Accept single character input
    mov ah, 01h       
    int 21h
    sub al, '0'       
    cmp al, 0         
    jl invalid_input  
    cmp al, 9        
    jg invalid_input 

 
    test al, 1        
    jz even_number     
    jmp odd_number    

even_number:
    lea dx, even_msg   
    mov ah, 09h     
    int 21h
    jmp exit          

odd_number:
    lea dx, odd_msg   
    mov ah, 09h       
    int 21h
    jmp exit        

invalid_input:
    lea dx, not_number
    mov ah, 09h      
    int 21h

exit:
    mov ax, 4C00h     
    int 21h
end main
