// 12. Crie um programa que leia 10 números inteiros em um array estático e calcule a média.
# include <stdio.h>

int main(){
    int nums[10];
    for(int i = 0; i < 10; i++){
        printf("Digite o %d valor: ", i+1);
        scanf("%d", &nums[i]);
    }
    float soma = 0;
    for(int i = 0; i < 10; i++){
        soma += nums[i];
    }
    float media = soma / 10;
    printf("Media = %.2f", media);
    return 0;
}