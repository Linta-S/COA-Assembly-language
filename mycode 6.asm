 .MODEL SMALL
.STACK 100H
.DATA
    CR EQU '0DH'
    LF EQU '0AH'
    
       
MSG1 DB 'ENTER AN INPUT: $'
MSG2 DB '   Greater Than 0 $'
MSG3 DB '   Equal to 0  $'  
MSG4 DB '   Less Than 0 $'
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
          CMP CL,0
          JL Less
          JE Equal
          JG Greater       
    Less:            
    LEA DX,MSG4
    MOV AH,9
    INT 21H 
    JMP END_CASE    
    Equal:
            
    LEA DX,MSG3
    MOV AH,9
    INT 21H 
    JMP END_CASE      
    Greater:
            
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    JMP END_CASE   
    END_CASE: 
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN

