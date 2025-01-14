def desenha_retangulo(linhas=1, colunas=1):
    # Limitar o valor de linhas e colunas entre 1 e 20 manualmente
    if linhas < 1:
        linhas = 1
    elif linhas > 20:
        linhas = 20

    if colunas < 1:
        colunas = 1
    elif colunas > 20:
        colunas = 20

    # Desenhar a borda superior
    print('+' + '-' * (colunas - 2) + '+')

    # Desenhar as laterais
    for i in range(linhas - 2):
        print('|' + ' ' * (colunas - 2) + '|')

    # Desenhar a borda inferior
    if linhas > 1:
        print('+' + '-' * (colunas - 2) + '+')


l = int(input("Digite a quantidade de linhas: "))
c = int(input("Digite a quantidade de colunas: "))
desenha_retangulo(l, c)