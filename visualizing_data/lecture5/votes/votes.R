# Create a blank visualization

votes <- read.csv("votes.csv")

votes

# Draw the graph
    # ggplot => create the blank plot
    # aes (for aesthetic) use to change the aesthetic and map the columns to the axis
    # Scales: 
        # continuous: have limits
        # discretes (categorical)
plot <- ggplot(votes, aes(x = candidate, y = votes)) +
    geom_col(
        aes(fill = candidate),
        show.legend = FALSE  # Hide the legend of color's columns
        ) +  # define the type of visualization (columns)
    scale_fill_viridis_d() +  # modify the scale fill to other color
    scale_y_continuous(limits = c(0, 250)) +  # limit vector: c(start, ends)
    labs(   # Labelization of the graph
        x = "Candidate",
        y = "Votes",
        title = "Election Results"
    ) + 
    theme_classic()  # define the theme (global aestitics), by convention at the end

# saving the plot as a file
ggsave(
    "votes.png",
    plot = plot,
    width = 1200,
    height = 900,
    units = "px"
)