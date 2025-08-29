# include <stdio.h>
# include <stdlib.h>

void ajustar(int *a, int *b);

int main() {
    int a, b;

    printf("Digite o primeiro valor: ");
    scanf("%d", &a);
    printf("Digite o segundo valor: ");
    scanf("%d", &b);

    if (a == b) {
        printf("Valores iguais!");
    } else {
        ajustar(&a, &b);
        printf("Primeiro valor: %d \nSegundo valor: %d", a, b);
    }
}

void ajustar(int *a, int *b) {
    int temp;
    if (*a > *b) {
        temp = *a;
        *a = *b;
        *b = temp;
    }
}
