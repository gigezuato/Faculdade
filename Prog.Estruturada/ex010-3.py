morango = float(input('Digite o kg de morango comprado:'))
maca = float(input('Digite o kg de maçã comprado:'))
quantidade = morango + maca
vmorango = 0
vmaca = 0
valorT = 0
if morango <= 5:
    vmorango = 19.50 * morango
else:
    vmorango = 15.20 * morango

if maca <= 5:
    vmaca = 8.80 * maca
else:
    vmaca = 7.50 * maca

valorT = vmorango + vmaca

if quantidade > 8 or valorT > 25:
    valorT = valorT * 0.9
    print('O valor da compra é R${}'.format(valorT))
else:
    print('O valor da compra é R${}'.format(valorT))

