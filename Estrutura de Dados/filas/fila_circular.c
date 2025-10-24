#include <stdio.h> 
#include <stdlib.h> 
 
#define TAMANHO 5  // tamanho máximo da fila 
 
typedef struct { 
    int itens[TAMANHO]; 
    int frente; 
    int fim; 
} FilaCircular; 
 
// Inicializa a fila 
void inicializar(FilaCircular *fila) { 
    fila->frente = -1; 
    fila->fim = -1; 
} 
 
// Verifica se a fila está cheia 
int estaCheia(FilaCircular *fila) { 
    return (fila->frente == (fila->fim + 1) % TAMANHO); 
} 
 
// Verifica se a fila está vazia 
int estaVazia(FilaCircular *fila) { 
    return (fila->frente == -1); 
} 
 
// Enfileira um elemento 
void enfileirar(FilaCircular *fila, int valor) { 
    if (estaCheia(fila)) { 
        printf("Fila cheia! Não é possível enfileirar %d\n", valor); 
        return; 
    } 
 
    if (estaVazia(fila)) 
        fila->frente = 0; 
 
    fila->fim = (fila->fim + 1) % TAMANHO; 
    fila->itens[fila->fim] = valor; 
    printf("Enfileirado: %d\n", valor); 
} 
 
// Desenfileira um elemento 
int desenfileirar(FilaCircular *fila) { 
    if (estaVazia(fila)) { 
        printf("Fila vazia! Nenhum elemento para desenfileirar.\n"); 
        return -1; 
    } 
 
    int valor = fila->itens[fila->frente]; 
 
    if (fila->frente == fila->fim) { 
        // Último elemento foi removido
        fila->frente = -1; 
        fila->fim = -1; 
    } else { 
        fila->frente = (fila->frente + 1) % TAMANHO; 
    } 
 
    printf("Desenfileirado: %d\n", valor); 
    return valor; 
} 
 
// Exibe os elementos da fila 
void exibir(FilaCircular *fila) { 
    if (estaVazia(fila)) { 
        printf("Fila vazia!\n"); 
        return; 
    } 
 
    printf("Fila atual: "); 
    int i = fila->frente; 
    while (1) { 
        printf("%d ", fila->itens[i]); 
        if (i == fila->fim) 
            break; 
        i = (i + 1) % TAMANHO; 
    } 
    printf("\n"); 
} 
 
// Função principal 
int main() { 
    FilaCircular fila; 
    inicializar(&fila); 
 
    enfileirar(&fila, 10); 
    enfileirar(&fila, 20); 
    enfileirar(&fila, 30); 
    enfileirar(&fila, 40); 
    exibir(&fila); 
 
    desenfileirar(&fila); 
    desenfileirar(&fila); 
    exibir(&fila); 
 
    enfileirar(&fila, 50); 
    enfileirar(&fila, 60);  // deve circular para o início 
    exibir(&fila); 
 
    enfileirar(&fila, 70);  // tentativa de enfileirar em fila cheia 
 
    return 0; 
}