produtos = int(input('Qual a quantidade de produtos?'))
valor = 0
if produtos >= 20:
    valor = produtos * 12.90
    print('O valor a ser pago é R$ {:.2f}'.format(valor))
else:
    valor = produtos * 10.90
    print('O valor a ser pago é R$ {:.2f}'.format(valor))


