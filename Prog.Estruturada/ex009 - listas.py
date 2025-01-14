from random import randint


def lanca_dados(n):
    resultados = []
    for k in range(100):
        num_sorteado = randint(1, n)
        resultados.append(num_sorteado)

    return resultados


num = int(input('Qual o número máximo do dado: '))
res = lanca_dados(num)
cont = 0
for i in range(1, num + 1):
    for j in range(100):
        if res[j] == i:
            cont += 1
    print(f'{i} foi sorteado {cont} vezes')
    cont = 0


