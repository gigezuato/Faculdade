// 17. Faça um programa que aloque dinamicamente um vetor e calcule sua média.
# include <stdio.h>
# include <stdlib.h>

float media(float *v, int qtde);

int main(){
    int tamanho;
    printf("Quantidade de elementos: ");
    scanf("%d", &tamanho);

    float *vetor;
    vetor = malloc(tamanho * sizeof(float));

    for (int i = 0; i < tamanho; i++){
        printf("Digite o %d valor: ", i+1);
        scanf("%f", &vetor[i]);
    }

    printf("Media dos valores = %.2f", media(vetor, tamanho));

    free(vetor);
    return 0;
}

float media(float *v, int qtde){
    float soma = 0;

    for(int i = 0; i < qtde; i++){
        soma += v[i];
    }
    return soma / qtde;
}