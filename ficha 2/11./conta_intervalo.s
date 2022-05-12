//
// Assembler program to calculate the product inter between two vectors
//
// X0 - Endereço base do 1 vector
// W1 - Dimensão
// D0 - float a
// D1 - float b 
//[a, b]
// X4 - total numbers
//

.include "debug.s"

.global _conta_intervalo	     // Allow other files to call this routine
.p2align 2

_conta_intervalo: 
	MOV X4, 0
loop:	
	CBZ W1, fim
	LDR S5, [X0], 4
	SUB W1, W1, 1

	FCMP S5, S0
	BLT loop
	FCMP S5, S1
	BGT loop

	ADD X4, X4, 1
	B loop
fim: MOV X0, X4
	RET