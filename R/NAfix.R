#function 1: OUTLIERremover
NAfix <- function(df, string = "N/A") {df[] <- lapply(df, function(x)
  {if (is.character(x)) {x[x == string] <- NA}
  return(x)})
  return(df)}
