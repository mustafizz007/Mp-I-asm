.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

MOV AH, 1
INT 21H

MOV BL, AL
SUB BL, '0'

CMP BL, 0
JL  EXT

CMP BL, 3
JLE I

CMP BL, 6
JLE K

CMP BL, 9
JLE L

CMP BL, 10
JE M


I:
MOV DL,'i'
JMP PRINT
         
K:
MOV DL,'k'
JMP PRINT


L:
MOV DL,'l'
JMP PRINT

M:
MOV DL,'m'
JMP PRINT

PRINT:
MOV AH, 2
INT 21H
JMP EXT






 

EXT:
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN