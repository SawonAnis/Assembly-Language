
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
msg db "enter first number: $"
msg1 db 10,13,"enter second number: $"
msg2 db 10,13, "your first number is: $"
msg3 db 10,13,"your second number is: $"
msg4 db 10,13,"the sum of two number = $"
a db ?
b db ?
.code
mov ax,@data
mov ds,ax

lea dx,msg
mov ah,9
int 21h
mov ah,1
int 21h
mov a,al
sub a,48

lea dx,msg1
mov ah,9
int 21h
mov ah,1
int 21h
mov b,al
sub b,48 

lea dx,msg2
mov ah,9
int 21h
mov ah,2
mov dl,a
add dl,48
int 21h 

lea dx,msg3
mov ah,9
int 21h
mov ah,2
mov dl,b
add dl,48
int 21h  

add al,a
mov b,al
add al,48

lea dx,msg4
mov ah,9
int 21h
mov ah,2
mov dl,b
int 21h




ret




