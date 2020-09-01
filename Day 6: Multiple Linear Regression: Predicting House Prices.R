# Enter your code here. Read input from STDIN. Print output to STDOUT

data <- suppressWarnings(read.table(file("stdin"), sep="",fill = TRUE,header=F))

train_vals <- data[1,2]
train <- data[c(2:(train_vals + 1)),]

test <- data[(train_vals + 3):nrow(data),]

model <- lm(train[,ncol(train)] ~ ., data = train[,-ncol(train)])
#summary(model)

output <- predict(model, test, type = "response")

write.table(cat(format(round(output,2), nsmall=2), sep="\n"), sep = "", append=T, row.names = F, col.names = F)
