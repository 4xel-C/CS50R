air <- read_csv("air.csv") |>
  select(
    c('State', 'State-County', 'POLLUTANT', 'Emissions (Tons)', 'SCC LEVEL 1', 'SCC LEVEL 2', 'SCC LEVEL 3', 'SCC LEVEL 4')
    ) |>
  set_names(c('state', 'county', 'pollutant', 'emissions', 'level_1', 'level_2', 'level_3', 'level_4'))

save(air, file = 'air.RData')
View(air)
