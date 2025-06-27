.model small
.stack 100h
.data
.code
main proc
    


      mov ah,2
      mov bl,32h
      mov cx,8
      
      l1:
      SHL bl,1
      jc one
      jmp zero
      
      one:
      mov ah,2
      mov dl,'1'
      int 21h
      loop l1
      jmp exit
      
      
      zero:
      mov dl,'0'
      int 21h
      loop l1
    
exit:
     mov ah,4ch
     int 21h
     
     
main endp
end main             