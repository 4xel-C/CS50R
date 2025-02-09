# Reads 4 separate CSVs and add the quarter specification column

Q1 <- read.csv("Q1.csv")
Q1$quarter <-  "Q1"

Q2 <- read.csv("Q2.csv")
Q2$quarter <-  "Q2"

Q3 <- read.csv("Q3.csv")
Q3$quarter <-  "Q3"

Q4 <- read.csv("Q4.csv")
Q4$quarter <-  "Q4"

# add new row to the dataframes Q1 (columns must be the same)
# In other words: concatenate all the dfs
df = rbind(Q1, Q2, Q3, Q4)

View(df)

df[df$quarter == "Q2", ]

subset(df, df$sale_amount > 100)

# Tag the sells > 100 with "High Value". Ifelse will
# create a vector contaiing either regular or high value
# depending of the the value in the corresponding row of the 
# column sale_amount.
ifelse(df$sale_amount > 100, "High Value", "regular")

df$value <- ifelse(df$sale_amount > 100, "High Value", "regular")

View(df)
