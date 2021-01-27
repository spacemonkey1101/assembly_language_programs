# ORG F200
# DB 4
# ORG F300
# DB FE,FF,AA,09
# ORG F100
	   LDA F200
	   MOV C,A	// C = NUMBER OF NUMBERS
	   LXI H,F300
	   MVI B,00
	   MOV E,B

ADDR2:	   MOV A,M
	   MOV D,A
	   RAR
	   JC ADDR1
	   MOV A,B
	   ADD D
	   JNC ADDR3
	   INR E

ADDR3:	   MOV B,A

ADDR1:	   INX H
	   DCR C
	   JNZ ADDR2
	   MOV A,B
	   STA F400
	   MOV A,E
	   STA F401
	   HLT
