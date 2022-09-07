.MODEL SMALL
.STACK 100H
.DATA

MSG DB 'THE HEXA VALUE OF A-F: $'
MSG1 DB 'THE DECIMAL VALUE IS:1'
C1 DB ?,'$'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    
    SUB AL,11H
    MOV C1,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX, MSG1
    INT 21H
    
    MOV AH,4CH
    INT 21H
     
    
   MAIN ENDP




