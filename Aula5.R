          #MODELOS DE PROBABILIDADE
  #MODELO BINOMIAL
?pbinom
?dbinom
pbinom(4, 12, 0.25, lower.tail = FALSE)
##lower.tail are, by default, TRUE. It means that the function get the probs of x <= q
##To know the prob of the student take exactly six hits, then i could make:
#QUESTAo 1
#Considere uma prova com 12 questoes, cada uma com 4 alternativas.
#Suponha que um aluno escolha a resposta ao acaso.
#Qual a probabilidade que ele acerte pelo menos 6 questoes?

pbinom(5, 12, 0.25, lower.tail = FALSE) #resposta!
1-pbinom(5, 12, 0.25) #resposta
#QUESTAO 2
#Uma certa doen�a pode ser curada atrav�s de procedimento
#cir�rgico em 80% dos casos. Dentre os que t�m essa doen�a,
#sorteamos 15 pacientes que ser�o submetidos � cirurgia.
#Fazendo alguma suposi��o adicional que julgar necess�ria,
#responda qual � a probabilidade de:
  #A) Todos serem curados?
dbinom(15, 15, 0.8)
pbinom(14, 15, 0.8, lower.tail = FALSE)
  #B) Pelo menos dois n�o serem curados?
pbinom(1, 15, 0.2, lower.tail = FALSE)
pbinom(13, 15, 0.8)
  #C) c) Ao menos 10 ficarem livres da doen�a?
pbinom(9, 15, 0.8, lower.tail = FALSE)
pbinom(5, 15, 0.2)
  #D)O n�mero de curados ser maior que 3 e menor 6.
dbinom(4, 15, 0.8) + dbinom(5, 15, 0.8)
pbinom(3, 15, 0.8, lower.tail = FALSE) - pbinom(5, 15, 0.8, lower.tail = FALSE)
pbinom(5, 15, 0.8) - pbinom(3, 15, 0.8)
  #E) No m�ximo 13 serem curados sabendo que no m�nimo 11 foram curados.
pbinom(10, 15, 0.8, lower.tail = FALSE)*(pbinom(13, 15, 0.8)-pbinom(10, 15, 0.8))
pbinom(10, 15, 0.8, lower.tail = FALSE)* (dbinom(11, 15, 0.8)+ dbinom(12, 15, 0.8) + dbinom(13, 15, 0.8))

  #MODELO GEOM�TRICO
?dgeom
#QUEST�O 1
#Sendo X ??? Geo, calcule:
#P(X=3):
dgeom(3, 0.8)
#P(X ??? 1)
pgeom(0, 0.8, lower.tail = FALSE)


  #MODELO DE POISSION
#O numero de chamadas telefonicas que chegam a uma central � frequentemente
#modelado como uma variavel aleat�ria de Poisson. Considere que, em m�dia, h� 10 chamadas por hora.
?ppois
?dpois
  ##A) Qual a probabilidade de que haja exatamente 5 chamadas em uma hora?
(exp(-10)*10^5)/factorial(5)
ppois(5, 10) - ppois(4, 10)
dpois(5, 10)
  ##B) Qual a probabilidade de que haja tr�s ou menos chamadas em uma hora?
(exp(-10)*10^0)/factorial(0) + (exp(-10)*10^1)/factorial(1) +
  (exp(-10)*10^2)/factorial(2) + (exp(-10)*10^3)/factorial(3)
ppois(3, 10)
  ##C) Qual a probabilidade de que tenham exatamente 15 chamadas em duas horas?
ppois(15, 20) - ppois(14, 20)
dpois(15, 20)

  #MODELO HIPERGEOM�TRICO
?phyper
#Suponha que um conjunto tem N objetos, M do tipo I de
#N ???M do tipo II. Para um sorteio de n objetos (n < N), ao
#acaso e sem reposi��o, defina X como o n�mero de objetos
#do tipo I selecionados. Diremos que X tem distribui��o
#Hipergeom�trica e sua fun��o de probabilidade � dada por:

  ## P[X = k] = choose(M, k)*choose(N-M, n-k)/choose(N, n)

