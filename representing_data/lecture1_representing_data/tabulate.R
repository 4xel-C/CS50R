
# read data from csv(): specify the separator and the headers
votes <-  read.table(
  "vote.csv",
  sep = ",",
  header = TRUE
)

# Can also use the read.csv function to produce the same result
votes <- read.csv("vote.csv")

# View is a function to vizualise the data as a table
View(votes)

# Bracket notation to access specific row or column from Data Frame
# by using the numbers
votes[1,1]

# Possibility to use the name of the column to access the name
# Extracting a column return a 'vector' of values
votes$candidate
votes$candidate[1]  # extract the first candidate
votes$poll

# Sum of all the poll
sum(votes$poll)

# Vector addition
votes$poll + votes$mail

# The following notation return no vector: only a subdataframe from the main one
votes[1] 
votes[2]

# Creating a new column:
votes$total <- votes$poll + votes$mail
View(votes)

# access the column names or the row index
colnames(votes)
rownames(votes)

# Write a csv: specify the df to write, name of the file, row index
write.csv(votes, "totals.csv", row.names = FALSE)
