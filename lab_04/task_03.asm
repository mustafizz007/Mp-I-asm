.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 

MOV AX, 1
CMP AX, 0

JL IS_NEG
JE IS_ZERO
JG IS_GREATER

IS_NEG:
MOV BX, -1
JMP END_IF 

IS_ZERO:
MOV BX, 0 
JMP END_IF

IS_GREATER:
MOV BX, 1
;JMP END_IF

END_IF:
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN