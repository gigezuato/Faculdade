lista = []
par = []
impar = []

for i in range(0, 10):
    num = int(input(f'Digite o {i + 1} valor: '))
    lista.append(num)

for i in range(0, 10):
    if lista[i] % 2 == 0:
        par.append(lista[i])
    else:
        impar.append(lista[i])

print(f'Lista com todos os números: {lista}')
print(f'Lista de números pares: {par}')
print(f'Lista de números ímpares: {impar}')
