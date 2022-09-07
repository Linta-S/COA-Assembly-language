 .model small
.stack 100h
.data        

 msg db "Enter your name: $" 
 msg1 db "Enter your AGE: $"
   
   arr db ?
.code
main proc
    mov ax,data
    mov ds,ax
    mov si,offset arr
    
    
     mov ah,9
    lea dx,msg
    int 21h
    
   
    mov cx,5
    
    take:          ;taking input
     mov ah,1
    int 21h
    mov [si],al
    inc si
    loop take;  
    
      mov [si],'$'
    
     mov si,offset arr
     mov cx,5
            
            
      mov ah,2
      mov dl,0dh
      int 21h
      mov dl,0ah
      int 21h      
            
    output:
    mov ah,02
    mov dl,[si]
    int 21h
    inc si
    loop output  
    ;;;;;;;;;;;;;;;;;;;;;;;;
     mov ah,2    ;break
      mov dl,0dh
      int 21h
      mov dl,0ah
      int 21h 
     
     
    mov ah,9
    lea dx,msg1
    int 21h
    
   
    mov cx,2
    
    take1:          ;taking input
     mov ah,1
    int 21h
    mov [si],al
    inc si
    loop take1;  
    
      mov [si],'$'
    
     mov si,offset arr
     mov cx,2
            
            
      mov ah,2    ;break
      mov dl,0dh
      int 21h
      mov dl,0ah
      int 21h      
            
    output1:
    mov ah,02
    mov dl,[si]
    int 21h
    inc si
    loop output1
     
main endp
end main