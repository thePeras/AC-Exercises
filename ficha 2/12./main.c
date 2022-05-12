#include <stdio.h>
#include <stdlib.h>

extern double rotF(double x);

int main(void){
	double res;
	res = rotF(2.0);

	printf("Resultado %lf.\n", res);

	return EXIT_SUCCESS;
}