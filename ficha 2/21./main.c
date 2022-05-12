#include <stdio.h>
#include <stdlib.h>

extern long int conta_inf(float *V, long int n, float lim);
//n é múltiplo de 4

int main(void){
	float dim = 4.0;
	float v[] = {10, 15, 20, 25};
	float lim = 19;
	
	long int res1 = conta_inf(v, dim, lim);
	printf("%ld", res1);

	//printf("1. With normal loop: \n result: %ld \n time: %lf \n\n", res1, time_spent1);
	//printf("2. With vector: \n result: %ld \n time: %lf \n\n", res2, time_spent2);

	return EXIT_SUCCESS;
}