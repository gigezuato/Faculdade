//  15. Escreva um programa que aloque dinamicamente um vetor de n inteiros e leia seus valores.
# include <stdio.h>
# include <stdlib.h>

int main(){
    int qtde;
    printf("Digite a quantidade de elementos: ");
    scanf("%d", &qtde);

    int *vetor;
    vetor = malloc(qtde * sizeof(int));

    for(int i = 0; i < qtde; i++){
        printf("Digite o %d valor: ", i+1);
        scanf("%d", &vetor[i]);
    }
    for(int i = 0; i < qtde; i++){
        printf("%d \n", vetor[i]);
    }

    free(vetor);
    return 0;
}