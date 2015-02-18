#!/usr/bin/Rscript

sum_to <- function(to) {
	#cat("to is", to, "\n")
	ret <- 0
	for (x in 1:to) {
		y=x%/%100;
		if (x%/%2==0) {
			y 
			ret <- ret + y*y
		} else {
			ret <- ret - y*y
		}
	}
	return(ret)
}

library(snow)
numCPU <- 4
c <- makeCluster(rep("localhost", numCPU), type = "SOCK")
v <- rep(100000, numCPU)
#r=mapply(sum_to, v)
res <- clusterApply(c, v, sum_to)
sum(res)
print(res)
