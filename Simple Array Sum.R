# Enter your code here. Read input from STDIN. Print output to STDOUT
T <- suppressWarnings(readLines(file("stdin")))
T <- strsplit(T, " ")
Ti <- as.numeric(T[[1]])
Tnew <- T[-1]
out <- sum(as.numeric(Tnew[[1]]))
write(as.character(out), stdout())
