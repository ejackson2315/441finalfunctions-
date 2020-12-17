#Function 2:Barchart
#' Title
#'
#' @param data this is a dataframe that you want to analyze and create barcharts for
#' to get more in depth analysis on the data
#'
#' @return
#' @export
#'
#' @examples
#' bar_fn(mtcars)
bar_fn<-function(data){
  for(i in 1:ncol(data))
    barplot(data[,i],
            main=names(data)[i],
            col="skyblue4")
}
