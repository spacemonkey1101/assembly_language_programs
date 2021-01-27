# ORG F100
# DB 03,06
# ORG F200
	   LXI H,F100
	   MOV B,M
	   INX H
	   MOV D,M
	   CALL MUL10
	   INX H
	   ADD D
	   MOV M,A
	   HLT

MUL10:	   MVI C,A
	   MVI A,00

ADDR1:	   ADD B
	   DCR C
	   JNZ ADDR1
	   RET
