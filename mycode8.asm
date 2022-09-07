.MODEL SMALL
.STACK 100H
.DATA
    INPUT_MSG DB 'Enter a charactar: $'
    OUTPUT_MSG_1 DB 0AH,0DH,'The ASCII Code of '
    OUTPUT DB ?
    OUTPUT_MSG_2 DB ' In Binarry is  $'
    COUNT_MSG_1 DB 0AH,0DH,'The number of 1 bit is '
    COUNT DB ?
    COUT_MSH_2 DB '$'
.CODE
MAIN PROC
 
    MOV AX,@DATA
    MOV DS,AX
 
    MOV AH,9
    LEA DX,INPUT_MSG
    INT 21H
 
    MOV AH,1
    INT 21H
    MOV BL,AL
    MOV OUTPUT,AL
    MOV CL,0
    MOV CH,0
    MOV AH,9
    LEA DX,OUTPUT_MSG_1
    INT 21H
 
    TOP:
        CMP CL,8
        JE END_
        INC CL
        SHL BL,1
        JC COUNTONE
        MOV AH,2
        MOV DL,30H
        INT 21H
     
        JMP TOP
    COUNTONE:
        MOV AH,2
        MOV DL,31H
        INT 21H
     
        INC CH
        JMP TOP
    END_:
    ADD CH,30H
    MOV COUNT,CH
 
    MOV AH,9
    LEA DX,COUNT_MSG_1
    INT 21H
 
    MOV AH,4CH
    INT 21H
     
    MAIN ENDP
END MAIN  

