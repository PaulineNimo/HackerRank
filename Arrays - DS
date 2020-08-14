# Enter your code here. Read input from STDIN. Print output to STDOUT
library(MASS)
library(utils)
D <- suppressWarnings(read.table(file("stdin"), header=F, fill=T, sep=" "))
#D<-read.table("table9.txt",sep=" ")
all <- D[1,1]
B <- D[2,]
rever <- rev(B)
write(cat(as.numeric(rever)), stdout())
