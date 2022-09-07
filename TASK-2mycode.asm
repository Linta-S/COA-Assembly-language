.MODEL SMALL
.STACK 100H
.DATA

MSG DW 'MD NAIMUL HOSSAIN $'
MSG2 DW 'AGE 10  $'
MSG3 DW 'BIRTH 10-02-2000 $'

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX,MSG
    MOV AH,9
    INT 21H 
    
   
    
    MOV AH,2 
    MOV DL,0DH 
    INT 21H
    MOV DL,0AH
    INT 21H
    
   LEA DX,MSG2
    MOV AH,9
    INT 21H
   
   MOV AH,2 
    MOV DL,0DH 
    INT 21H
    MOV DL,0AH
    INT 21H
    
   LEA DX,MSG3
    MOV AH,9
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
   MAIN ENDP



