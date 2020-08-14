# Enter your code here. Read input from STDIN. Print output to STDOUT
B <- read.table(file("stdin"), header=F, fill=T, sep="")
R<-B[1,1]
M<-B[1:R+1,1]
P<-B[1:R+1,2]
C<-B[1:R+1,3]

mp<-cor(M,P)
pc<-cor(P,C)
cm<-cor(C,M)
write(as.character(format(round(mp,2)),nsmall=2), stdout())
write(as.character(format(round(pc,2)),nsmall=2), stdout())
write(as.character(format(round(cm,2)),nsmall=2), stdout())
