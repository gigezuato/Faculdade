n1 = float(input('Digite um número:'))
n2 = float(input('Digite outro número:'))
operacao = input('Digite: [+] para adição, [-] para subtração, [*] para multiplicação ou [/] para divisão:')
op = operacao.lstrip()
match op:
    case '+':
        print('{} + {} = {:.2f}'.format(n1, n2, n1 + n2))
    case '-':
        print('{} - {} = {:.2f}'.format(n1, n2, n1 - n2))
    case '*':
        print('{} * {} = {:.2f}'.format(n1, n2, n1 * n2))
    case '/':
        print('{} / {} = {:.2f}'.format(n1, n2, n1 / n2))
    case _:
        print('Inválido')
