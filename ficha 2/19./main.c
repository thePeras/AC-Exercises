#include <stdio.h>
#include <stdlib.h>

extern void mirrorSeq(float *pt, int n);
//n é múltiplo de 4

int main(void){
	int n = 4;
	float v[] = {1.5, 1.2, 8.2, 0.1};
	
	mirrorSeq(v, 4);

	printf("%f", v[2]);

	return EXIT_SUCCESS;
}