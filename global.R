library(Quandl)
library(shiny)

#Quandl.api_key("3Yx61LxEaD3mn1piiz2g")

#homeValues <- Quandl("ZILL/Z03833_A")
homeValues <- read.csv("ZILL-Z03833_A.csv",head=TRUE,sep=",")
homeValues$Date <- as.Date(homeValues$Date)
homeValues$year <- format(homeValues$Date,'%Y')

yearPicklistValues <- unique(homeValues$year)
