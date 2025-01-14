def imprima_numeros(n):
    for i in range(1, n + 1):
        print(f'{i} ' * i)


num = int(input('Digite o número: '))
imprima_numeros(num)
