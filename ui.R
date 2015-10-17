library(Quandl)
library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Average Home Price for Zip Code 03833 Over Time"),
    
    sidebarLayout(
        sidebarPanel(
            selectInput("beginYear",
                        label=h4("Begin Year"),
                        choices=yearPicklistValues,
                        selected=c(2010)
                        ),
            selectInput("endYear",
                        label=h4("End Year"),
                        choices=yearPicklistValues,
                        selected=c(2015)
                        ),
            # Copy the line below to make a checkbox
            checkboxInput("regressionCheckbox",
                          label = "Include Regression Line",
                          value = FALSE)
        ),
        
        mainPanel(
            plotOutput("plot")
        )
    )
))
