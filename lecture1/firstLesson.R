# Assigning a string into a variable
# Input the user for his name
name <- readline("What's your name ? ")

# Concatenating with paste or paste0 (no separator)
greeting <- paste0("Hello, ", name)
greeting <- paste("Hello, ", name, sep="")
greeting <- paste("Hello,", name)

print(greeting)

# Console commands

# Change working directory
setwd(PATH) 

# current directory
getwd()

# Change folder to lecture 1 by recreating the PATH (current directory + /newfolder)
setwd(paste0(getwd(), "/lecture1"))

# Create File in cwd (current working directory)
file.create("filename")

# list all the object in our environment
ls()

# Clean all the object from the environment
rm(list = ls())

# Get the documentation for a function
?factor
