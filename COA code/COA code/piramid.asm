.model small
.stack 100h
.data

.code

main proc
    
    
   
    
    mov ah,2
    mov bh,31h  
    mov bl,32h
    
    l1: 
    
    mov ah,2
    
    cmp bh,33h
         
    jle l2
    jmp exit
    
    
    
    
    
    l2: 
    
    cmp bl,31h
    
    jge l3
    jmp l4
    
    l3:   
      mov dl,' '
      int 21h
      dec bl
      
      jmp l2 
    l4:
    mov dh,31h 
    
    l41:
    cmp dh,bh
    
    jle l5
    jmp l6
    
      
    l5: 
     mov dl,'*'
    int 21h
    
    mov dl,' '
    int 21h
      
    inc dh         
     
    jmp l41
    l6: 
    
   
    
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h       
                  
                  
    
    cmp bh,32h
   
    jl l61
    jmp l62
    
    l61:
            
    mov dl,' '
    int 21h 
    l62:
    
    
    inc bh
    
    
    jmp l1
    
    
    
    
    exit:
    
    mov ah,4ch
    int 21h
    
    
    