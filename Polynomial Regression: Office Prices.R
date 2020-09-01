# Enter your code here. Read input from STDIN. Print output to STDOUT

data <- suppressWarnings(read.table(file("stdin"), sep="",fill = TRUE,header=F))

train_vals <- data[1,2]
train <- data[c(2:(train_vals + 1)),]

test <- data[(train_vals + 3):nrow(data),-ncol(data)]

train_df <- data.frame(cbind(train[,ncol(train)],(poly(data.matrix(train[,-ncol(train)]), degree=3, raw=TRUE))))
test_df <- data.frame((poly(data.matrix(test), degree=3, raw=TRUE)))

model <- lm(V1 ~ .,data = train_df)

output <- predict(model,test_df, type = "response")

write.table(cat(format(round(output,2), nsmall=2), sep="\n"), sep = "", append=T, row.names = F, col.names = F)
