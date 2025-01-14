lista = []

for i in range(15):
    n = int(input(f'Digite o {i + 1} elemento da lista: '))
    lista.append(n)

for j in range(15):
    lista[j] = round(lista[j] / max(lista), 2)

print(f'Nova lista: {lista}')
