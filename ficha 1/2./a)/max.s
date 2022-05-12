//
// * Assembler program to find the max number in a vector *
//
// X0 - vector base, (64bits)
// W1 - dimension
//

.global _MIN	     
.p2align 2

_MIN: 
	MOV	X2, 0
IF:	CBZ	W1, LFIM
	LDR X3, [X0]

	ADD X0, X0, #8
	SUB W1, W1, #1

	CMP X3, X2
	B.LT IF 
	
	MOV X2, X3
	B IF
LFIM:
	MOV W0, W2
	RET