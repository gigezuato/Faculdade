n1 = int(input('Digite um número:'))
n2 = int(input('Digite outro número:'))
mult = n1 % n2

if mult == 0:
    print('O número {} é múltiplo do número {}'.format(n1, n2))
else:
    print('O número {} não é múltiplo do número {}'.format(n1, n2))
