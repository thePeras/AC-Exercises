//
// Assembler program to sum vector numbers
//
// X0 - Endereço base do vetor
// X1 - Endereço base do novo vetor
// W2 - Dimensão 
// W3 - Registo temporário
// 

.include "debug.s"

.global _CHAR_TO_LONG	     // Allow other files to call this routine
.p2align 2

_CHAR_TO_LONG: 

IF:	CBZ W2, LFIM

	LDR W3, [X0], 1
	STR X3, [X1], 8

	SUB W2, W2, 1
	B IF
LFIM:
	RET