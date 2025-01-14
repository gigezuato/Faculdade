i = 5.50
ingressos = 120
despesa = 200

while i >= 1:
    ingressos = ingressos + 26
    lucro = (ingressos * i) - despesa
    i = i - 0.5
    print('Novo preço do ingresso: R${:.2f}'.format(i))
    print('Lucro esperado: R${:.2f}'.format(lucro))
    print('Quantidade de ingressos vendidos: {}'.format(ingressos))
    print('-=' * 20)
print('Fim')

