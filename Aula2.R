#Histograma e Poligono de frequências
##Restistencia a compressao de 80 corpos de prova da liga de aluminio-litio

alloy <-c(105,97,245,163,207,134,218,199,160,196,
        221,154,228,131,180,178,157,151,175,201,
        183,153,174,154,190,76,101,142,149,200,
        186,174,199,115,193,167,171,163,87,176,
        121,120,181,160,194,184,165,145,160,150,
        181,168,158,208,133,135,172,171,237,170,
        180,167,176,158,156,229,158,148,150,118,
        143,141,110,133,123,146,169,158,135,149)
#Histograma
hist(alloy,
     main = "Liga de aluminio-litio",
     xlab = "Resistencia a compressao",
     ylab = "Frequencia absoluta")
#curve(dnorm(alloy,mean=mean(alloy),sd=sd(alloy)),col=2,lty=2,lwd=2,add=TRUE)
##install.packages("tidyverse")
##library("tidyverse")
qplot(x = alloy,
      geom = "histogram",
      xlab = "Resistencia a compressao",
      ylab = "Frequencia absoluta",
      main = "Liga de almuninio-litio",
      col = I("darkblue"),
      fill = I("lightblue"),
      bins = sqrt(length(alloy)))

#Qplot for frequency Polygon

qplot(x = alloy,
      geom = "freqpoly",
      xlab = "Resistencia a compressao",
      ylab = "Frequencia absoluta",
      main = "Liga de almuninio-litio",
      col = I("darkblue"),
      fill = I("lightblue"),
      bins = sqrt(length(alloy)))

      