#Representacao grafica de um conjunto de dados
  ##Boxplot e outlairs
  ###Restistencia a compressao de 80 corpos de prova da liga de aluminio-litio
liga<-c(105,97,245,163,207,134,218,199,160,196,
        221,154,228,131,180,178,157,151,175,201,
        183,153,174,154,190,76,101,142,149,200,
        186,174,199,115,193,167,171,163,87,176,
        121,120,181,160,194,184,165,145,160,150,
        181,168,158,208,133,135,172,171,237,170,
        180,167,176,158,156,229,158,148,150,118,
        143,141,110,133,123,146,169,158,135,149)
boxplot(liga)
boxplot(liga)
    ###Exmplo: Compare as medidas de viscosidade das tres misturas utilizando seus boxplots
v1<-c(22.02,23.83,26.67,25.38,25.49,23.50,25.90,25.98)
v2<-c(21.49,22.67,24.62,24.18,22.78,22.56,24.26,23.79)
v3<-c(20.33,21.67,24.67,22.45,22.28,21.95,20.49,21.81)
boxplot(v1,v2,v3)
    ###Exemplo: Dureza de de corpos de prova de uma liga de aluminio
d1<-c(50.5,51.1,52.4,53.0,53.4,53.5,54.1,55.3,55.7,55.7,
      59.5,63.5,64.3,67.3,69.1,69.5,70.2,70.5,  71.4,  72.3,
      73.0,74.4,77.8,78.5,82.5,82.7,84.3,85.8,87.5,95.4,119.0)
boxplot(d1)
    ##Para pegar apenas os outliers vamos usar
      ###Instalando o o pacote DescTools podemos usar a funcao Outlier()
Outlier(liga, method = c("boxplot"))
      ###Ou podemos usar a fucao boxplot.stats
v <-boxplot.s
