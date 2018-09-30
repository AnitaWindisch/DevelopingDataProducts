library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Predicting stopping distance from speed!"),
  
  sidebarLayout(
    sidebarPanel(
       sliderInput("sliderSpeed", "What is the speed of the car?", min = 4, max = 25, value = 10),
       checkboxInput("showModel", "Show/Hide Model", value=TRUE)
      
),
    
    mainPanel(
       plotOutput("plot"),
       h3("Predicting stopping distance from Model:"),
       textOutput("pred")
    )
  )
))
