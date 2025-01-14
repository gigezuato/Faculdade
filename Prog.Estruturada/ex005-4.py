s = str(input('Digite uma palavra:')).strip()
quant = 0
for i, l in enumerate(s, 0):
    print(i, l)
quant = quant + i
print('Possui {} caracteres'.format(quant))
