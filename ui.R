
library(shiny)

shinyUI(fluidPage(
    
    
    titlePanel("Predicting whatever idk"),
    
    
    sidebarLayout(
        sidebarPanel(
            helpText("Enter anything you want"),
            h3(helpText("Choose-")),
            numericInput("crows", label = h4("piglets"), 
                         min = 50, max = 350, step = 5, value = 52),
            selectInput("elevation", label = h4("Far horizons"), 
                        choices = list("Unknown" = "*", "4" = "4", "6" = "6",
                                       "8" = "8")),
            numericInput("Auto", label = h4("Weight (1000 lbs)"), 
                         min = 1, max = 6, step = 0.1, value = 3),
            selectInput("pigs", label = h4("Traces"), 
                        choices = list( "automatic" = "0", "manual" = "1" ))
        ),
        
        
        mainPanel(
            plotOutput("distPlot"),
            h4("The whatever thing is:"),
            h3(textOutput("result"))
        )
    )))