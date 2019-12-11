is_binary <- function(column) {
  values <- unique(column)
  length(values) - sum(is.na(values)) == 2L
}
