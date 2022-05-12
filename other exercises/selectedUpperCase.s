//
// Assembler program to calculate the product inter between two vectors
//
// X0 - seqA
// X1 - seqB
// W2 - a_incrementer
// W3 - b_incrementer

.include "debug.s"

.global _selectedUpperCase	     
.p2align 2

_selectedUpperCase: 
	MOV W2, 0
	MOV W3, 0
first_loop:	

second_loop:

fim: MOV X0, X4
	RET