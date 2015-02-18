#!/usr/bin/Rscript

# This is a functional example of 'replicate'

hello <- function(x) {
	cat("x is", x, "\n")
	x*x
}

v=lapply(1:5, hello)
for(x in v) {
	cat("result is", x, "\n")
}
