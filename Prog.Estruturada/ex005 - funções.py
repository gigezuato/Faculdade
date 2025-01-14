def calc(n1, n2, operacao):
    match operacao:
        case '+':
            resultado = n1 + n2
        case '-':
            resultado = n1 - n2
        case '*':
            resultado = n1 * n2
        case '/':
            resultado = n1 / n2
    return resultado


num1 = int(input('Digite o 1 valor: '))
num2 = int(input('Digite o 2 valor: '))
print('Escolha a operação: [ + ] [ - ] [ * ] [ / ]')
op = input('Digite aqui: ')
print(f'{num1} {op} {num2} = {calc(num1, num2, op):.2f}')


