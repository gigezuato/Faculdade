palavra = str(input('Digite uma palavra:')).strip()
vogal = 0
consoante = 0

for i in palavra:
    if i == 'a' or i == 'e' or i == 'i' or i == 'o' or i == 'u':
        vogal += 1
    else:
        consoante += 1
print('A quantidade de vogais é {} e de consoantes é {}'.format(vogal, consoante))


