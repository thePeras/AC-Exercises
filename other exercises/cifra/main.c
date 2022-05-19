#include <stdio.h>
#include <stdlib.h>

extern void cifra ( unsigned int N , char * S ) ;

int main(void) {
    char c[] = "aBcDefghijklmnopaBcDefghajklmnopaBcDefghijklmnop";
    unsigned int n = 48;
    cifra(n,c);

    for(int i=0; i<n; i++) printf("%c", c[i]);

    return 0;
}