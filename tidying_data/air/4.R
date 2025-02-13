load('air.RData')

air <- air|>
  filter(str_detect(county, "Baker")) |>
  arrange(desc(emissions))

save(air, file = "4.RData")
