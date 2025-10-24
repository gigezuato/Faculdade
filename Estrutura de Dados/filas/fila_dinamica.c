#include <stdio.h> 
#include <stdlib.h> 
 
// Nó da lista (cada elemento da fila) 
typedef struct No { 
    int valor; 
    struct No *prox; 
} No; 
 
// Estrutura da fila 
typedef struct { 
    No *inicio; 
    No *fim; 
} Fila; 
 
// --------------------------- 
// Inicializa a fila (vazia) 
void inicializa(Fila *f) { 
    f->inicio = NULL; 
    f->fim = NULL; 
} 
 
// --------------------------- 
// Verifica se está vazia 
int estaVazia(Fila *f) { 
    return f->inicio == NULL; 
} 
 
// --------------------------- 
// Enfileira (insere no fim) 
void enfileirar(Fila *f, int valor) { 
    No *novo = (No*) malloc(sizeof(No)); 
    novo->valor = valor; 
    novo->prox = NULL; 
 
    if (estaVazia(f)) 
        f->inicio = novo; 
    else 
        f->fim->prox = novo; 
 
    f->fim = novo; 
} 
 
// --------------------------- 
// Desenfileira (remove do início e RETORNA valor) 
int desenfileirar(Fila *f) { 
    if (estaVazia(f)) { 
        printf("Fila vazia!\n"); 
        return -1; 
    } 
 
    No *aux = f->inicio; 
    int valor = aux->valor; 
 f->inicio = aux->prox; 
    free(aux); 
 
    if (f->inicio == NULL)  // se ficou vazia, zera o fim também 
        f->fim = NULL; 
 
    return valor; 
} 
 
// --------------------------- 
// Consulta o primeiro elemento (sem remover) 
int frente(Fila *f) { 
    if (estaVazia(f)) { 
        printf("Fila vazia!\n"); 
        return -1; 
    } 
    return f->inicio->valor; 
} 
 
// --------------------------- 
// Imprime a fila 
void imprime(Fila *f) { 
    if (estaVazia(f)) 
        printf("Fila vazia!\n"); 
    else { 
        printf("Fila: "); 
        for (No *aux = f->inicio; aux != NULL; aux = aux->prox) 
            printf("%d ", aux->valor); 
        printf("\n"); 
    } 
} 
 
// --------------------------- 
// Teste 
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