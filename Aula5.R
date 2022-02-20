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
#Uma certa doença pode ser curada através de procedimento
#cirúrgico em 80% dos casos. Dentre os que têm essa doença,
#sorteamos 15 pacientes que serão submetidos à cirurgia.
#Fazendo alguma suposição adicional que julgar necessária,
#responda qual é a probabilidade de:
  #A) Todos serem curados?
dbinom(15, 15, 0.8)
pbinom(14, 15, 0.8, lower.tail = FALSE)
  #B) Pelo menos dois não serem curados?
pbinom(1, 15, 0.2, lower.tail = FALSE)
pbinom(13, 15, 0.8)
  #C) c) Ao menos 10 ficarem livres da doença?
pbinom(9, 15, 0.8, lower.tail = FALSE)
pbinom(5, 15, 0.2)
  #D)O número de curados ser maior que 3 e menor 6.
dbinom(4, 15, 0.8) + dbinom(5, 15, 0.8)
pbinom(3, 15, 0.8, lower.tail = FALSE) - pbinom(5, 15, 0.8, lower.tail = FALSE)
pbinom(5, 15, 0.8) - pbinom(3, 15, 0.8)
  #E) No máximo 13 serem curados sabendo que no mínimo 11 foram curados.
pbinom(10, 15, 0.8, lower.tail = FALSE)*(pbinom(13, 15, 0.8)-pbinom(10, 15, 0.8))
pbinom(10, 15, 0.8, lower.tail = FALSE)* (dbinom(11, 15, 0.8)+ dbinom(12, 15, 0.8) + dbinom(13, 15, 0.8))

  #MODELO GEOMÉTRICO
?dgeom
#QUESTÃO 1
#Sendo X ??? Geo, calcule:
#P(X=3):
dgeom(3, 0.8)
#P(X ??? 1)
pgeom(0, 0.8, lower.tail = FALSE)


  #MODELO DE POISSION
#O numero de chamadas telefonicas que chegam a uma central é frequentemente
#modelado como uma variavel aleatória de Poisson. Considere que, em média, há 10 chamadas por hora.
?ppois
?dpois
  ##A) Qual a probabilidade de que haja exatamente 5 chamadas em uma hora?
(exp(-10)*10^5)/factorial(5)
ppois(5, 10) - ppois(4, 10)
dpois(5, 10)
  ##B) Qual a probabilidade de que haja três ou menos chamadas em uma hora?
(exp(-10)*10^0)/factorial(0) + (exp(-10)*10^1)/factorial(1) +
  (exp(-10)*10^2)/factorial(2) + (exp(-10)*10^3)/factorial(3)
ppois(3, 10)
  ##C) Qual a probabilidade de que tenham exatamente 15 chamadas em duas horas?
ppois(15, 20) - ppois(14, 20)
dpois(15, 20)

  #MODELO HIPERGEOMÉTRICO
?phyper
#Suponha que um conjunto tem N objetos, M do tipo I de
#N ???M do tipo II. Para um sorteio de n objetos (n < N), ao
#acaso e sem reposição, defina X como o número de objetos
#do tipo I selecionados. Diremos que X tem distribuição
#Hipergeométrica e sua função de probabilidade é dada por:

  ## P[X = k] = choose(M, k)*choose(N-M, n-k)/choose(N, n)

#EXEMPLO: Foram impressos vinte exemplares de um boletim. Em quatro
#exemplares falta uma página. Você escolhe cinco exemplares ao
#acaso entre os vinte. Qual é a probabilidade que haja dois
#exemplares com a página faltando entre os cinco? Qual é a
#probabilidade de que pelo menos um tenha a página faltando?
# Qual é a média e a variância do número de exemplares com
#página faltando?
dhyper(2, 4, 16, 5) #probabilidade de que hajam dois boletins sem uma página
phyper(0, 4, 16, 5, lower.tail = FALSE) #probabilidade de que pelo menos um tenha página faltando



#Destribuição normal use o pnorm
?pnorm
pnorm(1.645, lower.tail = FALSE)


#LISTA 1: MODELOS DISCRETOS
#Exercício 2: 25% dos universitários da UFRN praticam esportes.
#Escolhendo-se, ao acaso, 15 desses estudantes determine a probabilidade de:
#A) Pelo menos 2 serem esportistas.
pbinom(1, 15, 0.25, lower.tail = FALSE)
pbinom(13, 15, 0.75)
#B) No mínimo 12 deles não serem espostistas.
pbinom(11, 15, 0.75, lower.tail = FALSE)
pbinom(3, 15, 0.25)
#C) Havendo mais de 5 esportistas no grupo, obtermos menos de 7 que praticam esporte.
dbinom(6, 15, 0.25)

