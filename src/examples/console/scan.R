#!/usr/bin/Rscript

# This is an example of how to wait for user input
# This does not work in a script (meaning not in Rscript, only in R)

cat("please press a key...\n")
invisible(scan(file = "", what = "", nmax = 1))
