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
            c(NA, NA, NA)
        )
    })
})