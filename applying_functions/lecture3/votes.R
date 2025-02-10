# exemple creation of dataframes
votes <- c(120, 130, 150, 85, 96, 34)
matrix <- matrix(votes, nrow = 3, ncol = 2)
df <- as.data.frame(matrix)
colnames(df) <- c("poll", "mail")
rownames(df) <- c("Mario", "Peach", "Bowser")

# creation a total votes count for each candidate
# Vectors can work as dictionnary

total_votes <- c()
for (candidate in rownames(df)) {
    total_votes[candidate] <- sum(df[candidate, ])
}

test <- c("A", "B", "C", "D")
test[1]  # donne "A"
total_votes[1] # donne "Mario" 205 (value + name)


# same code without naming the element of the vector
# use c() concatenate the empty vector with each values into a merged vector
    # c(205)
    # then c(205, 226)
    # then c(205, 226, 184)
total_votes <- c()
for (candidate in rownames(df)) {
    total_votes <- c(total_votes, sum(df[candidate, ]))
}


#  same code with apply()
# Margin = 1 apply the function FUN (sum) across the rows
# Margin = 2 apply the function accros the columns
# Will give a named vector
test <- apply(df, MARGIN = 1, FUN = sum)
