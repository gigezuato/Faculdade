lista1 = []
lista2 = []
lista3 = []

for i in range(10):
    el = int(input(f'Digite o {i + 1} elemento do 1° vetor: '))
    lista1.append(el)

for i in range(10):
    el2 = int(input(f'Digite o {i + 1} elemento do 2° vetor: '))
    lista2.append(el2)

for j in range(20):
    for k in range(10):
        lista3.append(lista1[k])
        lista3.append(lista2[k])

print(f'Lista gerada: {lista3}')
