//
// Assembler program to sum vector numbers
//
// X0 - vector base, (64bits)
// W1 - dimension
//

.global _MIN	     // Allow other files to call this routine
.p2align 2

_MIN: 
	MOV	X2, 0x7fffffff //the largest 32bits number
IF:	CBZ	W1, LFIM
	LDR W3, [X0]

	ADD X0, X0, #4
	SUB W1, W1, #1

	CMP W3, W2
	B.GE IF 
	
	MOV W2, W3
	B IF
LFIM:
	MOV W0, W2
	RET