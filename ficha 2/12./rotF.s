//
// Assembler program to calculate the product inter between two vectors
//
// D0 - Double
//
.p2align 2

.data
PI: .double 3.0 //3.141592653

.text
.global _rotF	     // Allow other files to call this routine

.include "debug.s"

_rotF: 
	FCMP D0, 0.0
	BLT ramo2
	B ramo1

ramo1:
	printStr "ramo1"
	//mov x0, #0x4040000000000000 //32.0
	//fmov d1, 3.0 //The fmov instructions only loads numbers between ]0.0, 31.0]

	//FMOV D1, 3
	ldr D0, adr_pi 
	FADD D0, D0, D1

	FMUL D0, D0, D0
	FMUL D0, D0, D0

	FSQRT D0, D0
	RET

ramo2:
	printStr "ramo2"
	MOV X1, 4
	ucvtf D1, X1
	MOV X1, 1
	ucvtf D2, X1

	FSUB D0, D1, D0
	FSQRT D0, D0
	FDIV D0, D2, D0
	RET

adr_pi: .double PI  /* address to var1 stored here */