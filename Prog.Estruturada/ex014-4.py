num = int(input("Digite um número inteiro: "))
n = num
rev = 0

while n > 0:
    r = n % 10
    rev = rev * 10 + r
    n = n // 10
if num == rev:
    print("O número {} é um palíndromo".format(num))
else:
    print("O número {} não é um palíndromo".format(num))

