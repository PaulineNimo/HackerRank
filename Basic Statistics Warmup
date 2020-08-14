# Enter your code here. Read input from STDIN. Print output to STDOUT
B <- read.table(file("stdin"), header=F, fill=T, sep=" ")
M<-B[1,1]
B<-as.numeric(B[2,1:M])
Mu<-mean(B)
write(as.character(format(round(Mu,1)),nsmall=1), stdout())
Med<-median(B)
write(as.character(format(round(Med,1)),nsmall=1), stdout())
Mo<-names(sort(-table(B)))[1];Mo<-as.numeric(Mo)
write(as.character(format(round(Mo,1)),nsmall=1), stdout())
Q<-sd(B)*sqrt((M-1)/M)
write(as.character(format(round(Q,2)),nsmall=1), stdout())
V<-c(Mu-(1.96*(Q/sqrt(M))),Mu+(1.96*(Q/sqrt(M))))
write(as.character(format(round(V,1)),nsmall=1), stdout())

