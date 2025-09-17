/*
    9. Crie uma função que receba dois ponteiros para inteiros e retorne a soma dos valores
 apontados.
*/
# include <stdio.h>

int soma(int *n1, int *n2);

int main(){
    int a, b;
    printf("Digite o 1 valor: ");
    scanf("%d", &a);
    printf("Digite o 2 valor: ");
    scanf("%d", &b);

    printf("Soma: %d", soma(&a, &b));
}

int soma(int *n1, int *n2){
    return *n1 + *n2;
}