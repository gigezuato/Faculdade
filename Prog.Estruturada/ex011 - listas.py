A = []
B = []
C = []

for i in range(5):
    num = int(input(f'Digite o {i + 1} valor da lista A: '))
    A.append(num)
    n = int(input(f'Digite o {i + 1} valor da lista B: '))
    B.append(n)

B.reverse()

for j in range(5):
    sub = A[j] - B[j]
    C.append(sub)
print(A)
print(B)
print(f'Os resultados das subtrações são: {C}')
