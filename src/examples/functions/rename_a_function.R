#!/usr/bin/Rscript

mean(c(1,2,3,4,5,6))

old_mean <- mean

mean <- function(v) {
	cat("No mean for you!\n")
	stop("Illegal function called...")
}

old_mean(c(1,2,3,4,5,6))
