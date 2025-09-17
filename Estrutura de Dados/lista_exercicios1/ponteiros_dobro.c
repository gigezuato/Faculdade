// 6. Crie uma função que receba um ponteiro para inteiro e atualize o valor para o dobro.
# include <stdio.h>

void dobra_valor(int *p);

int main() {
    int num;
    printf("Digite um valor inteiro: ");
    scanf("%d", &num);

    dobra_valor(&num);

    printf("Valor atualizado com o dobro: %d", num);

    return 0;
}

void dobra_valor(int *p) {
    *p *= 2;
}