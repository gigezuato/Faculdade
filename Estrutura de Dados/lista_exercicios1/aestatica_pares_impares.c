/*
     14. Escreva um programa que conte quantos números pares e ímpares existem em um vetor
 estático.
*/
# include <stdio.h>

int main(){
    int vetor[10];

    for (int i = 0; i < 10; i++){
        printf("Digite o %d valor: ", i+1);
        scanf("%d", &vetor[i]);
    }

    int cont_par = 0;
    int cont_impar = 0;

    for (int i = 0; i < 10; i++){
        if (vetor[i] % 2 == 0){
            cont_par += 1;
        } else {
            cont_impar += 1;
        }
    }

    printf("Qtde de valores pares: %d \n", cont_par);
    printf("Qtde de valores impares: %d", cont_impar);

    return 0;
}