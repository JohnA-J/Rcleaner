#' removes any blank rows and columns from data
#'
#' @param df A data frame.
#'
#' @return A data frame with all the empty rows and columns removed
#'
#' @examples
#' df <- data.frame(a = c(1, NA, 3), b = c(NA, 5, 6))
#' EMPTYremove(df)
#'
#' @export
EMPTYremove <- function(df) {
  df <- df[rowSums(is.na(df)) < ncol(df), ]
  df <- df[, colSums(is.na(df)) < nrow(df)]
  return(df)}
