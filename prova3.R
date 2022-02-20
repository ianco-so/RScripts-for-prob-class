##PROVA 3
#As alturas de 10.000 alunos de um colégio têm distribuição aproximadamente normal, 
#com média 170 cm e desvio padrão 5 cm.
#Qual o número esperado de alunos com altura superior a 165 cm?
pnorm(165, 170, 5, lower.tail = FALSE)*10000

#O número de empregados de uma empresa que são mulheres está para o número de empregados
#que são homens assim como 2 está para 3. Ao extrair uma amostra aleatória de 4 empregados
#desta empresa, com reposição, qual  probabilidade de que nesta amostra haja no mínimo 3 homens ?
pbinom(2, 4,0.6, lower.tail = FALSE)

#Um lote de 20 televisores é submetido a um procedimento de teste de aceitação.
#O procedimento consiste em extrair aleatoriamente cinco TVs, sem reposição,
#e testá-los. Se um ou menos falharem, os restantes são aceitos. Caso contrário,
#o lote é rejeitado. Supondo que o lote contenha três TVs defeituosas,
#qual a probabilidade exata da rejeição do lote?
phyper(1, 3, 17, 5, lower.tail = FALSE)

#Estima-se que o tempo de falha de uma televisão de led seja distribuído exponencialmente, 
#com uma média de três anos. Uma companhia oferece garantia para essas televisões no primeiro ano de uso.
#Suponha que em um mês a companhia produza 250 televisões. Com base nessas informações, 
#julgue cada um dos itens abaixo como verdadeiro ou falso.
#F  #Sabendo que o valor de revenda de uma televisão é igual a R$1.500,00,
    #o lucro anual esperado da empresa é superior a R$ 3.350.000,00.
pexp(1, 1/3, lower.tail = FALSE)*250*1500*12
#F  #A porcentagem de televisores que passarão pela garantia é aproximadamente 0,183.
pexp(1, 1/3)
#V  #A vida útil desses aparelhos tal que a porcentagem de televisores que apresentam defeito
    #até esse período seja de 95% é de no máximo 8.987 anos.
pexp(8.987, 1/3)
#F  #Se a garantia é acionada um valor de R$1.300,00 é devolvido para o consumidor,
    #o valor anual pago pela companhia em garantias é inferior a R$1.100.000,00.
pexp(1, 1/3)*250*12*1300

#Num certo tipo de fabricação de fita magnética,
#ocorrem cortes segundo uma distribuição de Poisson a uma taxa de um por 2.000 pés.
#Qual a probabilidade de que um rolo com 10.000 pés de fita magnética não tenha nenhum corte
dpois(0, 5)

#Um importante sistema age como apoio para um veículo do programa espacial.
#Este sistema é formado por cinco componentes instalados em paralelo,
#de modo que o sistema falha somente se todos os componentes falharem. 
#Assuma que os componentes funcionem independentemente e que sejam equivalentes
#no sentido de que todos têm 75% de taxa de sucesso.
#Considere a variável aleatória X o número de componentes, dentre os cinco, que falham.
#A probabilidade de que exatamente dois componentes falhem é:
dbinom(2, 5, 0.25)

#As roletas de um cassino têm 38 lugares dos quais 18 são pretos, 18 são vermelhos e 2 são verdes.
#Seja X a variável aleatória que denota o número de vezes que é necessário rodar
#a roleta antes de obter pela primeira vez um número vermelho. Com base nessas informações,
#podemos dizer que
pgeom(2, 18/38, lower.tail = FALSE) #RESPSOTA A)

#O diâmetro de um cabo elétrico é normalmente distribuído com média 0,8 e variância 0,0004.
#Suponha que o cabo seja defeituoso se o diâmetro diferir de sua média em mais de 0,035.
#Qual a probabilidade de se encontrar um cabo defeituoso?
1-(pnorm(0.835, 0.8, 0.02)-pnorm(0.765, 0.8, 0.02))

#A distribuição da resistência de resistores de um tipo específico é normal, 
#sendo que 5% de todos os equipamentos apresentam resistência maior que 10,256 ohms
#e 10% com resistência menor que 9,671 ohms. Os valores da média () e do desvio padrão ()
#da distribuição das resistências são, respectivamente:
m = 9.9996
dp =  0.2003
pnorm(10.256, m, dp, lower.tail = FALSE)
pnorm(9.671, m, dp)

#As alturas de 10.000 alunos de um colégio têm distribuição aproximadamente normal,
#com média 170 cm e desvio padrão 5 cm.Qual a altura que limita os 5% alunos mais altos?
pnorm(178.22,170, 5, lower.tail = FALSE)
