#' Create Train/Test Datasets for Modeling
#'
#' @param df dataframe to split for modeling
#' @param train_split float between 0.1 - 0.9, determines size of training data
#'
#' @return list containing two dataframes
#' @export
#'
#' @examples
#' data <- create_train_test(iris_df, 0.7)
#' training_data <- data$train
#' testing_data <- data$test
create_train_test <- function(df, train_split) {
  rows <- nrow(data)
  sample <- sample(2, rows, replace=TRUE, prob=c(train_split, 1-train_split))
  train_data <- df[sample==1,]
  test_data <- df[sample==2,]
  list(train = train_data, test = test_data)
}
