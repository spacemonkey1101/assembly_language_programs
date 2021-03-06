// LSB ADDITION
# ORG F100
# DB 55,66
# ORG F200
	   MVI C,00
	   LXI H,F100
	   MOV A,M
	   ANI 0F
	   MOV B,A
	   INX H
	   MOV A,M
	   ANI 0F
	   ADD B
	   CPI 09
	   JC ADDR3
	   ADI 06

	   JMP ADDR3


ADDR5:	   LXI H,F100
	   MOV A,M
	   ANI F0
	   MOV B,A
	   INX H
	   MOV A,M
	   ANI F0
	   ADD C	// ADD THE CARRY FROM LSB
	   MVI C,00
	   ADD B
	   CPI 90
	   JC ADDR4
	   ADI 60
	   JNC ADDR7
	   INR C

ADDR7:	   JMP ADDR4

ADDR3:	   STA F102
	   JMP ADDR5

ADDR4:	   ANI F0
	   STA F103
	   MOV A,C
	   STA F104
	   HLT
