#function 1: empty row and column remover
EMPTYremove <- function(df) {
  df <- df[rowSums(is.na(df)) < ncol(df), ]
  df <- df[, colSums(is.na(df)) < nrow(df)]
  return(df)}
