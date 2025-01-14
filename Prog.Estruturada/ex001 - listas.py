notas = []
soma = 0
for i in range(0, 4):
    n = float(input(f"Digite a {i + 1} nota: "))
    notas.append(n)

for i in range(0, 4):
    soma += notas[i]
media = soma / 4

print("Suas notas foram: ", end=' ')
for i in range(0, 4):
    print(notas[i], end=' ')
print("\n")
print(f"A sua média foi {media:.2f}")
