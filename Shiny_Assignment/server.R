library(shiny)

shinyServer(function(input, output) {
   
    model<-lm(dist~speed, data=cars)
    
    modelpred<-reactive({
            speedInput <-input$sliderSpeed
            predict(model, newdata=data.frame(speed=speedInput))
    })
    
    output$plot<-renderPlot({
            speedInput<-input$sliderSpeed
            
            plot(cars$speed, cars$dist ,xlab="Speed in mph", ylab="Stopping distance in ft", 
                 xlim=c(0,25),ylim=c(0,120))
            if (input$showModel){
                    abline(model,col="red",lwd=2)
            }
    })
    
    output$pred<-renderText({
            modelpred()
    })
  })
  

