;Odd even multiple number

.MODEL SMALL
.STACK 100H
.DATA 
MSG DB "ENTER :$"
MSG1 DB 13,10, "EVEN :$"  
MSG2 DB 13,10, "ODD :$"
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 
    
     MOV AX,@DATA
    MOV DS,AX
   
    MOV AH,9
    LEA DX,MSG
    INT 21H
        XOR BX,BX
    MOV AH,1
  INT 21H
    WHILE:
  CMP AL,0DH
  JE END
  AND AL,0FH
  SHL BX,1
  OR BL,AL
  INT 21H
  JMP WHILE
 
     END:
    
    TEST BL,1H
    JZ NEXT
     JMP EXIT
      
    
    NEXT:
        MOV AH,9
    LEA DX,MSG1
    INT 21H   
      JMP EXITT
    EXIT:
         
           MOV AH,9
    LEA DX,MSG2
    INT 21H 
    
    EXITT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
                                            