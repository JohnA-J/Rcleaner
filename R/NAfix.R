#' changes values of "N/A" in character data type columns to regular NA data
#' @param df A data frame.
#' @param string a character value where you can put whatever value you want replaced by NA
#'
#' @return A data frame with selected strings replaced with NA.
#'
#' @examples
#' df <- data.frame(a = c("lalalala", "N/A", "wawawawawa"), b = c("N/A", "trooolloooloo", "yoohoohoo"))
#' NAfix(df, strings = c("N/A"))
#'
#' @export
NAfix <- function(df, string = "N/A") {df[] <- lapply(df, function(x)
  {if (is.character(x)) {x[x == string] <- NA}
  return(x)})
  return(df)}
