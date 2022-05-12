#include <stdio.h>
#include <stdlib.h>

extern long int conta_intervalo(float *V, long int n, float a, float b);

int main(void){
	long int res;
	float array[] = {1.2, 1.5, 1.8, 2.0};

	res = conta_intervalo(array, 4, 1.8, 1.9);
	printf("Existem %ld números no intervalo.\n", res);

	return EXIT_SUCCESS;
}