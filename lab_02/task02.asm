.MODEL SMALL
.STACK 100H
.DATA 

A dw 5
B dw 4
C dw 3
d dw 2
E dw 6

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

   ;(a + b)  * (c - d) / e   
   
   MOV AX, A
   MOV BX, B
   
   ADD AX, BX
   
   MOV CX, C
   MOV DX, D
   
   SUB CX, DX
   
   MUL CX
   
   MOV BX, E
   
   DIV BX
   
   
   

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN