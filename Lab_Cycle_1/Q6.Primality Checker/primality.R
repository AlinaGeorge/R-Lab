is_prime <-function(numb){
  if(numb<=0){
    return(FALSE)
  }
  len= floor(sqrt(numb))
  for(i in 2:len){
    if(numb%%i==0){
      return(FALSE)
    }
  }
  return(TRUE)
}
primes_in_range <-function(low,up){
  primes <-c()
  for(i in low:up){
    if(is_prime(i)){
      primes <-c(primes,i)
    }
  }
  if(length(primes)==0){
    print("No primes in the given range")
  }else{
    print(primes)
  }

}
numb <- as.numeric(readline(prompt = "Enter the number: "))
if (is_prime(numb)) {
  cat(numb, "is prime\n")
} else {
  cat(numb, "is not prime\n")
}

lower <- as.numeric(readline(prompt = "Enter the lower limit: "))
upper <- as.numeric(readline(prompt = "Enter the upper limit: "))
cat("Primes in the given range:", primes_in_range(lower, upper), "\n")
