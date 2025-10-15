#include<stdio.h>

// -------- Definição do TAD -------- 

struct listaInteiros 
{
    int numero; 
    struct listaInteiros* prox; 
    struct listaInteiros* ant; 
}; 

typedef struct listaInteiros No; 
 
// -------- Operações do TAD -------- 
No* inicializa(void); 
No* insere(No* proximo, int valor); 
No* busca(No* inicial, int valor); 
No* retira(No* inicial, int valor); 
//Crie uma função para imprimir 
 
 
// -------- Exemplo de uso -------- 
int main(void) 
{ 
    //TAD de Lista de inteiros 
    No* lista ; 
    lista = inicializa(); 
    lista = insere(lista,30); 
    lista = insere(lista,90); 
    lista = insere(lista,33); 
 
    No* encontrado = busca(lista, 33); 
 
    lista = retira(lista,90); 
 
    mostra(lista);
} 
 
 
// -----Implementacao do TAD 
No* inicializa(void) 
{ 
    return NULL; 
} 
 
//insere no inicio 
No* insere(No* proximo, int valor) 
{ 
    No* novo = (No*) malloc(sizeof(No)); 
 
    novo->numero = valor; 
    novo->prox = proximo; 
    novo->ant = NULL; 
 
    //Se informado o proximo, o proximo recebe o novo elemento como seu anterior 
    if (proximo != NULL) 
    { 
        proximo->ant = novo;  
    } 
 
    return novo; 
} 
 
No* busca(No* inicial, int valor) 
{ 
    No* encontrado; 
    for (encontrado = inicial; encontrado != NULL; encontrado = encontrado->prox) 
    { 
        if (encontrado->numero == valor) 
        { 
            return encontrado; 
        }    
    }   
 
    return NULL;     
} 
 
No* retira(No* inicial, int valor) 
{ 
    //Primeiro encontro o no a ser retirado 
    No* encontrado = busca(inicial,valor); 
    
    if (encontrado == NULL) 
    { 
        return inicial; //nao encontrou, entao retorna a lista inalterada 
    } 
 
    //retira elemento 
    if (inicial == encontrado) 
    { 
        inicial = encontrado->prox; //no inicial aponta pro proximo 
    } 
    else 
    { 
        No* anteriorEncontrado =  encontrado->ant; 
        No* proximoEncontrado =  encontrado->prox; 
        anteriorEncontrado->prox = proximoEncontrado; 
    } 
 
    if (encontrado->prox != NULL) 
    { 
        No* proximoEncontrado =  encontrado->prox; 
        proximoEncontrado->ant = encontrado->ant; 
    }

    free(encontrado);
    return inicial;
}

// mostrar lista
void mostra(No *lista){
    No *p = lista;
    while(p != NULL)
    {
        printf("%d\n", p->numero);
        p = p->prox;
    }
}