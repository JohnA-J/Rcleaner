#' standardizes column names by making all characters lowercase, turning spaces and special characters into underscores, and removing extraneous underscores
#'
#' @param df A data frame.
#'
#' @return A data frame with the changes specified above.
#'
#' @examples
#' df <- data.frame(a = c(1, NA, 3), b = c(NA, 5, 6))
#' SDnames(df)
#'
#' @export
SDnames <- function(df) {
  if (!is.data.frame(df)) stop()

  clean_names <- tolower(gsub("[^[:alnum:]]+", "_", names(df)))
  clean_names <- gsub("(^_|_$)", "", clean_names)
  names(df) <- clean_names
  return(df)}

