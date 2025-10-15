#define MAX 5 

// --- TAD Pilha --- 
typedef struct pilha{ 
    int dados[MAX]; 
    int topo; 
} Pilha; 

void inicializar(Pilha *p);

int vazia(Pilha *p);

int cheia(Pilha *p);

void push(Pilha *p, int valor);

int pop(Pilha *p);

int topo(Pilha *p);

void imprimir(Pilha *p);