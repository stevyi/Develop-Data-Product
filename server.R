# This is a processing unit that using shiny to read the input (and its changes) and generate the output required for a random distribution plot
# It has the capability to re-process according to the changes in the input data
library(shiny) 
library(ggplot2)
shinyServer(function(input, output) { 
#  Render plot
output$ggplotPlot <- renderPlot({ 
     ggplotCommand = sprintf("GP = ggplot(mpg, aes(x=%s, y=%s, colour=%s)) + facet_wrap(~%s) + geom_%s()", 
                              input$x, input$y, input$colour, input$facet_wrap, input$geom) 
     eval(parse(text=ggplotCommand)) 
     GP 
  }) 
#  Render text  
   output$ggplotCommand <- renderText({ 
     ggplotCommand = sprintf("GP = ggplot(mpg, aes(x=%s, y=%s, colour=%s)) + facet_wrap(~%s) + geom_%s()", 
                              input$x, input$y, input$colour, input$facet_wrap, input$geom)  
  }) 
 }) 
