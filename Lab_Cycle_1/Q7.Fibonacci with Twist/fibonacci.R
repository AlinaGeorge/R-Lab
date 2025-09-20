fibonacci <-function(n){
  fib <-c(0,1,1)
  if(n<=3){
    return(fib[1:n])
  }
  for (i in 4:n){
    term <-fib[i-3]+fib[i-2]+fib[i-1]
    fib <-c(fib,term)
  }
  return(fib)
}
n <- as.numeric(readline(prompt = "Enter the number of terms : "))
cat("Fibonacci with twist:", fibonacci(n), "\n")
