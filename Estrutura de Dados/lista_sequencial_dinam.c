#include <stdio.h> 
#include <stdlib.h> 
 
// -------- Definição do TAD -------- 
typedef struct { 
    int *dados;     // ponteiro para os elementos 
    int tamanho;    // quantidade de elementos armazenados 
    int capacidade; // tamanho atual do vetor alocado 
} Lista; 
 
// -------- Operações do TAD -------- 
 
// Cria uma lista vazia 
Lista* criaLista(int capacidadeInicial) { 
    Lista *l = (Lista*) malloc(sizeof(Lista)); 
    l->dados = (int*) malloc(capacidadeInicial * sizeof(int)); 
    l->tamanho = 0; 
    l->capacidade = capacidadeInicial; 
    return l; 
} 
 
// Insere elemento no final 
void insereFim(Lista *l, int valor) { 
    if (l->tamanho == l->capacidade) { 
        // dobra a capacidade 
        l->capacidade *= 2; 
        l->dados = (int*) realloc(l->dados, l->capacidade * sizeof(int));
    }
    l->dados[l->tamanho] = valor; 
    l->tamanho++; 
} 

// Remove o último elemento 
void removeFim(Lista *l) { 
    if (l->tamanho > 0) { 
        l->tamanho--; 
    } 
} 
 
// Mostra todos os elementos 
void mostraLista(Lista *l) { 
    printf("[ "); 
    for (int i = 0; i < l->tamanho; i++) { 
        printf("%d ", l->dados[i]); 
    } 
    printf("]\n"); 
} 
 
// Libera memória 
void liberaLista(Lista *l) { 
    free(l->dados); 
    free(l); 
} 
// -------- Exemplo de uso -------- 
int main() { 
Lista *l = criaLista(2); 
insereFim(l, 10); 
insereFim(l, 20); 
insereFim(l, 30); 
mostraLista(l); 
removeFim(l); 
mostraLista(l); 
liberaLista(l); 
return 0; 
}