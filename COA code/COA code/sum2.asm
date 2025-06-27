
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

 .model small
 .stack 100h
 .data
 msg1 db "enter the number $" 
 msg2 db "enter your second data:$"
 msg3 db 10,13,"sum is: $"
 x db ?
 y db ?
 .code 
 mov ax,@data
 
 lea dx,msg1
 mov ah,9
 int 21h
  
 mov ah,1
   mov x,al 
 int 21h 
 
 
 
 lea dx,msg2
 mov ah,9
 
 int 21h
  
 mov ah,1
  mov y,al
 int 21h 
  lea dx,msg3
 mov ah,9
 int 21h
 
 add al,x
 add al,y
 
 
 mov ah,2
 mov dl,al
 int 21h
 
 
 
 

ret




