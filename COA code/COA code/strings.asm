
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
msg db "enter 1st data: $"
msg1 db 10,13, "enter 2nd data: $"  
msg2 db 10,13, "sum is: $" 
x db ? 
y db ?
sum db ?
.code
mov ax,@data
mov ds,ax
lea dx,msg
mov ah,9
int 21h

mov ah,1
int 21h
mov x,al

lea dx,msg1
mov ah,9
int 21h 
mov ah,1

int 21h 
mov y,al

add al,x
mov y,al
sub y,48
lea dx,msg2
mov ah,9
int 21h
mov ah,2
mov dl,y
int 21h  



ret




