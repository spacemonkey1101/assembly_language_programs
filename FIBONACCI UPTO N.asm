#ORG F000
#DB 6  // 1 1 2 3
#ORG F200

LXI H, F000
MOV C,M


DCR C
DCR C
INX H
MVI A,01
MOV M,A

INX H
MVI B,01
INX H
MOV M,B


ADDR1:ADD B
MOV E,A
MOV A,B
INX H
MOV B,E
MOV M,B
DCR C
JNZ ADDR1

HLT