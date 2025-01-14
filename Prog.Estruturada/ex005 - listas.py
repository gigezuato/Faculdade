L = []
soma = 0
for i in range(10):
    elemento = int(input(f'Digite o {i + 1} elemento: '))
    L.append(elemento)

for j in range(10):
    L[j] = L[j] ** 2

soma = sum(L)

print(f'A soma dos quadrados de cada elemento do vetor L é {soma}')
