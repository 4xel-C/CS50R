# Create a data frame

spacecraft <- data.frame(
  # row.names = c("Voyager 1", "Voyager 2", "Pioneer 10")
  #   => will swap the default index by this labels.
  name = c("Voyager 1", "Voyager 2", "Pioneer 10"),
  distance = c(163, 136, 80)
)

View(spacecraft)

spacecraft$name
spacecraft$distance

# subset of datafram
spacecraft[1]

# This three lines below are equivalent and give a vector of the first column
spacecraft[[1]]
spacecraft[, 1]
spacecraft$name

# get access to the first row
spacecraft[1, ]