#EXEMPLO: Foram impressos vinte exemplares de um boletim. Em quatro
#exemplares falta uma p�gina. Voc� escolhe cinco exemplares ao
#acaso entre os vinte. Qual � a probabilidade que haja dois
#exemplares com a p�gina faltando entre os cinco? Qual � a
#probabilidade de que pelo menos um tenha a p�gina faltando?
# Qual � a m�dia e a vari�ncia do n�mero de exemplares com
#p�gina faltando?
dhyper(2, 4, 16, 5) #probabilidade de que hajam dois boletins sem uma p�gina
phyper(0, 4, 16, 5, lower.tail = FALSE) #probabilidade de que pelo menos um tenha p�gina faltando



#Destribui��o normal use o pnorm
?pnorm
pnorm(1.645, lower.tail = FALSE)


#LISTA 1: MODELOS DISCRETOS
#Exerc�cio 2: 25% dos universit�rios da UFRN praticam esportes.
#Escolhendo-se, ao acaso, 15 desses estudantes determine a probabilidade de:
#A) Pelo menos 2 serem esportistas.
pbinom(1, 15, 0.25, lower.tail = FALSE)
pbinom(13, 15, 0.75)
#B) No m�nimo 12 deles n�o serem espostistas.
pbinom(11, 15, 0.75, lower.tail = FALSE)
pbinom(3, 15, 0.25)
#C) Havendo mais de 5 esportistas no grupo, obtermos menos de 7 que praticam esporte.
dbinom(6, 15, 0.25)

#Exerc�cio 3.
#Toda manh�, antes de iniciar a produ��o, o setor de manuten��o de uma ind�stria faz a verifica��o
#de todo o equipamento. A experi�ncia indica que em 95% dos dias tudo est� bem e a produ��o
#se inicia. Caso haja algum problema, uma revis�o completa ser� feita e a ind�stria s� come�ar�
#a trabalhar ap�s o almo�o. Fa�a alguma suposi��o adicional que julgar necess�ria e responda:
#A) Qual a probabilidade de demorar 10 dias para a primeira revis�o completa?
dgeom(9, 0.05)
#B) E de demorar pelo menos 15 dias?
pgeom(14, 0.05, lower.tail = FALSE)
#C) Um esquema de manuten��o, com revis�o preventiva, est� sendo montada de modo a evitar
#a revis�o completa em um dia aleat�rio. Determine um dia d, tal que a probabilidade de
#quebra al�m de d seja pelo menos igual a 0,6.
pgeom(17, 0.05)

#Exerc�cio 4.
#Suponha que o n�mero de erros tipogr�ficos em uma �nica p�gina de um livro tem distribui��o
#de Poisson com par�metro ?? = 1/2.
#A) Calcule a probabilidade de existir exatamente dois erros tipogr�ficos em uma p�gina
dpois(2, 1/2)
#B) Calcule a probabilidade de que exista pelo menos um erro em uma p�gina.
ppois(1, 1/2)
#C) Supondo agora que o livro possui 200 p�ginas, qual a probabilidade de n�o existir erros
#tipogr�ficos nesse livro?
dpois(0, 100)
ppois(10, 100)

#Exerc�cio 5.
#Suponha que a probabilidade de que um item produzido por uma m�quina seja defeituoso � 0,1.
#Determine a probabilidade de que em uma amostra de dez itens contenha no maximo um item
#defeituoso. Compare os resultados obtidos pelas distribui��es binomial e Poisson.
pbinom(1, 10, 0.1)
ppois(1, 10*(0.1))

