# Enter your code here. Read input from STDIN. Print output to STDOUT

library(stringr)
library(dplyr)

data <- suppressWarnings(readLines(file("stdin")))

all_strings <- trimws(unlist(strsplit(data,"[.]")))

all_three_words <- character()

for(i in 1:length(all_strings)){
  no_words <- length(unlist(str_split(all_strings[i],"\\s")))
  no_three_words <- no_words - 3 + 1
  
  cur_string <- all_strings[i]
  
  for(j in 1:no_three_words){
    words <- str_extract(cur_string,"\\w+\\s+\\w+\\s+\\w+")
    
    all_three_words <- c(all_three_words,words)
    cur_string <- sub(".*?\\s","",cur_string)
  }
  
}

all_three_words <- tolower(all_three_words)

uniq_words <- data.frame(unique(all_three_words))
colnames(uniq_words)[1] = "Phrases"

freqs <- data.frame(table(all_three_words))
colnames(freqs)[1] = "Phrases"

output_df <- left_join(uniq_words,freqs,by="Phrases")

output <- output_df[which.max(output_df[,2]),1]

write.table(cat(format(output, nsmall=2), sep="\n"), sep = "", append=T, row.names = F, col.names = F)
