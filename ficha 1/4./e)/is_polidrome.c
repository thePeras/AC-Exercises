#include <stdio.h>
#include <stdlib.h>

extern int IS_POLIDROME(char *str); 

int main(void){
	char str[] = "heeh";
	int res = IS_POLIDROME(str);

	//printf(res);
	return EXIT_SUCCESS;
}