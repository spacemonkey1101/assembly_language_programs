#ORG F100
#DB D1


#ORG F200

LXI H,F100
MOV A,M
ORA A /// RESETTING THE CARRY FLAG 
          //WE COULD USE STC FOLLOWED BY CMC
RAR
XRA M
INX H
MOV M,A
HLT