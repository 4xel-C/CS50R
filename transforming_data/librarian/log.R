#Load both CSV files dataframes
books <- read.csv("books.csv")
authors <- read.csv("authors.csv")

# Visualize each dataframe
View(books)
View(authors)

# Get the columns names
colnames(books)
colnames(authors)

#get the possible category of topics
unique(books$topic)


#---------The Writer
# Find the only book of the author'Mia Morgan'
books[books$author == 'Mia Morgan', ]$title

#---------The Musician
# Find a book: topic: music and year = 1613
filter_topic <- books$topic == "Music"
filter_year <- books$year == 1613

filter_topic

# apply the filters and extract the title
books[(filter_topic & filter_year), ]$title

#---------The traveler
# Two authors possible:Lysandra Silverleaf or Elena Petrova. year:1775
filter_authors <- (books$author == "Lysandra Silverleaf") | (books$author == "Elena Petrova")
filter_year <-books$year == 1775

books[(filter_authors & filter_year), ]$title

#---------The Painter
# Pages between 200 & 300
# year: 1990 or 1992

filter_pages <- books$pages >= 200 & books$pages <= 300
filter_year <- books$year == 1990 | books$year == 1992

books[(filter_pages & filter_year), ]$title

#---------The Scientist
# Quantum Mechanics in the title using thegrepl function

books[grepl("Quantum Mechanics", books$title), ]$title

#---------The teacher
# topis: education
# published in the 1700s
# author from Zenthia

# get a vector of all authors from Zenthia:
possible_authors <- authors[(authors$hometown == "Zenthia") ,]$author

filter_author <- books$author %in% possible_authors
filter_topic <- books$topic == "Education"
filter_year <- books$year >= 1700 & books$year <= 1800


#apply all the filters
books[(filter_author & filter_topic & filter_year), ]$title
