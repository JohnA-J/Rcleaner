#function 3: SDnames
SDnames <- function(df) {
  if (!is.data.frame(df)) stop()

  clean_names <- tolower(gsub("[^[:alnum:]]+", "_", names(df)))
  clean_names <- gsub("(^_|_$)", "", clean_names)
  names(df) <- clean_names
  return(df)}
