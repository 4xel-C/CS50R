load("zelda.RData")

zelda <- zelda[str_detect(zelda$producers, "Shigeru Miyamoto"), ] |>
  group_by(title) |>
  slice_min(year) |>
  arrange(year, title, system) |>
  ungroup()


save(zelda, file = "4.RData")
