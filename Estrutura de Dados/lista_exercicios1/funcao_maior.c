//  1. Escreva uma função que receba dois números inteiros e retorne o maior deles
# include <stdio.h>

int maior_valor(int x, int y);

int main(){
    int n1, n2;

    printf("Digite o primeiro valor: ");
    scanf("%d", &n1);
    printf("Digite o segundo valor: ");
    scanf("%d", &n2);

    int maior = maior_valor(n1, n2);
    printf("Maior valor  = %d", maior);

    return 0;
}

int maior_valor(int x, int y) {
    if (x >= y) {
        return x;
    } else {
        return y;
    }
}