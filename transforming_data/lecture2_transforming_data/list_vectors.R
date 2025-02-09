# vectors: array of same type objects
# list: can collect together items of different data types

# create a vector of names
names <- c("Alice", "Bob", "Charlie")

# create a vector of ages
ages <- c(49, 19, 34)

# List people
people <- list(names, ages)

# Accesssing the vector, or the 'element' of the list
people[[2]] # vector, extracted form the list
people[2] # Subset of the list element

# names() function to assign scpecific names to the element in the list
names(people) <- c("names", "ages")

# accessing the vectors after naming the objects:
people$names
people$ages

# creating dataframe from list:
df <- data.frame(people)

View(df)
