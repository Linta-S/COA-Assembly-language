 ;Write a program to check password using Assembly Programming. Suppose the password is mypassword



.DATA  
PASSWORD DB 'linta'
;LEN EQU ($-PASSWORD)
MSG1 DB 10,13,'ENTER YOUR PASSWORD: $'
MSG2 DB 10,13,'WELCOME TO ELECTRONICS WORLD!!$'
MSG3 DB 10,13,'INCORRECT PASSWORD!$'
NEW DB 10,13,'$'
;INST DB 10 DUP(0)
 
.CODE  
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
LEA DX,MSG1
MOV AH,09H
INT 21H
;MOV SI,00
UP1:
MOV AH,08H
INT 21H
CMP AL,0DH
JE DOWN
;MOV [INST+SI],AL
;MOV DL,'*'
MOV AH,02H
INT 21H
INC SI
JMP UP1
DOWN:
MOV BX,00
;MOV CX,LEN
CHECK:
;MOV AL,[INST+BX]
MOV DL,[PASSWORD+BX]
CMP AL,DL
JNE FAIL
INC BX
LOOP CHECK
LEA DX,MSG2
MOV AH,09H
INT 21H
JMP FINISH
FAIL:
LEA DX,MSG3
MOV AH,009H
INT 21H
FINISH:
INT 3
CODE ENDS
END START
END