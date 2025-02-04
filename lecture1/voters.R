url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)
View(voters)

# Get the numbers of row and columns
nrow(voters)
ncol(voters)

# get all uniques values in the vector
unique(voters$voter_category)

# Give the 10 first values of the column Q21
head(voters$Q21, 10)

# creating a factor (convert a vector into a factor
factor(voters$Q21)

# Possibility to in put a vector containing the label for each 'level'
# (unique value) of the column and filter out some values.
head(factor(
    voters$Q21,
    labels = c("Yes", "No", "Unsure/Undecided"),
    exclude = c(-1)
), 1000)
