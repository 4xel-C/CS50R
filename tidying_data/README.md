# Zelda

## Problem to Solve

You’ve just been hired as a game historian for Nintendo, the Japanese multinational video game company. Your first job is to organize an old data file that details the history of Zeruda no Densetsu (The Legend of Zelda), one of the company’s most popular game series.

In a file called zelda.R, in a folder called zelda, tidy up some data on the history of The Legend of Zelda and use it to answer questions about the series.

# Schema

Before jumping in, it will be helpful to get a sense for the “schema” (i.e., organization!) of the data you’re given.

## Learn about this data

In `zelda.csv`, you are provided data on the history of *The Legend of Zelda*. In `zelda.csv`, there are 4 columns:

- **title**: the title of a game in *The Legend of Zelda* series  
- **release**: the year a game was released and the console for which it was released  
- **role**: describes a role in the development of a game  
- **names**: lists the names of those who held a given role in the development of a game  

Needless to say, this data is not very tidy! It’s up to you to format it correctly and, once ready, answer questions about the history of the series.

---

# Specification

In this problem, you’ll use each of the included `.R` files to take one step in your analysis of the given data.

## `1.R`

In `1.R`, organize the data in `zelda.csv` to get it ready for analysis. Save the cleaned data as a tibble named `zelda` in `zelda.RData`.

Make sure the tibble follows these tidy data rules:

- Each row should be one release of a *The Legend of Zelda* game.  
  - Keep in mind, a single game is often released multiple times on different systems.  
- Each column should be one way a release can differ.  
  - For example, releases can differ based on release year, system, or the people involved in making it.  
- Each cell should be a single piece of information.  

The first few rows of the tibble should look like this, including only the following columns (capitalization matters!):

| title               | year | system                        | directors                  | producers       | designers                    | programmers                     | writers                   | composers  | artists |
|---------------------|------|------------------------------|----------------------------|----------------|------------------------------|---------------------------------|---------------------------|------------|---------|
| The Legend of Zelda | 1986 | Famicom Disk System         | Shigeru Miyamoto, Takashi Tezuka | Shigeru Miyamoto | Shigeru Miyamoto, Takashi Tezuka | Toshihiko Nakago, Yasunari Soejima, I. Marui | Takashi Tezuka, Keiji Terui | Koji Kondo | NA |
| The Legend of Zelda | 1987 | Nintendo Entertainment System | Shigeru Miyamoto, Takashi Tezuka | Shigeru Miyamoto | Shigeru Miyamoto, Takashi Tezuka | Toshihiko Nakago, Yasunari Soejima, I. Marui | Takashi Tezuka, Keiji Terui | Koji Kondo | NA |
| The Legend of Zelda | 2003 | GameCube                     | Shigeru Miyamoto, Takashi Tezuka | Shigeru Miyamoto | Shigeru Miyamoto, Takashi Tezuka | Toshihiko Nakago, Yasunari Soejima, I. Marui | Takashi Tezuka, Keiji Terui | Koji Kondo | NA |

Save the resulting `zelda` tibble using `save` in a file named `zelda.RData`. You’ll use this tibble in the remaining `.R` files.

---

## `2.R`

Your first assignment is to summarize the number of Zelda releases in each year.

In `2.R`:

1. Load the tidied `zelda` tibble from `zelda.RData` using `load`.
2. Summarize the number of releases per year.
3. Sort the rows by the number of releases in descending order.

The tibble should have two columns:

| year | releases |
|------|---------|
| …    | …       |

Save the resulting tibble using `save` in `2.RData`.

---

## `3.R`

Your next assignment is to identify the original (first) release for each Zelda title.

In `3.R`:

1. Load `zelda` tibble from `zelda.RData`.
2. Filter the data to include only the first release(s) for each Zelda title.
3. If a title had two releases in its first year (for different systems), include both.
4. Sort releases by year (oldest to newest), then alphabetically by title, and finally by system.

Save the tibble in `3.RData`.

---

## `4.R`

Your next task is to highlight the contributions of *Shigeru Miyamoto*.

In `4.R`:

1. Load `zelda` tibble from `zelda.RData`.
2. Filter for original releases where *Shigeru Miyamoto* was a producer.
3. Sort by year, then by title, then by system.

Save the tibble in `4.RData`.

---

## `5.R`

Finally, identify the original releases for all titles with more than 1 producer.

In `5.R`:

1. Load `zelda` tibble from `zelda.RData`.
2. Filter for first releases of titles with more than one producer.
3. Sort by year, title, then system.

Save the tibble in `5.RData`.
