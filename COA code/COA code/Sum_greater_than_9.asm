
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data 
msg db "enter your first number: $"
msg1 db 10,13, "enter your second number: $" 
msg2 db 10,13,"the sum of two number= $" 

  
.code
main proc 
mov ax,@data
mov ds,ax 


lea dx,msg
mov ah,9
int 21h
    
mov ah,1
int 21h
sub al,48
mov bl,al 


lea dx,msg1
mov ah,9
int 21h
    
mov ah,1
int 21h 
sub al,48
mov cl,al  

add al,bl
;add bl,48 
mov ah,0
AAA
add al,48
add ah,48
mov bx,ax

lea dx,msg2
mov ah,9
int 21h

mov ah,2
mov dl,bh
int 21h

mov ah,2
mov dl,bl
int 21h






mov ah,4ch
int 21h
main endp
end main     

ret




