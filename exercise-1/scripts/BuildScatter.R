# Function to build a scatterplot

# Write your function to parameterize the following variables:
#   - Data to use
#   - Variable for the x axis
#   - Variable for the y axis
#   - Variable for the color
#   - Title of the plot (set a default of "Title")
#   - Label for the x axis (set a default of "X Title")
#   - Label for the y axis (set a default of "Y Title")

library(plotly)

BuildPlot <- function(df, my_x, my_y, my_title = "Title", my_xaxis = "X Title", my_yaxis = "Y Title") {
  p <- ggplot(data = df) +
        geom_point(mapping = aes(x = df[,my_x], y = df[,my_y])) + 
        labs(title = my_title, x = my_xaxis, y = my_yaxis)
  return (p)
}


plot <- BuildPlot(mtcars, 'cyl', 'wt')