#Exerc�cio 6.
#Por engano 3 pe�as defeituosas foram misturadas com boas formando um lote com 12 pe�as
#no total. Escolhendo ao acaso e sem reposi��o 4 dessas pe�as, determine a probabilidade de
#encontrar:
#A) Pelo menos 2 defeituosas.
phyper(1, 3, 9, 4, lower.tail = FALSE)
dhyper(2, 3, 9, 4)+dhyper(3, 3, 9, 4)
#B) No m�ximo 1 defeituosa.
phyper(1, 3, 9, 4)
#C) No m�nimo 1 boa.
phyper(0, 9, 3, 4, lower.tail = FALSE)

#Exerc�cio 7.
#Um lote de 200 l�mpadas apresenta 10% de l�mpadas defeituosas. S�o retiradas, ao acaso e sem
#reposi��o, 50 l�mpadas desse lote. Determine a probabilidade de serem encontradas no m�ximo
#quatro l�mpadas defeituosas entre as que foram retiradas do lote. Utilize os modelos binomial e
#hipergeom�trico para calcular esta probabilidade.
phyper(4, 20, 180, 50)
pbinom(4, 50, 0.1)

#LISTA 2: MODELOS CONTINUOS
#Exerc�cio 1.
#Estudos meteorol�gicos indicam que a precipita��o pluviom�trica mensal em per�odos de seca
#numa certa regi�o pode ser considerada como seguindo a distribui��o Normal de m�dia 30 mm e
#vari�ncia 16 mm2.
#A)  Qual � a probabilidade de que a precipita��o pluviom�trica mensal no per�odo da seca esteja
#entre 24 e 39 mm?
pnorm(39, 30, 16) -pnorm(24, 30, 16)

  
#B) Qual seria o valor da precipita��o pluviom�trica de modo que exista apenas 10% de chance
#de haver uma precipita��o inferior a esse valor?
pnorm(9.5, 30, 16)

#Exerc�cio 2.
#Sabe-se que em uma popula��o, a altura dos homens adultos tem distribui��o normal com m�dia
#175 cm e desvio padr�o 20 cm, enquanto que a das mulheres � tamb�m normal com m�dia 160
#cm e desvio padr�o 10 cm.
#A) Sorteando-se aleatoriamente dessa popula��o um homem, qual � a probabilidade de sua altura
#ser superior a 150 cm?
pnorm(150, 175, 20, lower.tail = FALSE)

#B) Sorteando-se aleatoriamente dessa popula��o uma mulher, qual � a probabilidade de sua
#altura ser superior a 150 cm?
pnorm(150, 160, 10, lower.tail = FALSE)

#C) Qual � a probabilidade de uma pessoa ter altura acima de 150 cm, sendo ela sorteada de um
#grupo de pessoas constitu�do de 60% de mulheres e 40% de homens?
0.4*pnorm(150, 175, 20, lower.tail = FALSE)+ 0.6*pnorm(150, 160, 10, lower.tail = FALSE)

#D) Qual � a altura m�nima dos homens que limita os 10% mais altos?
pnorm(200.63, 175, 20, lower.tail = FALSE)

#Exerc�cio 3.
#Um bom indicador do n�vel de intoxica��o por benzeno � a quantidade de fenol encontrada na
#urina. A quantidade de fenol na urina de moradores de uma certa regi�o segue, aproximadamente,
#uma distribui��o normal de m�dia 5 mg/L e desvio padr�o 2 mg/L. 
#Considere as seguintes defini��es em termos da vari�vel quantidade de fenol na urina:
  #i. Define-se como "valor de refer�ncia" a quantidade de fenol tal que 95% da popula��o t�m
#quantidade de fenol maior ou igual a esse valor;
  #ii. Uma pessoa � considerada "at�pica" se a quantidade de fenol em sua urina for superior a 8
#mg/L ou inferior a 2 mg/L.

#A) Sorteado um morador ao acaso, qual � a probabilidade de ser "at�pico"?
pnorm(2, 5, 2)+pnorm(8, 5, 2, lower.tail = FALSE)
2*pnorm(2,5,2)
#B) Qual � o valor de refer�ncia da popula��o?
pnorm(1.71, 5, 2, lower.tail = FALSE)

