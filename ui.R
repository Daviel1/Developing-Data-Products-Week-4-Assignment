#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Let's predict murder arrest rates from urban population percentage"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
            sliderInput("sliderurbanpop", "Slide the below slider to determine the urban population percentage?", 0, 100, value = 50),
            checkboxInput("showmodel1", "Show/Hide Model 1", value = TRUE)
    ),
    mainPanel(
            plotOutput("plot1"),
            h3("Predicted Murder Arrests Rate from Model 1"),
            textOutput("pred1")
    )
  )
))       
            
            
            