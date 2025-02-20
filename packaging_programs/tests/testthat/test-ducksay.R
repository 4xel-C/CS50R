describe("ducksay()", {
  it("can print to the console with 'cat'", {
    expect_output(cat(ducksay()))
  })
  it("can say hello to the world", {
    expect_match(ducksay(), "hello, world")  # expect_match expect to find the pattern in the string
  })
})