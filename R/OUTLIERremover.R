#function 5: OUTLIERremover
detect_outliers <- function(df) {
  is_outlier <- function(x) {
  q1 <- quantile(x, 0.25, na.rm = TRUE)
  q3 <- quantile(x, 0.75, na.rm = TRUE)
  iqr <- q3 - q1
  (x < (q1 - 1.5 * iqr)) | (x > (q3 + 1.5 * iqr))} df[] <- lapply(df, function(x) {
  if (is.numeric(x)) {
  return(is_outlier(x))}
  else {
  return(rep(FALSE, length(x)))}})
  return(df)}
