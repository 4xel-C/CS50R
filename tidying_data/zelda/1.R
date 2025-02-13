zelda <- read_csv("zelda.csv")

# Pivot the role and their names
zelda <- pivot_wider(
  zelda,
  id_cols = c(title, release),
  names_from = role,
  values_from = names
)

# split the year from system from the release column
zelda$year <- str_split(zelda$release, " - ", simplify = TRUE)[, 1]
zelda$system <- str_split(zelda$release, " - ", simplify = TRUE)[, 2]

# drop the release column and reorganize the columns
zelda <-zelda |>
  select(title, year, system, c(Directors:Artists))

colnames(zelda) <- tolower(colnames(zelda))

save(zelda, file = "zelda.RData")






