#' Title
#'
#' @param data this is a dataframe that you want to analyze and impute medians
#' where data may be missing
#'
#' @return
#' @export
#'
#' @examples
#' med_imp(mtcars)
med_imp= function(data){
  for(i in 2:num_vars) {
    data[[i]][is.na(data[[i]])] <- mean(data[[ i]], na.rm =TRUE)
  }
}
