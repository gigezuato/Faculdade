nome = str(input('Nome:'))
idade = int(input('Idade:'))
resp = int(input('Deseja continuar? 1-sim, 2-não: '))
idadeNova = 1000
idadeVelha = 0
while resp == 1:
     if idade < idadeNova:
         idadeNova = idade
         nomeNova = nome
     if idade > idadeVelha:
         idadeVelha = idade
         nomeVelha = nome
     nome = str(input('Nome:'))
     idade = int(input('Idade:'))
     if idade < 0:
         idade = int(input("Valor inválido! Digite sua idade:"))
     resp = int(input('Deseja continuar? 1-sim, 2-não: '))
print('A pessoa mais velha é {} com {} anos e a pessoa mais nova é {} com {} anos'.format(nomeVelha, idadeVelha,
                                                                                          nomeNova, idadeNova))
