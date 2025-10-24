#include <stdio.h> 
#define MAX 5   // tamanho máximo da fila 
 
// Estrutura da fila 
typedef struct { 
    int dados[MAX]; 
    int inicio; 
    int fim; 
} Fila; 
 
// --------------------------- 
// Função: inicializa a fila 
void inicializa(Fila *f) { 
    f->inicio = 0; 
    f->fim = 0; 
} 
 
// --------------------------- 
// Verifica se a fila está vazia 
int estaVazia(Fila *f) { 
    return f->inicio == f->fim; 
} 
 
// --------------------------- 
// Verifica se a fila está cheia 
int estaCheia(Fila *f) { 
    return f->fim == MAX; 
} 
 
// --------------------------- 
// Enfileira (insere) um elemento no fim 
void enfileirar(Fila *f, int valor) { 
    if (estaCheia(f)) 
        printf("Fila cheia! Não é possível inserir %d.\n", valor); 
    else { 
        f->dados[f->fim] = valor; 
        f->fim++; 
    } 
} 
 
// --------------------------- 
// Desenfileira (remove) e RETORNA o elemento do início 
int desenfileirar(Fila *f) { 
    if (estaVazia(f)) { 
        printf("Fila vazia! Nada a remover.\n"); 
        return -1; // valor simbólico de erro 
    } 
 
    int valor = f->dados[f->inicio]; // guarda o valor que vai sair 
    f->inicio++;                     // move o início 
    return valor;                    // retorna o valor removido 
}
// --------------------------- 
// Retorna o primeiro elemento SEM remover 
int frente(Fila *f) { 
    if (estaVazia(f)) { 
        printf("Fila vazia!\n"); 
        return -1; 
    } 
    return f->dados[f->inicio]; 
} 
 
// --------------------------- 
// Imprime todos os elementos da fila 
void imprime(Fila *f) { 
    if (estaVazia(f)) 
        printf("Fila vazia!\n"); 
    else { 
        printf("Fila: "); 
        for (int i = f->inicio; i < f->fim; i++) 
            printf("%d ", f->dados[i]); 
        printf("\n"); 
    } 
} 
 
// --------------------------- 
// Função principal para testar 
int main() { 
    Fila f; 
    inicializa(&f); 
 
    enfileirar(&f, 10); 
    enfileirar(&f, 20); 
    enfileirar(&f, 30); 
 
    imprime(&f); 
 
    printf("Frente: %d\n", frente(&f)); 
 
    int retirado = desenfileirar(&f); 
    printf("Saiu: %d\n", retirado); 
 
    imprime(&f); 
 
    return 0; 
}