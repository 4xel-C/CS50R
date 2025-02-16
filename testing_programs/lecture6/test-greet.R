library(testthat)
source("greet.R")


#  test driven programming 
    # => programming paradigm based on writting the tests for the function first, before coding the function itself.
    # Allow to make sure the written function behave exactly like we want
test_that("'greet' says helo to a user", {
    expect_equal(greet("Carter"), "hello, Carter")
})



# describe is usefull to describe the function before testing it with a verbose manner
describe("greet()", {
    it("can say hello to a user", {
        name <- "Carter"
        expect_equal(greet(name), "hello, Carter")
    })

    it("can say hello to the world", {
        expect_equal(greet(), "hello, world")
    })
})
