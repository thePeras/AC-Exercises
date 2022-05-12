//
// Assembler program to sum vector numbers
//
// X0 - Número, (64bits)
// X1 - Temporário
// W2 - Contador
// W1 = 64 - Interador (64)
// 

.include "debug.s"

.global _N1_BITS	     // Allow other files to call this routine
.p2align 2

_N1_BITS: 
	MOV W2, 0
IF:	CBZ X0, LFIM
	AND X1, X0, 1
	LSR X0, X0, 1
	CBZ X1, IF

	ADD W2, W2, 1 
	B IF
LFIM:
	MOV W0, W2
	RET