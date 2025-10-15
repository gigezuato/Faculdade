typedef struct Pilha { 
    int valor; 
    struct Pilha *prox; 
} Pilha;

Pilha* push(Pilha *topo, int valor);

Pilha* pop(Pilha *topo, int *removido);

void imprimir(Pilha *topo);

