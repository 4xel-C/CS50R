# A series of test to exercice on the str_length function

library("stringr")
library("testthat")

test_that("'str_length' give the correct length of a string", {
  expect_equal(str_length("abc"), 3)
  expect_equal(str_length("Trying a sentance"), 17)
  expect_equal(str_length(""), 0)
  expect_equal(str_length("    "), 4)
})

test_that("'str_length' applied on a number give the length of his corresponding string value", {
  expect_equal(str_length(12), 2)
  expect_equal(str_length(12345), 5)
  expect_equal(str_length(0), 1)
})


test_that("'str_length' applied on a vector give a vector of the corresponding length", {
  expect_equal(str_length(c("Test", "second", "third")), c(4, 6, 5))
  expect_equal(str_length(c("Trying a sentance")), 17)
  expect_equal(str_length(c(2, 45, 123)), c(1, 2, 3))
})


test_that("'str_length' applied on NA vector give a vector of the corresponding length", {
  expect_equal(str_length(NaN), 3)
  expect_equal(str_length(NA), NA_integer_)
})


test_that("'str_length' called with no arguments give an error", {
  expect_error(str_length())
})



