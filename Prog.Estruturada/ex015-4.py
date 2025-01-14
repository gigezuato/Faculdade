n = int(input('Digite um número inteiro: '))
soma = 0

while n > 0:
    num = n % 10
    n = n // 10
    soma += num
print('A soma dos dígitos desse número é {}'.format(soma))




