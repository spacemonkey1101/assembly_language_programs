#ORG F201
#DB BB,07,AA,08

#ORG F300
LXI H, F201
MOV A,M
INX H 
MOV B,M

SUB B

MOV D,A

INX H
MOV A,M
INX H
MOV B,M
SBB B 
JNC ADDR1
INR E
ADDR1:INX H
MOV M,D
INX H
MOV M,A
INX H
MOV M,E

HLT