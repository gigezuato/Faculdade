n = int(input("Digite o número de linhas do triângulo de Pascal: "))

# Percorre cada linha do triângulo
for i in range(n):
    valor = 1  # O primeiro valor de cada linha é sempre 1
    # Percorre a metade direita da linha
    for j in range(i // 2, i + 1):
        print(valor, end=" ")
        # Calcula o próximo valor da linha utilizando a fórmula do Triângulo de Pascal
        valor = valor * (i - j) // (j + 1)
    print()

