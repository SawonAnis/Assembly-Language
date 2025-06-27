.model small
.stack 100h 
.data
.code

main proc
    mov al,'*' 
    mov dl,al
    mov ah,2
    int 21h
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov cx,2
    repeat1: 
    mov al,'*'
    mov dl,al
    mov ah,2
    int 21h 
    loop repeat1
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov cx,4
    repeat2: 
    mov al,'*'
    mov dl,al
    mov ah,2
    int 21h 
    loop repeat2
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h 
    
    mov cx,8
    repeat3:
    mov al,'*'
    mov dl,al
    mov ah,2
    int 21h 
    loop repeat3
    
    main endp
end main 
ret