#Exercício 3.
#Toda manhã, antes de iniciar a produção, o setor de manutenção de uma indústria faz a verificação
#de todo o equipamento. A experiência indica que em 95% dos dias tudo está bem e a produção
#se inicia. Caso haja algum problema, uma revisão completa será feita e a indústria só começará
#a trabalhar após o almoço. Faça alguma suposição adicional que julgar necessária e responda:
#A) Qual a probabilidade de demorar 10 dias para a primeira revisão completa?
dgeom(9, 0.05)
#B) E de demorar pelo menos 15 dias?
pgeom(14, 0.05, lower.tail = FALSE)
#C) Um esquema de manutenção, com revisão preventiva, está sendo montada de modo a evitar
#a revisão completa em um dia aleatório. Determine um dia d, tal que a probabilidade de
#quebra além de d seja pelo menos igual a 0,6.
pgeom(17, 0.05)

#Exercício 4.
#Suponha que o número de erros tipográficos em uma única página de um livro tem distribuição
#de Poisson com parâmetro ?? = 1/2.
#A) Calcule a probabilidade de existir exatamente dois erros tipográficos em uma página
dpois(2, 1/2)
#B) Calcule a probabilidade de que exista pelo menos um erro em uma página.
ppois(1, 1/2)
#C) Supondo agora que o livro possui 200 páginas, qual a probabilidade de não existir erros
#tipográficos nesse livro?
dpois(0, 100)
ppois(10, 100)

#Exercício 5.
#Suponha que a probabilidade de que um item produzido por uma máquina seja defeituoso é 0,1.
#Determine a probabilidade de que em uma amostra de dez itens contenha no maximo um item
#defeituoso. Compare os resultados obtidos pelas distribuições binomial e Poisson.
pbinom(1, 10, 0.1)
ppois(1, 10*(0.1))

#Exercício 6.
#Por engano 3 peças defeituosas foram misturadas com boas formando um lote com 12 peças
#no total. Escolhendo ao acaso e sem reposição 4 dessas peças, determine a probabilidade de
#encontrar:
#A) Pelo menos 2 defeituosas.
phyper(1, 3, 9, 4, lower.tail = FALSE)
dhyper(2, 3, 9, 4)+dhyper(3, 3, 9, 4)
#B) No máximo 1 defeituosa.
phyper(1, 3, 9, 4)
#C) No mínimo 1 boa.
phyper(0, 9, 3, 4, lower.tail = FALSE)

#Exercício 7.
#Um lote de 200 lâmpadas apresenta 10% de lâmpadas defeituosas. São retiradas, ao acaso e sem
#reposição, 50 lâmpadas desse lote. Determine a probabilidade de serem encontradas no máximo
#quatro lâmpadas defeituosas entre as que foram retiradas do lote. Utilize os modelos binomial e
#hipergeométrico para calcular esta probabilidade.
phyper(4, 20, 180, 50)
pbinom(4, 50, 0.1)

#LISTA 2: MODELOS CONTINUOS
#Exercício 1.
#Estudos meteorológicos indicam que a precipitação pluviométrica mensal em períodos de seca
#numa certa região pode ser considerada como seguindo a distribuição Normal de média 30 mm e
#variância 16 mm2.
#A)  Qual é a probabilidade de que a precipitação pluviométrica mensal no período da seca esteja
#entre 24 e 39 mm?
pnorm(39, 30, 16) -pnorm(24, 30, 16)

  
#B) Qual seria o valor da precipitação pluviométrica de modo que exista apenas 10% de chance
#de haver uma precipitação inferior a esse valor?
pnorm(9.5, 30, 16)

#Exercício 2.
#Sabe-se que em uma população, a altura dos homens adultos tem distribuição normal com média
#175 cm e desvio padrão 20 cm, enquanto que a das mulheres é também normal com média 160
#cm e desvio padrão 10 cm.
#A) Sorteando-se aleatoriamente dessa população um homem, qual é a probabilidade de sua altura
#ser superior a 150 cm?
pnorm(150, 175, 20, lower.tail = FALSE)

#B) Sorteando-se aleatoriamente dessa população uma mulher, qual é a probabilidade de sua
#altura ser superior a 150 cm?
pnorm(150, 160, 10, lower.tail = FALSE)

#C) Qual é a probabilidade de uma pessoa ter altura acima de 150 cm, sendo ela sorteada de um
#grupo de pessoas constituído de 60% de mulheres e 40% de homens?
0.4*pnorm(150, 175, 20, lower.tail = FALSE)+ 0.6*pnorm(150, 160, 10, lower.tail = FALSE)

