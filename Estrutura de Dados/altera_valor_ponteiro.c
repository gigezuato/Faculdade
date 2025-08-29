# include <stdio.h>
# include <stdlib.h>

int main() {
    int x;
    int y;
    int *p;

    printf("Digite um valor inteiro para x: ");
    scanf("%d", &x);
    printf("Antes: %d \n", x);

    p = &x;

    printf("Digite um novo valor para o x: ");
    scanf("%d", &y);
    *p = y;
    printf("Depois: %d", x);
}