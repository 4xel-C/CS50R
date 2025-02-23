describe("check_valid_formula()", {
    it("can return TRUE if a chemical formula is valid", {
        expect_true(check_valid_formula(("H2O")))
        expect_true(check_valid_formula(("CsCO3")))
        expect_true(check_valid_formula(("C9H8O4")))
        expect_true(check_valid_formula(("CH3COOH")))
        expect_false(check_valid_formula(("C9H8O4_")))
        expect_false(check_valid_formula(("cC9H8O4")))
        expect_false(check_valid_formula(("CscO3")))
    })
})

describe("parse_formula()", {
    it("return NA and a warning if the formula is not correct", {
        expect_warning(parse_formula("cC9H8O4"), "cC9H8O4 is not a valid formula")
        expect_equal(suppressWarnings(parse_formula("cC9H8O4")), NA)
    })
    it("can return a named vector of the composition of the formula", {
        expect_equal(parse_formula("H2O"), c("H" = 2, "O" = 1))
        expect_equal(parse_formula(("CsCO3")), c("Cs" = 1, "C" = 1, "O" = 3))
        expect_equal(parse_formula(("C9H8O4")), c("C" = 9, "H" = 8, "O" = 4))
        expect_equal(parse_formula(("CH3COOH")), c("C" = 2, "H" = 4, "O" = 2))
    })
})

describe("compare_formula()", {
    it("can says if 2 formular contains the same atoms", {
        expect_true(compare_formula("H2O", "H2O"))
        expect_true(compare_formula("CsCO3", "CsCO3"))
        expect_true(compare_formula("CH3COOH", "C2H4O2"))
        expect_false(compare_formula("H2O", "H2O2"))
    })
    it("can return False if a wrong formular is entered", {
        expect_false(suppressWarnings(compare_formula("H2O", "H202")))
    })
})
