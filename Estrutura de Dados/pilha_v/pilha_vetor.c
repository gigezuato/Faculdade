# include <stdio.h>
# include "pilha_vetor.h"

// Inicializa pilha 
void inicializar(Pilha *p) { 
    p->topo = -1; 
} 
 
// Verifica se está vazia 
int vazia(Pilha *p) { 
    return (p->topo == -1); 
} 
 
// Verifica se está cheia 
int cheia(Pilha *p) { 
    return (p->topo == MAX - 1); 
} 
 
// Empilha elemento 
void push(Pilha *p, int valor) { 
    if (cheia(p)) 
        printf("Pilha cheia!\n"); 
    else 
        p->dados[++p->topo] = valor; 
} 
 
// Desempilha elemento - retorna o topo e remove ele
int pop(Pilha *p) { 
    if (vazia(p)) { 
        printf("Pilha vazia!\n"); 
        return -1; 
    } 
    return p->dados[p->topo--]; 
} 
 
// Retorna o topo sem remover 
int topo(Pilha *p) { 
    if (vazia(p)) 
        return -1; 
    return p->dados[p->topo]; 
} 
 
// Mostra conteúdo 
void imprimir(Pilha *p) { 
    printf("Pilha: "); 
    for (int i = 0; i <= p->topo; i++) 
        printf("%d ", p->dados[i]); 
    printf("\n"); 
} 