//  11. Escreva um programa que armazene em um array estático os 10 primeiros números pares.
# include <stdio.h>

int main(){
    int pares[10];
    int i;
    int numero_par = 0;

    for(i = 0; i < 10; i++) {
        pares[i] = numero_par;
        numero_par += 2;
    }
    printf("Valores do vetor: \n");
    for(i = 0; i < 10; i++) {
        printf("%d \n", pares[i]);
    }
    return 0;
}