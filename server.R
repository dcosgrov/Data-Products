library(ggplot2)

shinyServer(function(input,output) {
    
    output$plot <- renderPlot({
        
        # only include years selected by the user
        if( input$beginYear <= input$endYear)
        {
            valuesToPlot <- subset(homeValues,
                               year>=input$beginYear & year <=input$endYear)
        }
        else  # default if user screws up input
        {
            valuesToPlot <- subset(homeValues,
                                   year>=2010 & year <=2015)
        }
        
        # divide real estate prices by $1k to simplify y axis values
        p <- qplot(Date,
                   Value/1000,
                   data=valuesToPlot, 
                   xlab="Date",
                   ylab="Home Values (Thousands of US Dollars $)")
        
        # Determine if optional regression line should be shown
        if( input$regressionCheckbox[1]=="TRUE")
        {
            p + stat_smooth()
        }
        else
        {
            p
        }
        
    })
    
})