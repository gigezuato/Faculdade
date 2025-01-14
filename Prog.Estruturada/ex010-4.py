n = int(input('Digite um número positivo:'))
fat = 1

if n < 0:
    print("Esse número não é positivo!")
else:
    while n > 0:
        fat = fat * n
        n -= 1
    print('O fatorial desse número é {}'.format(fat))

    