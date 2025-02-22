describe("parse_integer()", {
    it("can parse a vector of string number into integer", {
        expect_equal(parse_integer(c("1", "2", "3")), c(1, 2, 3))
    })
    it("can clean-up supposed integer value from a vector", {
        expect_equal(
            parse_integer(c("1.", "2_", "#3", "4 potatoes")),
            c(1, 2, 3, 4)
        )
    })
    it("can return a NA value if no integer could be parsed", {
        expect_equal(
            parse_integer(c("No value", "potato", "???")),
            rep(NA_integer_, 3)
        )
    })
})


describe("parse_float()", {
    it("can parse a vector of string number into floats", {
        expect_equal(parse_float(c("1.3", "2,3", "003.4")), c(1.3, 2.3, 3.4))
    })
    it("can clean-up supposed integer value from a vector", {
        expect_equal(
            parse_float(c("1.", "2_455", "#3", "4 potatoes")),
            c(1, 2, 3, 4)
        )
    })
    it("can return a NA value if no integer could be parsed", {
        expect_equal(
            parse_float(c("No value", "potato", "???")),
            rep(NA_real_, 3)
        )
    })
})
