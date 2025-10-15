# include "pilha_vetor.h"
 
// --- Programa exemplo --- 
int main() { 
    Pilha *p;
    inicializar(&p);
 
    push(&p, 10); 
    push(&p, 20); 
    push(&p, 30); 
    imprimir(&p); 
 
    printf("Pop: %d\n", pop(&p)); 
    imprimir(&p); 
 
    printf("Topo: %d\n", topo(&p)); 
 
    return 0;
}