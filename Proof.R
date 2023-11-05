library(tidyverse)
library(dplyr)



x <- 1123


x <- sample(1000:9999, 1)


repeat{

x <- as.numeric(strsplit(as.character(x), "")[[1]])

x <- as.numeric(paste0(x[order(x, decreasing = TRUE)], collapse = "")) - as.numeric(paste0(x[order(x)], collapse = ""))

print(x)


if(x == 6174) {break
  
  print(x)
}

}
