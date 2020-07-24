setwd("E:/HackerRank")

library(MASS)
#Linear Model Prices
D<-read.table("table2.txt",sep=" ")
#D <- read.table(file("stdin"), header=F, fill=T, sep=" ")
G <- D[1,1]
N <- D[1,2]
S <- D[N+2,1]
train=D[1:N+1,1:G]
model <- lm(D[1:N+1,G+1]~.,data=train)
A<-N+S+2
table = D[N+3:A,1:G];test = table[1:S,]
P <- predict(model,newdata = test,type="response")
write(as.character(round(P,2)), stdout())

#Polynomial Model Prices
D<-read.table("table2.txt",sep=" ")
#D <- read.table(file("stdin"), header=F, fill=T, sep=" ")
G <- D[1,1]
N <- D[1,2]
S <- D[N+2,1]
train=D[1:N+1,1:G]
poly.model <- glm(D[1:N+1,G+1]~.^2,data=train)
poly.model2 <- stepAIC(poly.model,~.^2,trace = FALSE)
A<-N+S+2
table = D[N+3:A,1:G];test = table[1:S,]
P <- predict(poly.model2,newdata = test,type="response")
write(as.character(round(P,2)), stdout())

summary(poly.model)
summary(poly.model2)

write.table(format(round(P,2),nsmall=2),append=TRUE,row.names = FALSE,col.names = FALSE)
df<-data.frame(X=4)
T = 3.5

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


B<-read.table("table3.txt",sep=" ")
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
V<-as.vector(V)
write(as.character(format(round(V,1)),nsmall=1), stdout())




B <- read.table(file("stdin"), header=F, fill=T, sep="")
mean(B[2,])

B<-read.table("table4.txt",sep="")
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


# Enter your code here. Read input from STDIN. Print output to STDOUT
a<-pnorm(80,70,10,lower.tail=FALSE)*100
b<-pnorm(60,70,10,lower.tail=FALSE)*100
c<-pnorm(60,70,10)*100

write(as.character(format(round(a,2)),nsmall=2), stdout())
write(as.character(format(round(b,2)),nsmall=2), stdout())
write(as.character(format(round(c,2)),nsmall=2), stdout())

# Enter your code here. Read input from STDIN. Print output to STDOUT
a<-pbinom(2,4,0.8,lower.tail = FALSE)
b<-pbinom(1,4,0.8)
write(as.character(format(round(a,3)),nsmall=3), stdout())
write(as.character(format(round(b,3)),nsmall=3), stdout())


#Binom2
p<-1.09/2.09
a<-pbinom(3,6,p,lower.tail = FALSE)
write(as.character(format(round(a,3)),nsmall=3), stdout())

#Binom3
a<-pbinom(2,10,0.12)
b<-pbinom(1,10,0.12,lower.tail = FALSE)
write(as.character(format(round(a,3)),nsmall=3), stdout())
write(as.character(format(round(b,3)),nsmall=3), stdout())

library(car)
scatter3d(iris$Petal.Width~iris$Petal.Length+iris$Sepal.Length|iris$Species,data=iris,fit="linear",residuals=TRUE,parallel=FALSE,bg="black",axis.scales=TRUE, grid=TRUE,ellipsoid=FALSE)
scatter3d(iris$Petal.Width~iris$Petal.Length+iris$Sepal.Length|iris$Species,data=iris,fit="linear",residuals=TRUE,parallel=FALSE,bg="black",axis.scales=TRUE, grid=TRUE,ellipsoid=FALSE)

B<-read.table("table5.txt",sep="")
N<-B[1,1]

B <- read.table(file("stdin"), header=F, fill=T, sep="")
B<-read.table("table6.txt",sep=" ")
N<-B[1,1]
#Polynomial
D<-read.table("table2.txt",sep=" ")
#D <- read.table(file("stdin"), header=F, fill=T, sep=" ")
G <- D[1,1]
N <- D[1,2]
S <- D[N+2,1]
train <- D[1:N+1,1:G]
train.new <- train
train.new$V3 <- train$V1^2
train.new$V4 <- train$V1^3
train.new$V5 <- train$V2^2
train.new$V6 <- train$V2^3


model <- lm(D[1:N+1,G+1]~.,data=train.new)
A<-N+S+2
table <- D[N+3:A,1:G];test <- table[1:S,]
test.new <- test
test.new$V3 <- test$V1^2
test.new$V4 <- test$V1^3
test.new$V5 <- test$V2^2
test.new$V6 <- test$V2^3
P <- predict(model,newdata = test.new,type="response")
write(as.character(round(P,2)), stdout())

#Passenger traffic
library(forecast)
D<-read.table("table7.txt",sep=" ")
D[,1]<-as.character(D[,1])
M<-D[1,1];M<-as.numeric(M)
Series<-D[-1,2]
plot.ts(Series)
Time.Series<-ts(Series)
month.arima<-arima(Series, order=c(1,0,0))
fore<- forecast.Arima(month.arima, h=12)
plot(fore)

#Algorithms
#D <- suppressWarnings(read.table(file("stdin"), header=F, fill=T, sep=" "))
D<-data.frame(c(5,3),c(6,6),c(7,10))
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

D <- "07:05:45PM"
strptime("April 21 2016 09:50:49 PM", "%B %d %Y %I:%M:%S %p")

strptime(D,"%I:%M:%S %p")
#if(D[])

c <- 2^9.91	
c <- round(c)
write(as.numeric(c), stdout())

b <- log2(170)
b <- round(b,2)
write(as.numeric(b), stdout())

Y <- read.table(file("stdin"), header=F, fill=T, sep=" ")
Y <- readLines(file("stdin"),n=2)
N <- Y[1,1]
X <- Y[2,1:N]
M <- mean(X)
Med <- median(X)
getmode <- function(X) {
	uniqv <- unique(X)
	uniqv[which.max(tabulate(match(X, uniqv)))]
}
Mo <- getmode(X)
write(as.numeric(round(M,1)), stdout())
write(as.numeric(round(Med,1)), stdout())
write(as.numeric(Mo), stdout())

vec <- 1:25
mat <- matrix(NA, nrow = 5, ncol = 5)
mat[1,1] <- vec[1]
len <- 1
vec2 <- vec
for(i in 2:nrow(mat)){
  vec2 <- vec2[-(1:len)]
  mat[1:(i-1),i] <- vec2[1:(i-1)]
  vec2 <- vec2[-(1:(i-1))]
  mat[i,1:i] <- rev(vec2[1:i])
  len <- i
}

numbersSquare <- function(n, s) {
  # Write your code here
  start <- s
  end <- s + n^2 - 1
  vec <- start:end
  mat <- data.frame(matrix(NA, nrow = n, ncol = n))
  mat[1,1] <- vec[1]
  len <- 1
  vec2 <- vec
  for(i in 2:nrow(mat)){
    vec2 <- vec2[-(1:len)]
    mat[1:(i-1),i] <- vec2[1:(i-1)]
    vec2 <- vec2[-(1:(i-1))]
    mat[i,1:i] <- rev(vec2[1:i])
    len <- i
  }
  #writeLines(mat, con = stdout(), sep = "\n", useBytes = FALSE)
  #result <- write(mat, stdout())
  write.table(mat,row.names = F, col.names = F)
}