#D) Qual é a altura mínima dos homens que limita os 10% mais altos?
pnorm(200.63, 175, 20, lower.tail = FALSE)

#Exercício 3.
#Um bom indicador do nível de intoxicação por benzeno é a quantidade de fenol encontrada na
#urina. A quantidade de fenol na urina de moradores de uma certa região segue, aproximadamente,
#uma distribuição normal de média 5 mg/L e desvio padrão 2 mg/L. 
#Considere as seguintes definições em termos da variável quantidade de fenol na urina:
  #i. Define-se como "valor de referência" a quantidade de fenol tal que 95% da população têm
#quantidade de fenol maior ou igual a esse valor;
  #ii. Uma pessoa é considerada "atípica" se a quantidade de fenol em sua urina for superior a 8
#mg/L ou inferior a 2 mg/L.

#A) Sorteado um morador ao acaso, qual é a probabilidade de ser "atípico"?
pnorm(2, 5, 2)+pnorm(8, 5, 2, lower.tail = FALSE)
2*pnorm(2,5,2)
#B) Qual é o valor de referência da população?
pnorm(1.71, 5, 2, lower.tail = FALSE)

#C) Sorteadas 5 pessoas ao acaso, qual é a probabilidade se ter no mínimo 4 "atípicas" ?
pbinom(3, 5, 2*pnorm(2,5,2), lower.tail = FALSE)

#D) Sabendo que uma pessoa não é atípica, qual é a probabilidade de ter quantidade de fenol no
#intervalo 4mg/L a 6 mg/L?
(pnorm(6, 5, 2)-pnorm(4, 5, 2))/(pnorm(8, 5, 2)-pnorm(2, 5, 2))

#Exercício 4.
#Uma empresa produz televisores de 2 tipos, tipo A (comum) e tipo B (luxo), e garante a restituição
#da quantia paga se qualquer televisor apresentar defeito grave no prazo de seis meses. O tempo
#para ocorrência de algum defeito grave nos televisores tem distribuição normal, sendo que no
#tipo A com média 9 meses e desvio padrão 2 meses e, no tipo B, com média 12 meses e desvio
#padrão 3 meses. Os televisores de tipo A e B são produzidos com lucro de 1000 u.m. e 2000 u.m.,
#respectivamente e, caso haja restituição, com prejuízo de 3000 u.m. e 8000 u.m., respectivamente.

#A)Calcule as probabilidades de haver restituição do valor pago para televisores do tipo A e do
#tipo B;
pnorm(6, 9, 2)
pnorm(6, 12, 3)
#B) Calcule o lucro médio para os televisores do tipo A e para os televisores do tipo B;
-pnorm(6, 9, 2)*3000+pnorm(6, 9, 2, lower.tail = FALSE)*1000 #TIPO A
-pnorm(6, 12, 3)*8000+pnorm(6, 12, 3, lower.tail = FALSE)*2000 #TIPO B
#C)  Baseando-se nos lucros médios, a empresa deveria incentivar as vendas dos aparelhos do tipo
#A ou do tipo B? Por quê?
#B porquê o lucro médio é bem maior

#Exercício 5.
#O tempo (em horas) necessário para reparar uma máquina é uma variável aleatória 
#exponencialmente distribuída com parâmetro ?? = 1/2. Determine

#A) A probabilidade de que o tempo de reparo exceda duas horas?
?pexp
pexp(2, 1/2, lower.tail = FALSE)
#B)Dado que a duração do reparo ja excede 9 horas, qual a probabilidade do tempo de reparo
#exceder mais duas horas?
pexp(11, 1/2, lower.tail = FALSE)/pexp(9, 1/2, lower.tail = FALSE)

#Exercício 6.
#Um fabricante de televisão oferece uma garantia de 1 ano para substituição gratuita se a tv falhar.
#Ele estima o tempo até falha em anos, T, como uma variável aleatória exponencial de média 4.

#A) Qual a porcentagem de aparelhos que passarão pela assistência?
pexp(1, 1/4)
#B) Se o lucro por venda é R$200 e a substituição de um tubo custa R$200, qual o lucro esperado
#do negócio?
200*pexp(1, 1/4, lower.tail = FALSE) -200*pexp(1, 1/4)

#Exercício 7.
#O tempo, em minutos, de utilização de um caixa eletrônico por clientes de um banco, foi modelado
#por uma variàvel T com densidade exponencial(3). Determine:
  
#A) P(T < 1).
pexp(1, 3)
#B) P(T > 1|T ??? 2).
pexp(2, 3)-pexp(1, 3, lower.tail = FALSE)
#C) Um número a tal que P(T ??? a) = 0, 4.
pexp(0.1703, 3)
