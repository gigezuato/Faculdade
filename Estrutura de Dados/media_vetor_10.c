# include <stdio.h>
# include <stdlib.h>

float media (float *numeros);

int main() {
    float v[10] = {1, 5, 8.5, 3.8, 7, 10, 5.4, 9, 4, 3};

    float med = media(v);

    printf("Media dos 10 valores = %.2f", med);
}

float media (float *numeros) {
    float soma = 0;
    int i = 0;

    for (i = 0; i < 10; i++)
    {
        soma += numeros[i];
    }

    return soma / 10;
}