#!/usr/bin/Rscript

# This is an example of adding vectors in R

# this is regular vector addition, two vectors are the same size
# results are what you expect
x=c(6, 7, 8)
y=c(1, 2, 3)
z <- x+y
print(z)
ls.str()

# now how about this? no warnings for this one
# because the sizes of the vectors divide cleanly.
# this will just add y to x over and over again until x is exausted.
x=c(6, 7, 8, 9)
y=c(1, 2)
z <- x+y
print(z)
ls.str()

# how about adding vectors and sequences? this works.
x=c(6, 7, 8, 9)
y= 1:4
z <- x+y
print(z)
ls.str()
