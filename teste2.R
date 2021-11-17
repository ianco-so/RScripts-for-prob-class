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