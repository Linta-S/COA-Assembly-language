;CHECK ODD OR EVEN : .MODEL SMALL
.STACK 100H
.DATA  
MSG1 DB 0DH,0AH,'ODD$'
MSG2 DB 0DH,0AH,'EVEN$' 

.CODE
MAIN PROC   
    
    
   MOV AX,@DATA
   MOV DS,AX   
   
   MOV AH,1
   INT 21H
   
   CMP AL,30H
  
   CMP AL,39H
   
   
   TEST AL,1
   JZ EVEN  
    
   MOV AH,9
   LEA DX,MSG1
   INT 21H                                               
   JMP EXIT   
   
   
   EVEN:
   MOV AH,9
   LEA DX,MSG2
   INT 21H
   JMP EXIT

  
   
   EXIT:

ret