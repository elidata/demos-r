#!/usr/bin/Rscript

# This is a better solution up to a square root of
# of the number

# cat("How many? ")
# num <- as.integer(readLines('stdin', n=1, warn=FALSE))
num <- 100

isPrime <- function(n) {
	upto=floor(sqrt(n))
	return (sum(n/1:upto==n%/%1:upto)==1)
}

for(n in 1:num) {
	if(isPrime(n)) {
		print(n)
	}
}
