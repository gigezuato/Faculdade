idades = []
alturas = []

for i in range(5):
    idade = int(input(f"Digite a idade da {i + 1}° pessoa:"))
    idades.append(idade)
    altura = float(input(f"Digite a altura da {i + 1}° pessoa:"))
    alturas.append(altura)

idades.reverse()
alturas.reverse()
print(f"Idades invertidas: {idades}")
print(f"Alturas invertidas: {alturas}")
