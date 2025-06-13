
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100
.model small
.stack 100h
.data 
x db 0
y db 0

.code
mov ah,1
int 21h
mov x,al 

mov ah,1
int 21h
mov y,al  



mov ah,2

mov  dl,x
int 21h 
mov ah,2

mov dl,y 
int 21h 


ret




