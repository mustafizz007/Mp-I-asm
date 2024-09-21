.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 

;1. x * y


MOV AX, 5
MOV BX, 7

MUL BX  

;2. x / y
           
MOV AX, 17
MOV BL, 5

DIV BL

;3. X * Y / Z

MOV AX, 5
MOV BX, 7
MOV DX, 5

MUL BX

DIV BL




;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN