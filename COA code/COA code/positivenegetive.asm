.model small
.stack 100h
.data
.code

main proc
    
    mov ah,2
    mov bh,0f1h
    test bh,80h
    
   jz one
   jmp two
   
   
   one:
   mov dl,'p'
   int 21h
   jmp exit
   
   two:
   mov dl,'n'
   int 21h
   
   exit:
   mov ah,4ch
   int 21h


