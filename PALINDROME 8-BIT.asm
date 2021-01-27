# ORG F100
# DB ee
# ORG F200
	   LXI H,F100
	   MOV A,M
	   MOV C,A
	   ANI F0
	   MOV B,A
	   MVI D,04
	   MVI E,00
	   MOV A,C

ADDR1:	   RRC
	   MOV C,A
	   MOV A,E
	   RAL
	   MOV E,A
	   MOV A,C
	   DCR D
	   JNZ ADDR1
	   MOV A,E
	   RAL
	   RAL
	   RAL
	   RAL
	   CMP B
	   INX H
	   JNZ ADDR2
	   MVI M,02
	   JMP ADDR3
ADDR2:	   MVI M,01
ADDR3:	   HLT
