# ui.R

options <- list("Population" = 'population', "Votes" = 'votes', "Pop to Vote Ratio" = 'ratio')
shinyUI(fluidPage(
  mainPanel(
    # Add a selectInput (with a proper id) that allows you to select a variable to map
    selectInput('mapvar', label = "Variable to Map", choices = options),
    
    # Use plotlyOutput to show your map
    plotlyOutput('map')
  )
))