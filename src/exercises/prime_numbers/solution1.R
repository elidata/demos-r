#!/usr/bin/Rscript

# This is a brute force solution to the exercise

#cat("How many? ")
#num <- as.integer(readLines('stdin', n=1, warn=FALSE))
num <- 100

isPrime <- function(n) {
	return (sum(n/1:n==n%/%1:n)==2)
}

for(n in 1:num) {
	if(isPrime(n)) {
		print(n)
	}
}
