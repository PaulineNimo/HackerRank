# Enter your code here. Read input from STDIN. Print output to STDOUT
D <- suppressWarnings(read.table(file("stdin"), header=F, fill=T, sep=" "))
Q <- D[1,]
R <- D[2,]	
A <- 0
B <- 0
for(i in 1:3){
	if(Q[i]>R[i]){
		A <- A+1
	}
	if(Q[i]<R[i]){
		B <- B+1
	}
}
C<-c(A,B)
write(as.numeric(C), stdout())
