def soma(*numeros):
    s = 0
    for i in numeros:
        s += i
    return s


print(soma(5, 2, 3, 1, 4))


