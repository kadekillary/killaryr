#' Remove Punctuation From String
#'
#' @param string string to remove punctuation from
#'
#' @return string with punctuation removed, only letters and whitespace will remain
#' @export
#'
#' @examples
#' remove_punctuation("4534dog 4328hello")
#' "dog hello"
remove_punctuation <- function(string) {
  gsub("[^[:alpha:][:space:]]*", "", string)
}
