#!/usr/bin/Rscript

# This is a most basic example of factors
# Factors are enumerated values useful in performing analysis of data

cat("an empty factor\n")
x <- factor()
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)

cat("a factor from a list of labels\n")
x <- factor(c("apple", "banana", "orange"))
cat(x, "\n")
cat(typeof(x), "\n")
cat(class(x), "\n")
cat(mode(x), "\n")

cat("here is how to access the values of the factor\n")
cat(x[1], "\n")
cat(x[2], "\n")
cat(x[3], "\n")

cat("you can send a vector to a factor\n")
v <- c(1, 2, 1, 3, 1, 1, 1, 1)
cat(x[v], "\n")

cat("convert factors back to numeric values\n")
cat(as.numeric(x), "\n")
