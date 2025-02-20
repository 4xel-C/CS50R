library(ducksay)

name <- readline("What's your name? ")
greeting <- ducksay(paste("Hello,", name))

cat(greeting)