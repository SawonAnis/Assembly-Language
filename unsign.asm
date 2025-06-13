.model small
.stack 100h
.data
.code


main proc
    
    mov ah,2
    
   mov ch,0feh
   cmp ch,254
   jae top
   jmp exit
   
   top:
   mov dl,ch
   int 21h
   
   exit:
   
   mov ah,4ch
   int 21h