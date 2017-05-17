#INFO 201 M18 Exercise 5 UI

#Require shiny
library(shiny)

#Here you will define the functionality of your user interface
shinyUI(fluidPage(
  
  # Add a descriptive application title
  titlePanel("Womens Role"),
  
  # Here you will add the interactivity to your app
  # Create a selectInput where the user can select either Men, Women, or Both. 
  # Create a selectInput where the user can select if they Agree or Disagree.

  # Look at the Shiny documentation for selectInput and sliderInput syntax
  # inputIDs's have been provided
  sidebarLayout(
    sidebarPanel(
      #selectInput for Men, Women, or Both
      selectInput('sex', label = 'Sex', choices = c("Men", "Women", "Both"), selected = "Both"),
      #inputID = sex
      
      
      #selectInput for Agree or Disagree
      selectInput('thoughts', label = 'Thoughts', choices = c("Agree", "Disagree"), selected = "Agree")
      #inputID = thoughts
      
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      #give your plot a descriptive name
       plotOutput("womenroleplot")
    )
  )
))
