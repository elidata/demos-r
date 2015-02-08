#!/usr/bin/Rscript

# This is a brute force solution to the exercise

#cat("How many? ")
#num <- as.integer(readLines('stdin', n=1, warn=FALSE))
num <- 100

isPrime <- function(i) {
	if(i==1 || i==2) {
		return(TRUE)
	}
	upto=floor(sqrt(i))
	for(n in 2:upto) {
		if(i%%n==0) {
			return(FALSE)
		}
	}
	return(TRUE)
}

for(x in 1:num) {
	if(isPrime(x)) {
		print(x)
	}
}
