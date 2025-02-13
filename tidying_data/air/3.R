load('air.RData')

# Get all the row containing Baker in county
air <- air[str_detect(air$county, "Baker"), ]

save(air, file = '3.RData')
