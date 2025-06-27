
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
msg1 db 'Type a binary number upto 16 digits:$'
msg2 db 10,13,'in hex it is:$'
.code
main proc
mov ax,@data
mov ds,ax
lea dx,msg1

mov ah,9
int 21h
xor bx,bx
mov ah,1
int 21h
input:
cmp al,0dh
je exit
and al,0fh
shl bx,1
or bl,al
int 21h
jmp input
exit:
lea dx,msg2
mov ah,9

int 21h
mov cx,4
convert:
mov dl,bh
shr dl,1
shr dl,1
shr dl,1
shr dl,1
cmp dl,9
jbe num
add dl,55d
jmp display
num: add dl,30h
display:
mov ah,2

int 21h
rcl bx,1
rcl bx,1
rcl bx,1
rcl bx,1
loop convert
main endp
end main

ret




