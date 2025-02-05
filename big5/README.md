# big5 Analysis
![alt text](https://cs50.harvard.edu/r/2024/psets/1/big5/img/big5.png)
## Problem to solve
Ever taken a BuzzFeed quiz to determine whether you’re more like a brownie or a chocolate chip cookie? Turns out personality can be characterized in many ways and—within the present-day psychological community—some of the most common traits to describe personality include:

- Extroversion, the extent to which one might be socially outgoing
- Neuroticism, the extent to which one might experience emotional swings
- Agreeableness, the extent to which one might seek to be cooperative and empathetic
- Conscientiousness, the extent to which one might prioritize order and self-discipline
- Openness, the extent to which one might be open to new experiences
These 5 personality traits are together referred to as “The Big 5.” Psychologists (or those who are just curious about their personality!) might use various personality tests to assess the relative strength of these traits in one’s personality.

In a program called big5.R, in a folder called big5, write a program to analyze the results of thousands of Big 5 personality tests.

## Distribution code and installation
For this problem, you’ll need to download big5.R, along with a tests.tsv file and corresponding codebook.

Download the distribution code
Open RStudio per the linked steps and navigate to the R console:

```r
download.file("https://cdn.cs50.net/r/2024/x/psets/1/big5.zip", "big5.zip")
unzip("big5.zip")
file.remove("big5.zip")
setwd("big5")
```

## Specification

In big5.R, analyze the personality tests in tests.tsv, writing the results to a new file, analysis.csv.

analysis.csv should retain all columns in tests.tsv, with the following updates:

- Convert the gender column from a numeric representation to a textual representation.
- Add the following columns:
    - extroversion, a column that represents each test’s result on the extroversion trait
    - neuroticism, a column that represents each test’s result on the neuroticism trait
    - agreeableness, a column that represents each test’s result on the agreeableness trait
    - conscientiousness, a column that represents each test’s result on the conscientiousness trait
    - openness, a column that represents each test’s result on the openness trait

To understand tests.tsv, be sure to reference codebook.txt!