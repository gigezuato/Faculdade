def qtde_digitos(n):
    cont = 0
    for i in n:
        cont += 1
    return cont


num = input('Digite um número: ')
print(f'O número {int(num)} tem {qtde_digitos(num)} dígitos.')

