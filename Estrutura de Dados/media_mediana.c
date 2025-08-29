# include <stdio.h>
# include <stdlib.h>

float media(float n1, float n2, float n3);
float mediana(float n1, float n2, float n3);

int main() {
    float a, b, c;
    printf("Digite o primeiro numero: ");
    scanf("%f", &a);
    printf("Digite o segundo numero: ");
    scanf("%f", &b);
    printf("Digite o terceiro numero: ");
    scanf("%f", &c);

    float md = media(a, b, c);
    float mdn = mediana(a, b, c);

    printf("Media = %.2f \n", md);
    printf("Mediana = %.2f", mdn);
}

float media(float n1, float n2, float n3){
    float m = (n1 + n2 + n3) / 3;
    return m;
}

float mediana (float n1, float n2, float n3){
    int meio;
    if (n1 >= n2 && n1 <= n3 || n1 >= n3 && n1 <= n2) 
    {
        meio = n1;
    } else if (n2 >= n1 && n2 <= n3 || n2 >= n3 && n2 <= n1)
    {
        meio = n2;
    } else if (n3 >= n1 && n3 <= n2 || n3 >= n2 && n3 <= n1)
    {
        meio = n3;
    }
    
    return meio;
}