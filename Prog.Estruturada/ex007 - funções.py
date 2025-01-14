def imprima_numeros(n):
    for i in range(1, n + 1):
        for j in range(1, i + 1):
            print(f'{j }', end=' ')
        print('\n')


num = int(input('Digite o número: '))
imprima_numeros(num)