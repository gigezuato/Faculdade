# include <stdio.h>
# include "lista.h"

struct no {
    int valor;
    struct no *prox;
};

static No nos[5];

void Inicializar() {
    int i;
    for (i = 0; i < 4; i++){
        nos[i].prox = &nos[i+1];
    }
}

void Imprimir(){
    int i;
    for(i = 0; i < 5; i++){
        printf("%d", nos[i].valor);
    }
}
