
.MODEL SMALL
.STACK 100h
.DATA



CR EQU 0DH
LF EQU 0AH
MSG1 DB 'ENTER A LOWERCASE LETTER : $'
MSG2 DB CR,LF,'IN UPPERCASE IT IS : '
CHAR DB ?,'$'




.CODE
MAIN PROC
;initialize DS
MOV AX,@DATA
MOV DS,AX ;initialize DS

;display message

LEA DX,MSG1 ;get message
MOV AH,9 ;display string function
INT 21H ;display message

MOV AH,1
INT 21H
ADD AL,20H
MOV CHAR,AL

LEA DX,MSG2
MOV AH,9
INT 21H




;RETURN to DOS
MOV AH,4CH ;DOS exit
INT 21H
MAIN ENDP
END MAIN