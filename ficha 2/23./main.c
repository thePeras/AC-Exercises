#include <stdio.h>
#include <stdlib.h>

extern double norma(double *Z, long int n);
//n é múltiplo de 4

int main(void){
	long n1 = 6;
	double v1[] = {1.5, 1.21, 8.234, 0.123, 3.90, 5.677};
	
	double res1 = norma(v1, n1);

	//printf("1. With normal loop: \n result: %ld \n time: %lf \n\n", res1, time_spent1);
	//printf("2. With vector: \n result: %ld \n time: %lf \n\n", res2, time_spent2);

	return EXIT_SUCCESS;
}