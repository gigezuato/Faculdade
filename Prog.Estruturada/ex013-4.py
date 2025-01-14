resp = int(input('Você quer calcular sua média? 1-sim, 2- não: '))
aprovado = 0
reprovado = 0
quantidade = 0
notas_Ap = 0
notas_Re = 0

while resp == 1:
    n1 = float(input('Digite a nota da prova:'))
    n2 = float(input('Digite a nota da atividade:'))
    media = (n1 + n2) / 2
    print('Sua média é {:.2f}'.format(media))
    if media >= 7:
        print('APROVADO!')
        aprovado += 1
        notas_Ap += n1 + n2
    else:
        print('REPROVADO')
        reprovado += 1
        notas_Re += n1 + n2
    resp = int(input('Você quer continuar calculando? 1-sim, 2-não:'))
    quantidade += 1
porc_Ap = (aprovado / quantidade) * 100
porc_Re = (reprovado / quantidade) * 100
media_Ap = notas_Ap / aprovado
media_Re = notas_Re / reprovado
mediaGeral = (notas_Ap + notas_Re) / quantidade
print('A quantidade de aprovados: {}'.format(aprovado))
print('A quantidade de reprovados: {}'.format(reprovado))
print('A porcentagem de aprovados é {:.2f}%'.format(porc_Ap))
print('A porcentagem de reprovados é {:.2f}%'.format(porc_Re))
print('A média das notas dos aprovados é {:.2f}'.format(media_Ap))
print('A média das notas dos reprovados é {:.2f}'.format(media_Re))
print('A média geral é {:.2f}'.format(mediaGeral))





