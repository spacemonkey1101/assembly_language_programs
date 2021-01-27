// 19 IN HEX -> 25 IN DEC
# ORG F200
# DB 04
# ORG F300
	   LXI H,F200
	   MOV A,M
	   MVI B,01
	   MVI E,01

ADDR2:	   SUB B
	   JZ ADDR1
	   INR E
	   INR B
	   INR B
	   JMP ADDR2

ADDR1:	   INX H
	   MOV M,E
	   HLT
