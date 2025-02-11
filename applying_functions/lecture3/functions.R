# creating a 'get_votes' function

# Prompt the user to enter an Int representing votes. Return the number entered.
# return(votes) is optionnal as R return the last computed value in the function


get_votes <- function(prompt = "Enter votes: ") {

  # If as.integer cannot convert to integer, it returns na value
  # suppressWarnings used to get rid of the warning message in the console
  votes <- suppressWarnings(as.integer(readline(prompt)))

  # if (is.na(votes)) {
  #   return(0)
  # }

  # return(votes)

  ifelse(is.na(votes), 0, votes) # This will return the computed value
}

mario <- get_votes()
peach <- get_votes()
bowser <- get_votes()

total <- sum(mario, peach, bowser)

cat("Total votes", total)