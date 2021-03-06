##PROVA 3
#As alturas de 10.000 alunos de um col�gio t�m distribui��o aproximadamente normal, 
#com m�dia 170 cm e desvio padr�o 5 cm.
#Qual o n�mero esperado de alunos com altura superior a 165 cm?
pnorm(165, 170, 5, lower.tail = FALSE)*10000

#O n�mero de empregados de uma empresa que s�o mulheres est� para o n�mero de empregados
#que s�o homens assim como 2 est� para 3. Ao extrair uma amostra aleat�ria de 4 empregados
#desta empresa, com reposi��o, qual  probabilidade de que nesta amostra haja no m�nimo 3 homens ?
pbinom(2, 4,0.6, lower.tail = FALSE)

#Um lote de 20 televisores � submetido a um procedimento de teste de aceita��o.
#O procedimento consiste em extrair aleatoriamente cinco TVs, sem reposi��o,
#e test�-los. Se um ou menos falharem, os restantes s�o aceitos. Caso contr�rio,
#o lote � rejeitado. Supondo que o lote contenha tr�s TVs defeituosas,
#qual a probabilidade exata da rejei��o do lote?
phyper(1, 3, 17, 5, lower.tail = FALSE)

#Estima-se que o tempo de falha de uma televis�o de led seja distribu�do exponencialmente, 
#com uma m�dia de tr�s anos. Uma companhia oferece garantia para essas televis�es no primeiro ano de uso.
#Suponha que em um m�s a companhia produza 250 televis�es. Com base nessas informa��es, 
#julgue cada um dos itens abaixo como verdadeiro ou falso.
#F  #Sabendo que o valor de revenda de uma televis�o � igual a R$1.500,00,
    #o lucro anual esperado da empresa � superior a R$ 3.350.000,00.
pexp(1, 1/3, lower.tail = FALSE)*250*1500*12
#F  #A porcentagem de televisores que passar�o pela garantia � aproximadamente 0,183.
pexp(1, 1/3)
#V  #A vida �til desses aparelhos tal que a porcentagem de televisores que apresentam defeito
    #at� esse per�odo seja de 95% � de no m�ximo 8.987 anos.
pexp(8.987, 1/3)
#F  #Se a garantia � acionada um valor de R$1.300,00 � devolvido para o consumidor,
    #o valor anual pago pela companhia em garantias � inferior a R$1.100.000,00.
pexp(1, 1/3)*250*12*1300

#Num certo tipo de fabrica��o de fita magn�tica,
#ocorrem cortes segundo uma distribui��o de Poisson a uma taxa de um por 2.000 p�s.
#Qual a probabilidade de que um rolo com 10.000 p�s de fita magn�tica n�o tenha nenhum corte
dpois(0, 5)

#Um importante sistema age como apoio para um ve�culo do programa espacial.
#Este sistema � formado por cinco componentes instalados em paralelo,
#de modo que o sistema falha somente se todos os componentes falharem. 
#Assuma que os componentes funcionem independentemente e que sejam equivalentes
#no sentido de que todos t�m 75% de taxa de sucesso.
#Considere a vari�vel aleat�ria X o n�mero de componentes, dentre os cinco, que falham.
#A probabilidade de que exatamente dois componentes falhem �:
dbinom(2, 5, 0.25)

#As roletas de um cassino t�m 38 lugares dos quais 18 s�o pretos, 18 s�o vermelhos e 2 s�o verdes.
#Seja X a vari�vel aleat�ria que denota o n�mero de vezes que � necess�rio rodar
#a roleta antes de obter pela primeira vez um n�mero vermelho. Com base nessas informa��es,
#podemos dizer que
pgeom(2, 18/38, lower.tail = FALSE) #RESPSOTA A)

#O di�metro de um cabo el�trico � normalmente distribu�do com m�dia 0,8 e vari�ncia 0,0004.
#Suponha que o cabo seja defeituoso se o di�metro diferir de sua m�dia em mais de 0,035.
#Qual a probabilidade de se encontrar um cabo defeituoso?
1-(pnorm(0.835, 0.8, 0.02)-pnorm(0.765, 0.8, 0.02))

#A distribui��o da resist�ncia de resistores de um tipo espec�fico � normal, 
#sendo que 5% de todos os equipamentos apresentam resist�ncia maior que 10,256 ohms
#e 10% com resist�ncia menor que 9,671 ohms. Os valores da m�dia () e do desvio padr�o ()
#da distribui��o das resist�ncias s�o, respectivamente:
m = 9.9996
dp =  0.2003
pnorm(10.256, m, dp, lower.tail = FALSE)
pnorm(9.671, m, dp)

#As alturas de 10.000 alunos de um col�gio t�m distribui��o aproximadamente normal,
#com m�dia 170 cm e desvio padr�o 5 cm.Qual a altura que limita os 5% alunos mais altos?
pnorm(178.22,170, 5, lower.tail = FALSE)
