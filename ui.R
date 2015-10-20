library(Quandl)
library(shiny)
library(markdown)

shinyUI(fluidPage(
    
    titlePanel("Housing Price Analyzer for Exeter, NH (ZipCode: 03833)"),
    
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
                tabsetPanel(
                    tabPanel("Plot", plotOutput("plot")),
                    tabPanel("Documentation", 
                             helpText("This application is useful for visualizing ",
                                      "average real estate prices for a specific ",
                                      "zip code over time."),
                             helpText("To use this application first select your ",
                                      "desired <Begin Year> and <End Year> to filter ",
                                      "the data used by the chart."),
                             
                             helpText("An optional regression line can be chosen ",
                                      "to better visualize how values trended ",
                                      "over time."),
                             
                             helpText("NOTE: This application represents a prototype ",
                                      "that could be generalized to support ",
                                      "multiple zip codes dynamically. ",
                                      "Zip Code 03833 was merely chosen for ",
                                      "prototyping purposes."
                                      ))
                )
            )
    )
)
)


