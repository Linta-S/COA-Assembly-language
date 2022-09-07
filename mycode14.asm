.MODEL SMALL
.STACK 100H
.DATA
                                                             
MSG1 DB 'ENTER A NUMBER$'
MSG2 DB 0DH,0AH,'ENTER A STRING$'
.CODE

MAIN PROC  
    
    MOV AX,@DATA
    MOV DS,AX 
   
    
    XOR CX,CX 
    
    MOV AH,1
    INT 21H  
    
    WHILE:
    CMP AL,0DH 
    JE END_WHILE 
    
    PUSH AX
    INC CX
    INT 21H
    
    JMP WHILE
    
    
    END_WHILE: 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    JCXZ EXIT 
    
    OUTPUT:
    POP DX
    INT 21H
    LOOP OUTPUT
    
    EXIT:
    
    
    
    
 