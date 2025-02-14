# Time series data
# Visualize with geom_point


load("anita.RData")

ggplot(anita, aes(x = timestamp, y = wind)) +
  geom_line(
    linetype = 2,
    linewidth = 1
  ) +  # The order of the geom call influence if the layer is on front or in the back of another one
  geom_point(
    color = "deepskyblue4",
    size = 4
  ) +
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
