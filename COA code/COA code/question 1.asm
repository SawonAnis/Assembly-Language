
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small 
.stack 100h 
.data 
 
msg1 db 10,13,'newyear2020$'

 msg2 db 10,13,'total number of digits are :$' 
  
.code 
 
 
main proc 
 
 
mov ax,@data

 mov ds,ax 
 
 
 
 
 
lea bx,msg1 
mov ah,9
 int 21h 
 
  
 
 
 
cmp bx, '0' 
jb go

cmp bx,'9'
ja go

inc ax

go:
   mov dx, bx
inc bx

 
 
lea dx,msg2
mov ah,9
int 21h 
 
mov dl,bl
mov ah,2 
int 21h 
  
 
 
jmp display 
 
 
 
 
display: 
 
mov ah,2 
int 21h 
 
 
 
 

 
 
end: 
 
 
MOV AH,4CH 
INT 21H 
MAIN ENDP 
END MAIN 


ret




