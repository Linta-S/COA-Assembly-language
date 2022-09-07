.MODEL SMALL
.STACK 100H
.DATA 


msg0 dW 'I am first msg$'
msg1 dW 'I am 2 msg$'
msg2 dW 'I am 3 msg$'
msg3 dW 'I am 4 msg$' 


.CODE 


MAIN PROC 
        
    MOV AX,@DATA        
    MOV DS,AX       
    
    
    MOV AX,9H
    MOV BX,5H
    CMP AX,BX 
    
    
    MOV AH,9     ;MSG PRINTING FUNCTION
    LEA DX,msg3
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH  ;LINE BREAKE 1
    INT 21H
    MOV DL,0AH  ;LINE BREAK 2
    INT 21H 
    
    jnge massage2
    massage2:
    
    MOV AH,2
    MOV DL,0DH  ;LINE BREAKE 1
    INT 21H
    MOV DL,0AH  ;LINE BREAK 2
    INT 21H 
    
    
    MOV AH,9
    LEA DX,msg2
    INT 21H 
     
     
    JMP EXIT
     
    MOV AH,9 
    LEA DX,msg1
    INT 21H
    
    
    
    EXIT:
    MOV AH,9
    
    LEA DX,msg0
    INT 21H 
    
    
    MOV AH,4CH
    INT 21H
    
    
    
    
    
    MAIN ENDP    
    END MAIN

    