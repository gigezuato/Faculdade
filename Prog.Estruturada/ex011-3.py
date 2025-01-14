nota1 = float(input('Digite a primeira nota:'))
nota2 = float(input('Digite a segunda nota:'))
media = (nota1 + nota2) / 2

print('Suas notas são: {} e {}'.format(nota1, nota2))
print('Sua média é: {}'.format(media))
if 9 <= media <= 10:
    print('Conceito A')
    print('APROVADO!')
elif 7.5 <= media <= 9:
    print('Conceito B')
    print('APROVADO!')
elif 6 <= media <= 7.5:
    print('Conceito C')
    print('APROVADO!')
elif 4 <= media <= 6:
    print('Conceito D')
    print('REPROVADO!')
else:
    print('Conceito E')
    print('REPROVADO!')
