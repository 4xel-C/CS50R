load("zelda.RData")

zelda <-zelda |>
  group_by(title) |>
  slice_min(year) |>
  filter(str_detect(producers, ", ")) |>
  arrange(year, title, system)


save(zelda, file = "5.RData")
