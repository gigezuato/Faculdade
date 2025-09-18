/*
    8. Faça um programa que leia 5 números usando ponteiros e depois imprima os valores na ordem
 inversa
*/  
# include <stdio.h>

int main() {
    int vetor[5];

    for (int i = 0; i < 5; i++){
        printf("Digite o %d valor: ", i+1);
        scanf("%d", &vetor[i]);
    }

    printf("Ordem inversa: \n");
    for (int i = 4; i >= 0; i--){
        printf("%d \n", *(vetor + i));
    }

    return 0;
}