# Time series data
# Visualize with geom_point


load("anita.RData")

anita$color <- ifelse(anita$wind > 65, "red", "green") 

ggplot(anita, aes(x = timestamp, y = wind)) +
  geom_line(
    linetype = 2,
    linewidth = 1
  ) +  # The order of the geom call influence if the layer is on front or in the back of another one
  geom_point(
    aes(color = color),  # Add a color depending of the category color of the data points
    show.legend = FALSE, # Hide the corresponding legend
    size = 4
  ) +
  scale_color_identity() +  # Change the scale "color" to match the color in the dataframe
  geom_hline( # Add an horizontal line layer
    linetype = 1,
    yintercept = 65   # interception of the y axis
  ) +  
  labs(
    x = "Date",
    y = "Wind Speed (Knots)",
    title = "Hurricane Anita"
  ) + 
  theme_classic()

anita

