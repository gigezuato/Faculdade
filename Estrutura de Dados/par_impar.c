#include <stdio.h>
#include <stdlib.h>

int main() {
    int a, b;

    printf("Digite o primeiro numero:");
    scanf("%d", &a);

    printf("Digite o segundo numero:");
    scanf("%d", &b);

    int soma = a + b;

    if (soma % 2 == 0) {
        printf("PAR!");
    } else {
        printf("IMPAR!");
    }
}