#include <stdio.h>
#include <stdlib.h>

extern float DISTANCE(float x1, float y1, float x2, float y2); 

int main(void){
	float x1, y1, x2, y2, res;
	res = DISTANCE(x1, y1, x2, y2);
	printf("A distancia entre os pontos é = %d\n", res);

	return EXIT_SUCCESS;
}