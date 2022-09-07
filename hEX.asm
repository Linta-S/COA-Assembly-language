.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC   
    
    ;hex input
    XOR BX,BX
    MOV CL,4
    MOV AH,1
    INT 21H
    
    WHILE:
    
    CMP AL,0DH
    JE EXIT
    
    ;CONVERT CHAR TO BINARY
    CMP AL,39H  ;A DIGIT
    JG LETTER
    
    AND AL,0FH ;CONVERT DIGIT TO BINARY
    JMP SHIFT
    
    LETTER:
    
    SUB AL,37H ;LETTER TO BONARY
    
    SHIFT:
    
    SHL BX,CL
    
    ;INSERT VALUE INTO BX
    OR BL,AL ; INPUT TO THE LAST 4 BIT OF BX
    
    INT 21H
    JMP WHILE
     
     ;hex output
    EXIT:
    MOV CX,4
    MOV AH,2
    
    FOR:
    
    MOV DL,BH
    SHR DL,4
    ROL BX,4
    
    CMP DL,10
    JGE LETTER2
    
    ;DIGIT
    ADD DL,55
    INT 21H
    JMP EXITT
    
    LETTER2:
    ADD DL,55
    INT 21H
    
    EXITT:
    LOOP FOR
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
    
    