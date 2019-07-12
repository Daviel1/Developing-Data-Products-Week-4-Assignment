#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  model1 <- lm(Murder ~ UrbanPop, data = USArrests)
  
  model1pred <- reactive({
          urbanpopinput <- input$sliderurbanpop
          predict(model1, newdata = data.frame(UrbanPop = urbanpopinput))
  })
 
 output$plot1 <- renderPlot({
         urbanpopinput <- input$sliderurbanpop
         
         plot(USArrests$UrbanPop, USArrests$Murder, xlab = "Urban Population (%)",
ylab = "Murder Arrests (per 100,000 people)", bty = "n", pch = 16, xlim = c(0,100), ylim = c(0,20))
         if(input$showmodel1){
                 abline(model1, col = "blue", lwd = 2)
         }
         legend(5, 15, "Model 1 Prediction", pch = 16, col = "blue", bty = "n")
         points(urbanpopinput, model1pred(), col = "blue", pch = 16, cex = 3)
 })
  
 output$pred1 <- renderText({
         model1pred()
 })
})
 