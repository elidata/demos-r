#!/usr/bin/Rscript

# This is the Erathosthenes solution to the exercise.

# cat("How many? ")
# num <- as.integer(readLines('stdin', n=1, warn=FALSE))
num <- 100

# initialize a vector
v = 1:num
for (x in 2:floor(sqrt(num))) {
	n=x*2
	while(n<=num) {
		v[n]=0
		n=n+x
	}
}
for (n in num:1) {
	if(v[n]==0) {
		v=v[-n]
	}
}
print(v)
