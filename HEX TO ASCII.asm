# ORG F100
# DB E4
# ORG F200
	   LXI H,F100
	   MOV A,M
	   MOV B,A
	   ANI 0F
	   CALL CONV
	   INX H
	   MOV M,A
	   MOV A,B
	   ANI F0
	   CALL MSBTOLSB
	   CALL CONV
	   INX H
	   MOV M,A
	   HLT

CONV:	   CPI 0A
	   JC ADDR1
	   ADI 07

ADDR1:	   ADI 30
	   RET

MSBTOLSB:   RRC
	   RRC
	   RRC
	   RRC
	   RET
