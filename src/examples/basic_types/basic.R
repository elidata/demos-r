#!/usr/bin/Rscript

# This is a basic example of types in R.
# character, integer, double and logical

x <- 6
print(x)
typeof(x)
class(x)
mode(x)

x <- as.double(7)
print(x)
typeof(x)
class(x)
mode(x)

x <- as.integer(8)
print(x)
typeof(x)
class(x)
mode(x)

x <- as.double(7.7)
x <- as.integer(x)
print(x)
typeof(x)
class(x)
mode(x)

x <- as.double(7.7)
x <- round(x)
print(x)
typeof(x)
class(x)
mode(x)

x <- as.double(7.7)
x <- as.integer(round(x))
print(x)
typeof(x)
class(x)
mode(x)
