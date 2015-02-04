#!/usr/bin/Rscript

# This example shows some of the features of the builtin 'cat' function in R.

name <- "Mark"
cat(name, "\n")
cat(format(name, width=40, justify="right"), "\n")

v <- c(1, 2, 3)
cat(v, "\n", sep=",")
cat(cat(v, sep=","), "\n")
