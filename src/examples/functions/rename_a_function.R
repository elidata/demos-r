#!/usr/bin/Rscript

# This example shows how to overwrite an R
# builtin function. You can also save the
# old function pointer on the side for later use.

mean(c(1,2,3,4,5,6))

old_mean <- mean

mean <- function(v) {
	cat("No mean for you!\n")
	stop("Illegal function called...")
}

old_mean(c(1,2,3,4,5,6))
