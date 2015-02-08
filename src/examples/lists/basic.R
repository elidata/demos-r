#!/usr/bin/Rscript

# This is a basic demonstration of lists in R.
# Lists are arbitrary collections of objects.
# The objects do not have to be of the same type or same element or same dimensions.

cat("An empty list\n")
x <- list()
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)

cat("A list with one element\n")
# you cannot print a list directly
x <- list(7)
length(x)
cat(x[[1]], "\n")

cat("A list with several elements\n")
x <- list(7, TRUE, "hello")
cat("length(x) is", length(x), "\n")

cat("Print a list, simple and efficient\n")
for (y in x) {
	cat(y, "\n")
}

cat("Another way to print a list\n")
for (n in 1:length(x)) {
	cat(x[[n]], "\n")
}

cat("List with names\n")
x <- list(one=c(4,5,6), two=TRUE, three="one")
cat("x$one is", x$one, "\n")
cat("x$two is", x$two, "\n")
cat("x$three is", x$three, "\n")
cat(str(x))
for (y in x) {
	cat(y, "\n")
}
