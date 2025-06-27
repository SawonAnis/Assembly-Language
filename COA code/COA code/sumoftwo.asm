
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h 
.data
a db 0
b db 0
.code
mov ah,1
mov a,al
int 21h   
mov ah,1
mov b,al
int 21h

add al,a
add  al,b
sub al,48
mov ah,2

mov dl,al 

int 21h



ret




