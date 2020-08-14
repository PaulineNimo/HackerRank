# Enter your code here. Read input from STDIN. Print output to STDOUT

data <- suppressWarnings(read.table(file("stdin"), sep="",fill = TRUE,header=F,col.names = c(1:200)))

testcases <- data[1,1]

output_vec <- numeric()

students_vec <- c(0,cumsum(rep(7,testcases))) + 1

table_data <- data[-1,]

if(testcases > 0){
  for(i in 1:testcases){
    
    students <- table_data[students_vec[i],1]
    
    train_data <- data.frame(t(table_data[(students_vec[i] + 1):(students_vec[i + 1] - 1),c(1:students)]))
    
    output_vec[i] <- which.max(cor(train_data)[-1,1])
    
  }
  write.table(cat(format(round(output_vec,0), nsmall=0), sep="\n"), sep = "", append=T, row.names = F, col.names = F)
}
