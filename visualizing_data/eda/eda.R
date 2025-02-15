library("tidyverse")

df <- read_csv("netflix_titles.csv") |>
  select(
    -c(show_id, description)
  )


movies <- df[df$type == "Movie", ]

# remove the " min" of the column duration and convert to numeric
movies$duration <- as.numeric(str_remove(movies$duration, " min"))

# group by year and analyse the mean length of the films over the years

film_length <- movies |>
  group_by(release_year) |>
  summarize(duration_mean = round(mean(duration), 0)) |>
  arrange(release_year) |>
  filter(!is.na(duration_mean)) # Remove the Na values

# adding an over 2 hours column
film_length$long <- ifelse(film_length$duration_mean >= 120, TRUE, FALSE)


# plot a scatter plot
plot <- ggplot(film_length, aes(x = release_year, y = duration_mean)) +
  geom_line() +
  geom_point(
    aes(color = long),
    size = 0.8
  ) +
  scale_color_manual(
    values = c('TRUE' = 'brown1', 'FALSE' = 'deepskyblue'),
    labels = c('TRUE' = 'Over 120 minutes', 'FALSE' = 'Below 120 minutes')
  ) +
  labs(
    x = "Release year",
    y = "Mean duration (min)",
    title = "Mean duration of films over the years",
    color = "Duration"
  ) +
  geom_hline(
    linetype = 2,
    yintercept =120
  ) +
  theme_bw()


ggsave(
  "visualization.png",
  plot = plot,
  width = 2000,
  height = 1200,
  units = "px"
)


