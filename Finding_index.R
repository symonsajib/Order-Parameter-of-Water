library(tidyverse)
setwd("C:/Users/Symon/Desktop/Order_Parameter/NACL06")
dt <- read_csv("last2.csv")


find_oxygens <- function(initial_z, end_z){
  oxygens <- dt %>% filter(dt$elelment == 'O' & dt$z >= initial_z & dt$z < end_z) %>% select(index) %>% pull()
}


index1 <- find_oxygens(3.4, 5.4)
index2 <- find_oxygens(5.4, 6.4)
index3 <- find_oxygens(6.4, 7.4)
index4 <- find_oxygens(7.4, 8.4)
index5 <- find_oxygens(8.4, 9.4)
index6 <- find_oxygens(9.4, 10.4)


all_index <- function(I, number){
  empty1 <- c()
  for (i in I){
    x  <- c(i-1 , i, i+1)
    empty1 <- c(empty1, x)
  }
  matrix1 <- matrix(empty1, nrow=3)
  df1 <- as.data.frame(t(matrix1))
  csvFileName <- paste("index",number,".csv")
  write.table(df1, csvFileName, row.names =  FALSE, col.names =  FALSE, sep = ", ")
}
  
all_index(index1, 1)
all_index(index2, 2)
all_index(index3, 3)
all_index(index4, 4)
all_index(index5, 5)
all_index(index6, 6)

