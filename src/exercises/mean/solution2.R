#!/usr/bin/Rscript

cat("How many datums? ")
num <- as.integer(readLines('stdin', n=1, warn=FALSE))

v <- as.double(readLines('stdin', n=num, warn=FALSE))

print(mean(v))
