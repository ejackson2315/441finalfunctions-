#Function 1: Hist
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



#Function 2:Barchart
bar_fn<-function(data){
  for(i in 1:ncol(data))
    barplot(data[,i],
            main=names(data)[i],
            col="skyblue4")
}
#par(mfrow=c(4,3))
bar_fn(mtcars)


#Function 3:Boxplot
boxplot_fn<-function(data){
  for(i in 1:ncol(data))
    boxplot(data[,i],main=names(data)[i], data=data)
}
boxplot_fn(mtcars)


#Function 4:Drop NAs
NA_drop_rows = function(data, threshold){
  num_obs = ncol(df)
  data = data[ ,colSums(is.na(data)) < num_obs * threshold]
}

#Function 5:Median Imputation
med_imp= function(data){
  for(i in 2:num_vars) {
    data[[i]][is.na(data[[i]])] <- mean(data[[ i]], na.rm =TRUE)
  }
}
