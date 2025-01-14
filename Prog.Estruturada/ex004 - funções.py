def media_escolar():
    materias = int(input('Quantas matérias? '))
    qtde_notas = int(input('Qual a quantidade de notas de cada matéria?'))
    notas = []
    lista = []
    s = []
    lista_soma = []
    soma = 0
    d = []
    lista_medias = []

    for i in range(materias):
        for j in range(qtde_notas):
            n = float(input(f'Digite a {j + 1}º nota da {i + 1}º matéria: '))
            lista.append(n)
        notas.append(lista)
        lista = []

    for i in range(materias):
        for j in range(qtde_notas):
            soma += notas[i][j]
        s.append(soma)
        lista_soma.append(s)
        soma = 0
        s = []

    for i in range(materias):
        media = round(lista_soma[i][0] / qtde_notas, 2)
        d.append(media)
        lista_medias.append(d)
        media = 0
        d = []
    return lista_medias


print(f'Médias = {media_escolar()}')


