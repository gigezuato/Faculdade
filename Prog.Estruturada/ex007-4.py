nota = float(input('Digite sua nota:'))
while nota < 0 or nota > 10:
    print('Nota inválida!')
    nota = float(input('Digite uma nota entre 0 e 10:'))
print('Sua nota é {}'.format(nota))


