def palindromo(texto):
    palavras = texto.split()
    junto = ''.join(palavras)
    inverso = ''

    for letra in range(len(junto) - 1, -1, -1):
        inverso += junto[letra]
    print('A frase {} de trás para frente é {}'.format(junto, inverso))
    if inverso == junto:
        print('Temos um palíndromo!')
    else:
        print('Não temos palíndromo!')


frase = str(input('Digite uma frase:')).strip().upper()
palindromo(frase)
