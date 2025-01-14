def ler_matriz():
    matriz = []
    linha = []
    for i in range(2):
        for j in range(2):
            elemento = int(input('Digite o valor para a linha da matriz:'))
            linha += [elemento]
        matriz += [linha]
        linha = []
    return matriz


def soma(m1, m2):
    s = 0
    linha = []
    matriz_soma = []
    for i in range(2):
        for j in range(2):
            s = m1[i][j] + m2[i][j]
            linha += [s]
        matriz_soma += [linha]
        linha = []
    return matriz_soma


mat1 = ler_matriz()
print('=' * 50)
mat2 = ler_matriz()
print('Matriz 1: {}'.format(mat1))
print('Matriz 2: {}'.format(mat2))
print('=' * 50)
print('O resultado da soma entre essas matrizes é {}'.format(soma(mat1, mat2)))
