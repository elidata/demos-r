#!/usr/bin/Rscript

# this is a simple example of creating random numbers

# runif generates, by default random numbers of uniform
# distributino between 0 and 1
a <- runif(10)
print(a)

# lets try again, this time between 3 and 5
a <- runif(10, min=3, max=5)
print(a)
