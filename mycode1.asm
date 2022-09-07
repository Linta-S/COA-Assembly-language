.MODEL SMALL
.STACK 100H
.DATA



MSG DB 'HELLO!$'
MSG1 DB 'THIS IS ANOTHER MESSAGE!$'



.CODE
MAIN PROC
;initialize DS
MOV AX,@DATA
MOV DS,AX ;initialize DS

;display message

LEA DX,MSG ;get message
MOV AH, 9 ;display string function
INT 21h ;display message

MOV AH,2 ;
MOV DL,0DH;
INT 21h;
MOV DL,0AH;
INT 21h;

LEA DX,MSG1 ;get message

MOV AH, 9 ;display string function
INT 21h ;display message


;RETURN to DOS
MOV AH,4CH ;DOS exit
MAIN ENDP
END MAIN