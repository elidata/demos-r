#!/usr/bin/Rscript

# This is a first example of using a vector in R.
#
# NOTES:
# - to create a vector using the 'c' combine function.
# - to access vector elements use myvector[location]
# - location is 1:n and not 0-[n-1] as most languages use.
# - myvector[0] does not give you anything but the null string.
# - accessing vectors in negative locations will return the vector stripped of the
# value which in the absolute position value of the negative location.
# - length of the vector is available via 'length(x)'
# - accessing vector in out-of-range locations will not throw

x=c(6, 7, 8, 9)
print(x[1])
print(x[2])
print(x[3])
print(x[0])
print(x[-1])
print(x[-2])
print(length(x))
ls.str()
