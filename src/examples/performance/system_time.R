#!/usr/bin/Rscript

sum1 <- function() {
	ret <- 0
	for (x in 1:1000000) {
		if (x%/%2==0) {
			ret <- ret + x*x
		} else {
			ret <- ret - x*x
		}
	}
	return(ret)
}

sum2 <- function() {
	v <- c()
	for (x in 1:100000) {
		v = c(v, x*x)
	}
	return(sum(v))
}

sum3 <- function() {
	v <- rep(0, 100000)
	for (x in 1:100000) {
		v[x] = x*x
	}
	return(sum(v))
}

system.time(sum1())
#system.time(sum2())
#system.time(sum3())
