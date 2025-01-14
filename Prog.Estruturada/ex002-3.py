n1 = int(input("Digite um número:"))
n2 = int(input("Digite outro número:"))

if n1 > n2:
    print("Ordem crescente: {}, {}".format(n2, n1))
    print("Ordem decrescente: {}, {}".format(n1, n2))
elif n1 == n2:
    print("Os dois números são iguais.")
else:
    print("Ordem crescente: {}, {}".format(n1, n2))
    print("Ordem decrescente: {}, {}".format(n2, n1))

