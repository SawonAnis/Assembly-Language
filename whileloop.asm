.model small
.stack 100h
.data
.code

main proc
    mov bh,'*'
    mov ah,2
    mov bl,35h
    
    l1:
    cmp bl,31h
    jge top
    jmp exit
    
    
    top:
    mov dl,bh
    int 21h
    dec bl
    jmp l1
    
    exit:
    mov ah,4ch
    int 21h  