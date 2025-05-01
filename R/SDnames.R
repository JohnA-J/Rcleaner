#function 4: SDnames
SDnames <- function(df) {
  if (!is.data.frame(df)) stop()

  clean_names <- tolower(gsub("[^[:alnum:]]+", "_", names(df)))
  clean_names <- gsub("(^_|_$)", "", clean_names)
  names(df) <- clean_names
  return(df)}
testdata <- read.csv("D:/R programming Final project/Rcleaner/data/videogamesales.csv")
testdata <- replace_string_na(testdata)
testdata$Year_of_Release
