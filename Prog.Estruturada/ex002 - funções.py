def dam(lista):
    soma = 0
    soma_dif = 0
    vetor_dif = []
    for i in lista:
        soma += i
    media = soma / len(lista)
    for i in lista:
        diferenca = abs(i - media)
        vetor_dif.append(diferenca)
        soma_dif += diferenca
    media_dif = soma_dif / len(lista)
    print("A média dos números da lista é {}".format(media))
    print("A diferença absoluta entre o número e a média {}".format(vetor_dif))
    print("A média das diferenças absolutas é {}".format(media_dif))



nums = [1, 2, 3, 4, 5]
dam(nums)
