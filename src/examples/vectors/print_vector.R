#!/usr/bin/Rscript

# This is an example of printing a vector in R

x=c(6, 7, 8, 9)

cat("This is the simple and efficient way of printing a vector\n")
for (y in x) {
	print(y)
}
cat("This is when you need an index\n")
for (y in 1:length(x)) {
	print(x[y])
}
