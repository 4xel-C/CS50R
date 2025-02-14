# Parked

## Problem to Solve

In case you’re wondering, Dean Summerwind is parked out by the lake, 80 miles from Santa Fe. “Parked Out By The Lake” might sound like a normal song if you aren’t paying attention. But it became “the country song you need to hear” for what you’ll notice if you listen closely.

With a visualization, you might notice that—unsurprisingly—the most frequently used word is “Lake,” followed closely by “I’m,” “Parked,” “By,” “Out,” and “The.”

<img src="https://cs50.harvard.edu/r/2024/psets/5/parked/img/parked.png" alt="plot" width="600"/>

## Parked Out By The Lake Lyrics

Visualizing the frequency of words in song lyrics can help you get a sense for a song’s structure (and be just plain fun!). In `parked.R`, in a folder called `parked`, write a program to visualize the frequency of words in song lyrics of your choice.


and see `parked.R` alongside a folder called `lyrics`. If not, retrace your steps and see if you can determine where you went wrong!

## Specification

In `parked.R`, write a program to read a .txt file of your choice in the lyrics folder. Don’t like those songs? Create your own lyrics file! Sites like genius.com provide lyrics to most popular songs.

Consider writing your program in 3 steps:

1. Open and clean a lyrics file of your choice, splitting the file into a vector of individual words.
2. Convert the vector of words into a data frame that includes each word and the number of times it appears.
3. Visualize the data frame using the `ggplot2` package.

Ready? Let’s get started.

## Reading and Cleaning Lyric Files

Your program should read a lyrics file of your choice from the lyrics folder. To read a .txt file, consider using the `read_file` function in the `readr` package, part of the tidyverse.

Your lyrics file will likely need to be cleaned. Consider how you could use functions from the `stringr` package to clean up your data. As much as possible, try to eliminate stylistic inconsistencies between words that are otherwise the same—such as capitalization or the presence of punctuation.

Finally, split your lyric file into a vector of individual words. Here too, consider what the `stringr` package might offer.

## Summarizing Lyrics

With a vector of individual words, consider transforming your vector into a data frame of two columns:

- **word**
- **count**

The word column could, for instance, contain the unique words present in your lyrics while count includes the count of each of those lyrics.

## Visualizing Lyrics

With a data frame of words and their frequency, use the `ggplot` function to plot the lyrics. Save your resulting plot as a file named `lyrics.png` using `ggsave`.