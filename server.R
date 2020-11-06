#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(shiny)
library(ggplot2)
library(dplyr)

shinyServer(function(input, output) {
    output$distPlot <- renderPlot({
        mtcars$cyl <- as.factor(mtcars$cyl)
        data.cars <- filter(mtcars, grepl(input$wt, wt), grepl(input$cyl, cyl), grepl(input$am, am))
        
        fit <- lm( mpg~hp, data.cars)
        
        pred <- predict(fit, newdata = data.frame(am = input$pigs,
                                                  hp = input$crows,
                                                  cyl = input$elevation,
                                                  wt = input$Auto))
        
        plot <- ggplot(data=data.cars, aes(x=hp, y = mpg))+
            geom_point(aes(color = cyl), alpha = 0.9)+
            geom_smooth(method = "lm")+
            geom_vline(xintercept = input$crows, color = "green")+
            geom_hline(yintercept = pred, color = "red")
        plot
    })
    output$result <- renderText({
        mtcars$cyl <- as.factor(mtcars$cyl)
        data.cars <- filter(mtcars, grepl(input$Auto, wt), grepl(input$elevation, cyl), grepl(input$pigs, am))
        fit <- lm( mpg~hp, data.cars)
        pred <- predict(fit, newdata = data.frame(am = input$pigs,
                                                  hp = input$crows,
                                                  cyl = input$elevation,
                                                  wt = input$Auto))
        res <- paste(round(pred, digits = 2))
        res
    })
    
})