alt = float(input('Digite sua altura:'))
g = input("Digite h se for homem e m se for mulher: ")
pesoI = 0

if g == "h":
    pesoI = (72.7 * alt) - 58
else:
    pesoI = (62.1 * alt) - 44.715

print("O seu peso ideal é {:.2f}".format(pesoI))

