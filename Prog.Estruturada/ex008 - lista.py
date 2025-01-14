respostas = []
total_pessoas = 0
resp = 1
while resp != 0:
    resp = int(input('Qual o melhor sistema operacional para uso em servidores? 1 - Windows Server'
                     '2 - Unix  3 - Linux  4 - Mac OS  5 - Outro 0 - encerra: '))
    if resp not in [0, 1, 2, 3, 4, 5]:
        resp = int(input('Opção não válida - Qual o melhor sistema operacional para uso em servidores? 1 - Windows '
                         'Server'
                         '2 - Unix  3 - Linux  4 - Mac OS  5 - Outro 0 - encerra: '))
        respostas.append(resp)
        total_pessoas += 1
    else:
        respostas.append(resp)
        total_pessoas += 1

cont1 = 0
cont2 = 0
cont3 = 0
cont4 = 0
cont5 = 0

for i in range(total_pessoas):
    if respostas[i] == 1:
        cont1 += 1
    elif respostas[i] == 2:
        cont2 += 1
    elif respostas[i] == 3:
        cont3 += 1
    elif respostas[i] == 4:
        cont4 += 1
    elif respostas[i] == 5:
        cont5 += 1
porc1 = (cont1 / total_pessoas) * 100
porc2 = (cont2 / total_pessoas) * 100
porc3 = (cont3 / total_pessoas) * 100
porc4 = (cont4 / total_pessoas) * 100
porc5 = (cont5 / total_pessoas) * 100

print('-'*19, '    ', '-'*5, '  ', '-'*5)
print('Windows Server', '           ', cont1, '     ', round(porc1), '%')
print('Unix', '                     ', cont2, '     ', round(porc2), '%')
print('Linux', '                    ', cont3, '     ', round(porc3), '%')
print('Mac OS', '                   ', cont4, '     ', round(porc4), '%')
print('Outro', '                    ', cont5, '     ', round(porc5), '%')
print('-'*19, '    ', '-'*5)
print('Total', '                    ', total_pessoas)

