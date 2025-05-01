#' converts character data that should be numeric into numeric.
#'
#' @param df A data frame.
#'
#' @return A data frame with the proper rows as the numeric data type
#'
#' @examples
#' df <- data.frame(a = c(1, NA, 3), b = c(NA, 5, 6))
#' Quicknumeric(df)
#'
#' @export
Quicknumeric <- function(df) {df[] <- lapply(df, function(x) {
  if (is.character(x) && all(grepl("^[0-9.]+$", x[!is.na(x)]))) {
  return(as.numeric(x))}
  else {
  return(x)}})
  return(df)}
