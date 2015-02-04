#!/usr/bin/Rscript

# This example shows some of the features of the builtin 'print' function in R.
# unfortunaltely, 'print' always prints the cell numbers as it treats everything
# as a vector.

x <- 1/3
print(x)
print(x, digits=20)

name <- "Mark"
print(name)
print(name, quote=FALSE)
