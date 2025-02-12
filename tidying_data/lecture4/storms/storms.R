# install dplyr if not already installed
install.packages("tidyverse")

# load the library
library("tidyverse")

# Some datasets are integrated into R, like storms
# tibble => sort of table with additional informations
storms

# funtion select to extract or delete the desired columns from the dataset
# exclamation point to remove some columns
# ends_with() allow to select any words ending with the specified string
# Filter allows to filter the data set by specifying a condition on a column name
dplyr::filter(
    dplyr::select(
        storms,
        !c(lat, long, pressure, ends_with("diameter")),
    ), 
    status == "hurricane"
)

# If a function is unique and only coming from 1 package in the script, we can write:
filter(
    select(
        storms,
        !c(lat, long, pressure, ends_with("diameter")),
    ), 
    status == "hurricane"
)

# To avoid nesting multiple functions into functions for a better readability,
# Possibility to chain the return values of a function into another function
# "pipe operator" |> (most common)   %>% (equivalent)
hurricanes <- storms |>   # load storm
    select(!c(lat, long, pressure, ends_with("diameter")),) |>  # select from storm the desired columns.
    filter(status == "hurricane") |>  # filter the resulting dataframe.
    arrange(desc(wind), name) |> # sorting function
    distinct(name, year, .keep_all = TRUE)  # distinct delete duplicates considering complete row, or on specified columns

# If columns specified in distinct: other columns will be filtered out from the tibble.
# .keep_all is used to keep the other columns even if they are not used for the distinct function.

# table output: 
# <fct> type: factor (discretes values = levels or categories)

hurricanes |>
    select(c(year, name, wind)) |>
    write.csv("hurricanes.csv", row.names = FALSE)



# Get the strongest hurricanes from each year using group_by function
hurricanes <- read.csv("hurricanes.csv")


# -----------------------------------------------------------------------------------------------------------Group By 

# Strategy: group by year, sort each group by wind power, get the first element of each group
hurricanes |>
    group_by(year) |>
    arrange(desc(wind)) |>
    slice_head()

# -slice_head() get the first element of the groups
# -slice_tail()
# -slice_max(column) pick the maximum in a specific column
# -slice_min(column)

# The tibble still considered as "grouped", if we want to extract from the groups, use "ungroup"
hurricanes |>
    group_by(year) |>
    slice_max(order_by = wind) |>
    filter(year >= 1980 & year <= 1990) |>
    ungroup()


# summarize give 1 row per group (specify the aggregation)
# n() return the number of rows in a group
hurricanes |>
    group_by(year) |>
    summarize(hurricanes = n())  # possibility to name the count column
