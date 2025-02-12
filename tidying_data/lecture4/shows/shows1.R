# Tally votes for favorite shows

shows <- read.csv("shows.csv")

# str_trim supress the whitespace on the front or the back of the string
shows$show <- str_trim(shows$show) |>
  str_trim() |>

  # delete excess of whitespaces inside the string
  str_squish() |>

  # uppercase the first charcter of the string and lower the rest
  str_to_tittle()

# str_to_upper()  => capitalize each character of the string


# Get a true or false if a string contains the word "Avatar"
str_detect(shows$show, "Avatar")

shows$show[str_detect(shows$show, "Avatar")] <- "Avatar: The Last Airbender"

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))
