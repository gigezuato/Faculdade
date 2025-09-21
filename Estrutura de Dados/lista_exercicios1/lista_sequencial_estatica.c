/*
    21. Implemente uma lista sequencial estática (vetor fixo) e crie uma função para inserir um
    elemento no final.
    22. Crie uma função para remover o último elemento da lista sequencial estática.
    23. Implemente uma função que busque um elemento em uma lista sequencial estática e retorne
    sua posição (ou -1 se não existir).
    24. Escreva uma função que exiba todos os elementos de uma lista sequencial estática.
    25. Crie uma função que verifique se a lista sequencial estática está cheia ou vazia.
*/
# include "lista.h"
# include <stdio.h>

int main() { 
    inicializar(); 
 
    // verificar se vazia/cheia 
    printf("Vazia? %d\n", estaVazia()); 
    printf("Cheia? %d\n", estaCheia()); 
 
    // inserir elementos 
    inserirFim(10); 
    inserirFim(20); 
    inserirFim(30); 
    exibir(); 
 
    // buscar elementos 
    printf("Buscar 20: %d\n", buscar(20)); 
    printf("Buscar 40: %d\n", buscar(40)); 
 
    // remover último 
    removerFim(); 
    exibir(); 
 
    // verificar se vazia/cheia 
    printf("Vazia? %d\n", estaVazia()); 
    printf("Cheia? %d\n", estaCheia()); 
 
    return 0; 
}