n1 = int(input("Digite um número:"))
n2 = int(input("Digite outro número:"))

if n1 > n2:
    print("O número {} é maior que {}".format(n1, n2))
elif n1 == n2:
    print("Os números são iguais.")
else:
    print("O número {} é menor que {}".format(n1, n2))
