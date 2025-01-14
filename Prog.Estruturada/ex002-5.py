def media(*numeros):
    soma = 0
    for i in numeros:
        soma += i
    m = soma / len(numeros)
    return m


print(media(5, 6, 10, 5, 1))

