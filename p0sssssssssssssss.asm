 ;pos neg number
 
.model small
.stack 100h
.data
msg  db "enter a number: $"
msg3 db 10,13,"positive number $"
msg4 db 10,13,"negative number $"
 
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg
        int 21h
        
        mov ah,1
        int 21h  
 
        mov bl,al 
        mov cl,30h  ;ascii code of 0
        
         
        
        cmp bl,cl 
        jg positive
        jl negative
        
        
        positive:
        mov ah,9
        lea dx,msg3
        int 21h        
        jmp exit
        
        negative:
        mov ah,9
        lea dx,msg4
        int 21h        
        jmp exit
        
        
    
        exit:
        main endp
    end main