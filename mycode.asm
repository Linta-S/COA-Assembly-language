.model small 
org 100h 
.DATA
B DB 6;
A DB 2;     
.stack 100h
.code
main proc  
    MOV AL,B;
    SUB AL,A;
    SUB AL,1;
    MOV A,AL;
    MOV AH,2;
    MOV DL,A;
    ADD DL,48;
    INT 21h;
    main endp;
end main;
ret   ; return to the operating system.


