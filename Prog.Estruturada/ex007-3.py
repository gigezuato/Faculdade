letra = str(input('Digite uma letra:'))
l = letra.lstrip()
if l in 'a, A, e, E, i, I, o, O, u, U':
    print('A letra digitada é uma vogal.')
else:
    print('A letra digitada é uma consoante.')
