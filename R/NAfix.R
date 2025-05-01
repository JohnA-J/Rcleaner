#' changes values of "N/A" in character data type columns to regular NA data
#' @param df A data frame.
#'
#' @return A data frame with "N/A" values replaced with NA.
#'
#' @examples
#' df <- data.frame(a = c(1, NA, 3), b = c(NA, 5, 6))
#' NAfix(df)
#'
#' @export
NAfix <- function(df, string = "N/A") {df[] <- lapply(df, function(x)
  {if (is.character(x)) {x[x == string] <- NA}
  return(x)})
  return(df)}
