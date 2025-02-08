# assignement variable and asking the user for input
mario <- readline("Enter vote for Mario: ")
peach <- readline("Enter vote for Peach: ")
bowser <- readline("Enter vote for Bowser: ")

# reassigning the variable to transform them into integer
mario <- as.integer(mario)
peach <- as.integer(peach)
bowser <- as.integer(bowser)

# Print the total
total <- mario + peach + bowser

# or
total <- sum(mario, peach, bowser)

print(paste("Total votes:", total))