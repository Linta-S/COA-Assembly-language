.MODEL SMALL

.STACK 1000H 

.DATA


.CODE


MOV CX,50 
 

MOV AH,1

INT 21H 

MOV BX,AX 


MOV AH,2   ;new line

MOV DX,0AH

INT 21H    


MOV AH,2      ; new line

MOV DX,0DH 

INT 21H


LOOPING:  

MOV DX,BX

MOV AH,2

INT 21H
 
DEC CL  


JNZ LOOPING   

JZ PRINT


PRINT: 


MOV AH,4CH

INT 21H 
                      
             