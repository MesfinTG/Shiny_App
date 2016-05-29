# load the datset and tranpose data before calling shiny
library(shiny)
library(datasets)

expense  <-  t(USPersonalExpenditure)

# Include starting line of server.R 
shinyServer(function(input, output) {
        
        
        #Plot generation where the data is visualised
        output$expensePlot <- renderPlot({
                
                # Render a barplot
                barplot(expense[,input$category], 
                        main=input$category, 
                        col="lightcyan",
                        ylab="Billions of dollars",
                        xlab="Year")
        })
})
