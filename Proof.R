library(tidyverse)
library(dplyr)
library(ggplot2)

dat <- c()

for(i in 1000:9999){
  
  x <- i
  
  t <- strsplit(as.character(x), "")[[1]]
  
  
  # CONDITION THAT DOES NOT ALLOW A NUMBER WITH 4 OF THE SAME DIGITS - IT WILL SKIP TO THE NEXT NUMBER
  
  
  if(all(sapply(list(t[1],t[2],t[3],t[4]), function(x) x == t[4]))){
    
    next
    
  }
  
  
  print(paste0("Start:", x))

  # THE ACTUAL CALCULATIONS
  
  counter <- 0
  
          repeat{
          
          x <- strsplit(as.character(x), "")[[1]]
          
          x <- as.numeric(paste0(x[order(x, decreasing = TRUE)], collapse = "")) - as.numeric(paste0(x[order(x)], collapse = ""))
          
          counter <- counter + 1
          
          if(nchar(x) == 3){
            x <- paste0(0, x)
          }
          
          print(x)
          
  # THIS IS THE BREAK CLAUSE THAT WILL STOP THE CALC IF 6174 IS REACHED
          
                  if(x == 6174) {
                    print(paste0("Done:", x, " it ran: ", counter))
                    
                    dat[i] <- counter
                    
                    break 
  }

}

}


# GRAPH THE OUTPUT OF ITERATIONS TO REACH THE NUMBER OF 6174 PER NUMBER

dat1 <-
dat %>% as.data.frame() %>% mutate(number = row_number()) %>% na.omit() %>% as_tibble()

names(dat1) <- c("times", "number")


dat1 %>% ggplot(aes(number, times)) + geom_col()
 