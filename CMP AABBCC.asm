// IF SAME AA
// IF < BB
// IF > CC
# ORG F200
# DB 08,06
# ORG F300
	   LXI H,F200
	   MOV A,M
	   INX H
	   MOV B,M
	   INX H
	   CMP B
	   JZ ADDR1
	   JC ADDR2
	   JMP ADDR3

ADDR1:	   MVI A,AA
	   JMP ADDR4

ADDR2:	   MVI A,BB
	   JMP ADDR4

ADDR3:	   MVI A,CC

ADDR4:	MOV M,A
	   HLT
