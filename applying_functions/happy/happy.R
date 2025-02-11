# Get all the csv files
file_names = list.files(pattern = "\\.csv")


# Prompt user for country name
country <- readline("Country: ")

# for each year files in the current working directory, get the calculations
for (file in file_names) {
  year <- substr(file, 1, nchar(file) - 4)
  df <- read.csv(file)

  # If no country found in the file, print data unavailable
  if (!country %in% df$country) {
    cat(paste0(country, "(", year, "): data unavailable\n"))
  } else {

    # get the calculation for the desired country
    df_filtered <-df[df$country == country, ]
    score <- round(apply(df_filtered[, -1], MARGIN = 1, FUN = sum), 2)

    # print the result
    cat(paste0(country, "(", year, "): ", score, "\n"))
  }

}


