def ler_lista(quantidade):
    lista = []
    for i in range(quantidade):
        elemento = int(input('Digite um valor: '))
        lista.append(elemento)
    return lista


def procurar(lista, num):
    cont = 0
    for indice, valor in enumerate(lista):
        if valor != num:
            cont += 1
    if cont == len(lista):
        print(' O número {} não está presente na lista'.format(num))
    else:
        for indice, valor in enumerate(lista):
            if valor == num:
                print('O número {} está na lista na posição {}'.format(num, indice))



l = ler_lista(int(input('Digite a quantidade de valores que terá a lista: ')))
print('Lista = {}'.format(l))
print('=' * 50)
procurar(l, int(input('Qual valor deseja procurar na lista?')))
