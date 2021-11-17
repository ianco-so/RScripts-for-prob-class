#Medidas de tendência Central e separatrizes
  ##Restistencia a compressao de 80 corpos de prova da liga de aluminio-litio
liga<-c(105,97,245,163,207,134,218,199,160,196,
        221,154,228,131,180,178,157,151,175,201,
        183,153,174,154,190,76,101,142,149,200,
        186,174,199,115,193,167,171,163,87,176,
        121,120,181,160,194,184,165,145,160,150,
        181,168,158,208,133,135,172,171,237,170,
        180,167,176,158,156,229,158,148,150,118,
        143,141,110,133,123,146,169,158,135,149)
  ##Media
    ###Exemplo 1:
mean(liga)
  ##Mediana
    ###Exemplo 2: conjunto {1, 3, 0, 0, 2, 4, 1, 2, 5}
median(c(1, 3, 0, 0, 2, 4, 1, 2, 5))
    ###Exemplo 3: conjunto {1, 3, 0, 0, 2, 4, 1, 3, 5, 6}
    ###Exemplo 4:
median(liga)
  ##Moda
    ###Exemplo 6: Conjunto {7, 8, 9, 10, 10, 11, 12}
x <- c(7, 8, 9, 10, 10, 11, 12)
table(x)
subset(table(x), table(x) == max(table(x)))
    ###Uma forma muito melhor de calcular a moda é instalando o pacote "DescTolls" e usando a função Mode()[1]
    ###Exemplo a seguir
Mode(liga) #Vai retornar os valores da moda e a frequencia dessa moda
Mode(liga)[1] #Vai retornar apenas o valor da moda (que é mais interessante)
##Separatrizes
    ###Quartis
    ###Exemplo 8:
summary(liga)
    ###Decis
    ###EXemplo 9:
quantile(liga, seq(0.1, 0.9, 0.1))
    ###Percentis
    ###Exemplo 10:
quantile(liga, seq(0.01, 0.99, 0.01))
    ###Exemplo 11:
max(liga)-min(liga)
  ##Variância s^2 = frac{\sum\limits_{i=1}^{n}\(x_i - \Bar(x)\)^2}{n-1}
  ##Desvio padrão S = sqrt(S^2) = sqrt(frac{\sum\limits_{i=1}^{n}\(x_i - \Bar(x)\)^2}{n-1})
  ##Exemplo 12:
crt <- c(36.45, 67.90, 38.77, 42.18, 26.72, 50.77, 39.30, 49.71)
sd(crt)
sd(crt)^2
mean(crt)
  ##Coeficiente de variacao CV: frac{S}{\Bar(X)}*100
    ###Exemplo 14:
(0.12/2.49)*100
(0.15/3.75)*100
    
  ##Coneficiente de assimetria de Pearson: S_k = frac{\Bar(X) - Mo}{S}
    ###Exemplo s_k da liga
Mo <- Mode(liga)[1]
S <- sd(liga)
X <- mean(liga)
sk <- (X-Mo)/S
    ###Exemplo 15: Conjunto {tempo de uso de um determinado produto}
useTime <- c(4.5, 7.0, 9.0, 11, 13, 14, 16, 16, 17, 18,
              18, 20, 21, 22, 22, 23, 24, 24, 24, 24,
              25, 25, 26, 26, 26, 27, 28, 28, 29, 30)
mean(useTime)
sd(useTime)
cv <- (sd(useTime)/mean(useTime))*100
  ##Curtose: K = frac{Q_3 -Q_1}{2(P_90-P_10)}
    ###Exmplo 16: calcule a curtose dos dados da liga
k <- (quantile(liga)[4] - quantile(liga)[2])/
  (2*(quantile(liga, seq(0.0, 1.0, 0.1))[10] - quantile(liga, seq(0.0, 1.0, 0.1))[2]))


