# include "pilha_encadeada.h"; 
 
// Empilhar (push) 
Pilha* push(Pilha *topo, int valor) { 
    Pilha *novo = (Pilha*) malloc(sizeof(Pilha)); 
    if (!novo) { 
        printf("Erro de alocação!\n"); 
        return topo; 
    } 
    novo->valor = valor; 
    novo->prox = topo; 
    return novo;  // novo passa a ser o topo 
} 
 
// Desempilhar (pop) 
Pilha* pop(Pilha *topo, int *removido) { 
    if (topo == NULL) { 
        printf("Pilha vazia!\n"); 
        *removido = -1; 
        return NULL; 
    } 
    Pilha *temp = topo; 
    *removido = temp->valor; 
    topo = temp->prox; 
    free(temp); 
    return topo; 
} 
 
// Mostrar pilha 
void imprimir(Pilha *topo) { 
    printf("Pilha: "); 
    for (Pilha *aux = topo; aux != NULL; aux = aux->prox) 
        printf("%d ", aux->valor); 
    printf("\n"); 
}