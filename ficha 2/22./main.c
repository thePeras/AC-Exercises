#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void ajuste_s(float *X, float *Y, int n, float da);
//n é múltiplo de 4

void ajuste_c(float *X, float *Y, int n, float da){
	int i;
	for (i = 0; i < n; i++)
	Y[i] = Y[i] - da * fabs(X[i]);
}

int main(void){
	float X[] = {1.0, 2.0, 3.0, 4.0, 1.0, 2.0, 3.0, 4.0};
	float Y[] = {2.0, 3.0, 4.0, 5.0, 2.0, 3.0, 4.0, 5.0};
	int n = 8;
	float da = 2.0;

	//ajuste_c(X, Y, n, da);
	ajuste_s(X, Y, n, da);
	for (int i = 0; i < n; i++)
	printf("Y: %f", Y[i]);

	//printf("1. With normal loop: \n result: %ld \n time: %lf \n\n", res1, time_spent1);
	//printf("2. With vector: \n result: %ld \n time: %lf \n\n", res2, time_spent2);

	return EXIT_SUCCESS;
}
