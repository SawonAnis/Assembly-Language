
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 .model small
 .stack 100h
 .data
 m db "hello COA$"
 .code
 mov ah,9
 lea dx,m
 int 21h
 

ret




