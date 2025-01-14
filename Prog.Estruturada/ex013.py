from math import sqrt
cat1 = float(input("Digite o tamanho do primeiro cateto:"))
cat2 = float(input("Digite o tamanho do segundo cateto:"))
hip = sqrt(cat1 **2 + cat2 **2)

print("A hipotenusa desse triângulo é: {:.2f}".format(hip))
