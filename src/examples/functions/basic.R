#!/usr/bin/Rscript

# This example explores functions in R

# This is the most simple function, only made of statements
sayHello <- function() {
	print('hello world!\n')
}
cat("class of the function is", class(sayHello), "\n")
sayHello()

# if the function ends with an expression it is it's return value
add <- function(x, y) {
	x+y
}
add(5, 9)

# you can also use the 'return' statement
sub <- function(x, y) {
	return(x-y)
}
sub(9, 5)
