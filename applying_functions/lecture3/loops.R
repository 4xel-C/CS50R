
# while and repeat
  # repeat: No entry conditions.
  # Good to use when you want to run the code at least 1 time
  # While: Entry conditions evaluated before each loops
  # For: apply on each element of a vector


# Repeat loop
i <- 3

repeat {
  cat("Test\n")
  i <- i-1

  if (i == 0) {
    break()
  } else {
    next
  }
}

# While loope
i <- 3
while (i != 0) {
  cat("test2\n") 
  i <- i - 1
}

# for loops
# i:3 is equivalent to c(1, 2, 3)
for (i in 1:3) {
  cat("Test3")
}

