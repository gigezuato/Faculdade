lista1 = []
lista2 = []
lista3 = []
lista = []

for j in range(5):
    el1 = int(input(f'Digite o {j + 1} valor da 1° lista: '))
    lista1.append(el1)

for j in range(5):
    el2 = int(input(f'Digite o {j + 1} valor da 2° lista: '))
    lista2.append(el2)

for j in range(5):
    el3 = int(input(f'Digite o {j + 1} valor da 3° lista: '))
    lista3.append(el3)

for i in range(5):
    lista.append(lista1[i])
    lista.append(lista2[i])
    lista.append(lista3[i])

print(lista)
