n = str(input('Digite um número de três dígitos:')).lstrip()
u = int(n[2])
d = int(n[1])
c = int(n[0])

if c < d < u and c < u:
    print('Os dígitos desse número são crescentes.')
else:
    print('Os dígitos desse número não são crescentes.')

# poderia fazer u = n % 10
# n // 10
# n % 10
# n // 10
