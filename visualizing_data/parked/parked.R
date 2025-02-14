library("tidyverse")

lyrics <- read_file("lyrics/beatles.txt")


# split by whitespace and return character
lyrics <- str_split_1(lyrics, "[[:space:]]") |>

  # Remove the punctuation
  str_replace_all("[[:punct:]]", "") |>

  # Delete the empty values and uniformize the format to lowercap
  tolower() |>

  # Transorm the vector into a dataframe
  data.frame() |>
  setNames("word") |>

  # get rid of the empty values
  filter(word != "") |>

  # Group by word and summarize the count
  group_by(word) |>
  summarize(count = n()) |>
  filter(count > 1)


plot <- ggplot(lyrics, aes(x = reorder(word, -count), y = count)) +
  geom_col(
    aes(fill = count),
    show.legend = FALSE,
    width = 0.8
    ) +
  labs(
    x = "Words",
    y = "Count",
    title = "Count of words"
  ) +
  theme(
    axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1)
  )

ggsave(
  "lyrics.png",
  plot = plot,
  width = 1200,
  height = 900,
  units = "px"
)

# check the tibble
lyrics
