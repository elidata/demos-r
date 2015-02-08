#!/usr/bin/Rscript

# This is a brute force solution to the exercise

#cat("How many? ")
#num <- as.integer(readLines('stdin', n=1, warn=FALSE))
num <- 100

isPrime <- function(i) {
	j=2
	upto=floor(sqrt(i))
	while(j<=upto) {
		if(i%%j==0) {
			return(FALSE)
		}
		j=j+1
	}
	return(TRUE)
}

for(x in 1:num) {
	if(isPrime(x)) {
		print(x)
	}
}
