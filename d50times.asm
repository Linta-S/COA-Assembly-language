;Read a character and display it 50 times on the next line. 


.model small
.stack 100h
.data
.code
main proc 
    mov ah,2
    mov cx,50
    mov dl,65
    
    print_loop:
    int 21h
    
    dec cx
    jnz print_loop
    
    mov ah,4ch
    int 21h
    main endp
 end main     
 
 
;.model small
;.stack 100h
;.data
;.code
;main proc 
 ;   mov ah,2   
  ;  mov dl,42    
   ; int 21h    
    
    ;mov ah,4ch
    ;int 21h
    ;main endp
 ;end main
