#Function 4:Drop NAs
#' Title
#'
#' @param data- this is a dataframe that you want to analyze to see if there are
#' any NAs
#' @param threshold a number between 0 and 1 that indicates at what level should
#' data be dropped if it constains too many NAs
#'
#' @return
#' @export
#'
#' @examples
#' NA_drop_rows(mtcars,0.15)
NA_drop_rows = function(data, threshold){
  num_obs = ncol(df)
  data = data[ ,colSums(is.na(data)) < num_obs * threshold]
}
