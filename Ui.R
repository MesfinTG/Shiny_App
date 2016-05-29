library(shiny)

# Using the 'USPersonalExpenditures' dataset in the R datasets

library(datasets)

# Starting line
shinyUI(fluidPage(    
                
                # Application title
                headerPanel("Personal Expenditures by Category in the US"),
                
                #  Define sidebar 
                sidebarLayout(      
                sidebarPanel(
                    # category selection
                                selectInput("category", "Select A Category:", 
                                            choices=colnames(t(USPersonalExpenditure))),
                                
                                hr(),                        
                 helpText("Original Data from Tukey (1977), Exploratory Data Analysis, Addison-Wesley")
                        ),
                        
                        # The plot created in server.R is displayed
                        mainPanel(
                                plotOutput("expensePlot")  
                        )
                        
                )
        )
)
