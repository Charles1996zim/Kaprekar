library(tidyverse)
library(dplyr)

x <- 7777

repeat{


  # CONDITION THAT DOES NOT ALLOW A NUMBER WITH 4 OF THE SAME DIGITS
  
  repeat{
  
          x <- sample(1000:9999, 1)
          
          t <- strsplit(as.character(x), "")[[1]]
          
          if(!all(sapply(list(t[1],t[2],t[3],t[4]), function(x) x == t[4]))){
            
            print(paste0("Start:", x))
            break
          }
          
}
  # THE ACTUAL CALCULATIONS
  
          repeat{
          
          x <- strsplit(as.character(x), "")[[1]]
          
          x <- as.numeric(paste0(x[order(x, decreasing = TRUE)], collapse = "")) - as.numeric(paste0(x[order(x)], collapse = ""))
          
          if(nchar(x) == 3){
            x <- paste0(0, x)
          }
          
          
          print(x)
          
  # THIS IS THE BREAK CLAUSE THAT WILL STOP THE CALC IF 6174 IS REACHED
          
                  if(x == 6174) {
                    print(paste0("Done:", x))
                    break 
  }

}

}
 