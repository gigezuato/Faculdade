# include <stdio.h>
# include "lista.h"

struct No {
    int valor;  // é o que armazenado na lista
    int prox;  // índice de vetor, indica em qual posição do vetor está o próximo nó da lista
};

No lista[MAX];  // cria um vetor de 5 posições
int inicio = FIM;  // índice do primeiro elemento da lista. Começa com -1 pois ela está vazia.
int livre = 0;  // índice do primeiro espaço disponível do vetor

// prepara o vetor para ser usado como lista
void inicializar(){
    // reinicia os índices de controle
    inicio = FIM;  
    livre = 0;
    // cada posição do vetor aponta para a próxima posição (ex: lista[2].prox aponta para 3)
    for(int i = 0; i < MAX; i++){
        lista[i].prox = i + 1;
    }
    lista[MAX - 1].prox = FIM;  // a última posição (lista[4]) aponta para o FIM (-1), indicando que não há espações livres depois
}

void inserirFim(int valor) {
    // se não há mais espaços disponíveis (livre == FIM) ele avisa e sai da função
    // if(livre == FIM){
    if (estaCheia()){
        printf("Lista cheia!\n");
        return;
    }

    int novo = livre; // pega o índice o espaço livre e armazena em novo (índice do novo nó)
    livre = lista[novo].prox; // livre aponta para o próximo espaço livre (ex: novo = 1, livre = lista[1].prox que no caso é 2)
    lista[novo].valor = valor; // a posição novo recebe o valor
    lista[novo].prox = FIM; // define o próximo do seu novo nó como FIM (-1), não há elementos depois dele

    // se a lista estiver vazia, o novo nó (novo) se torna o primeiro e único elemento dela
    // if(inicio == FIM){
    if (estaVazia()){
        inicio = novo;
    } else {
        // precisa encontrar o último nó da lista para conectar a ele
        int i = inicio; 
        // loop continua até achar um nó que aponta para o final (último)
        while (lista[i].prox != FIM) {
            i = lista[i].prox;  // ex: se i = 0 e lista[0].prox = 3, então i será 3
        }
        lista[i].prox = novo; // no final, i está no índice do último nó e o prox dele vai apontar para o novo nó criado
    }
}

int removerFim() {
    // se a lista estiver vazia retorna 0, pois não há o que remover
    // if (inicio == FIM) return 0;
    if (estaVazia()) return 0;

    int i = inicio; 
    int ant = FIM; // o índice anterior recebe o FIM (-1)
    // loop continua até achar um nó que aponta para o final (último)
    while(lista[i].prox != FIM){
        ant = i; // ant recebe o valor de i antes de i mover para o próximo nó
        i = lista[i].prox;
    } // no final, i será o índice do último nó e ant o índice do penúltimo nó

    // se a lista tive 2 ou mais nós
    if (ant != FIM)
        lista[ant].prox = FIM; // o nó anterior vai apontar para o fim
    else // se a lista tiver só um nó
        inicio = FIM;  // a lista agora está vazia

        // "libera" o espaço do nó removido
        lista[i].prox = livre;  // o prox do nó que foi removido aponta para o espaço livre que existia antes
        livre = i;  // livre aponta para o nó que foi liberado agora
        return 1;
}

int buscar(int valor) {
    int i = inicio;
    while (i != FIM) {
        if (lista[i].valor == valor) return i;  // se o valor do nó atual for igual ao valor procurado, ele retorna o índice
        i = lista[i].prox; // avança para o próximo
    }
    return -1;
}

void exibir() {
    int i = inicio;
    while(i != FIM) {
        printf("%d", lista[i].valor);  // percorre a lista e imprime
        i = lista[i].prox;
    }
    printf("\n");
}

int estaVazia() {
    return inicio == FIM;
}

int estaCheia() {
    return livre == FIM;
}