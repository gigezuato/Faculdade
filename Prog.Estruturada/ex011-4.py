n = int(input('Digite um valor positivo:'))
soma = 0

for i in range(1, n+1):
    soma += 1 / (i * (i+1) / 2)
print(soma)
