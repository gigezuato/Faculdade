n1 = int(input('Digite um número:'))
n2 = int(input('Digite outro número:'))
n3 = int(input('Digite outro número:'))
resto = n1 % n2
pot = n2 ** n3
div = n1 / n3 + n2

print('O resto da divisão do primeiro número pelo segundo é {}'.format(resto))
print('A potência do segundo número com o terceiro de expoente é {}'.format(pot))
print('O resultado da divisão do primeiro número pelo terceiro e somado ao segundo é {:.2f}'.format(div))
