// 4. Crie uma função que receba um vetor de inteiros e devolva a soma de seus elementos.
# include <stdio.h>
# include <stdlib.h>

int soma_vetor(int *v, int qtde);

int main() {
    int tamanho;
    int *vetor;
    int i = 0;

    printf("Digite a quantidade de elementos: ");
    scanf("%d", &tamanho);

    vetor = malloc(tamanho * sizeof(int));

    for (i=0; i < tamanho; i++) {
        printf("Digite o %d valor: ", i+1);
        scanf("%d", &vetor[i]);
    }

    int soma = soma_vetor(vetor, tamanho);
    printf("Soma dos elementos = %d", soma);

    free(vetor);
    
    return 0;
}

int soma_vetor(int *v, int qtde){
    int soma = 0, i = 0;

    for (i = 0; i < qtde; i++){
        soma += v[i];
    }
    return soma;
}