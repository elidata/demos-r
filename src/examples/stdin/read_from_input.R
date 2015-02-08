#!/usr/bin/Rscript

# This is an example of reading from stdin

cat("Please give me your name: ")
name <- readLines('stdin', n=1, warn=FALSE)
cat("Your name is", name, "\n")

cat("Please give me your age: ")
age <- readLines('stdin', n=1, warn=FALSE)
age=as.integer(age)
cat("Your age is", age, "\n")
