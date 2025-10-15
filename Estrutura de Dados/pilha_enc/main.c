# include "pilha_encadeada.h";  
 
// --- Exemplo de uso --- 
int main() { 
    Pilha *topo = NULL; 
    int valor; 
 
    topo = push(topo, 10); 
    topo = push(topo, 20); 
    topo = push(topo, 30); 
    imprimir(topo); 
 
    topo = pop(topo, &valor); 
    printf("Pop: %d\n", valor); 
    imprimir(topo); 
    return 0; 
}