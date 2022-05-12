//
// Assembler program to sum vector numbers
//
// X0 - Endereço base da string
// W1 - temporário da strnig
// W2 - Contador do tamanho da string ->
// W3 - C
// 
// 

.include "debug.s"

.global _IS_POLIDROME	     // Allow other files to call this routine
.p2align 2

_IS_POLIDROME: 
	MOV X3, X0
	MOV W2, 0
IF:	LDR W1, [X3], 1
	CBZ W1, LFIM
	ADD W2, W2, 1
	B IF


LFIM: 
	printReg 2
	SUB X2, X2, 1
	ADD X1, X0, X2
IF2:
	printReg 0
	printReg 1
	CMP X0, X1
	B.GE FIM 

	LDR X4, [X0], 1
	LDR X5, [X1], -1

	printReg 4
	printReg 5

	CMP X5, X4
	B.EQ IF2

	MOV W0, 0
	printStr "0"
	RET	
FIM: 
	MOV W0, 1
	printStr "1"
	RET