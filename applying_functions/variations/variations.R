# Creation of a vector containing the alphabet
letters <-c(letters)


random_character <- function() {
  letter <- sample(letters, 1)
}

print_sequence <- function(length) {

  # initialize a counter
  count <- 0

  while(count < 20) {
    char <- random_character()
    cat(char)
    count <- count + 1
    Sys.sleep(0.25)
  }
}

print_sequence(20)