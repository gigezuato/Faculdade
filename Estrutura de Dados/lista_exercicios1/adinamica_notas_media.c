/*
    19. Crie um programa que leia notas de alunos (quantidade indefinida, até o usuário digitar -1),
 armazenando em vetor dinâmico e calcule a média.
*/
# include <stdio.h>
# include <stdlib.h>
# include <stdbool.h>

int main(){
    float *notas = NULL;
    int qtde_notas = 0;
    float nota;

    while (true)
    {
        printf("Digite a %d nota (use -1 para sair): ", qtde_notas+1);
        scanf("%f", &nota);

        if (nota == -1){
            break;
        }

        qtde_notas ++;
        float *temp = realloc(notas, qtde_notas * sizeof(float));
        notas = temp;
        notas[qtde_notas - 1] = nota;    
    }

    float soma = 0;
    for (int i = 0; i < qtde_notas; i++){
        soma += notas[i];
    }

    printf("Media de notas: %.2f", soma / qtde_notas);
    
    free(notas);
    return 0;
}