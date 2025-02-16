# Importing average function from the other file and manualoy testing some cases

source("average.R")

test_average <- function() {
    if (average(c(1, 2, 3)) == 2) {
        cat("'average' passed test :)\n")
    } else {
        cat("'average' failed test:(\n")
    }
}

# test_average()

library("testthat") # library to do Unittest

test_that("'average' calculates mean", {
    expect_equal(average(c(1, 2, 3)), 2)
    expect_equal(average(c(-1, -2, -3)), -2)
    expect_equal(average(c(-1, 0, 1)), 0)
    expect_equal(average(c(0.1, 0.5 )), 0.3)
})


test_that("'average' warns about NAs in input", {
    expect_warning(average(c(1, NA, 3)))
    expect_warning(average(c(NA, NA, NA)))
})

test_that("'average' return NA with NAs in input", {
    expect_equal(suppressWarnings(average(c(1, 2, NA, 3))), NA)
    expect_equal(suppressWarnings(average(c(NA, NA, NA, NA))), NA)
})

test_that("'average' stops if 'x' is non numeric", {
    expect_error(average(c(1, 2, "a", 3)))
    expect_error(average(c("1", "2", "3")))
})

# Use of Tolerance to compensate floating points imprecision