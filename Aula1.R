#Preminary concepts
## Raw data
age <- c(24,23,22,28,35,21,23,33,34,24,21,25,36,26,22,30,32,25,26,33,34,21,31,25,31,26,25,35,33,31)
## Rol
sort_age <- sort(age)
## Full range A
#a <- max(age)-min(age)
## Absolute simple frequency fi
frequency_age <-table(age)
###A bast way
#install.packages("plyr")
#library(plyr)
frequency_age <-count(age)
##Total frequency ft
ft <- sum(frequency_age$freq)
ft <- length(age)
##relative frequency f%
relative_frequency_age <- prop.table(frequency_age$freq)
relative_frequency_age <- frequency_age$freq/sum(frequency_age$freq)
##add Relative frequency in frequency_age dataFrame
#install.packages("tiddle")
#library(tiddle)
frequency_age$relative_frequency <- relative_frequency_age*100
##Add absolute accumulated frequency in dataframe
frequency_age$absolute_accumulated_frequency <- cumsum(frequency_age$freq)
##Add relative accumulated frequenci in dataframe
frequency_age$relative__accumulated_frequency <- cumsum(frequency_age$relative_frequency)



#Now we're going to create an grouped data frequency table
##First of all we gonna find how many classes our dataframe must have
##By the Sturges formula we have
a <- max(age)-min(age)
k <- 1 + 3.3*log10(length(age))
##With the range we have
h <- round(a/k, digits = 0)
##Create the breakes
brk <- seq(min(age), max(age), h)
##Just to look great
classes.names <- c("21-24", "24-27", "27-30", "30-33", "33-36")
age_data <- table(cut(age, breaks = brk))
age_dt <- data.frame(age_data,
                     age_data/sum(age_data),
                     cumsum(age_data),
                     cumsum(age_data/sum(age_data)))



#One more

time<-c(5.1,5.3,5.3,5.6,5.8,5.9,6,6.1,6.2,6.2,6.3,6.3,6.3,6.4,6.4,6.4,6.5,6.5,6.6,
         6.7,6.7,6.7,6.8,6.8,6.9,6.9,7,7.1,7.1,7.2,7.2,7.3,7.4,7.5,7.5,7.6,7.6,7.7,7.7,7.8,
         7.8,7.9,7.9,8,8,8.1,8.2,8.3,8.3,8.4,8.5,8.5,8.6,8.7,8.8,8.8,8.9,9,9.1,9.2,9.4,9.4,
         9.5,9.5,9.6,9.8,9.9,10.0,10.2,10.2,10.4,10.6,10.8,10.9,11.2,11.8,12.3,12.7,14.9)
a <- max(time)-min(time)
k <- round(1+3.3*log10(length(time)), digits = 0)
h <- a/k
brk <- seq(min(time), max(time), h)
time_data <- table(cut(time, breaks = brk))
time_dt <- data.frame(time_data,
                      time_data/sum(time_data),
                      cumsum(time_data),
                      cumsum(time_data/sum(time_data)))
time_dt$Var1 <- time_dt$Var1.1 <- NULL

#One more again #Is the bast one
factorTime <- factor(cut(time, breaks=nclass.Sturges(time)))
dataTime <- as.data.frame(table(factorTime))
dataTime <- transform(dataTime, cumFreq = cumsum(Freq), relative = prop.table(Freq))

#Last one
##install.packages("descr")
##library(descr)
freq(time, plot = FALSE)
freq(ordered(time), plot = FALSE)
