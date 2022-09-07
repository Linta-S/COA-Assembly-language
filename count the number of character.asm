
 ;Write some code to count the number of characters in an input line.

.model small
.stack 100h
.data
msg db "enter a character: $"
 
.code
    main proc
       
       mov bx,0 ;initialize counter
       
       mov ah,1 ;input function initialize
       int 21h
       
       
       while_:
       cmp al,13     ;carriage return
       je level1
       inc bx
       
       int 21h
       jmp while_
       
       level1:
       mov ah,2      ;line break
       mov dl,10
       int 21h
       mov dl,13
       int 21h
        
       add bx,48
       
       mov ah,2
       mov dx,bx
       int 21h
        
        
                       
        main endp
    end main


