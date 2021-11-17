#Questão 1:
octanagem <-c(88.5, 87.7, 83.4, 86.7, 87.5,
94.7, 91.1, 91.0, 94.2, 87.8,
84.3, 86.7, 88.2, 90.8, 88.3,
90.1, 93.4, 88.5, 90.1, 89.2,
89.0,96.1, 93.3, 91.8, 92.3,
89.8, 89.6, 87.4, 88.4, 88.9,
91.6, 90.4, 91.1, 92.6, 89.8,
90.3, 91.6, 90.5, 93.7, 92.7,
90.0, 90.7, 100.3, 96.5, 93.3,
91.5, 88.6, 87.6, 84.3, 86.7,
89.9,88.3, 92.7, 93.2, 91.0,
98.8, 94.2, 87.9, 88.6, 90.9,
88.3, 85.3, 93.0, 88.7, 89.9,
90.4, 90.1, 94.4, 92.7, 91.8,
91.2, 89.3, 90.4, 89.3, 89.7,
90.6, 91.1, 91.2, 91.0, 92.2,
92.2, 92.2)
#A)
#install.packages("tidyverse")
#library("tidyverse")
qplot(x = octanagem,
      geom = "histogram",
      xlab = "Taxas de Octanagem",
      ylab = "Frequencia absoluta",
      main = "Octanagem de combistível",
      col = I("darkblue"),
      fill = I("lightblue"),
      bins = 8)
oc8 <- table(cut(octanagem, breaks = 8))
#TEIMOSO!
hist(x = octanagem,
     main = "Octanagem de combistível",
     xlab = "Taxas de Octanagem",
     ylab = "Frequencia absoluta",
     breaks = seq(min(octanagem), max(octanagem), length(octanagem)/8 ))

#B)
qplot(x = octanagem,
      geom = "histogram",
      xlab = "Taxas de Octanagem",
      ylab = "Frequencia absoluta",
      main = "Octanagem de combistível",
      col = I("darkblue"),
      fill = I("lightblue"),
      bins = 16)
oc16 <- table(cut(octanagem, breaks = 16))

#QUESTAO 3:
diametro <- c(1, 3, 15, 0, 5, 2, 5,  4)
mean(diametro)
sd(diametro)
plot(diametro)
#Em termos de análise, a média dos dados é 4,38 e o desvio padrão é 4,66.
#A influência do diâmetro 15mm contribuiu fortemente para um desvio padrão
#alto e é um forte candidato para outlier. A partir do diagrama de pontos
#é possível interpretar que a concentração de dados está localizada no
#intervalo entre 1 e 6.

#QUESTAO 4:
espessura <- c(1.264, 1.280, 1.301, 1.300, 1.292, 1.307, 1.275)
mean(espessura)
sd(espessura)

#QUESTÂO 5:
    ##rugosidade medidos sobre superficies de pecas produzidas por tres maquinas diferentes
m1 <- c(20.2, 24.7, 25.7, 21.7, 19.2, 22.3, 23.0, 23.1, 26.8, 20.7, 23.6, 25.4, 24.6, 22.5)
m2 <- c(21.3, 22.7, 22.5, 23.8, 20.4, 23.3, 23.7, 23.4, 25.5, 22.4, 23.1, 21.7, 24.3, 24.7, 22.2)
m3 <- c(22.1, 24.4, 24.0, 21.5, 23.2, 22.0, 25.4, 27.8, 23.5, 23.0, 20.6, 23.6, 22.5, 22.8, 21.4)
max(m1)-min(m1)
max(m2)-min(m2)
max(m3)-min(m3)
sd(m1)
sd(m2)
sd(m3)
sd(m1)/mean(m1)*100
sd(m2)/mean(m2)*100
sd(m3)/mean(m3)*100
mean(m1)
mean(m2)
mean(m3)

#QUESTAO 6:
p1<-c(0.2, 0.2, 0.3, 0.4, 0.6, 0.6, 0.8, 1.0, 1.0, 1.2,
      1.2, 1.3, 1.4, 1.5, 1.5, 1.7, 1.8, 2.0, 2.2, 2.5,
      2.5, 2.7, 3.3, 3.5, 3.8, 4.3, 5.1, 12.0, 12.0, 15.0)
p2<-c(4.5, 7.0, 9.0, 11, 13, 14, 16, 16, 17, 18,18, 20, 21,
      22, 22, 23, 24, 24, 24, 24,
      25, 25, 26, 26, 26, 27, 28, 28, 29, 30)
mean(p1)
median(p1)
#install.packages("DescTools")
#library("DescTools")
Mode(p1)
mean(p2)
median(p2)
Mode(p2)[1]

#QuESTAO 7:
temp <- c(43, 47, 51, 48, 52, 50, 46, 49,
                 45,52, 46, 51, 44, 49, 46, 51,
                 49, 45, 44, 50, 48, 50, 49, 50)
#A)
mean(temp)
median(temp)
#B)
sd(temp)
sd(temp)^2 #Variancia = S^2 = frac{\sum\limits_{i=1}^{n} (X_i - \Bar(X))^2}{n-1}
#C)
summary(temp) #Podemos ver que a maioria das observações estão entre a mediana e o primeiro quartil
#D)
boxplot(temp) #A curva é assimétrica a esquerda
#8)
#9)
#A)
m1 <- c(10, 9, 8, 7, 8, 6, 10, 6)
m2 <- c(10, 6, 10, 6, 8, 10, 8,  6)
max(m1)-min(m1)
max(m2)-min(m1)
#B)
sd(m1)
sd(m2)
#C)
boxplot(m1, m2)
#10)
#A) #Coeficiente de variacao CV: frac{S}{\Bar(X)}*100
(4.485804/9.325)*100
#B)
 ##Podemos dizer que existe uma variacao pequena nas primieras 25% amostras
#C)   #Curtose: K = frac{Q_3 -Q_1}{2(P_90-P_10)}
(12-6)/(2*(17-4))
    ##A curva é leptocurtica
    ## C = 0,263 é mesocurtica, C < 0,263 é leptocurtica e C > 0,263 é platicurtica
#D) É uma distribuicao assimetrica a direita (assimetria positiva)


#11)
naft <- c(4.2, 4.7, 4.7, 5.0, 3.8, 3.6, 3.0, 5.1, 3.1, 3.8, 4.8,
4.0, 5.2, 4.3, 2.8, 2.0, 2.8, 3.3, 4.8, 5.0)
#A)
max(naft)-min(naft)
sd(naft)^2
sd(naft)

a <- max(naft)-min(naft)
k <- round(1+3.3*log10(length(naft)), digits = 0)
h <- a/k
brk <- seq(min(naft), max(naft), h)
naft_data <- table(cut(naft, breaks = brk))
naft_dt<- data.frame(naft_data,
                      naft_data/sum(naft_data),
                      cumsum(naft_data),
                      cumsum(naft_data/sum(naft_data)))
naft_dt$Var1 <- naft_dt$Var1.1 <- NULL


#12)
