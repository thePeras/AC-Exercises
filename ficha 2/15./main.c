#include <stdio.h>
#include <stdlib.h>

extern long int prodintV(int *R, int *S, int n);
//n é múltiplo de 4

int main(void){
	int A[8] = {2, 3, 1, 4, 2, -1, -2, 0};
	int B[8] = {1, -1, 1, 1, -1, 1, -1, 1};

	long int res = prodintV(A, B, 8);

	printf("Resultado %ld.\n", res);

	return EXIT_SUCCESS;
}