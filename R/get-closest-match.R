#' Get Closest Match For A String
#'
#' @param string : the string to find the closest match for
#' @param string/vector : a string or vector strings containing potential matches
#' @param float : minimum match percentage to accept
#'
#' @examples
#' get_closet_match('hello', 'hellos', .8)
get_closest_match <- function(string, comparison, min_percent) {
  # return percent match between string and all comparison strings
  match_percentage <- 1 - adist(string, comparison, ignore.case = TRUE) / pmax(nchar(string), nchar(comparison))
  # grab index of top matching string
  top_match <- which(match_percentage == max(match_percentage), arr.ind = TRUE)[[2]]

  string <- comparison[top_match]
  percent <- max(match_percentage)

  # if percent is lower than min_percent, return no results
  if (percent < min_percent) {
    percent <- NA
    string <- NA
  }

  data.frame(string, percent, stringsAsFactors = FALSE)
}
