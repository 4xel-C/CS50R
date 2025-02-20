describe("ducksay()", {
  it("can print to the console with 'cat'", {
    expect_output(cat(ducksay()))
  })
  it("can say hello to the world", {
    expect_match(ducksay(), "Hello, world")  # expect_match expect to find the pattern in the object (string or vector)
  })
  it("can say hello with a duck", {
    duck <- paste(
      ">(. )__",
      " (____/",
      sep = "\n"
    )
    expect_match(ducksay(), duck, fixed = TRUE) # "(." are part of RegEx, fixed force the test to treat the string not as a RegEx
  })
  it("can say any given phrase", {
    expect_match(ducksay("quack!"), "quack!")
  })
})