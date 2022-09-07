;hello world 5 times  + bye world


.MODEL SMALL
.STACK 100H
.DATA
    CR EQU '0DH'
    LF EQU '0AH'
    MSG DB 'HELLO WORLD $'
    MSG2 DB 'BYE WORLD $'

 

.CODE

 

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,5;
    PRINT_:
    LEA DX,MSG
    MOV AH,9
    INT 21H 
    
    MOV AH, 2                    ; carriage return
    MOV DL, 0DH
    INT 21H
 
    MOV DL, 0AH                  ; line feed
    INT 21H 
    
    loop PRINT_; 
    
    MOV AH, 2                    ; carriage return
    MOV DL, 0DH
    INT 21H
 
    MOV DL, 0AH                  ; line feed
    INT 21H 
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN