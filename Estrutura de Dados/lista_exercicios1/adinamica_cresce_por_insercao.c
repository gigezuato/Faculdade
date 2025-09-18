/*
    20. Escreva um programa que simule uma lista de números inteiros usando alocação dinâmica
 (vetor que cresce a cada inserção).
*/
# include <stdio.h>
# include <stdlib.h>
# include <stdbool.h>

int main(){
    int *lista = NULL;
    int tamanho = 0;
    int opcao;

    while (true)
    {
        printf("LISTA DE NUMEROS\n");
        printf("1 - Inserir valor\n");
        printf("2 - Exibir lista\n");
        printf("3 - Sair\n");
        printf("Escolha a opcao: \n");
        scanf("%d", &opcao);

        switch (opcao)
        {
        case 1:
            int num;
            printf("INSERIR VALOR\n");
            printf("Digite o valor que deseja inserir na lista: ");
            scanf("%d", &num);

            tamanho ++;
            int *temp = realloc(lista, tamanho * sizeof(int));
            lista = temp;
            lista[tamanho - 1] = num;

            printf("Valor %d adicionado na lista!", num);
            break;
        case 2:
            printf("LISTA: \n");
            if (tamanho == 0){
                printf("A lista esta vazia!");
            } else {
                for(int i = 0; i < tamanho; i++){
                    printf("%d \n", lista[i]);
                }
                printf("Fim da lista!\n");
            }
            break;
        case 3:
            printf("Saindo do programa...");
            break;
        default:
            printf("Opcao invalida!");
            break;
        }

        if (opcao == 3){
            break;
        }
    }

    free(lista);
    return 0;
}