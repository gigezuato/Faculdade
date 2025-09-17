// 3. Faça uma função que receba um número e verifique se ele é primo.
# include <stdio.h>
# include <stdbool.h>

bool e_primo(int n);

int main() {
    int num;

    printf("Digite um valor: ");
    scanf("%d", &num);

    if (e_primo(num)) {
        printf("%d = PRIMO!", num);
    } else {
        printf("%d = NAO PRIMO!", num);
    }
}

bool e_primo(int n){
    int cont_div = 0;
    int i = 1;

    for (i = 1; i <= n; i++) {
        if (n % i == 0){
            cont_div += 1;
        }
    }

    if (cont_div == 2) {
        return true;
    } else {
        return false;
    }
}