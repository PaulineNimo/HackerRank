# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- read.table("stdin",sep = "",comment.char = "",stringsAsFactors = F)
#data <- suppressWarnings(readLines(file("stdin")))

no_row <- as.numeric(data[1,1])
if(no_row >= 3 & no_row < 100){
  which_row_p <- numeric()
  which_col_p <- numeric()
  
  which_row_m <- numeric()
  which_col_m <- numeric()
  
  ###check positions
  if(no_row > 0){
    for(i in 2:(no_row+1)){
      row_p <- unlist(strsplit(data[i,],split = ""))
      check_p <- which(row_p %in% "p")
      if(length(check_p) > 0){
        which_col_p <- check_p
        which_row_p <- i - 1
      }
      row_m <- unlist(strsplit(data[i,],split = ""))
      check_m <- which(row_m %in% "m")
      if(length(check_m) > 0){
        which_col_m <- check_m
        which_row_m <- i - 1
      }
    }
  }
    
  ###get moves to make
  moves_right <- character()
  moves_left <- character()
  moves_down <- character()
  moves_up <- character()
  if(length(which_col_p) > 0 & length(which_row_p) > 0 & length(which_col_m) > 0 & length(which_row_m) > 0){
    ###if m is to the left of p
    while (which_col_m < which_col_p) {
      ##add a values
      moves_right <- c(moves_right,"RIGHT")
      ##add 1
      which_col_m <- which_col_m + 1
    }
    ###if m is to the right of p
    while (which_col_m > which_col_p) {
      ##add a values
      moves_left <- c(moves_left,"LEFT")
      ##subtract 1
      which_col_m <- which_col_m - 1
    }
    ###if m is higher than p
    while (which_row_m < which_row_p) {
      ##add a values
      moves_down <- c(moves_down,"DOWN")
      ##add 1
      which_row_m <- which_row_m + 1
    }
    ###if m is lower than p
    while (which_row_m > which_row_p) {
      ##add a values
      moves_up <- c(moves_up,"UP")
      ##subtract 1
      which_row_m <- which_row_m - 1
    }
  }
  ###combine all
  
  moves <- c()
  max_length <- max(lengths(moves_left),length(moves_right),length(moves_up),length(moves_down))
  
  for(i in 1:max_length){
    moves <- c(moves,moves_left[i],moves_right[i],moves_up[i],moves_down[i])
  }
  moves_real <- moves[!is.na(moves)]
  ###only print if there are values
  if(length(moves) > 0){
    write.table(cat(format(moves_real, nsmall=1), sep="\n"), sep = "", append=T, row.names = F, col.names = F)
  }
}
