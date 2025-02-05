# read the tsv
df <- read.table('tests.tsv', sep='\t', header = TRUE)

# Check number of rows and columns
nrow(df)
ncol(df)

# Get the first 6 lines
head(df)


# Convert the gender column into more verbose values
df$gender <- factor(
  df$gender,
  labels = c("Unanswered", "Male", "Female", "Other")
  )

#Compute test results on new columns
df$extroversion <- round((df$E1 + df$E2 + df$E3) / 15, 2)
df$neuroticism <- round((df$N1 + df$N2 + df$N3) / 15, 2)
df$agreeableness <- round((df$A1 + df$A2 + df$A3) / 15, 2)
df$conscientiousness <- round((df$C1 + df$C2 + df$C3) / 15, 2)
df$openness <- round((df$O1 + df$O2 + df$O3) / 15, 2)

# Write a newfile containing he csv file
write.csv(df, "analysis.csv", row.names=FALSE)
