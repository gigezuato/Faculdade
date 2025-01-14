n1 = int(input("Digite um número:"))
n2 = int(input("Digite outro número:"))
n3 = int(input("Digite outro número:"))

if n1 < n2 and n1 < n3:
    print("O menor deles é {}".format(n1))
elif n2 < n1 and n2 < n3:
    print("O menor deles é {}".format(n2))
elif n3 < n1 and n3 < n2:
    print("O menor deles é {}".format(n3))
elif n1 == n2 and n1 < n3:
    print("Os dois primeiros números são iguais e o menor de todos é {}".format(n1))
elif n1 == n3 and n1 < n2:
    print("O primeiro e terceiro número são iguais e o menor de todos é {}".format(n1))
elif n2 == n3 and n2 < n1:
    print("O segundo e terceiro número são iguais e o menor de todos é {}".format(n2))
else:
    print("Todos os números são iguais.")
