#!/usr/bin/Rscript

# This is the Erathosthenes solution to the exercise.

# cat("How many? ")
# num <- as.integer(readLines('stdin', n=1, warn=FALSE))
num <- 100

isPrime <- function(x, primes) {
	pos=2
	upto=floor(sqrt(x))
	while(pos<=length(primes) && primes[pos]<=upto) {
		if(x%%primes[pos]==0) {
			return(FALSE)
		}
		pos=pos+1
	}
	return(TRUE)
}

# 'primes' will hold all of our primes numbers
# so far...
primes=c(1)
for (n in 2:num) {
	if(isPrime(n, primes)) {
		primes=c(primes,n)
	}
}
print(primes)
