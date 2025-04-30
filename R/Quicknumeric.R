#function 4: Quicknumeric
Quicknumeric <- function(df) {df[] <- lapply(df, function(x) {
  if (is.character(x) && all(grepl("^[0-9.]+$", x))) {
  return(as.numeric(x))}
  else {
  return(x)}})
  return(df)}
