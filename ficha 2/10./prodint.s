//
// Assembler program to calculate the product inter between two vectors
//
// X0 - Endereço base do 1 vector
// X1 - Endereço base do 2 vector
// X2 - Dimensão do vetor
// X3 - total
//

.global _PRODINT	     // Allow other files to call this routine
.p2align 2

_PRODINT: 
	MOV X3, 0
loop:	
	CBZ X2, fim
fim: MOV
	RET