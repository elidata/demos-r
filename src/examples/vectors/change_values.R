#!/usr/bin/Rscript

# This is an example of changing values in an R vector

x=c(6, 7, 8, 9)
x[2]=-3

for (y in x) {
	print(y)
}
