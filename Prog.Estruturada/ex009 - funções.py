def reverso(n):
    # Contar quantos dígitos tem
    texto_n = str(n)
    dig = 0
    lista_rev = []
    for i in texto_n:
        dig += 1
    # Reverso
    for i in range(1, dig):
        lista_rev.append(str(n % 10))
        n = n // 10
    lista_rev.append(str(n))
    rev = ''.join(lista_rev)
    return rev


num = int(input('Digite um número: '))
print(f'O reverso do número {num} é {reverso(num)}')
