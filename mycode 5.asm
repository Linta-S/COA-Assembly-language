 .MODEL SMALL
.STACK 100H
.DATA   
MSG1 DB 'ENTER AN INPUT: $'
MSG2 DB '   GREATER THAN 5 $'
MSG3 DB '   LESS THAN 5 $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
      
    
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL 
    SUB CL,48    
    
    
    CMP CL,5
    JL L1 
    
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    JMP EXIT 
    
    
    L1:  
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H  
    
    
     EXIT:
     
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END
