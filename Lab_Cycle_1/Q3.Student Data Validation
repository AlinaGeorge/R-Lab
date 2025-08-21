# Function to check if age is valid
is_valid_age <- function(age_str) {
  if (!is.na(as.numeric(age_str))) {
    return(as.numeric(age_str) > 0)
  }
  return(FALSE)
}

# Function to check if grade is valid
is_valid_grade <- function(grade) {
  return(toupper(grade) %in% c("A", "B", "C", "D", "F"))
}

# Main program
n <- as.integer(readline("Enter number of students: "))

students <- data.frame(Name=character(),
                       Age=integer(),
                       Grade=character(),
                       stringsAsFactors=FALSE)

for (i in 1:n) {
  cat("\n--- Student", i, "---\n")
  name <- readline("Enter name: ")
  age_str <- readline("Enter age: ")
  grade <- readline("Enter grade (A/B/C/D/F): ")
  
  if (is_valid_age(age_str) && is_valid_grade(grade)) {
    students <- rbind(students,
                      data.frame(Name=name,
                                 Age=as.integer(age_str),
                                 Grade=toupper(grade),
                                 stringsAsFactors=FALSE))
    cat("✔ Record added successfully!\n")
  } else {
    cat("❌ Invalid record. Skipped.\n")
  }
}

if (nrow(students) > 0) {
  avg_age <- mean(students$Age)
  cat("\n✅ Average age of valid students:", round(avg_age, 2), "\n")
  cat("Valid Student Records:\n")
  print(students)
} else {
  cat("\n⚠ No valid records entered.\n")
}
