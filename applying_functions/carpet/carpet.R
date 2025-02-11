calculate_growth_rate <- function(years, visitors) {

  visitors_difference <- visitors[length(visitors)] - visitors[1]
  years_difference <- years[length(years)] -years[1]

  growth_rate <- visitors_difference / years_difference

}

predict_visitors <- function(years, visitors, year) {
  
  growth_rate <- calculate_growth_rate(years, visitors)
  years_difference <- year - years[length(years)]

  prediction <- visitors[length(visitors)] + (growth_rate * years_difference)
}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
