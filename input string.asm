 .model small
 .stack 100h
 .data
 
  msg1 dw  "enter name: $" 
  msg2 dw  "enter name: $" 
  
  arr db dup('$')
 .code
 main proc
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    
    mov dl,al
    
    mov ah,2
    int 21h
    
    main endp
 