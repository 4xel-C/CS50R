# Read CSV
# Use read_csv() method to directly load a tibble from the tidyverse library
students <- read.csv("students.csv")
View(students)

# data not "tidy": unpivoted
students <- pivot_wider(
    students,
    id_cols = student,
    names_from = attribute,
    values_from = value
)

# convert GPA columns as numeric
students$GPA <- as.numeric(students$GPA)

#  group by major
students |>
    group_by(major) |>
    summarize(GPA = mean(GPA))
