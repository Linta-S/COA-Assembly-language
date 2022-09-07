;Hello world infinity times 



.model small

.data




msg:db "Hello, World!", 0Dh,0Ah, 24h

my proc
    main:  
    jmp print_loop
    print_loop:
      mov     dx, msg
        mov     ah, 09h 
        int     21h 
     
        
     
     jnz print_loop  
     my endp
 end main