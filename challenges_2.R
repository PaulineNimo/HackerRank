setwd("E:/HackerRank")

library(MASS)
library(utils)
#D <- read.table(file("stdin"), header=F, fill=T, sep=" ")
D<-suppressWarnings(read.table("table9.txt",sep=" "))
all <- D[1,1]
B <- D[2,]
rever <- rev(B)
#write.table(as.numeric(rever))
write(cat(as.numeric(rever)), stdout())
