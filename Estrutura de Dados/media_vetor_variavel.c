# include <stdio.h>
# include <stdlib.h>

float media(int qtde, float *numeros);

int main() {
    float *numeros;
    int qtde;
    int i = 0;

    printf("Quantidade de valores: ");
    scanf("%d", &qtde);

    numeros = malloc(qtde * sizeof(float));

    for (i = 0; i < qtde; i++)
    {
        printf("Valor %d : ", i+1);
        scanf("%f", &numeros[i]);
    }

    float med = media(qtde, numeros);

    printf("Media dos valores: %.2f", med);

    free(numeros);
}

float media(int qtde, float *numeros){
    float soma = 0;
    int i = 0;

    for (i = 0; i < qtde; i++)
    {
        soma += numeros[i];
    }

    return soma / qtde;
}