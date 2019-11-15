context("remove punctuation")

test_that("punctuation is removed", {
  expect_equal(nchar(remove_punctuation("27483#&$(*@#&$dog#&*$@)")), nchar("dog"))
  expect_match(remove_punctuation("27483#&$(*@#&$dog#&*$@)"), "dog")
  expect_equal(nchar(remove_punctuation(">:?>cat#&*$@(3872`")), nchar("cat"))
  expect_match(remove_punctuation(">:?>cat#&*$@(3872`"), "cat")
})
