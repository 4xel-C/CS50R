# Open the data frame
df = read.csv("chicks.csv")
View(df)

# mean of the weigth ignoring the NA values
mean(df$weight, na.rm = TRUE)

# Get the 10 first lines
df[c(1:10), ]
head(df, 10)

# Get only the line corresponding to casein feed
df[df$feed == "casein", ]

# get the unique values of the feed column
unique(df$feed)

# prepare the filters
filter_casein <- df$feed == "casein"
filter_linseed <- df$feed == "linseed"

# applying filters
df[filter_linseed,]

# get the rows were weight is NA
na_filter = is.na(df$weight)
df[na_filter,]

# Count how many NA rows in the df
sum(is.na(df$weight))

# get the rows that contains no NA from weigth column
df <- df[!na_filter, ]
df <- subset(df, !na_filter)

# Subset fucntion can be used to pass a filter, or to apply a
# logical expression using a vector on a column.
df <- subset(df, !na_filter)
soybean_chicks <- subset(df, feed == "soybean")

# setting up the index (rownames)
rownames(df) # missing values from the deleted row containing NA.

# delete all the row name and R will reset the index count.
rownames(df) <- NULL

is.na(df)
