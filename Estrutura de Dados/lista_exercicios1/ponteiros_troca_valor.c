// 5. Escreva um programa que use ponteiros para trocar o valor de duas variáveis inteiras.
# include <stdio.h>

int main() {
    int a, b, temp;

    printf("Digite o 1 valor: ");
    scanf("%d", &a);
    printf("Digite o 2 valor: ");
    scanf("%d", &b);
    // para um uso melhor de ponteiros, seria melhor criar uma função de troca
    int *pa, *pb;
    pa = &a;
    pb = &b;

    temp = *pa;
    a = *pb;
    b = temp;

    printf("Valores trocados: %d, %d", a, b);

    return 0;
}