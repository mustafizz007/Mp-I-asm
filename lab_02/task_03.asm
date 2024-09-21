.MODEL SMALL
.STACK 100H
.DATA

A dw 1
B dw 2
C dw 3
D dw 5


.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

   ;(1 + 2) * (3 - 1) / 5 + 3 + 2 - (1 * 2)
   
   MOV AX, A

   
   ADD AX, B
   
   MOV CX, C
   
   SUB CX, A
   
   MUL CX 
   
   
   MOV BX, D
   
   DIV BX
   
   MOV DX, AX
   
   MOV AX, C
   ADD AX, B
   
   ADD AX, DX
   
   MOV BX, AX
   
   
   
   
   
   MOV AX, A
   MOV CX, B
   
   MUL CX
   
   SUB BX, AX
   
   MOV AX, BX
   
   

    




;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN