palindrome_checker <- function(string){
  string_new <- tolower(gsub("[[:punct:] [:space:]]","",string))
  string_vector <- unlist(strsplit(string_new,""))
  palindrome <- rev(string_vector)
  palindrome_string <-paste(palindrome, collapse = "")
  if (string_new==palindrome_string){
    cat("The entered string is a palindrome")
  } else{
    cat("The entered string is not a palindrome")
  }
}
palindrome_checker("ma la ya!l.am")
