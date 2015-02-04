#!/usr/bin/Rscript

# This is a basic example of the numeric type in R.

# stuff that look like numbers will be numeric
cat("is.numeric(0) is ", is.numeric(0), "\n")
cat("is.numeric(1) is ", is.numeric(1), "\n")
cat("is.numeric(3.14) is ", is.numeric(3.14), "\n")
cat("is.numeric(-7) is ", is.numeric(-7), "\n")
cat("is.numeric(TRUE) is ", is.numeric(TRUE), "\n")
cat("is.numeric(FALSE) is ", is.numeric(FALSE), "\n")
cat("is.numeric(\"\") is ", is.numeric(""), "\n")

x <- 6
print(x)
typeof(x)
class(x)
mode(x)

x <- as.double(7)
print(x)
typeof(x)
class(x)
mode(x)

x <- as.integer(8)
print(x)
typeof(x)
class(x)
mode(x)

x <- as.double(7.7)
x <- as.integer(x)
print(x)
typeof(x)
class(x)
mode(x)

x <- as.double(7.7)
x <- round(x)
print(x)
typeof(x)
class(x)
mode(x)

x <- as.double(7.7)
x <- as.integer(round(x))
print(x)
typeof(x)
class(x)
mode(x)
