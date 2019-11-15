context("create train test")

test_that("create train test split from dataframe", {
  expect_type(create_train_test(iris, 0.7), "list") 
  expect_length(create_train_test(iris, 0.7), 2) 
  expect_gt(nrow(create_train_test(iris, 0.7)$train), 10) 
  expect_gt(nrow(create_train_test(iris, 0.7)$test), 10) 
  expect_error(create_train_test(iris)) 
  expect_error(create_train_test(0.7)) 
})
