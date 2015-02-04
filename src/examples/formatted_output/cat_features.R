#!/usr/bin/Rscript

# This example shows some of the features of the builtin 'cat' function in R.

# just a simple print, notice that cat does not add a newline
name <- "Mark"
cat(name)

# if you give cat several things to print, notice that cat adds a space
# as a separator between them
cat("the", "lazy", "brown", "fox", "jumped", "over", "the", "yellow", "dog", "\n")

# you can control the separator
cat("the", "lazy", "brown", "fox", "jumped", "over", "the", "yellow", "dog", "\n", sep=",")

# lets add a newline
cat(name, "\n")

# lets use the format function to give cat a precise string
cat(format(name, width=40, justify="right"), "\n")

# lets use cat to output a vector
v <- c(1, 2, 3)
cat(v, "\n", sep=",")
cat(cat(v, sep=","), "\n")

