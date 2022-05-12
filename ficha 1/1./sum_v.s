//
// * Assembler program to sum vector numbers *
//
// X0 - vector base (64bits)
// W1 - vector dimension
//

.global _SOMA_V
.p2align 2

_SOMA_V: 
	MOV	W2, #0
IF:	CBZ	W1, LFIM
	LDR W3, [X0]
	ADD W2, W2, W3
	ADD X0, X0, #4
	SUB W1, W1, #1
	B IF
LFIM:
	MOV W0, W2
	RET