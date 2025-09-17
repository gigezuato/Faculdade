//  2. Crie uma função que calcule o fatorial de um número inteiro.
# include <stdio.h>

int fatorial(int n);

int main() {
    int num;

    printf("Digite um valor inteiro: ");
    scanf("%d", &num);

    int fat = fatorial(num);
    printf("%d! = %d", num, fat);

    return 0;
}

int fatorial(int n) {
    if (n == 0 || n == 1) {
        return 1;
    } else {
        return n * fatorial(n-1);
    }
}