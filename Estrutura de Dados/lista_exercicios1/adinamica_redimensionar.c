/*
     18. Escreva uma função que redimensione dinamicamente um vetor de inteiros (simulando o
 realloc).
*/
# include <stdio.h>
# include <stdlib.h>

int *redimensionar_vetor(int *v_antigo, int tamanho_antigo, int novo_tamanho);

int main(){
    int tamanho;
    printf("Quantidade inicial de elementos: ");
    scanf("%d", &tamanho);

    int *vetor;
    vetor = malloc(tamanho * sizeof(int));

    for(int i = 0; i < tamanho; i++){
        printf("Digite o %d valor: ", i+1);
        scanf("%d", &vetor[i]);
    }

    int novo_tamanho;
    printf("Novo tamanho do vetor: ");
    scanf("%d", &novo_tamanho);

    int *vetor_atual;
    vetor_atual = redimensionar_vetor(vetor, tamanho, novo_tamanho);

    if (novo_tamanho > tamanho) {
        for (int i = tamanho; i < novo_tamanho; i++) {
        vetor_atual[i] = 0; // Exemplo de inicialização no main
        }
    }

    printf("Novo vetor: \n");
    for(int i = 0; i < novo_tamanho; i++){
        printf("%d \n", vetor_atual[i]);
    }

    free(vetor_atual);
    return 0;

}

int *redimensionar_vetor(int *v_antigo, int tamanho_antigo, int novo_tamanho){
    int *novo_vetor;
    novo_vetor = malloc(novo_tamanho * sizeof(int));

    int qtde;
    if (novo_tamanho > tamanho_antigo){
        qtde = tamanho_antigo;
    } else{
        qtde = novo_tamanho;
    }
    for(int i = 0; i < qtde; i++){
        novo_vetor[i] = v_antigo[i];
    }

    free(v_antigo);
    return novo_vetor;
}