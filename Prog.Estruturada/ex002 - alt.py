from random import randint
mat = []
linha = []

for i in range(0, 10):
    for j in range(0, 5):
        linha.append(randint(0, 10))
    mat.append(linha)
    linha = []

print(mat)


