
describe("estimate_explosivity()", {
    it("can return correctly the value of the Oxygen / Carbon ratio", {
        expect_equal(estimate_explosivity("CH3COOH"), 1)
        expect_equal(estimate_explosivity("CH3OOH"), 2)
        expect_equal(estimate_explosivity("CH3OOOH"), 3)
    })
    it("can return NA with a warning if there is no carbone or oxygen", {
        expect_warning(estimate_explosivity("MgSO4"))
        expect_warning(estimate_explosivity("CCl4"))
        expect_warning(estimate_explosivity("Pd"))
        expect_equal(suppressWarnings(estimate_explosivity("MgSO4")), NA)
        expect_equal(suppressWarnings(estimate_explosivity("CCl4")), NA)
        expect_equal(suppressWarnings(estimate_explosivity("Pd")), NA)
    })
    it("can return NA with a warning if a wrong formula is entered", {
        expect_warning(parse_formula("cC9H8O4"), "cC9H8O4 is not a valid formula")
        expect_equal(suppressWarnings(parse_formula("cC9H8O4")), NA)
    })
})

describe("calculate_molw()", {
    it("can correctly calculate the molecular weight of organic compounds", {
        expect_equal(calculate_molw("H2O"), 18.013)
        expect_equal(calculate_molw("MgSO4"), 120.366)
    })
    it("can return NA with a warning if there is invalid atoms", {
        expect_equal(suppressWarnings(calculate_molw("cC9H8O4")), NA)
        expect_equal(suppressWarnings(calculate_molw("AoGn4")), NA)
        expect_warning(calculate_molw("AoGn4"))
    })
})