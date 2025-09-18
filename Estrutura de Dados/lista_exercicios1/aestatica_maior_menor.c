// 13. Faça um programa que encontre o maior e o menor valor em um vetor estático de 10 posições.
# include <stdio.h>

int main(){
    int vetor[10];
    for(int i = 0; i < 10; i++){
        printf("Digite o %d valor: ", i+1);
        scanf("%d", &vetor[i]);
    }

    int menor = vetor[0];
    int maior = vetor[0];

    for (int i = 1; i < 10; i++){
        if (vetor[i] > maior){
            maior = vetor[i];
        }
        if (vetor[i] < menor) {
            menor = vetor[i];
        }
    }

    printf("Maior valor: %d \n", maior);
    printf("Menor valor: %d", menor);

    return 0;
}