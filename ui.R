# User interface for the server to perform processing on the random distributions plot
library(shiny) 
library(ggplot2) 
shinyUI(pageWithSidebar( 
#
headerPanel("Presenting graph plotting using ggplot2"), 
# Function on a sidebar panel that use a slider input for few types of graph plotting 
sidebarPanel( 
selectInput("geom", "Select a graph types:", choices = c("point", "line", "boxplot"), selected = "point" ), 
selectInput("x", "Choose x value:", choices = colnames(mpg), selected = "cyl"), 
selectInput("y", "Choose y value:", choices = colnames(mpg), selected = "hwy"), 
selectInput("colour", "Choose colour of the graph:", choices = colnames(mpg), selected = "manufacturer" ), 
selectInput("facet_wrap", "Choose facet_wrap:", choices = colnames(mpg), selected = "trans" ) 
), 
# Function to present a graph plotting
mainPanel( 
plotOutput("ggplotPlot"), 
h3(textOutput("ggplotCommand")), 
p("Please refer to the documentation for the detailed information.",a("documentation.html",href="documentation.html")) 
) 
)) 
