#' Replaces `NA` values in specified numeric columns of a data frame with the column mean or median.
#'
#' @param df A data frame.
#' @param columns all columns named are processed. If left NULL, all columns are used.
#' @param method  the method used to fill NA values: "mean" or "median".
#'
#' @return A data frame with NA values replaced in the specified columns.
#'
#' @examples
#' df <- data.frame(a = c(1, NA, 3), b = c(NA, 5, 6))
#' NAreplace(df, columns = c("a"), method = "mean")
#'
#' @export
NAreplace <-  function(df, columns = NULL, method = "mean") {
  if (is.null(columns)) {columns <- names(df)}
  for (col in columns) {
  if (is.numeric(df[[col]])) {
  if (method == "mean") {df[[col]][is.na(df[[col]])] <- mean(df[[col]], na.rm = TRUE)}
  else
  if (method == "median") {df[[col]][is.na(df[[col]])] <- median(df[[col]], na.rm = TRUE)}
  else {stop("options are 'mean' or 'median'.")}}}
  return(df)}

