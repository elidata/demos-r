#!/usr/bin/Rscript

# This example shows the importance of knowing the R
# API. Since the two pieces of code below do the same
# this the second is much shorter and runs faster since
# it is implemented by the R core which is written in C
# and not in R.
# To conclude: knowing the R API will make your code
# shorted, easier to read, easier to maintain, more bug free,
# and faster.

a <- runif(100)  # Generate 100 random numbers
b <- runif(100)  # 100 more
c <- NULL  # Setup for loop (declare variables)
for (i in 1:100) {
    # Loop just like in Java or C
    c[i] <- a[i] * b[i]
}
d <- a * b
identical(c, d)  # Test equality
