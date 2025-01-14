from math import sqrt


def distancia_pontos():
    dim = int(input('Quantas dimensões os pontos terão: '))
    ponto1 = []
    ponto2 = []
    soma_quadrados = 0

    for i in range(dim):
        elemento1 = float(input(f"Digite o valor da dimensão {i + 1} do ponto 1: "))
        ponto1.append(elemento1)

    for i in range(dim):
        elemento2 = float(input(f"Digite o valor da dimensão {i + 1} do ponto 2: "))
        ponto2.append(elemento2)

    ponto1 = tuple(ponto1)
    ponto2 = tuple(ponto2)
    pontos = [ponto1, ponto2]

    for x, y in zip(ponto1, ponto2):
        soma_quadrados += (x - y) ** 2

    distancia = sqrt(soma_quadrados)
    print(f'A distância entre esses dois pontos é {distancia:.2f}')


distancia_pontos()
