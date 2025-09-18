// 16. Implemente uma função que receba um vetor alocado dinamicamente e retorne o maior valor
# include <stdio.h>
# include <stdlib.h>

int maior(int *v, int qtde);

int main(){
    int tamanho;
    printf("Qtde de elementos: ");
    scanf("%d", &tamanho);

    int *vetor;
    vetor = malloc(tamanho * sizeof(int));

    for(int i = 0; i < tamanho; i++){
        printf("Digite o %d valor: ", i+1);
        scanf("%d", &vetor[i]);
    }

    printf("Maior valor: %d", maior(vetor, tamanho));

    free(vetor);
    return 0;
}

int maior(int *v, int qtde){
    int maior = *v;

    for(int i = 1; i < qtde; i++){
        if(*(v + i) > maior){
            maior = *(v + i);
        }
    }
    return maior;
}