.model small
.stack 100h

.data
    
    msg1 db ': odd$'    
    msg2 db ': even$'
    
.code
main proc
    
     
    mov ax, @data
    mov ds, ax
     
    
    ;when loop called it uses cx as counter
    mov cx, 9
    
    
    ;loop label
    looper:
               
        ;input a number        
        mov ah, 1
        int 21h
        
        ;divide any number in al by bl or 2 here
        mov bl, 2
        div bl             
    
        cmp ah, 1
        je even
      
        mov ah, 9
        lea dx, msg2
        int 21h 
            
        jmp skip
            
        even:    
            mov ah, 9
            lea dx, msg1
            int 21h
                   
       
        skip:
        
            ;prints a newline
            mov ah, 2
            mov dl, 0dh
            int 21h
            mov dl, 0ah
            int 21h
         
         
    loop looper
          
    
main endp
end main