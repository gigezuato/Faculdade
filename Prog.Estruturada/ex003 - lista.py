alunos = []
alunos_somas = []
alunos_medias = []
cont = 0

# Recebendo notas dos alunos
for i in range(10):
    notas = []
    for j in range(4):
        n = float(input(f'Digite a {j + 1}ª nota do {i + 1}º aluno: '))
        notas.append(n)
    alunos.append(notas)

# Calculando a soma das notas e a média de cada aluno
for i in range(10):
    soma = sum(alunos[i])  # Soma as notas do aluno i
    alunos_somas.append(soma)
    media = soma / 4
    alunos_medias.append(media)

# Contando alunos com média maior ou igual a 7
for i in range(10):
    if alunos_medias[i] >= 7:
        cont += 1

print(f'O número de alunos com média maior ou igual a 7 é {cont}')