#C) Sorteadas 5 pessoas ao acaso, qual � a probabilidade se ter no m�nimo 4 "at�picas" ?
pbinom(3, 5, 2*pnorm(2,5,2), lower.tail = FALSE)

#D) Sabendo que uma pessoa n�o � at�pica, qual � a probabilidade de ter quantidade de fenol no
#intervalo 4mg/L a 6 mg/L?
(pnorm(6, 5, 2)-pnorm(4, 5, 2))/(pnorm(8, 5, 2)-pnorm(2, 5, 2))

#Exerc�cio 4.
#Uma empresa produz televisores de 2 tipos, tipo A (comum) e tipo B (luxo), e garante a restitui��o
#da quantia paga se qualquer televisor apresentar defeito grave no prazo de seis meses. O tempo
#para ocorr�ncia de algum defeito grave nos televisores tem distribui��o normal, sendo que no
#tipo A com m�dia 9 meses e desvio padr�o 2 meses e, no tipo B, com m�dia 12 meses e desvio
#padr�o 3 meses. Os televisores de tipo A e B s�o produzidos com lucro de 1000 u.m. e 2000 u.m.,
#respectivamente e, caso haja restitui��o, com preju�zo de 3000 u.m. e 8000 u.m., respectivamente.

#A)Calcule as probabilidades de haver restitui��o do valor pago para televisores do tipo A e do
#tipo B;
pnorm(6, 9, 2)
pnorm(6, 12, 3)
#B) Calcule o lucro m�dio para os televisores do tipo A e para os televisores do tipo B;
-pnorm(6, 9, 2)*3000+pnorm(6, 9, 2, lower.tail = FALSE)*1000 #TIPO A
-pnorm(6, 12, 3)*8000+pnorm(6, 12, 3, lower.tail = FALSE)*2000 #TIPO B
#C)  Baseando-se nos lucros m�dios, a empresa deveria incentivar as vendas dos aparelhos do tipo
#A ou do tipo B? Por qu�?
#B porqu� o lucro m�dio � bem maior

#Exerc�cio 5.
#O tempo (em horas) necess�rio para reparar uma m�quina � uma vari�vel aleat�ria 
#exponencialmente distribu�da com par�metro ?? = 1/2. Determine

#A) A probabilidade de que o tempo de reparo exceda duas horas?
?pexp
pexp(2, 1/2, lower.tail = FALSE)
#B)Dado que a dura��o do reparo ja excede 9 horas, qual a probabilidade do tempo de reparo
#exceder mais duas horas?
pexp(11, 1/2, lower.tail = FALSE)/pexp(9, 1/2, lower.tail = FALSE)

#Exerc�cio 6.
#Um fabricante de televis�o oferece uma garantia de 1 ano para substitui��o gratuita se a tv falhar.
#Ele estima o tempo at� falha em anos, T, como uma vari�vel aleat�ria exponencial de m�dia 4.

#A) Qual a porcentagem de aparelhos que passar�o pela assist�ncia?
pexp(1, 1/4)
#B) Se o lucro por venda � R$200 e a substitui��o de um tubo custa R$200, qual o lucro esperado
#do neg�cio?
200*pexp(1, 1/4, lower.tail = FALSE) -200*pexp(1, 1/4)

#Exerc�cio 7.
#O tempo, em minutos, de utiliza��o de um caixa eletr�nico por clientes de um banco, foi modelado
#por uma vari�vel T com densidade exponencial(3). Determine:
  
#A) P(T < 1).
pexp(1, 3)
#B) P(T > 1|T ??? 2).
pexp(2, 3)-pexp(1, 3, lower.tail = FALSE)
#C) Um n�mero a tal que P(T ??? a) = 0, 4.
pexp(0.1703, 3)
