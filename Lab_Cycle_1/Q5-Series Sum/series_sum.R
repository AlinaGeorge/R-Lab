sum_series <-function(len){
  series <-c()
  for(i in 1:len){
    if(i%%2==0){
      term=-(i/((2*i)-1))
    }else{
      term=i/((2*i)-1)
    }
    series <-c(series,term)
  }
  sums <-sum(series)
  return(sums)

  }
len <-as.numeric(readline(prompt="Enter the number of terms:"))
cat("Sum:",sum_series(len))

