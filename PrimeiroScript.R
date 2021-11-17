age <- c(24, 23,22,28,35,21,23,33,34,24,21,25,36,26,22,30,32,25,26,33,34,21,31,25,31,26,25,35,33,31)
#ROL
sort(age)
#Amplitude total A
max(age) - min(age)
#Tabela de frequência simples Fi
table(age)
#Frequencia total Ft
margin.table(age); length(age)
#Table of frequency
      ## dplyr frequency table
      ##install.packages("plyr")
##SABER MAIS EM https://www.programmingr.com/statistics/frequency-table/
x <-count(age)
View(x)
barplot(x$freq, names.arg = x$x, main = "Frequency table of ages")
##Relative frequency table and plot
rf = (x$freq/sum(x$freq))*100
barplot(rf, names.arg = x$x, main = "Frequency table of age (percent)")

##Building a complete frequency table
data("mtcars")
factor(mtcars$cyl)
table(mtcars$cyl)
count(mtcars, 'cyl')
# how to make frequency table in r (nicer version)
#install.packages('epiDisplay')
#library(epiDisplay)
tab1(mtcars$cyl, sort.group = "creasing", cum.percent = TRUE)

##Voltando a table de freqêcia das idades
ageFrequency <- data.frame(table(age), count(age)$freq)
ageFrequency$count.age..freq <- NULL
head(ageFrequency)
brk <-seq(min(age), max(age), 1+3.3*log10(length(age)))
classes <-c("21-27", "27-32")

table(cut(age, breaks = brk, right=FALSE, labels=classes))
