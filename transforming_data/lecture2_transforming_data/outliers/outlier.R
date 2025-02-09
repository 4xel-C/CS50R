# load temporary data
load("temps.RData")
View(temps)

# get the mean
mean(temps)

# get the outliers from their index
temps[c(2, 4, 7)]

# remove the outliers from the original vertor using their index
temps[-c(2, 4, 7)]

# which function will give the index corresponding to the logical expression
which(temps < 0)
which(temps < 0 | temps > 60)

# any and all also possible
any(temps < 0 | temps > 60)
all(temps < 0 | temps > 60)

# Give the boolean mask:
temps < 0 | temps > 60

# Get the temperature validating the logical expression
temps[which(temps < 0 | temps > 60)]

# filtering values
outliers_filter <- temps < 0 | temps > 60

# get the outliers
outliers <- temps[outliers_filter]

# get the values not beeing outliers
no_outliers <- temps[!outliers_filter]

# Save the vectors created into a RData file
save(outliers, file = "outliers.Rdata")
save(no_outliers, file = "no_outliers.Rdata")
