load("air.RData")

air <- air |>
  group_by(source = level_1, pollutant) |>
  summarize(emissions = sum(emissions)) |>
  ungroup()

save(air, file = "7.RData")


