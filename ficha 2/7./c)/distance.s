//
// Assembler program to calculate the distance between two points
//
// S0 - x1
// S1 - y1
// S2 - x2
// S3 - y2
//

.global _DISTANCE	     // Allow other files to call this routine
.p2align 2

_DISTANCE: 
	FSUB S0, S2, S0
	FSUB S1, S3, S1

	FMUL S0, S0, S0
	FMUL S1, S1, S1

	FADD S0, S0, S1

	FSQRT S0, S0
	
	RET