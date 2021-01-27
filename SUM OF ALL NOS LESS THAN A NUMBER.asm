# ORG F200
# DB 04,FF
# ORG F300
# DB FF,FF,EE,AA
# ORG F100
	   LXI H,F200
	   MOV C,M
	   INX H
	   MOV D,M
	   LXI H,F300
	   XRA A
	   MOV E,A
	   MOV B,A

ADDR1:	   MOV A,M
	   CMP D
	   JNC ADDR2
	   ADD B
	   MOV B,A
	   JNC ADDR3
	   INR E

ADDR3:	   MOV B,A

ADDR2:	   INX H
	   DCR C
	   JNZ ADDR1
	   MOV A,B
	   STA F400
	   MOV A,E
	   STA F401
	   HLT
