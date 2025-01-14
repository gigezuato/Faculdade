n = int(input('Quantas linhas e colunas terá: '))
mat = []
lista = []
for i in range(0, n):
    for j in range(0, n):
        lista.append(0)
    mat.append(lista)
    lista = []

print(mat)