#Function 3:Boxplot
#' Title
#'
#' @param data this is a dataframe that you want to analyze and create boxplots for
#' to get more in depth analysis on the data
#'
#' @return
#' @export
#'
#' @examples
#'
#' boxplot_fn(mt,cars)
boxplot_fn<-function(data){
  for(i in 1:ncol(data))
    boxplot(data[,i],main=names(data)[i], data=data)
}
