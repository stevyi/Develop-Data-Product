# User interface for the server to perform processing on the random distributions plot
library(shiny) 
library(ggplot2) 
shinyUI(pageWithSidebar( 
#
headerPanel("Presenting graph plotting using ggplot2"), 
# Function on a sidebar panel that use a slider input for few types of graph plotting 
sidebarPanel( 
selectInput("geom", "Select a graph types:", choices = c("point","line","bar","histogram","boxplot"), selected = "point" ), 
selectInput("x", "Choose x variable:", choices = colnames(mpg), selected = "cyl"), 
selectInput("y", "Choose y variable:", choices = colnames(mpg), selected = "disp"), 
selectInput("colour", "Select type :", choices = colnames(mpg), selected = "manufacturer" ), 
selectInput("facet_wrap", "Select facet wrap:", choices = colnames(mpg), selected = "hp" ) 
), 
# Function to present a graph plotting
mainPanel( 
plotOutput("ggplotPlot"), 
h3(textOutput("ggplotCommand")), 
p("Please refer to the documentation for the detailed information.",a("documentation.html",href="documentation.html")) 
) 
)) 
