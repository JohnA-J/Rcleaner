#function 5: NAreplacer
NAreplace <-  function(df, columns = NULL, method = "mean") {
  if (is.null(columns)) {columns <- names(df)}
  for (col in columns) {
  if (is.numeric(df[[col]])) {
  if (method == "mean") {df[[col]][is.na(df[[col]])] <- mean(df[[col]], na.rm = TRUE)}
  else
  if (method == "median") {df[[col]][is.na(df[[col]])] <- median(df[[col]], na.rm = TRUE)}
  else {stop("options are 'mean' or 'median'.")}}}
  return(df)}

