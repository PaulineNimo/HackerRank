# Enter your code here. Read input from STDIN. Print output to STDOUT
D<-read.table("trainingdata.txt",sep=",")
D<-subset(D,D[,2]<8)
Y<-D[,2];X<-D[,1]
model2<-lm(Y~X)


T <- readLines(file("stdin"))
df <- data.frame(X = as.numeric(T)) 

if(df>=4){
  P <- 8
} else{
  P<-predict(model2,newdata = df,type="response")
}

write(as.character(format(round(P,2)),nsmall=2), stdout())
