.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "TYPE A CHARACTER : $"
MSG2 DB 0DH,0AH ,"NUMBER OF 1 : $"
MSG3 DB 0DH,0AH,"RESPECTIVE BINARY: $"
MSG DB 0DH,0AH,"$"
.CODE
MAIN PROC   
    
    MOV AX,@DATA
    MOV DS,AX
   
    MOV AH,9
    LEA DX,MSG1
    INT 21H  
    
    MOV AH,1
    INT 21H 
    MOV BL,AL
    
     MOV CX,16 
    MOV BH,0 
    
    COUNT:
    SHL BL,1
    JNC NEXT
    INC BH 
    
    NEXT:
    LOOP COUNT 
     JMP DISPLAY1
           
   DISPLAY1:
   MOV AH,9
   LEA DX,MSG2
   INT 21H 
   MOV DL,BH
   ADD DL,48
    MOV AH,2
    INT 21H
     
        
    
     
     WHILE:    
      
     ADD BH,30
  CMP BH,0DH
  JE END_WHILE
  
     END_WHILE:
     
   MOV CL,8
 
   MOV AH,9
   LEA DX,MSG3
   INT 21H
   
    L:
    ROL BH,1
    JNC ZERO
    MOV DL,31H
    JMP DISPLAY
   
    ZERO:
    MOV DL,30H
    JMP DISPLAY
   
    DISPLAY:
    MOV AH,2
    INT 21H
    LOOP L
   
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
    
    