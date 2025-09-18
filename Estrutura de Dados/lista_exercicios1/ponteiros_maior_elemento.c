// 7. Escreva uma função que receba um vetor e use ponteiros para encontrar o maior elemento.
# include <stdio.h>
# include <stdlib.h>

int maior_elemento(int *v, int qtde);

int main() {
    int *vetor;
    int tamanho;
    printf("Quantos elementos: ");
    scanf("%d", &tamanho);

    vetor = malloc(tamanho * sizeof(int));

    for (int i = 0; i < tamanho; i++) {
        printf("Digite o %d elemento: ", i+1);
        scanf("%d", &vetor[i]);
    }

    printf("Maior elemento = %d", maior_elemento(vetor, tamanho));

    free(vetor);

    return 0;
}

int maior_elemento(int *v, int qtde){
    int maior = *v;

    for(int i = 1; i < qtde; i++) {
        if (*(v + i) > maior) {
            maior = *(v + i);
        }
    }

    return maior;
}