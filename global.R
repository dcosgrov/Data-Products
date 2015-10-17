library(Quandl)
library(shiny)

homeValues <- read.csv("ZILL-Z03833_A.csv",head=TRUE,sep=",")
homeValues$Date <- as.Date(homeValues$Date)
homeValues$year <- format(homeValues$Date,'%Y')

yearPicklistValues <- unique(homeValues$year)
