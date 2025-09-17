/*
    10. Escreva uma função que receba um vetor e use ponteiros para contar quantos elementos são
 maiores que a média.
*/

# include <stdio.h>
# include <stdlib.h>

int maior_que_media(int *v, int qtde);

int main() {
    int tamanho;
    printf("Quantos elementos: ");
    scanf("%d", &tamanho);

    int *vetor;
    vetor = malloc(tamanho * sizeof(int));
    int i;
    for (i= 0; i < tamanho; i++) {
        printf("Digite o %d valor: ", i+1);
        scanf("%d", &vetor[i]);
    }
    printf("Quantidade de valores maiores que a media = %d", maior_que_media(vetor, tamanho));

    free(vetor);

    return 0;
}

int maior_que_media(int *v, int qtde){
    float soma = 0;
    float media = 0;
    int cont_maior = 0;
    int i;

    for(i = 0; i < qtde; i++){
        soma += *(v + i);
    }
    media = soma / qtde;
    for(i = 0; i < qtde; i++){
        if (*(v + i) > media) {
            cont_maior += 1;
        }
    }
    return cont_maior;
}