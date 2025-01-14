def ler_matriz():
    matriz = []
    linha = []
    for i in range(3):
        for j in range(3):
            elemento = int(input('Digite o valor para a linha da matriz:'))
            linha += [elemento]
        matriz += [linha]
        linha = []
    return matriz

def multiplicacao(m1):
    m = 1
    linha = []
    matriz_mult = []
    for i in range(3):
        for j in range(3):
            m = m1[i][j] * 5
            linha += [m]
        matriz_mult += [linha]
        linha = []
    return matriz_mult


mat1 = ler_matriz()
print('=' * 50)
print('O resultado da multiplicação entre a matriz e o escalar 5 é {}'.format(multiplicacao(mat1)))
