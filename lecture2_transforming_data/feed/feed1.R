# Demonstrates interactive program to view data by feed type

# Read and clean data
chicks <- read.csv("chicks.csv")
chicks <- subset(chicks, !is.na(weight))

# Determine feed options
feed_options <- unique(chicks$feed)

# Prompt user with options
cat("1.", feed_options[1], "\n")
cat("2.", feed_options[2], "\n")
cat("3.", feed_options[3], "\n")
cat("4.", feed_options[4], "\n")
cat("5.", feed_options[5], "\n")
cat("6.", feed_options[6], "\n")
feed_choice <- as.integer(readline("Feed type: "))

# Enumerate the numbers from 1 to length
1:length(feed_options)
seq_along(feed_options)


# Creating a vector containing the string representation
# of the formatted food options to print them
#(will give the same result as above)
formatted_string <- paste0(1:length(feed_options), ". ", feed_options)
formatted_string <- paste0(seq_along(length(feed_options)), ". ", feed_options)

# prompt user with options
cat(formatted_string, sep = "\n")
feed_choice <- as.integer(readline("Feed type: "))

# handle user input
if (feed_choice < 1 || feed_choice > length(feed_options)) {
    cat("Invalid choice!")
} else {
    # Print the subset selected by the user
    selected_feed <- feed_options[feed_choice]
    print(subset(chicks, feed == selected_feed))
}

