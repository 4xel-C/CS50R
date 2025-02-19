library("testthat")
source("believe.R")

test_that("'longest_word' give the correct response", {
  expect_equal(longest_word("This is a sentence."), "sentence")
  expect_equal(longest_word("This is a test without punctuation"), "punctuation")
  expect_equal(longest_word("test, with, a. lot! of, punctuation!."), "punctuation")
})

test_that("'longest_word' give the even with long non alphabetical", {
  expect_equal(longest_word("This is a sentence............."), "sentence")
  expect_equal(longest_word("This is a secret message: !:;,!:;,"), "message")
  expect_equal(longest_word("big              space."), "space")
})

test_that("'longest_word' give the a vector of 2 or more word if different words are equally long", {
  expect_equal(longest_word("testing same length: azertyu."), c("testing", "azertyu"))
  expect_equal(longest_word("this page have four dogs"), c("this", "page", "have", "four", "dogs"))
})

test_that("'longest_word' return NA if the input contains no words", {
  expect_equal(longest_word(""), NA)
  expect_equal(longest_word("..."), NA)
  expect_equal(longest_word("3456"), NA)
  expect_equal(suppressWarnings(longest_word(3456)), NA)
})

test_that("'longest_word' warn the user if a non string values is inputed", {
  expect_warning(longest_word(3456))
  expect_warning(longest_word(data.frame))
})

