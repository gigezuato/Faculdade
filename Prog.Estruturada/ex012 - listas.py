lista1 = []
lista2 = []
lista3 = []
par = []
r = int(input('Quantos elementos cada lista irá conter? '))

for i in range(r):
    n1 = int(input(f'Digite o {i+1} valor da lista 1: '))
    n2 = int(input(f'Digite o {i+1} valor da lista 2: '))
    lista1.append(n1)
    lista2.append(n2)

for j in range(r):
    for k in range(r):
        par.append(lista1[j])
        par.append(lista2[k])
        lista3.append(par)
        par = []

print(f'Lista de par ordenados: {lista3}')
