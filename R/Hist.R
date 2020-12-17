#Function 1: Hist
#' Title
#'
#' @param data this is a dataframe that you want to analyze and create histograms for
#' to get more in depth analysis on the data
#'
#' @return
#' @export
#'
#' @examples
#' hist_fn(mtcars)
hist_fn<-function(data){
  for(i in 1:ncol(data))
    hist(data[,i],
         breaks = "FD",
         col="skyblue4",
         freq=FALSE,
         ylab="Density",
         main = paste("Distr. of", names(data)[i]))}

par(mfrow=c(4,3))
hist_fn(mtcars)

