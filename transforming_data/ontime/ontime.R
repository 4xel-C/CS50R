# load the csv files
bus <-read.csv("bus.csv")
rail <-read.csv("rail.csv")

# Merge the two dataframes together so there is 1 df to check on
df <- rbind(bus, rail)

# all possible routes:
possible_routes <- unique(df$route)

# Calculate the reliability in percentage
df$reliability <- df$numerator / df$denominator

route <- readline("Route: ")

if(route %in% possible_routes) {

  # Get the routes filter
  filter_route <- df$route == route
  filter_peak <- df$peak == "PEAK"

  # Get the data frame filtered for peak and off_peak
  df_peak_filtered <- df[filter_route&filter_peak, ]
  df_offpeak_filtered <- df[filter_route&!filter_peak, ]

  mean_peak <- round(mean(df_peak_filtered$reliability), 2) * 100
  mean_offpeak <- round(mean(df_offpeak_filtered$reliability), 2)* 100

  print(paste0("On time ", mean_peak, "% of the time during peak hours."))
  print(paste0("On time ", mean_offpeak, "% of the time during off-peak hours."))

} else {

  print("Invalid route! Please enter a valid one!")

}