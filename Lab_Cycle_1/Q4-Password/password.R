gen_pssd <- function(len){
    password <-""
    all_char <-  intToUtf8(33:126,multiple=TRUE)
    uppercase <- LETTERS
    lowercase <- letters
    numbers <- as.character(0:9)
    special <- setdiff(all_char,c(uppercase,lowercase,numbers))
    mandatory <- c(sample(uppercase,1),sample(lowercase,1),sample(numbers,1),sample(special,1))
    remaining <-c(sample(c(uppercase,lowercase,numbers,special),len-length(mandatory)))
    password <-paste0(password,sample(c(mandatory,remaining)),collapse="")
    return(password)
    
}
len <-as.numeric(readline(prompt="Enter the length of the password:"))
if (len>=8){
    cat("Password generated:",gen_pssd(len))
}else{
    cat("The length of the password should be greater the 8")
}
