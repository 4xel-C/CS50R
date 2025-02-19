longest_word <- function(input_string) {
  # Check if the input is a string
  if (!is.character(input_string)) {
    warning("Input is not a string")
    return(NA)
  }

  # Remove all non-alphabetical characters (except spaces)
  cleaned_string <- gsub("[^[:alnum:] ]", "", input_string)

  # Split the string into words
  words <- unlist(strsplit(cleaned_string, "\\s+"))

  # If no valid words, return NA
  if (length(words) == 0 || all(!grepl("[a-zA-Z]", words))) {
    return(NA)
  }

  # Find the longest words
  word_lengths <- nchar(words)
  max_length <- max(word_lengths)

  # Return the words that are of maximum length
  longest_words <- words[word_lengths == max_length]

  return(longest_words)
}




